#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Swagger API 文档分析器
从 Swagger/OpenAPI 文档中提取所有 API 端点和敏感信息
"""

import requests
import json
from datetime import datetime
from urllib.parse import urljoin, urlparse
from typing import Dict, List
import urllib3

# 禁用 SSL 警告
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)


class SwaggerAnalyzer:
    """Swagger 文档分析器"""
    
    def __init__(self, swagger_url: str):
        self.swagger_url = swagger_url
        self.base_url = self._extract_base_url(swagger_url)
        self.swagger_data = None
        self.results = {
            'target': swagger_url,
            'timestamp': datetime.now().strftime('%Y-%m-%d %H:%M:%S'),
            'base_url': self.base_url,
            'api_info': {},
            'endpoints': [],
            'security_issues': [],
            'statistics': {}
        }
    
    def _extract_base_url(self, url: str) -> str:
        """提取基础 URL"""
        parsed = urlparse(url)
        return f"{parsed.scheme}://{parsed.netloc}"
    
    def fetch_swagger_doc(self):
        """获取 Swagger 文档"""
        print("\n" + "="*60)
        print("1. 获取 Swagger 文档")
        print("="*60)
        print(f"URL: {self.swagger_url}")
        
        # 尝试多个可能的 Swagger 文档路径
        possible_paths = [
            '',
            '/v2/api-docs',
            '/v3/api-docs',
            '/api-docs',
            '/swagger.json',
            '/swagger.yaml',
            '/api/swagger.json',
        ]
        
        for path in possible_paths:
            try:
                url = urljoin(self.swagger_url, path) if path else self.swagger_url
                print(f"  尝试: {url}")
                
                response = requests.get(url, verify=False, timeout=15)
                
                if response.status_code == 200:
                    # 尝试解析 JSON
                    try:
                        self.swagger_data = response.json()
                        print(f"  ✓ 成功获取 Swagger 文档")
                        return True
                    except:
                        # 可能是 HTML 页面，检查是否包含 Swagger UI
                        if 'swagger' in response.text.lower():
                            # 尝试从 HTML 中提取 API 文档 URL
                            import re
                            match = re.search(r'url:\s*["\']([^"\']+)["\']', response.text)
                            if match:
                                api_url = urljoin(url, match.group(1))
                                print(f"  发现 API 文档 URL: {api_url}")
                                response = requests.get(api_url, verify=False, timeout=15)
                                self.swagger_data = response.json()
                                print(f"  ✓ 成功获取 Swagger 文档")
                                return True
            except Exception as e:
                continue
        
        print("  ✗ 无法获取 Swagger 文档")
        return False
    
    def analyze_api_info(self):
        """分析 API 基本信息"""
        print("\n" + "="*60)
        print("2. API 基本信息")
        print("="*60)
        
        if not self.swagger_data:
            return
        
        # 提取基本信息
        info = self.swagger_data.get('info', {})
        self.results['api_info'] = {
            'title': info.get('title', 'Unknown'),
            'description': info.get('description', ''),
            'version': info.get('version', 'Unknown'),
            'contact': info.get('contact', {}),
            'license': info.get('license', {})
        }
        
        print(f"  标题: {self.results['api_info']['title']}")
        print(f"  版本: {self.results['api_info']['version']}")
        if self.results['api_info']['description']:
            print(f"  描述: {self.results['api_info']['description'][:100]}")
        
        # 提取服务器信息
        servers = self.swagger_data.get('servers', [])
        if servers:
            print(f"\n  服务器:")
            for server in servers:
                print(f"    - {server.get('url', 'N/A')}")
                if server.get('description'):
                    print(f"      {server.get('description')}")
        
        # 提取 basePath (Swagger 2.0)
        if 'basePath' in self.swagger_data:
            print(f"  基础路径: {self.swagger_data['basePath']}")
        
        # 提取 host (Swagger 2.0)
        if 'host' in self.swagger_data:
            print(f"  主机: {self.swagger_data['host']}")
    
    def extract_endpoints(self):
        """提取所有 API 端点"""
        print("\n" + "="*60)
        print("3. 提取 API 端点")
        print("="*60)
        
        if not self.swagger_data:
            return
        
        paths = self.swagger_data.get('paths', {})
        
        for path, methods in paths.items():
            for method, details in methods.items():
                if method.upper() not in ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'OPTIONS', 'HEAD']:
                    continue
                
                endpoint = {
                    'path': path,
                    'method': method.upper(),
                    'summary': details.get('summary', ''),
                    'description': details.get('description', ''),
                    'tags': details.get('tags', []),
                    'parameters': [],
                    'security': details.get('security', []),
                    'deprecated': details.get('deprecated', False),
                    'risk_level': 'low'
                }
                
                # 提取参数
                parameters = details.get('parameters', [])
                for param in parameters:
                    param_info = {
                        'name': param.get('name', ''),
                        'in': param.get('in', ''),
                        'required': param.get('required', False),
                        'type': param.get('type', param.get('schema', {}).get('type', 'unknown')),
                        'description': param.get('description', '')
                    }
                    endpoint['parameters'].append(param_info)
                
                # 分析风险等级
                endpoint['risk_level'] = self._assess_risk(endpoint)
                
                self.results['endpoints'].append(endpoint)
                
                # 打印高风险端点
                if endpoint['risk_level'] == 'high':
                    print(f"  [HIGH] {method.upper()} {path}")
                    if endpoint['summary']:
                        print(f"         {endpoint['summary']}")
        
        print(f"\n  ✓ 共发现 {len(self.results['endpoints'])} 个 API 端点")
    
    def _assess_risk(self, endpoint: Dict) -> str:
        """评估端点风险等级"""
        high_risk_keywords = [
            'delete', 'remove', 'admin', 'user', 'password', 'token',
            'auth', 'login', 'credential', 'secret', 'key', 'upload',
            'execute', 'eval', 'system', 'command', 'file'
        ]
        
        medium_risk_keywords = [
            'update', 'modify', 'edit', 'create', 'add', 'post'
        ]
        
        path_lower = endpoint['path'].lower()
        summary_lower = endpoint['summary'].lower()
        
        # 检查是否有认证要求
        has_auth = len(endpoint['security']) > 0
        
        # 检查方法
        is_write_method = endpoint['method'] in ['POST', 'PUT', 'DELETE', 'PATCH']
        
        # 检查关键词
        for keyword in high_risk_keywords:
            if keyword in path_lower or keyword in summary_lower:
                return 'high'
        
        if is_write_method:
            for keyword in medium_risk_keywords:
                if keyword in path_lower or keyword in summary_lower:
                    return 'medium'
        
        if is_write_method and not has_auth:
            return 'high'
        
        return 'low'
    
    def identify_security_issues(self):
        """识别安全问题"""
        print("\n" + "="*60)
        print("4. 安全问题分析")
        print("="*60)
        
        # 检查认证机制
        security_schemes = self.swagger_data.get('securityDefinitions', {}) or \
                          self.swagger_data.get('components', {}).get('securitySchemes', {})
        
        if not security_schemes:
            issue = {
                'severity': 'HIGH',
                'title': '未定义安全机制',
                'description': 'Swagger 文档中未定义任何安全认证机制'
            }
            self.results['security_issues'].append(issue)
            print(f"  [HIGH] {issue['title']}")
        else:
            print(f"  ✓ 发现认证机制:")
            for name, scheme in security_schemes.items():
                print(f"    - {name}: {scheme.get('type', 'unknown')}")
        
        # 检查无认证的敏感端点
        unauth_sensitive = []
        for endpoint in self.results['endpoints']:
            if not endpoint['security'] and endpoint['risk_level'] in ['high', 'medium']:
                unauth_sensitive.append(f"{endpoint['method']} {endpoint['path']}")
        
        if unauth_sensitive:
            issue = {
                'severity': 'HIGH',
                'title': '敏感端点未要求认证',
                'description': f'发现 {len(unauth_sensitive)} 个敏感端点未要求认证',
                'endpoints': unauth_sensitive[:10]  # 只列出前10个
            }
            self.results['security_issues'].append(issue)
            print(f"  [HIGH] {issue['title']}: {len(unauth_sensitive)} 个")
            for ep in unauth_sensitive[:5]:
                print(f"    - {ep}")
        
        # 检查已弃用的端点
        deprecated = [ep for ep in self.results['endpoints'] if ep['deprecated']]
        if deprecated:
            issue = {
                'severity': 'MEDIUM',
                'title': '存在已弃用的端点',
                'description': f'发现 {len(deprecated)} 个已弃用但仍可访问的端点',
                'count': len(deprecated)
            }
            self.results['security_issues'].append(issue)
            print(f"  [MEDIUM] {issue['title']}: {len(deprecated)} 个")
        
        # Swagger UI 本身的暴露
        issue = {
            'severity': 'MEDIUM',
            'title': 'Swagger UI 公开暴露',
            'description': 'API 文档对外公开，泄露了完整的 API 结构和业务逻辑'
        }
        self.results['security_issues'].append(issue)
        print(f"  [MEDIUM] {issue['title']}")
    
    def generate_statistics(self):
        """生成统计信息"""
        methods_count = {}
        risk_count = {'high': 0, 'medium': 0, 'low': 0}
        tags_count = {}
        
        for endpoint in self.results['endpoints']:
            # 方法统计
            methods_count[endpoint['method']] = methods_count.get(endpoint['method'], 0) + 1
            
            # 风险统计
            risk_count[endpoint['risk_level']] += 1
            
            # 标签统计
            for tag in endpoint['tags']:
                tags_count[tag] = tags_count.get(tag, 0) + 1
        
        self.results['statistics'] = {
            'total_endpoints': len(self.results['endpoints']),
            'methods': methods_count,
            'risk_levels': risk_count,
            'tags': tags_count,
            'security_issues': len(self.results['security_issues'])
        }
    
    def export_results(self):
        """导出结果"""
        print("\n" + "="*60)
        print("5. 导出分析结果")
        print("="*60)
        
        # 完整 JSON
        filename_json = f"swagger_analysis_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"
        with open(filename_json, 'w', encoding='utf-8') as f:
            json.dump(self.results, f, ensure_ascii=False, indent=2)
        print(f"  ✓ JSON 报告: {filename_json}")
        
        # 文本报告
        filename_txt = f"swagger_report_{datetime.now().strftime('%Y%m%d_%H%M%S')}.txt"
        with open(filename_txt, 'w', encoding='utf-8') as f:
            f.write("="*70 + "\n")
            f.write("Swagger API 分析报告\n")
            f.write("="*70 + "\n")
            f.write(f"目标: {self.results['target']}\n")
            f.write(f"时间: {self.results['timestamp']}\n")
            f.write(f"API: {self.results['api_info'].get('title', 'N/A')} v{self.results['api_info'].get('version', 'N/A')}\n")
            f.write("="*70 + "\n\n")
            
            # 统计信息
            f.write("## 统计信息\n")
            f.write(f"总端点数: {self.results['statistics']['total_endpoints']}\n")
            f.write(f"高风险端点: {self.results['statistics']['risk_levels']['high']}\n")
            f.write(f"中风险端点: {self.results['statistics']['risk_levels']['medium']}\n")
            f.write(f"低风险端点: {self.results['statistics']['risk_levels']['low']}\n")
            f.write(f"安全问题: {self.results['statistics']['security_issues']}\n\n")
            
            # 方法统计
            f.write("## HTTP 方法分布\n")
            for method, count in sorted(self.results['statistics']['methods'].items()):
                f.write(f"  {method}: {count}\n")
            f.write("\n")
            
            # 安全问题
            f.write("## 安全问题\n")
            for issue in self.results['security_issues']:
                f.write(f"\n[{issue['severity']}] {issue['title']}\n")
                f.write(f"描述: {issue['description']}\n")
                if 'endpoints' in issue:
                    f.write("相关端点:\n")
                    for ep in issue['endpoints']:
                        f.write(f"  - {ep}\n")
            f.write("\n")
            
            # 高风险端点列表
            f.write("## 高风险端点\n")
            high_risk = [ep for ep in self.results['endpoints'] if ep['risk_level'] == 'high']
            for ep in high_risk:
                f.write(f"\n{ep['method']} {ep['path']}\n")
                if ep['summary']:
                    f.write(f"  摘要: {ep['summary']}\n")
                if ep['parameters']:
                    f.write(f"  参数:\n")
                    for param in ep['parameters']:
                        required = " (必需)" if param['required'] else ""
                        f.write(f"    - {param['name']} ({param['in']}){required}\n")
            
            # 所有端点列表
            f.write("\n\n## 完整端点列表\n")
            for ep in self.results['endpoints']:
                risk_tag = f"[{ep['risk_level'].upper()}]"
                f.write(f"{risk_tag:10} {ep['method']:7} {ep['path']}\n")
                if ep['summary']:
                    f.write(f"           {ep['summary']}\n")
        
        print(f"  ✓ 文本报告: {filename_txt}")
        
        # 端点列表 (供其他工具使用)
        filename_endpoints = f"endpoints_{datetime.now().strftime('%Y%m%d_%H%M%S')}.txt"
        with open(filename_endpoints, 'w', encoding='utf-8') as f:
            for ep in self.results['endpoints']:
                full_url = self.base_url + ep['path']
                f.write(f"{ep['method']} {full_url}\n")
        print(f"  ✓ 端点列表: {filename_endpoints}")
        
        return filename_json, filename_txt, filename_endpoints
    
    def print_summary(self):
        """打印摘要"""
        print("\n" + "="*60)
        print("分析摘要")
        print("="*60)
        print(f"API 标题: {self.results['api_info'].get('title', 'N/A')}")
        print(f"API 版本: {self.results['api_info'].get('version', 'N/A')}")
        print(f"\n端点总数: {self.results['statistics']['total_endpoints']}")
        print(f"  高风险: {self.results['statistics']['risk_levels']['high']}")
        print(f"  中风险: {self.results['statistics']['risk_levels']['medium']}")
        print(f"  低风险: {self.results['statistics']['risk_levels']['low']}")
        print(f"\n安全问题: {self.results['statistics']['security_issues']}")
        print("="*60)
    
    def run(self):
        """执行完整分析"""
        print("\n" + "#"*60)
        print("# Swagger API 文档分析器")
        print("#"*60)
        
        if not self.fetch_swagger_doc():
            print("\n[错误] 无法获取 Swagger 文档")
            return
        
        self.analyze_api_info()
        self.extract_endpoints()
        self.identify_security_issues()
        self.generate_statistics()
        self.print_summary()
        self.export_results()
        
        print("\n" + "#"*60)
        print("# 分析完成！")
        print("#"*60)


def main():
    import sys
    
    if len(sys.argv) > 1:
        swagger_url = sys.argv[1]
    else:
        swagger_url = "https://apilogistics.ems.com.vn:8080/swagger"
    
    analyzer = SwaggerAnalyzer(swagger_url)
    analyzer.run()


if __name__ == "__main__":
    main()
