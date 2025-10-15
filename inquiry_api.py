#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
EMS Delivery Inquiry API 调用脚本
获取运单的时间信息
"""

import requests
import hashlib
from datetime import datetime


class EMSInquiryAPI:
    """EMS Inquiry API 客户端"""
    
    def __init__(self):
        self.base_url = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
        self.headers = {
            "Authorization": "Basic bG90dG5ldDpkbXM=",
            "APIKey": "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A",
            "Content-Type": "application/x-www-form-urlencoded"
        }
    
    def generate_signature(self, parcel_code):
        """
        生成SHA256签名
        
        Args:
            parcel_code: 运单号
            
        Returns:
            SHA256签名字符串
        """
        # 签名 = SHA256(运单号 + APIKey)
        api_key = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
        signature = hashlib.sha256((parcel_code + api_key).encode('utf-8')).hexdigest().upper()
        return signature
    
    def inquiry(self, parcel_code):
        """
        查询运单信息
        
        Args:
            parcel_code: 运单号，例如 "EP493018285VN"
            
        Returns:
            API响应结果
        """
        # 生成签名
        signature = self.generate_signature(parcel_code)
        
        # 准备请求数据
        data = {
            "ParcelCode": parcel_code,
            "Signature": signature
        }
        
        try:
            print(f"正在查询运单: {parcel_code}")
            print(f"签名: {signature}")
            print(f"请求URL: {self.base_url}")
            print("-" * 60)
            
            # 发送POST请求
            response = requests.post(
                self.base_url,
                headers=self.headers,
                data=data,
                timeout=30
            )
            
            # 检查响应状态
            print(f"响应状态码: {response.status_code}")
            
            if response.status_code == 200:
                result = response.json()
                return result
            else:
                print(f"请求失败: {response.status_code}")
                print(f"响应内容: {response.text}")
                return None
                
        except requests.exceptions.RequestException as e:
            print(f"请求错误: {e}")
            return None
        except Exception as e:
            print(f"发生错误: {e}")
            return None
    
    def parse_time_info(self, result):
        """
        解析时间信息
        
        Args:
            result: API响应结果
            
        Returns:
            包含时间信息的字典
        """
        if not result:
            return None
        
        time_info = {}
        
        # 检查是否有Value字段（实际数据在这里）
        data = result.get('Value', result)
        
        # 提取IssueDate和LoadDate
        if 'IssueDate' in data:
            time_info['IssueDate'] = data['IssueDate']
            print(f"IssueDate (发行日期): {data['IssueDate']}")
        
        if 'LoadDate' in data:
            time_info['LoadDate'] = data['LoadDate']
            print(f"LoadDate (装载日期): {data['LoadDate']}")
        
        return time_info


def main():
    """主函数"""
    print("=" * 60)
    print("EMS Delivery Inquiry API - 时间信息查询")
    print("=" * 60)
    print()
    
    # 创建API客户端
    api = EMSInquiryAPI()
    
    # 默认运单号
    parcel_code = "EP493018285VN"
    
    # 允许用户输入自定义运单号
    custom_code = input(f"请输入运单号 (按回车使用默认: {parcel_code}): ").strip()
    if custom_code:
        parcel_code = custom_code
    
    print()
    
    # 查询运单信息
    result = api.inquiry(parcel_code)
    
    if result:
        print()
        print("=" * 60)
        print("完整响应数据:")
        print("=" * 60)
        import json
        print(json.dumps(result, indent=2, ensure_ascii=False))
        print()
        
        print("=" * 60)
        print("时间信息:")
        print("=" * 60)
        time_info = api.parse_time_info(result)
        
        if time_info:
            print()
            print("提取的时间字段:")
            for key, value in time_info.items():
                print(f"  {key}: {value}")
    else:
        print()
        print("未能获取数据，请检查:")
        print("1. 网络连接是否正常")
        print("2. 运单号是否正确")
        print("3. API密钥是否有效")
        print("4. 签名算法是否正确 (如果API需要特定的签名方法)")
    
    print()
    print("=" * 60)
    print("查询完成！")
    print("=" * 60)


if __name__ == "__main__":
    main()
