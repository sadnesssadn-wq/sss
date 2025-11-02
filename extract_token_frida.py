#!/usr/bin/env python3
"""
Frida提取Token - 简化版
无需复杂配置，直接提取SharedPreferences中的Token
"""

import frida
import sys
import json
import time

script_code = """
Java.perform(function() {
    console.log("[*] Frida已注入EMS Portal");
    console.log("[*] 开始提取Token...");
    
    // 方法1: 从SharedPreferences直接读取
    function extractToken() {
        try {
            var SharedPrefsManager = Java.use('c.b.k.e');
            var instance = SharedPrefsManager.b();
            
            var token = instance.b("PREF_TOKEN_USER");
            
            if (token && token.length > 0) {
                console.log("[+] Token提取成功!");
                console.log("[+] Token长度: " + token.length);
                
                send({
                    type: 'token',
                    data: token,
                    source: 'SharedPreferences'
                });
                
                return true;
            } else {
                console.log("[-] Token为空，用户可能未登录");
                return false;
            }
        } catch(e) {
            console.log("[-] 提取失败: " + e);
            return false;
        }
    }
    
    // 方法2: Hook登录响应
    function hookLogin() {
        try {
            var NetworkManager = Java.use('c.b.t.b');
            
            // Hook网络请求回调
            var CallbackInterface = Java.use('c.b.t.b$d');
            
            var originalSuccess = CallbackInterface.a;
            if (originalSuccess) {
                CallbackInterface.a.implementation = function(response) {
                    console.log("[*] 捕获API响应");
                    
                    try {
                        var responseStr = response.toString();
                        
                        // 检查是否包含token
                        if (responseStr.indexOf('token') !== -1) {
                            console.log("[+] 响应包含Token!");
                            console.log("[*] 响应内容: " + responseStr.substring(0, 200) + "...");
                            
                            // 尝试解析JSON
                            var JSONObject = Java.use('org.json.JSONObject');
                            
                            try {
                                var json = JSONObject.$new(responseStr);
                                var data = json.getJSONObject("data");
                                var token = data.getString("token");
                                
                                if (token) {
                                    console.log("[+] 从响应中提取Token!");
                                    
                                    send({
                                        type: 'token',
                                        data: token,
                                        source: 'LoginResponse'
                                    });
                                }
                            } catch(e) {
                                console.log("[-] 解析JSON失败: " + e);
                            }
                        }
                    } catch(e) {
                        console.log("[-] 处理响应失败: " + e);
                    }
                    
                    // 调用原方法
                    return originalSuccess.call(this, response);
                };
            }
            
            console.log("[+] 已Hook网络回调");
        } catch(e) {
            console.log("[-] Hook登录失败: " + e);
        }
    }
    
    // 方法3: Hook Token保存
    function hookTokenSave() {
        try {
            var Utils = Java.use('b.u.a');
            
            // Hook保存Token的方法
            var saveToken = Utils.f0;
            if (saveToken) {
                saveToken.implementation = function(token) {
                    console.log("[*] 检测到Token保存操作");
                    console.log("[+] Token: " + token.substring(0, 50) + "...");
                    
                    send({
                        type: 'token',
                        data: token,
                        source: 'SaveOperation'
                    });
                    
                    // 调用原方法
                    return saveToken.call(this, token);
                };
                
                console.log("[+] 已Hook Token保存方法");
            }
        } catch(e) {
            console.log("[-] Hook保存失败: " + e);
        }
    }
    
    // 执行提取
    setTimeout(function() {
        console.log("\\n[*] 尝试提取现有Token...");
        
        var found = extractToken();
        
        if (!found) {
            console.log("\\n[*] 未找到现有Token");
            console.log("[*] 开始监听登录操作...");
            console.log("[*] 请在App中登录\\n");
        }
        
        // Hook登录和保存
        hookLogin();
        hookTokenSave();
    }, 1000);
});
"""

class Colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    RESET = '\033[0m'
    BOLD = '\033[1m'

