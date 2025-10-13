#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
实际的 API 客户端示例
展示如何在真实场景中处理 API 限流
"""

import time
import requests
from rate_limiter import RateLimiter, retry_with_exponential_backoff, TokenBucket


class SmartAPIClient:
    """
    智能 API 客户端
    自动处理限流、重试和错误
    """
    
    def __init__(self, base_url: str, max_calls_per_minute: int = 60):
        """
        初始化 API 客户端
        
        Args:
            base_url: API 基础 URL
            max_calls_per_minute: 每分钟最大调用次数
        """
        self.base_url = base_url
        self.token_bucket = TokenBucket(
            capacity=max_calls_per_minute,
            refill_rate=max_calls_per_minute / 60  # 每秒补充的令牌数
        )
    
    @retry_with_exponential_backoff(max_retries=5, initial_delay=1)
    def _make_request(self, method: str, endpoint: str, **kwargs) -> requests.Response:
        """
        发起 HTTP 请求（带重试）
        
        Args:
            method: HTTP 方法 (GET, POST, etc.)
            endpoint: API 端点
            **kwargs: 传递给 requests 的其他参数
        """
        url = f"{self.base_url}/{endpoint.lstrip('/')}"
        
        # 等待令牌
        self.token_bucket.wait_and_consume(1)
        
        response = requests.request(method, url, **kwargs)
        
        # 检查是否被限流
        if response.status_code == 429:
            # 尝试从响应头获取重试时间
            retry_after = response.headers.get('Retry-After')
            if retry_after:
                wait_time = int(retry_after)
                print(f"⚠️  服务器要求等待 {wait_time} 秒")
                time.sleep(wait_time)
            
            raise Exception(f"429 - Rate limit exceeded")
        
        response.raise_for_status()
        return response
    
    def get(self, endpoint: str, **kwargs):
        """GET 请求"""
        return self._make_request('GET', endpoint, **kwargs)
    
    def post(self, endpoint: str, **kwargs):
        """POST 请求"""
        return self._make_request('POST', endpoint, **kwargs)


# ============= 使用示例 =============

def example_smart_client():
    """演示智能 API 客户端的使用"""
    print("\n" + "=" * 60)
    print("智能 API 客户端示例")
    print("=" * 60)
    
    # 创建客户端：每分钟最多 10 次调用
    client = SmartAPIClient(
        base_url="https://api.example.com",
        max_calls_per_minute=10
    )
    
    print("\n📝 配置: 每分钟最多 10 次 API 调用")
    print("🔄 自动处理: 限流检测、指数退避、自动重试\n")
    
    # 模拟使用（实际使用时取消注释）
    print("💡 使用方法:")
    print("  response = client.get('/users/123')")
    print("  response = client.post('/data', json={'key': 'value'})")
    print("\n客户端会自动:")
    print("  ✓ 限制请求频率")
    print("  ✓ 检测 429 错误")
    print("  ✓ 自动重试（指数退避）")
    print("  ✓ 遵守 Retry-After 响应头")


def example_manual_handling():
    """手动处理 API 限流的示例"""
    print("\n" + "=" * 60)
    print("手动处理 API 限流")
    print("=" * 60)
    
    def call_api_safely(url: str, max_retries: int = 3):
        """
        安全地调用 API
        手动处理限流和重试
        """
        for attempt in range(max_retries):
            try:
                # response = requests.get(url)  # 实际调用
                
                # 模拟调用
                print(f"📞 调用 API: {url}")
                
                # 模拟限流错误（仅用于演示）
                if attempt < 2:
                    print(f"⚠️  收到 429 错误 - 被限流")
                    
                    # 策略 1: 固定延迟
                    # time.sleep(5)
                    
                    # 策略 2: 指数退避
                    wait_time = (2 ** attempt)
                    print(f"⏳ 等待 {wait_time} 秒后重试...")
                    time.sleep(wait_time)
                    continue
                
                print("✅ API 调用成功！")
                return "成功的响应"
                
            except Exception as e:
                if attempt == max_retries - 1:
                    print(f"❌ 所有重试失败: {e}")
                    raise
        
        return None
    
    # 测试
    call_api_safely("https://api.example.com/data")


if __name__ == "__main__":
    print("\n🛠️  API 限流处理实用工具")
    print("=" * 60)
    
    example_smart_client()
    time.sleep(0.5)
    
    example_manual_handling()
    
    print("\n" + "=" * 60)
    print("✅ 示例完成！")
    print("\n💡 提示:")
    print("  1. 使用 RateLimiter 装饰器自动限制调用频率")
    print("  2. 使用指数退避处理临时错误")
    print("  3. 使用 TokenBucket 实现更灵活的限流")
    print("  4. 批量处理请求避免触发限流")
    print("  5. 始终遵守 API 的 Retry-After 响应头")
    print("=" * 60)
