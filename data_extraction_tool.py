#!/usr/bin/env python3
"""
EMS Portal - 深度数据提取工具
通过Frida直接调用Java方法获取订单和用户信息
"""

import frida
import sys
import json
import time
from datetime import datetime

class Colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    RESET = '\033[0m'
    BOLD = '\033[1m'

FRIDA_SCRIPT = """
Java.perform(function() {
    console.log("[*] Frida加载成功，开始数据提取...");
    
    // ========================================
    // 1. Token提取
    // ========================================
    function extractToken() {
        try {
            var CacheManager = Java.use('c.b.k.a');
            var sharedPrefs = CacheManager.b().f2956a.value;
            
            // 尝试所有可能的Token key
            var tokenKeys = [
                'PREF_TOKEN_USER',
                'TOKEN',
                'token',
                'auth_token',
                'bearer_token',
                'access_token'
            ];
            
            var tokens = {};
            for (var i = 0; i < tokenKeys.length; i++) {
                try {
                    var token = sharedPrefs.b(tokenKeys[i]);
                    if (token && token.length > 0) {
                        tokens[tokenKeys[i]] = token;
                        console.log("[+] Token找到: " + tokenKeys[i]);
                    }
                } catch(e) {}
            }
            
            return tokens;
        } catch(e) {
            console.log("[-] Token提取失败: " + e);
            return {};
        }
    }
    
    // ========================================
    // 2. SharedPreferences完全导出
    // ========================================
    function dumpSharedPrefs() {
        try {
            var Context = Java.use('android.content.Context');
            var currentApp = Java.use('android.app.ActivityThread').currentApplication();
            var context = currentApp.getApplicationContext();
            
            var prefsNames = ['APP_PREFERENCES', 'prefs', 'user_prefs'];
            var allPrefs = {};
            
            for (var i = 0; i < prefsNames.length; i++) {
                try {
                    var prefs = context.getSharedPreferences(prefsNames[i], 0);
                    var allEntries = prefs.getAll();
                    
                    var entries = {};
                    var entrySet = allEntries.entrySet();
                    var iterator = entrySet.iterator();
                    
                    while (iterator.hasNext()) {
                        var entry = iterator.next();
                        var key = entry.getKey();
                        var value = entry.getValue();
                        entries[key] = value ? value.toString() : null;
                    }
                    
                    if (Object.keys(entries).length > 0) {
                        allPrefs[prefsNames[i]] = entries;
                        console.log("[+] SharedPrefs导出: " + prefsNames[i] + " (" + Object.keys(entries).length + " 项)");
                    }
                } catch(e) {}
            }
            
            return allPrefs;
        } catch(e) {
            console.log("[-] SharedPrefs导出失败: " + e);
            return {};
        }
    }
    
    // ========================================
    // 3. 缓存数据库读取
    // ========================================
    function readCacheDB() {
        try {
            var CacheManager = Java.use('c.b.k.a');
            var dbOps = CacheManager.b().f2957b.value;
            
            // 读取caching表
            dbOps.a();
            var db = dbOps.f2964b.value.f2961e.value;
            
            var cursor = db.rawQuery("SELECT * FROM caching", null);
            var results = [];
            
            if (cursor.moveToFirst()) {
                do {
                    var entry = {
                        request: cursor.getString(0),
                        response: cursor.getString(1),
                        time_updated: cursor.getString(2)
                    };
                    results.push(entry);
                } while (cursor.moveToNext());
            }
            
            cursor.close();
            console.log("[+] 缓存数据库读取: " + results.length + " 条记录");
            
            return results;
        } catch(e) {
            console.log("[-] 缓存DB读取失败: " + e);
            return [];
        }
    }
    
    // ========================================
    // 4. 直接调用API方法获取订单
    // ========================================
    function callOrderListAPI() {
        try {
            console.log("[*] 尝试直接调用订单API...");
            
            // 创建回调
            var callback = Java.registerClass({
                name: 'com.frida.CustomCallback',
                implements: ['c.b.t.b$d'],
                methods: {
                    a: function(response) {
                        console.log("[+] API调用成功!");
                        try {
                            var data = response.f3627e.value;
                            send({
                                type: 'api_success',
                                data: data.toString()
                            });
                        } catch(e) {
                            console.log("[-] 响应解析失败: " + e);
                        }
                    },
                    b: function(error) {
                        console.log("[-] API调用失败: " + error);
                        send({
                            type: 'api_error',
                            error: error
                        });
                    }
                }
            });
            
            var HashMap = Java.use('java.util.HashMap');
            var params = HashMap.$new();
            params.put("limit", "100");
            params.put("page", "1");
            
            // 调用订单列表API
            var APIService = Java.use('c.b.s.a');
            var callbackInstance = callback.$new();
            
            APIService.j(params, true, callbackInstance);
            
            console.log("[+] API调用已发起，等待响应...");
            
        } catch(e) {
            console.log("[-] API调用失败: " + e);
            console.log(e.stack);
        }
    }
    
    // ========================================
    // 5. Hook所有订单相关方法
    // ========================================
    function hookOrderMethods() {
        try {
            var APIService = Java.use('c.b.s.a');
            
            // Hook订单列表
            APIService.j.overload('java.util.Map', 'boolean', 'c.b.t.b$d').implementation = function(params, showProgress, callback) {
                console.log("[*] 拦截订单列表API调用");
                console.log("    参数: " + params.toString());
                
                var originalCallback = callback;
                var wrappedCallback = Java.registerClass({
                    name: 'com.frida.WrappedCallback' + Date.now(),
                    implements: ['c.b.t.b$d'],
                    methods: {
                        a: function(response) {
                            console.log("[+] 订单列表响应拦截!");
                            try {
                                var data = response.f3627e.value.toString();
                                send({
                                    type: 'order_list',
                                    data: data
                                });
                            } catch(e) {}
                            
                            originalCallback.a(response);
                        },
                        b: function(error) {
                            console.log("[-] 订单列表错误: " + error);
                            originalCallback.b(error);
                        }
                    }
                }).$new();
                
                return this.j(params, showProgress, wrappedCallback);
            };
            
            // Hook订单追踪
            APIService.q.overload('java.lang.String', 'boolean', 'c.b.t.b$d').implementation = function(orderId, showProgress, callback) {
                console.log("[*] 拦截订单追踪: " + orderId);
                
                var originalCallback = callback;
                var wrappedCallback = Java.registerClass({
                    name: 'com.frida.TrackingCallback' + Date.now(),
                    implements: ['c.b.t.b$d'],
                    methods: {
                        a: function(response) {
                            console.log("[+] 订单详情: " + orderId);
                            try {
                                var data = response.f3627e.value.toString();
                                send({
                                    type: 'order_detail',
                                    order_id: orderId,
                                    data: data
                                });
                            } catch(e) {}
                            
                            originalCallback.a(response);
                        },
                        b: function(error) {
                            originalCallback.b(error);
                        }
                    }
                }).$new();
                
                return this.q(orderId, showProgress, wrappedCallback);
            };
            
            console.log("[+] 订单方法Hook完成");
            
        } catch(e) {
            console.log("[-] Hook失败: " + e);
        }
    }
    
    // ========================================
    // 6. 主执行流程
    // ========================================
    
    // 延迟执行，等待App完全加载
    setTimeout(function() {
        console.log("\\n[*] ========== 开始数据提取 ==========\\n");
        
        // 1. 提取Token
        var tokens = extractToken();
        send({
            type: 'tokens',
            data: tokens
        });
        
        // 2. 导出SharedPreferences
        var prefs = dumpSharedPrefs();
        send({
            type: 'shared_prefs',
            data: prefs
        });
        
        // 3. 读取缓存数据库
        var cacheData = readCacheDB();
        send({
            type: 'cache_db',
            data: cacheData
        });
        
        // 4. Hook订单方法
        hookOrderMethods();
        
        // 5. 尝试直接调用API (可选)
        // callOrderListAPI();
        
        console.log("\\n[*] ========== 数据提取完成 ==========\\n");
        console.log("[*] 现在所有订单API调用都会被拦截");
        console.log("[*] 请在App中查看订单列表以触发Hook");
        
    }, 2000);
    
});
"""

