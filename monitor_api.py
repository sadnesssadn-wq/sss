#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import requests
import hashlib
import time
from datetime import datetime
import json

def generate_signature(code):
    """生成签名"""
    private_key = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
    data = code.upper() + private_key
    return hashlib.sha256(data.encode('utf-8')).hexdigest().upper()

def test_tracktrace_api():
    """测试TrackTrace API"""
    code = "EF047535666VN"
    signature = generate_signature(code)
    
    url = "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading"
    payload = {'LadingCode': code, 'Signature': signature}
    
    try:
        start_time = time.time()
        response = requests.post(url, json=payload, timeout=5)
        end_time = time.time()
        
        response_time = end_time - start_time
        
        if response.status_code == 200:
            try:
                result = response.json()
                return {
                    'status': 'SUCCESS',
                    'response_time': response_time,
                    'code': result.get('Code'),
                    'message': result.get('Message'),
                    'data': result.get('Value') is not None
                }
            except:
                return {
                    'status': 'SUCCESS',
                    'response_time': response_time,
                    'code': 'UNKNOWN',
                    'message': 'Invalid JSON response',
                    'data': False
                }
        else:
            return {
                'status': 'ERROR',
                'response_time': response_time,
                'code': str(response.status_code),
                'message': 'HTTP Error',
                'data': False
            }
    except requests.exceptions.Timeout:
        return {
            'status': 'TIMEOUT',
            'response_time': 5.0,
            'code': 'TIMEOUT',
            'message': 'Request timeout',
            'data': False
        }
    except Exception as e:
        return {
            'status': 'ERROR',
            'response_time': 0,
            'code': 'EXCEPTION',
            'message': str(e),
            'data': False
        }

def test_inquiry_api():
    """测试Inquiry API作为对比"""
    code = "EF047535666VN"
    signature = generate_signature(code)
    
    url = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
    headers = {
        "Authorization": "Basic bG90dG5ldDpkbXM=",
        "APIKey": "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A",
        "Content-Type": "application/x-www-form-urlencoded"
    }
    data = {"ParcelCode": code, "Signature": signature}
    
    try:
        start_time = time.time()
        response = requests.post(url, headers=headers, data=data, timeout=5)
        end_time = time.time()
        
        response_time = end_time - start_time
        
        if response.status_code == 200:
            try:
                result = response.json()
                return {
                    'status': 'SUCCESS',
                    'response_time': response_time,
                    'code': result.get('Code'),
                    'message': result.get('Message'),
                    'data': result.get('Value') is not None
                }
            except:
                return {
                    'status': 'SUCCESS',
                    'response_time': response_time,
                    'code': 'UNKNOWN',
                    'message': 'Invalid JSON response',
                    'data': False
                }
        else:
            return {
                'status': 'ERROR',
                'response_time': response_time,
                'code': str(response.status_code),
                'message': 'HTTP Error',
                'data': False
            }
    except requests.exceptions.Timeout:
        return {
            'status': 'TIMEOUT',
            'response_time': 5.0,
            'code': 'TIMEOUT',
            'message': 'Request timeout',
            'data': False
        }
    except Exception as e:
        return {
            'status': 'ERROR',
            'response_time': 0,
            'code': 'EXCEPTION',
            'message': str(e),
            'data': False
        }

def monitor_apis():
    """监控API状态"""
    print("="*80)
    print("EMS API 监控工具")
    print("="*80)
    print(f"开始时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    print("监控API: TrackTrace + Inquiry (对比)")
    print("检查间隔: 30秒")
    print("="*80)
    
    tracktrace_success_count = 0
    inquiry_success_count = 0
    total_checks = 0
    
    try:
        while True:
            total_checks += 1
            current_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            
            print(f"\n[{current_time}] 第 {total_checks} 次检查")
            print("-" * 60)
            
            # 测试TrackTrace API
            print("🔍 测试 TrackTrace API...")
            tracktrace_result = test_tracktrace_api()
            
            if tracktrace_result['status'] == 'SUCCESS':
                tracktrace_success_count += 1
                print(f"✅ TrackTrace: {tracktrace_result['code']} - {tracktrace_result['message']} ({tracktrace_result['response_time']:.2f}s)")
                if tracktrace_result['data']:
                    print("   📊 有数据返回")
                else:
                    print("   ⚠️  无数据返回")
            elif tracktrace_result['status'] == 'TIMEOUT':
                print(f"⏰ TrackTrace: 超时 ({tracktrace_result['response_time']:.2f}s)")
            else:
                print(f"❌ TrackTrace: {tracktrace_result['code']} - {tracktrace_result['message']}")
            
            # 测试Inquiry API
            print("🔍 测试 Inquiry API...")
            inquiry_result = test_inquiry_api()
            
            if inquiry_result['status'] == 'SUCCESS':
                inquiry_success_count += 1
                print(f"✅ Inquiry: {inquiry_result['code']} - {inquiry_result['message']} ({inquiry_result['response_time']:.2f}s)")
                if inquiry_result['data']:
                    print("   📊 有数据返回")
                else:
                    print("   ⚠️  无数据返回")
            elif inquiry_result['status'] == 'TIMEOUT':
                print(f"⏰ Inquiry: 超时 ({inquiry_result['response_time']:.2f}s)")
            else:
                print(f"❌ Inquiry: {inquiry_result['code']} - {inquiry_result['message']}")
            
            # 统计信息
            tracktrace_rate = (tracktrace_success_count / total_checks) * 100
            inquiry_rate = (inquiry_success_count / total_checks) * 100
            
            print(f"\n📈 统计信息:")
            print(f"   TrackTrace 成功率: {tracktrace_success_count}/{total_checks} ({tracktrace_rate:.1f}%)")
            print(f"   Inquiry 成功率: {inquiry_success_count}/{total_checks} ({inquiry_rate:.1f}%)")
            
            # 如果TrackTrace恢复，特别提醒
            if tracktrace_result['status'] == 'SUCCESS' and tracktrace_result['data']:
                print(f"\n🎉 TrackTrace API 已恢复！可以重新启用！")
            
            print(f"\n⏳ 等待30秒后进行下次检查...")
            time.sleep(30)
            
    except KeyboardInterrupt:
        print(f"\n\n监控已停止")
        print(f"总检查次数: {total_checks}")
        print(f"TrackTrace 成功次数: {tracktrace_success_count}")
        print(f"Inquiry 成功次数: {inquiry_success_count}")

if __name__ == "__main__":
    monitor_apis()