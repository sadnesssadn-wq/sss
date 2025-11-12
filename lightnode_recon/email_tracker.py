#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
邮件追踪工具
监控邮件打开率、链接点击率
"""

import base64
import hashlib
import json
from datetime import datetime
from urllib.parse import quote

class EmailTracker:
    def __init__(self, tracking_server_url):
        """
        tracking_server_url: 追踪服务器URL，用于接收追踪数据
        例如: http://your-server.com/track
        """
        self.tracking_server_url = tracking_server_url
        
    def generate_tracking_pixel(self, email_id, recipient_email):
        """生成追踪像素（1x1透明图片）"""
        # 生成唯一ID
        unique_id = hashlib.md5(f"{email_id}_{recipient_email}_{datetime.now().isoformat()}".encode()).hexdigest()
        
        # 编码追踪信息
        tracking_data = {
            "email_id": email_id,
            "recipient": recipient_email,
            "timestamp": datetime.now().isoformat(),
            "action": "open"
        }
        
        encoded_data = base64.b64encode(json.dumps(tracking_data).encode()).decode()
        
        # 生成追踪URL
        tracking_url = f"{self.tracking_server_url}/pixel?data={quote(encoded_data)}"
        
        # 返回HTML图片标签
        pixel_html = f'<img src="{tracking_url}" width="1" height="1" style="display:none;" />'
        
        return pixel_html, unique_id
    
    def generate_tracking_link(self, original_url, email_id, recipient_email, link_text="Click here"):
        """生成追踪链接"""
        # 生成唯一ID
        unique_id = hashlib.md5(f"{email_id}_{recipient_email}_{original_url}_{datetime.now().isoformat()}".encode()).hexdigest()
        
        # 编码追踪信息
        tracking_data = {
            "email_id": email_id,
            "recipient": recipient_email,
            "original_url": original_url,
            "timestamp": datetime.now().isoformat(),
            "action": "click"
        }
        
        encoded_data = base64.b64encode(json.dumps(tracking_data).encode()).decode()
        
        # 生成追踪URL（重定向到原始URL）
        tracking_url = f"{self.tracking_server_url}/redirect?data={quote(encoded_data)}"
        
        # 返回HTML链接
        link_html = f'<a href="{tracking_url}">{link_text}</a>'
        
        return link_html, unique_id
    
    def embed_tracking(self, email_body, email_id, recipient_email, malicious_link, link_text="Click here"):
        """在邮件正文中嵌入追踪"""
        # 添加追踪像素
        pixel_html, pixel_id = self.generate_tracking_pixel(email_id, recipient_email)
        
        # 替换恶意链接为追踪链接
        tracking_link_html, link_id = self.generate_tracking_link(malicious_link, email_id, recipient_email, link_text)
        
        # 在邮件末尾添加追踪像素
        tracked_body = email_body.replace(malicious_link, tracking_link_html)
        tracked_body += f"\n\n{pixel_html}"
        
        return tracked_body, {"pixel_id": pixel_id, "link_id": link_id}

def main():
    """示例使用"""
    print("=== 邮件追踪工具 ===\n")
    
    # 配置追踪服务器
    tracker = EmailTracker("http://your-server.com/track")
    
    # 示例邮件
    email_body = """
    Dear Customer,
    
    Please click the link below to verify your account:
    https://malicious-link.com/verify
    
    Best regards,
    Support Team
    """
    
    # 嵌入追踪
    tracked_body, tracking_ids = tracker.embed_tracking(
        email_body,
        email_id="email_001",
        recipient_email="target@example.com",
        malicious_link="https://malicious-link.com/verify",
        link_text="Verify Your Account"
    )
    
    print("[+] 追踪已嵌入:")
    print(f"    像素ID: {tracking_ids['pixel_id']}")
    print(f"    链接ID: {tracking_ids['link_id']}\n")
    
    print("[+] 追踪后的邮件正文:")
    print(tracked_body)
    
    print("\n[+] 追踪功能:")
    print("    - 邮件打开追踪（通过1x1像素图片）")
    print("    - 链接点击追踪（通过重定向URL）")
    print("    - 时间戳记录")
    print("    - 收件人识别")

if __name__ == "__main__":
    main()
