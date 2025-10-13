#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
代理池管理器
支持自动轮换、健康检查、失败重试
"""

import random
import time
from typing import Optional, Dict, List
from collections import deque
import requests


class ProxyPool:
    """代理池管理器"""
    
    def __init__(self, proxy_file: str = 'proxies.txt', check_health: bool = False):
        """
        初始化代理池
        
        Args:
            proxy_file: 代理配置文件路径
            check_health: 是否启动时检查代理健康状态
        """
        self.proxies = []
        self.failed_proxies = set()  # 失败的代理
        self.proxy_stats = {}  # 代理统计信息
        self.current_index = 0
        
        # 加载代理
        self._load_proxies(proxy_file)
        
        # 健康检查
        if check_health and self.proxies:
            print("🔍 正在检查代理健康状态...")
            self._health_check()
    
    def _load_proxies(self, proxy_file: str):
        """从文件加载代理"""
        try:
            with open(proxy_file, 'r', encoding='utf-8') as f:
                lines = [line.strip() for line in f if line.strip() and not line.startswith('#')]
            
            for line in lines:
                proxy_dict = self._parse_proxy(line)
                if proxy_dict:
                    self.proxies.append({
                        'raw': line,
                        'proxy_dict': proxy_dict,
                        'success_count': 0,
                        'fail_count': 0,
                        'last_used': 0
                    })
                    self.proxy_stats[line] = {'success': 0, 'fail': 0}
            
            print(f"✅ 成功加载 {len(self.proxies)} 个代理")
            
        except FileNotFoundError:
            print(f"⚠️  代理文件 {proxy_file} 不存在，将不使用代理")
            self.proxies = []
    
    def _parse_proxy(self, proxy_str: str) -> Optional[Dict]:
        """
        解析代理字符串
        格式: IP:端口:用户名:密码 或 IP:端口
        """
        try:
            parts = proxy_str.split(':')
            
            if len(parts) == 2:
                # 无认证代理
                ip, port = parts
                proxy_url = f"http://{ip}:{port}"
            elif len(parts) == 4:
                # 有认证代理
                ip, port, username, password = parts
                proxy_url = f"http://{username}:{password}@{ip}:{port}"
            else:
                print(f"⚠️  无效的代理格式: {proxy_str}")
                return None
            
            return {
                'http': proxy_url,
                'https': proxy_url
            }
        except Exception as e:
            print(f"⚠️  解析代理失败 {proxy_str}: {e}")
            return None
    
    def get_random_proxy(self) -> Optional[Dict]:
        """随机获取一个可用代理"""
        if not self.proxies:
            return None
        
        # 过滤掉失败的代理
        available = [p for p in self.proxies if p['raw'] not in self.failed_proxies]
        
        if not available:
            # 如果所有代理都失败了，重置失败列表
            print("⚠️  所有代理都失败了，重置代理池...")
            self.failed_proxies.clear()
            available = self.proxies
        
        proxy = random.choice(available)
        proxy['last_used'] = time.time()
        return proxy
    
    def get_next_proxy(self) -> Optional[Dict]:
        """按顺序获取下一个代理（轮询）"""
        if not self.proxies:
            return None
        
        # 跳过失败的代理
        attempts = 0
        while attempts < len(self.proxies):
            proxy = self.proxies[self.current_index]
            self.current_index = (self.current_index + 1) % len(self.proxies)
            
            if proxy['raw'] not in self.failed_proxies:
                proxy['last_used'] = time.time()
                return proxy
            
            attempts += 1
        
        # 所有代理都失败了
        print("⚠️  所有代理都失败了，重置代理池...")
        self.failed_proxies.clear()
        return self.proxies[0]
    
    def mark_success(self, proxy: Dict):
        """标记代理成功"""
        if proxy:
            proxy['success_count'] += 1
            self.proxy_stats[proxy['raw']]['success'] += 1
            
            # 如果代理曾经失败过，现在成功了，从失败列表移除
            if proxy['raw'] in self.failed_proxies:
                self.failed_proxies.discard(proxy['raw'])
    
    def mark_failure(self, proxy: Dict):
        """标记代理失败"""
        if proxy:
            proxy['fail_count'] += 1
            self.proxy_stats[proxy['raw']]['fail'] += 1
            
            # 如果失败次数过多，加入失败列表
            if proxy['fail_count'] >= 3:
                self.failed_proxies.add(proxy['raw'])
                print(f"❌ 代理失败次数过多，已禁用: {proxy['raw'].split(':')[0]}")
    
    def _health_check(self, test_url: str = "http://httpbin.org/ip", timeout: int = 5):
        """健康检查所有代理"""
        healthy_count = 0
        
        for i, proxy in enumerate(self.proxies, 1):
            try:
                print(f"  [{i}/{len(self.proxies)}] 测试 {proxy['raw'].split(':')[0]}...", end=' ')
                response = requests.get(
                    test_url,
                    proxies=proxy['proxy_dict'],
                    timeout=timeout
                )
                
                if response.status_code == 200:
                    print("✅")
                    healthy_count += 1
                else:
                    print(f"❌ (状态码: {response.status_code})")
                    self.failed_proxies.add(proxy['raw'])
            except Exception as e:
                print(f"❌ ({str(e)[:30]})")
                self.failed_proxies.add(proxy['raw'])
            
            time.sleep(0.1)  # 避免请求过快
        
        print(f"\n✅ 健康检查完成: {healthy_count}/{len(self.proxies)} 个代理可用")
    
    def get_stats(self) -> str:
        """获取代理池统计信息"""
        if not self.proxies:
            return "代理池为空"
        
        total = len(self.proxies)
        failed = len(self.failed_proxies)
        available = total - failed
        
        total_success = sum(p['success_count'] for p in self.proxies)
        total_fail = sum(p['fail_count'] for p in self.proxies)
        
        stats = f"""
