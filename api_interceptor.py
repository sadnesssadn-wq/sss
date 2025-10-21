#!/usr/bin/env python3
"""
移动App API拦截与分析工具
功能: 自动抓包、解密、重放、参数篡改
依赖: mitmproxy
使用: mitmdump -s api_interceptor.py
"""

from mitmproxy import http, ctx
import json
import hashlib
import time
import base64
from urllib.parse import urlparse, parse_qs

class APIInterceptor:
    def __init__(self):
        self.api_log = []
        self.sensitive_keywords = ['password', 'token', 'key', 'secret', 'auth', 'session']
        
    def request(self, flow: http.HTTPFlow) -> None:
        """拦截请求"""
        request = flow.request
        url = request.pretty_url
        
        # 记录API请求
        api_info = {
            'method': request.method,
            'url': url,
            'headers': dict(request.headers),
            'timestamp': time.time()
        }
        
        # 解析请求体
        if request.content:
            try:
                if 'json' in request.headers.get('content-type', ''):
                    api_info['body'] = json.loads(request.content)
                else:
                    api_info['body'] = request.content.decode('utf-8', errors='ignore')
            except:
                api_info['body'] = base64.b64encode(request.content).decode()
        
        # 检测敏感信息
        self.detect_sensitive_data(api_info)
        
        # 分析签名算法
        self.analyze_signature(flow)
        
        # 参数污染测试
        self.test_parameter_pollution(flow)
        
        self.api_log.append(api_info)
        
    def response(self, flow: http.HTTPFlow) -> None:
        """拦截响应"""
        response = flow.response
        
        # 记录响应
        resp_info = {
            'status_code': response.status_code,
            'headers': dict(response.headers)
        }
        
        # 解析响应体
        if response.content:
            try:
                if 'json' in response.headers.get('content-type', ''):
                    resp_info['body'] = json.loads(response.content)
                    
                    # 检测业务逻辑漏洞
                    self.check_business_logic(resp_info['body'])
                else:
                    resp_info['body'] = response.content.decode('utf-8', errors='ignore')[:500]
            except:
                pass
        
        if self.api_log:
            self.api_log[-1]['response'] = resp_info
            
    def detect_sensitive_data(self, api_info):
        """检测敏感数据泄露"""
        sensitive_found = []
        
        # 检查URL参数
        parsed = urlparse(api_info['url'])
        params = parse_qs(parsed.query)
        
        for key in params:
            if any(keyword in key.lower() for keyword in self.sensitive_keywords):
                sensitive_found.append(f"URL参数: {key}={params[key]}")
        
        # 检查请求体
        if isinstance(api_info.get('body'), dict):
            for key in api_info['body']:
                if any(keyword in key.lower() for keyword in self.sensitive_keywords):
                    sensitive_found.append(f"Body参数: {key}")
        
        if sensitive_found:
            ctx.log.warn(f"🔥 敏感数据检测: {api_info['url']}")
            for item in sensitive_found:
                ctx.log.warn(f"   - {item}")
    
    def analyze_signature(self, flow):
        """分析API签名算法"""
        headers = flow.request.headers
        
        # 常见签名字段
        sig_fields = ['sign', 'signature', 'sig', 'token', 'auth']
        
        for field in sig_fields:
            if field in headers:
                ctx.log.info(f"📝 发现签名字段: {field} = {headers[field][:32]}...")
                
                # 尝试识别签名算法
                sig_value = headers[field]
                if len(sig_value) == 32:
                    ctx.log.info("   可能算法: MD5")
                elif len(sig_value) == 40:
                    ctx.log.info("   可能算法: SHA1")
                elif len(sig_value) == 64:
                    ctx.log.info("   可能算法: SHA256/SM3")
    
    def test_parameter_pollution(self, flow):
        """测试HTTP参数污染"""
        if flow.request.method == "GET":
            url = flow.request.pretty_url
            if '?' in url and '&' in url:
                ctx.log.info(f"🧪 参数污染测试点: {url}")
    
    def check_business_logic(self, body):
        """检查业务逻辑漏洞"""
        if not isinstance(body, dict):
            return
        
        # 检测价格/金额字段
        price_fields = ['price', 'amount', 'money', 'fee', 'cost', 'total']
        for field in price_fields:
            if field in body:
                ctx.log.warn(f"💰 价格字段检测: {field} = {body[field]}")
        
        # 检测用户ID/越权漏洞
        id_fields = ['user_id', 'uid', 'userId', 'memberId', 'accountId']
        for field in id_fields:
            if field in body:
                ctx.log.warn(f"👤 用户ID检测: {field} = {body[field]} (测试IDOR)")
        
        # 检测优惠券/积分
        benefit_fields = ['coupon', 'voucher', 'points', 'credit', 'discount']
        for field in benefit_fields:
            if field in body:
                ctx.log.warn(f"🎫 优惠字段检测: {field} = {body[field]}")

addons = [APIInterceptor()]
