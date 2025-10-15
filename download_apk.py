#!/usr/bin/env python3
import requests
import re
import sys
import time
from urllib.parse import urljoin, urlparse

def download_from_apkpure(package_name):
    """尝试从APKPure下载APK"""
    base_url = "https://apkpure.net"
    
    # 构建搜索URL
    search_url = f"{base_url}/search?q={package_name}"
    
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
    }
    
    session = requests.Session()
    session.headers.update(headers)
    
    try:
        # 搜索应用
        print(f"搜索应用: {package_name}")
        response = session.get(search_url, timeout=30)
        
        if response.status_code == 200:
            # 查找应用链接
            app_links = re.findall(r'href="([^"]*' + package_name.replace('.', r'\.') + r'[^"]*)"', response.text)
            
            if app_links:
                app_url = urljoin(base_url, app_links[0])
                print(f"找到应用页面: {app_url}")
                
                # 获取应用页面
                app_response = session.get(app_url, timeout=30)
                
                if app_response.status_code == 200:
                    # 查找下载链接
                    download_links = re.findall(r'href="([^"]*download[^"]*)"', app_response.text)
                    
                    if download_links:
                        download_url = urljoin(base_url, download_links[0])
                        print(f"找到下载链接: {download_url}")
                        
                        # 下载APK
                        apk_response = session.get(download_url, timeout=60, stream=True)
                        
                        if apk_response.status_code == 200:
                            filename = f"{package_name}.apk"
                            
                            with open(filename, 'wb') as f:
                                for chunk in apk_response.iter_content(chunk_size=8192):
                                    if chunk:
                                        f.write(chunk)
                            
                            print(f"APK下载成功: {filename}")
                            return filename
                        else:
                            print(f"下载失败，状态码: {apk_response.status_code}")
                    else:
                        print("未找到下载链接")
                else:
                    print(f"获取应用页面失败，状态码: {app_response.status_code}")
            else:
                print("未找到应用")
        else:
            print(f"搜索失败，状态码: {response.status_code}")
            
    except Exception as e:
        print(f"下载过程中出现错误: {e}")
    
    return None

def download_from_apkmirror(package_name):
    """尝试从APKMirror下载APK"""
    print("尝试从APKMirror下载...")
    
    # APKMirror需要更复杂的处理，这里先跳过
    return None

def download_from_alternative_sources(package_name):
    """尝试从其他源下载"""
    sources = [
        f"https://apk.support/download-app/{package_name}",
        f"https://www.apkmonk.com/app/{package_name}/",
        f"https://apksos.com/app/{package_name}"
    ]
    
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
    }
    
    for source in sources:
        try:
            print(f"尝试从 {source} 下载...")
            response = requests.get(source, headers=headers, timeout=30)
            
            if response.status_code == 200:
                # 查找APK下载链接
                apk_links = re.findall(r'href="([^"]*\.apk[^"]*)"', response.text)
                
                if apk_links:
                    apk_url = apk_links[0]
                    if not apk_url.startswith('http'):
                        apk_url = urljoin(source, apk_url)
                    
                    print(f"找到APK链接: {apk_url}")
                    
                    # 下载APK
                    apk_response = requests.get(apk_url, headers=headers, timeout=60, stream=True)
                    
                    if apk_response.status_code == 200:
                        filename = f"{package_name}.apk"
                        
                        with open(filename, 'wb') as f:
                            for chunk in apk_response.iter_content(chunk_size=8192):
                                if chunk:
                                    f.write(chunk)
                        
                        print(f"APK下载成功: {filename}")
                        return filename
                        
        except Exception as e:
            print(f"从 {source} 下载失败: {e}")
            continue
    
    return None

if __name__ == "__main__":
    package_name = "com.vnpost.tellers"
    
    print(f"开始下载 {package_name}")
    
    # 尝试不同的下载源
    result = download_from_apkpure(package_name)
    
    if not result:
        result = download_from_alternative_sources(package_name)
    
    if not result:
        print("所有下载方法都失败了")
        sys.exit(1)
    else:
        print(f"下载完成: {result}")