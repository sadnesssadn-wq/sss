#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
测试 EMS Inquiry API 调用
"""

from inquiry_api import EMSInquiryAPI


def test_api():
    """测试API调用"""
    print("开始测试 EMS Inquiry API")
    print("-" * 60)
    
    # 创建API客户端
    api = EMSInquiryAPI()
    
    # 测试运单号
    parcel_code = "EP493018285VN"
    
    print(f"测试运单号: {parcel_code}")
    print()
    
    # 调用API
    result = api.inquiry(parcel_code)
    
    if result:
        print()
        print("API调用成功！")
        print()
        
        # 解析时间信息
        time_info = api.parse_time_info(result)
        
        if time_info:
            print()
            print("成功获取时间信息:")
            if 'IssueDate' in time_info:
                print(f"  发行日期 (IssueDate): {time_info['IssueDate']}")
            if 'LoadDate' in time_info:
                print(f"  装载日期 (LoadDate): {time_info['LoadDate']}")
        
        return True
    else:
        print()
        print("API调用失败")
        print()
        print("可能的原因:")
        print("1. 网络连接问题")
        print("2. API密钥无效")
        print("3. 签名算法不正确 - 可能需要更复杂的签名逻辑")
        print("4. 运单号不存在")
        
        return False


if __name__ == "__main__":
    test_api()