代理池统计:
  总代理数: {total}
  可用代理: {available}
  失败代理: {failed}
  总成功次数: {total_success}
  总失败次数: {total_fail}
  成功率: {total_success/(total_success+total_fail)*100 if (total_success+total_fail)>0 else 0:.1f}%
"""
        return stats
    
    def print_top_proxies(self, n: int = 5):
        """打印表现最好的代理"""
        if not self.proxies:
            return
        
        sorted_proxies = sorted(
            self.proxies,
            key=lambda x: x['success_count'] - x['fail_count'],
            reverse=True
        )
        
        print(f"\n🏆 表现最好的 {min(n, len(sorted_proxies))} 个代理:")
        for i, proxy in enumerate(sorted_proxies[:n], 1):
            ip = proxy['raw'].split(':')[0]
            success = proxy['success_count']
            fail = proxy['fail_count']
            total = success + fail
            rate = success / total * 100 if total > 0 else 0
            print(f"  {i}. {ip} - 成功: {success}, 失败: {fail}, 成功率: {rate:.1f}%")


def make_request_with_proxy(
    url: str,
    proxy_pool: ProxyPool,
    method: str = 'GET',
    max_retries: int = 3,
    **kwargs
) -> Optional[requests.Response]:
    """
    使用代理池发起请求，自动重试和切换代理
    
    Args:
        url: 请求URL
        proxy_pool: 代理池实例
        method: HTTP方法
        max_retries: 最大重试次数
        **kwargs: 传递给requests的其他参数
    
    Returns:
        Response对象或None
    """
    for attempt in range(max_retries):
        proxy_info = proxy_pool.get_next_proxy() if proxy_pool.proxies else None
        
        try:
            # 设置代理
            if proxy_info:
                kwargs['proxies'] = proxy_info['proxy_dict']
            
            # 设置超时
            if 'timeout' not in kwargs:
                kwargs['timeout'] = 10
            
            # 发起请求
            response = requests.request(method, url, **kwargs)
            
            # 成功
            if proxy_info:
                proxy_pool.mark_success(proxy_info)
            
            return response
            
        except Exception as e:
            # 失败
            if proxy_info:
                proxy_pool.mark_failure(proxy_info)
            
            if attempt < max_retries - 1:
                wait_time = (2 ** attempt) * 0.5  # 指数退避
                time.sleep(wait_time)
            else:
                raise e
    
    return None


# ============= 测试代码 =============

def test_proxy_pool():
    """测试代理池"""
    print("\n" + "="*80)
    print("🧪 测试代理池功能")
    print("="*80)
    
    # 创建代理池（不进行健康检查以加快演示）
    pool = ProxyPool('proxies.txt', check_health=False)
    
    if not pool.proxies:
        print("\n⚠️  没有可用的代理，请创建 proxies.txt 文件")
        return
    
    print(f"\n📊 {pool.get_stats()}")
    
    # 模拟使用
    print("\n🔄 模拟 10 次请求...")
    for i in range(10):
        proxy = pool.get_next_proxy()
        if proxy:
            ip = proxy['raw'].split(':')[0]
            print(f"  [{i+1}] 使用代理: {ip}")
            
            # 模拟随机成功/失败
            if random.random() > 0.3:
                pool.mark_success(proxy)
            else:
                pool.mark_failure(proxy)
            
            time.sleep(0.1)
    
    print(f"\n📊 {pool.get_stats()}")
    pool.print_top_proxies(5)


if __name__ == "__main__":
    test_proxy_pool()