def on_message(message, data):
    """处理Frida消息"""
    if message['type'] == 'send':
        payload = message['payload']
        
        if isinstance(payload, dict) and payload.get('type') == 'token':
            token = payload['data']
            source = payload.get('source', 'Unknown')
            
            print(f"\n{Colors.GREEN}{Colors.BOLD}{'='*60}{Colors.RESET}")
            print(f"{Colors.GREEN}{Colors.BOLD}[✓] Token提取成功!{Colors.RESET}")
            print(f"{Colors.GREEN}{Colors.BOLD}{'='*60}{Colors.RESET}\n")
            
            print(f"{Colors.CYAN}来源: {source}{Colors.RESET}")
            print(f"{Colors.CYAN}长度: {len(token)}{Colors.RESET}\n")
            
            print(f"{Colors.YELLOW}Token:{Colors.RESET}")
            print(token)
            
            # 保存Token
            with open('extracted_token.txt', 'w') as f:
                f.write(token)
            
            print(f"\n{Colors.GREEN}[+] Token已保存到: extracted_token.txt{Colors.RESET}")
            
            # 保存为JSON
            token_data = {
                'token': token,
                'source': source,
                'timestamp': time.time()
            }
            
            with open('token_data.json', 'w') as f:
                json.dump(token_data, f, indent=2)
            
            print(f"{Colors.GREEN}[+] 详细信息保存到: token_data.json{Colors.RESET}")
            
            print(f"\n{Colors.CYAN}下一步:{Colors.RESET}")
            print(f"  export TOKEN=\"{token[:50]}...\"")
            print(f"  python3 backend_validation_test.py $TOKEN $TOKEN\n")
    
    elif message['type'] == 'error':
        print(f"{Colors.RED}[!] 错误: {message['stack']}{Colors.RESET}")

def main():
    print(f"""
{Colors.CYAN}{Colors.BOLD}
╔══════════════════════════════════════════════════════════════╗
║       Frida Token提取器 - EMS Portal                        ║
╚══════════════════════════════════════════════════════════════╝
{Colors.RESET}

{Colors.YELLOW}功能:{Colors.RESET}
  • 自动从SharedPreferences提取Token
  • 监听登录操作，实时捕获Token
  • Hook Token保存操作

{Colors.YELLOW}使用:{Colors.RESET}
  1. 确保Frida Server正在运行
  2. 启动或打开EMS Portal App
  3. 运行本脚本
  4. 如果未登录，在App中登录
    """)
    
    try:
        # 连接到USB设备
        print(f"{Colors.CYAN}[*] 连接到USB设备...{Colors.RESET}")
        device = frida.get_usb_device()
        print(f"{Colors.GREEN}[+] 设备已连接{Colors.RESET}")
        
        # 查找App进程
        try:
            print(f"\n{Colors.CYAN}[*] 查找com.emsportal进程...{Colors.RESET}")
            session = device.attach('com.emsportal')
            print(f"{Colors.GREEN}[+] 已附加到正在运行的App{Colors.RESET}")
        
        except frida.ProcessNotFoundError:
            print(f"{Colors.YELLOW}[*] App未运行，正在启动...{Colors.RESET}")
            
            try:
                pid = device.spawn(['com.emsportal'])
                session = device.attach(pid)
                device.resume(pid)
                print(f"{Colors.GREEN}[+] App已启动 (PID: {pid}){Colors.RESET}")
            except Exception as e:
                print(f"{Colors.RED}[!] 启动失败: {e}{Colors.RESET}")
                print(f"\n{Colors.YELLOW}请手动启动App，然后重新运行此脚本{Colors.RESET}")
                sys.exit(1)
        
        # 加载脚本
        print(f"\n{Colors.CYAN}[*] 注入Frida脚本...{Colors.RESET}")
        script = session.create_script(script_code)
        script.on('message', on_message)
        script.load()
        print(f"{Colors.GREEN}[+] 脚本已注入{Colors.RESET}\n")
        
        print(f"{Colors.BOLD}{'='*60}{Colors.RESET}")
        print(f"{Colors.CYAN}[*] 监听中...{Colors.RESET}")
        print(f"{Colors.BOLD}{'='*60}{Colors.RESET}\n")
        
        print(f"{Colors.YELLOW}提示:{Colors.RESET}")
        print(f"  • 如果已登录，Token会自动提取")
        print(f"  • 如果未登录，请在App中登录")
        print(f"  • 按 Ctrl+C 退出\n")
        
        # 保持运行
        sys.stdin.read()
    
    except KeyboardInterrupt:
        print(f"\n\n{Colors.YELLOW}[*] 用户中断{Colors.RESET}")
    
    except frida.ServerNotRunningError:
        print(f"\n{Colors.RED}[!] Frida Server未运行{Colors.RESET}")
        print(f"\n{Colors.YELLOW}解决方法:{Colors.RESET}")
        print(f"  1. 启动Frida Server:")
        print(f"     adb shell su -c /data/local/tmp/frida-server &")
        print(f"  2. 验证:")
        print(f"     frida-ps -U")
    
    except Exception as e:
        print(f"\n{Colors.RED}[!] 错误: {e}{Colors.RESET}")
        import traceback
        traceback.print_exc()

if __name__ == '__main__':
    main()
