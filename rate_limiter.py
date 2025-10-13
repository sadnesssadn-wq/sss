#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
API 限流解决方案
提供多种处理 API 限流的方法
"""

import time
import functools
from typing import Callable, Any
from collections import deque
from datetime import datetime, timedelta


class RateLimiter:
    """
    简单的速率限制器
    使用滑动窗口算法
    """
    
    def __init__(self, max_calls: int, time_window: int):
        """
        初始化速率限制器
        
        Args:
            max_calls: 时间窗口内允许的最大调用次数
            time_window: 时间窗口（秒）
        """
        self.max_calls = max_calls
        self.time_window = time_window
        self.calls = deque()
    
    def __call__(self, func: Callable) -> Callable:
        """装饰器：为函数添加速率限制"""
        @functools.wraps(func)
        def wrapper(*args, **kwargs):
            now = time.time()
            
            # 移除时间窗口之外的调用记录
            while self.calls and self.calls[0] <= now - self.time_window:
                self.calls.popleft()
            
            # 检查是否超过限制
            if len(self.calls) >= self.max_calls:
                sleep_time = self.time_window - (now - self.calls[0])
                print(f"⏰ 达到速率限制，等待 {sleep_time:.2f} 秒...")
                time.sleep(sleep_time)
                # 清理过期记录
                while self.calls and self.calls[0] <= time.time() - self.time_window:
                    self.calls.popleft()
            
            # 记录本次调用
            self.calls.append(time.time())
            return func(*args, **kwargs)
        
        return wrapper


def retry_with_exponential_backoff(
    max_retries: int = 5,
    initial_delay: float = 1,
    max_delay: float = 60,
    exponential_base: float = 2
):
    """
    指数退避重试装饰器
    用于处理 API 限流和临时错误
    
    Args:
        max_retries: 最大重试次数
        initial_delay: 初始延迟时间（秒）
        max_delay: 最大延迟时间（秒）
        exponential_base: 指数基数
    """
    def decorator(func: Callable) -> Callable:
        @functools.wraps(func)
        def wrapper(*args, **kwargs):
            delay = initial_delay
            
            for attempt in range(max_retries + 1):
                try:
                    return func(*args, **kwargs)
                except Exception as e:
                    # 检查是否是限流错误（常见的 HTTP 状态码 429）
                    is_rate_limit = (
                        "429" in str(e) or 
                        "rate limit" in str(e).lower() or
                        "too many requests" in str(e).lower()
                    )
                    
                    if attempt == max_retries:
                        print(f"❌ 达到最大重试次数 ({max_retries})，放弃执行")
                        raise
                    
                    if is_rate_limit:
                        print(f"⚠️  遇到限流错误，第 {attempt + 1} 次重试...")
                    else:
                        print(f"⚠️  遇到错误: {e}，第 {attempt + 1} 次重试...")
                    
                    print(f"⏳ 等待 {delay:.2f} 秒后重试...")
                    time.sleep(delay)
                    
                    # 计算下一次延迟（指数退避）
                    delay = min(delay * exponential_base, max_delay)
            
        return wrapper
    return decorator


class TokenBucket:
    """
    令牌桶算法实现
    更灵活的速率限制方案
    """
    
    def __init__(self, capacity: int, refill_rate: float):
        """
        初始化令牌桶
        
        Args:
            capacity: 桶的容量（最大令牌数）
            refill_rate: 每秒补充的令牌数
        """
        self.capacity = capacity
        self.refill_rate = refill_rate
        self.tokens = capacity
        self.last_refill = time.time()
    
    def consume(self, tokens: int = 1) -> bool:
        """
        尝试消费令牌
        
        Args:
            tokens: 需要消费的令牌数
            
        Returns:
            是否成功消费
        """
        self._refill()
        
        if self.tokens >= tokens:
            self.tokens -= tokens
            return True
        return False
    
    def wait_and_consume(self, tokens: int = 1):
        """
        等待并消费令牌（阻塞）
        """
        while not self.consume(tokens):
            # 计算需要等待的时间
            needed_tokens = tokens - self.tokens
            wait_time = needed_tokens / self.refill_rate
            print(f"⏰ 令牌不足，等待 {wait_time:.2f} 秒...")
            time.sleep(wait_time)
            self._refill()
    
    def _refill(self):
        """补充令牌"""
        now = time.time()
        elapsed = now - self.last_refill
        new_tokens = elapsed * self.refill_rate
        
        self.tokens = min(self.capacity, self.tokens + new_tokens)
        self.last_refill = now


# ============= 使用示例 =============

def example_1_rate_limiter():
    """示例 1: 使用装饰器限制函数调用频率"""
    print("\n" + "=" * 60)
    print("示例 1: 速率限制器（每 5 秒最多 3 次调用）")
    print("=" * 60)
    
    # 每 5 秒最多调用 3 次
    @RateLimiter(max_calls=3, time_window=5)
    def call_api(request_id: int):
        print(f"✅ API 调用 #{request_id} 成功 - {datetime.now().strftime('%H:%M:%S')}")
        return f"响应 {request_id}"
    
    # 尝试调用 5 次
    for i in range(1, 6):
        result = call_api(i)


def example_2_exponential_backoff():
    """示例 2: 指数退避重试"""
    print("\n" + "=" * 60)
    print("示例 2: 指数退避重试")
    print("=" * 60)
    
    call_count = [0]  # 使用列表来在闭包中修改值
    
    @retry_with_exponential_backoff(max_retries=3, initial_delay=0.5)
    def unstable_api():
        call_count[0] += 1
        print(f"📞 尝试 API 调用 #{call_count[0]}")
        
        # 模拟前 2 次调用失败
        if call_count[0] < 3:
            raise Exception("429 - Rate limit exceeded")
        
        print("✅ API 调用成功！")
        return "成功的响应"
    
    try:
        result = unstable_api()
        print(f"最终结果: {result}")
    except Exception as e:
        print(f"最终失败: {e}")


def example_3_token_bucket():
    """示例 3: 令牌桶算法"""
    print("\n" + "=" * 60)
    print("示例 3: 令牌桶（容量 5，每秒补充 2 个令牌）")
    print("=" * 60)
    
    # 创建令牌桶：容量 5，每秒补充 2 个令牌
    bucket = TokenBucket(capacity=5, refill_rate=2)
    
    # 快速发送 8 个请求
    for i in range(1, 9):
        bucket.wait_and_consume(1)
        print(f"✅ 请求 #{i} 已发送 - 剩余令牌: {bucket.tokens:.1f}")


def example_4_batch_requests():
    """示例 4: 批量请求处理"""
    print("\n" + "=" * 60)
    print("示例 4: 批量请求处理（避免限流）")
    print("=" * 60)
    
    def process_in_batches(items: list, batch_size: int, delay: float):
        """
        分批处理请求
        
        Args:
            items: 要处理的项目列表
            batch_size: 每批的大小
            delay: 批次之间的延迟（秒）
        """
        total = len(items)
        for i in range(0, total, batch_size):
            batch = items[i:i + batch_size]
            batch_num = i // batch_size + 1
            total_batches = (total + batch_size - 1) // batch_size
            
            print(f"\n📦 处理批次 {batch_num}/{total_batches}: {batch}")
            
            # 模拟 API 调用
            for item in batch:
                print(f"  ✅ 处理: {item}")
            
            # 如果不是最后一批，等待
            if i + batch_size < total:
                print(f"⏳ 等待 {delay} 秒...")
                time.sleep(delay)
        
        print(f"\n✅ 所有 {total} 个项目处理完成！")
    
    # 示例：处理 10 个项目，每批 3 个，间隔 1 秒
    items = [f"项目-{i}" for i in range(1, 11)]
    process_in_batches(items, batch_size=3, delay=1)


if __name__ == "__main__":
    print("\n🚀 API 限流解决方案演示")
    print("=" * 60)
    
    # 运行所有示例
    example_1_rate_limiter()
    time.sleep(1)
    
    example_2_exponential_backoff()
    time.sleep(1)
    
    example_3_token_bucket()
    time.sleep(1)
    
    example_4_batch_requests()
    
    print("\n" + "=" * 60)
    print("✅ 所有示例运行完成！")
    print("=" * 60)