class DataExtractor:
    def __init__(self, device=None):
        self.device = device
        self.session = None
        self.collected_data = {
            'tokens': {},
            'shared_prefs': {},
            'cache_db': [],
            'orders': []
        }
    
    def print_banner(self):
        print(f"""
{Colors.CYAN}{Colors.BOLD}
╔══════════════════════════════════════════════════════════╗
║   EMS Portal - 深度数据提取工具                         ║
║   通过Frida直接调用Java方法                             ║
╚══════════════════════════════════════════════════════════╝
{Colors.RESET}

{Colors.YELLOW}功能:{Colors.RESET}
  ✅ 提取所有Token
  ✅ 导出SharedPreferences
  ✅ 读取缓存数据库
  ✅ Hook所有订单API
  ✅ 实时拦截数据

{Colors.GREEN}无需MITM，直接从App内部获取数据!{Colors.RESET}
        """)
    
    def on_message(self, message, data):
        """处理Frida消息"""
        if message['type'] == 'send':
            payload = message['payload']
            msg_type = payload.get('type')
            
            if msg_type == 'tokens':
                self.handle_tokens(payload['data'])
            
            elif msg_type == 'shared_prefs':
                self.handle_shared_prefs(payload['data'])
            
            elif msg_type == 'cache_db':
                self.handle_cache_db(payload['data'])
            
            elif msg_type == 'order_list':
                self.handle_order_list(payload['data'])
            
            elif msg_type == 'order_detail':
                self.handle_order_detail(payload.get('order_id'), payload['data'])
        
        elif message['type'] == 'error':
            print(f"{Colors.RED}[!] Frida错误: {message['description']}{Colors.RESET}")
    
    def handle_tokens(self, tokens):
        """处理Token"""
        print(f"\n{Colors.GREEN}{'='*60}{Colors.RESET}")
        print(f"{Colors.GREEN}{Colors.BOLD}[+] Token提取成功!{Colors.RESET}")
        print(f"{Colors.GREEN}{'='*60}{Colors.RESET}\n")
        
        if not tokens:
            print(f"{Colors.YELLOW}[-] 未找到Token，可能需要先登录{Colors.RESET}")
            return
        
        for key, token in tokens.items():
            print(f"{Colors.CYAN}{key}:{Colors.RESET}")
            print(f"  {token[:100]}...")
            
            # 解析JWT
            if token and '.' in token:
                try:
                    import base64
                    parts = token.split('.')
                    if len(parts) >= 2:
                        # 解码payload
                        payload = parts[1]
                        # 添加padding
                        payload += '=' * (4 - len(payload) % 4)
                        decoded = base64.b64decode(payload)
                        payload_data = json.loads(decoded)
                        
                        print(f"\n  {Colors.YELLOW}JWT Payload:{Colors.RESET}")
                        print(f"  {json.dumps(payload_data, indent=4, ensure_ascii=False)}")
                except Exception as e:
                    pass
        
        self.collected_data['tokens'] = tokens
        
        # 保存到文件
        with open('extracted_tokens.json', 'w') as f:
            json.dump(tokens, f, indent=2)
        
        print(f"\n{Colors.GREEN}[✓] Token已保存到 extracted_tokens.json{Colors.RESET}\n")
    
    def handle_shared_prefs(self, prefs):
        """处理SharedPreferences"""
        print(f"\n{Colors.GREEN}{'='*60}{Colors.RESET}")
        print(f"{Colors.GREEN}{Colors.BOLD}[+] SharedPreferences导出成功!{Colors.RESET}")
        print(f"{Colors.GREEN}{'='*60}{Colors.RESET}\n")
        
        for pref_name, entries in prefs.items():
            print(f"{Colors.CYAN}{pref_name}:{Colors.RESET}")
            for key, value in entries.items():
                print(f"  {key}: {value}")
            print()
        
        self.collected_data['shared_prefs'] = prefs
        
        with open('extracted_prefs.json', 'w', encoding='utf-8') as f:
            json.dump(prefs, f, indent=2, ensure_ascii=False)
        
        print(f"{Colors.GREEN}[✓] SharedPreferences已保存到 extracted_prefs.json{Colors.RESET}\n")
    
    def handle_cache_db(self, cache_data):
        """处理缓存数据库"""
        print(f"\n{Colors.GREEN}{'='*60}{Colors.RESET}")
        print(f"{Colors.GREEN}{Colors.BOLD}[+] 缓存数据库读取成功!{Colors.RESET}")
        print(f"{Colors.GREEN}{'='*60}{Colors.RESET}\n")
        
        print(f"{Colors.CYAN}总记录数: {len(cache_data)}{Colors.RESET}\n")
        
        for i, entry in enumerate(cache_data[:10], 1):
            print(f"{Colors.YELLOW}[{i}] {entry.get('request')}{Colors.RESET}")
            response = entry.get('response', '')
            if len(response) > 200:
                print(f"  {response[:200]}...")
            else:
                print(f"  {response}")
            print()
        
        if len(cache_data) > 10:
            print(f"{Colors.YELLOW}... 还有 {len(cache_data) - 10} 条记录{Colors.RESET}\n")
        
        self.collected_data['cache_db'] = cache_data
        
        with open('extracted_cache.json', 'w', encoding='utf-8') as f:
            json.dump(cache_data, f, indent=2, ensure_ascii=False)
        
        print(f"{Colors.GREEN}[✓] 缓存数据已保存到 extracted_cache.json{Colors.RESET}\n")
    
    def handle_order_list(self, data_str):
        """处理订单列表"""
        print(f"\n{Colors.RED}{'='*60}{Colors.RESET}")
        print(f"{Colors.RED}{Colors.BOLD}[!!!] 订单列表拦截成功!{Colors.RESET}")
        print(f"{Colors.RED}{'='*60}{Colors.RESET}\n")
        
        try:
            data = json.loads(data_str)
            
            # 提取订单
            orders = data.get('data', {}).get('orders', [])
            
            print(f"{Colors.CYAN}订单数量: {len(orders)}{Colors.RESET}\n")
            
            for i, order in enumerate(orders[:5], 1):
                print(f"{Colors.YELLOW}订单 #{i}:{Colors.RESET}")
                print(f"  ID: {order.get('id', order.get('_id'))}")
                print(f"  客户: {order.get('customer_name')}")
                print(f"  电话: {order.get('phone')}")
                print(f"  地址: {order.get('address', '')[:50]}...")
                print(f"  金额: {order.get('total')} VND")
                print(f"  状态: {order.get('status')}")
                print()
            
            self.collected_data['orders'].extend(orders)
            
            # 保存
            with open(f'extracted_orders_{int(time.time())}.json', 'w', encoding='utf-8') as f:
                json.dump(orders, f, indent=2, ensure_ascii=False)
            
            print(f"{Colors.GREEN}[✓] 订单数据已保存!{Colors.RESET}\n")
        
        except Exception as e:
            print(f"{Colors.RED}解析错误: {e}{Colors.RESET}")
            print(data_str[:500])
    
    def handle_order_detail(self, order_id, data_str):
        """处理订单详情"""
        print(f"\n{Colors.CYAN}[*] 订单详情: {order_id}{Colors.RESET}")
        
        try:
            data = json.loads(data_str)
            order_detail = data.get('data', {})
            
            print(json.dumps(order_detail, indent=2, ensure_ascii=False)[:500])
            
            with open(f'order_{order_id}.json', 'w', encoding='utf-8') as f:
                json.dump(order_detail, f, indent=2, ensure_ascii=False)
        
        except Exception as e:
            print(f"{Colors.RED}解析错误: {e}{Colors.RESET}")
    
    def run(self):
        """运行数据提取"""
        self.print_banner()
        
        try:
            # 连接设备
            print(f"{Colors.CYAN}[*] 连接Frida...{Colors.RESET}")
            
            if self.device:
                device = frida.get_device(self.device)
            else:
                device = frida.get_usb_device(timeout=10)
            
            print(f"{Colors.GREEN}[+] 设备已连接: {device}{Colors.RESET}")
            
            # 附加到App
            print(f"{Colors.CYAN}[*] 附加到com.emsportal...{Colors.RESET}")
            
            try:
                self.session = device.attach('com.emsportal')
            except frida.ProcessNotFoundError:
                print(f"{Colors.YELLOW}[*] App未运行，正在启动...{Colors.RESET}")
                pid = device.spawn(['com.emsportal'])
                self.session = device.attach(pid)
                device.resume(pid)
            
            print(f"{Colors.GREEN}[+] 已附加!{Colors.RESET}")
            
            # 加载脚本
            print(f"{Colors.CYAN}[*] 加载Frida脚本...{Colors.RESET}")
            script = self.session.create_script(FRIDA_SCRIPT)
            script.on('message', self.on_message)
            script.load()
            
            print(f"{Colors.GREEN}[+] 脚本已加载!{Colors.RESET}\n")
            print(f"{Colors.YELLOW}[*] 数据提取进行中...{Colors.RESET}")
            print(f"{Colors.YELLOW}[*] 请在App中操作以触发Hook{Colors.RESET}")
            print(f"{Colors.YELLOW}[*] 按Ctrl+C停止{Colors.RESET}\n")
            
            # 保持运行
            sys.stdin.read()
        
        except KeyboardInterrupt:
            print(f"\n{Colors.GREEN}[✓] 数据提取完成!{Colors.RESET}")
            self.print_summary()
        
        except Exception as e:
            print(f"{Colors.RED}[!] 错误: {e}{Colors.RESET}")
            import traceback
            traceback.print_exc()
    
    def print_summary(self):
        """打印总结"""
        print(f"\n{Colors.BOLD}{'='*60}{Colors.RESET}")
        print(f"{Colors.BOLD}{Colors.CYAN}数据提取总结{Colors.RESET}")
        print(f"{Colors.BOLD}{'='*60}{Colors.RESET}\n")
        
        print(f"✅ Token数量: {len(self.collected_data['tokens'])}")
        print(f"✅ SharedPrefs: {len(self.collected_data['shared_prefs'])}")
        print(f"✅ 缓存记录: {len(self.collected_data['cache_db'])}")
        print(f"✅ 订单数据: {len(self.collected_data['orders'])}")
        
        print(f"\n{Colors.YELLOW}生成的文件:{Colors.RESET}")
        print(f"  • extracted_tokens.json")
        print(f"  • extracted_prefs.json")
        print(f"  • extracted_cache.json")
        print(f"  • extracted_orders_*.json")

def main():
    import argparse
    
    parser = argparse.ArgumentParser(
        description='EMS Portal 深度数据提取工具',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog='''
示例:
  # 基础使用 (USB连接)
  python3 data_extraction_tool.py
  
  # 指定设备
  python3 data_extraction_tool.py --device <DEVICE_ID>
  
使用前提:
  1. 安装Frida: pip3 install frida-tools
  2. 手机已Root或使用Frida-server
  3. USB连接手机
  4. EMS App已安装
        '''
    )
    
    parser.add_argument('--device', '-d', help='设备ID (可选)')
    
    args = parser.parse_args()
    
    extractor = DataExtractor(device=args.device)
    extractor.run()

if __name__ == '__main__':
    main()
