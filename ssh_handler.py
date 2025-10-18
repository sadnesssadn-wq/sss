#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
SSH 连接处理模块
用于处理远程 SSH 连接失败和错误
"""

import logging
import socket
import time
from typing import Optional, Tuple
from datetime import datetime


class SSHConnectionError(Exception):
    """SSH 连接错误基类"""
    pass


class SSHConnectionHandler:
    """SSH 连接处理器"""
    
    def __init__(self, host: str, port: int = 22, timeout: int = 30):
        """
        初始化 SSH 连接处理器
        
        Args:
            host: 远程主机地址
            port: SSH 端口，默认 22
            timeout: 连接超时时间（秒），默认 30
        """
        self.host = host
        self.port = port
        self.timeout = timeout
        self.logger = self._setup_logger()
        
    def _setup_logger(self) -> logging.Logger:
        """设置日志记录器"""
        logger = logging.getLogger('SSHConnectionHandler')
        logger.setLevel(logging.INFO)
        
        # 控制台处理器
        console_handler = logging.StreamHandler()
        console_handler.setLevel(logging.INFO)
        
        # 文件处理器
        file_handler = logging.FileHandler('ssh_connection.log', encoding='utf-8')
        file_handler.setLevel(logging.DEBUG)
        
        # 格式化器
        formatter = logging.Formatter(
            '%(asctime)s - %(name)s - %(levelname)s - %(message)s',
            datefmt='%Y-%m-%d %H:%M:%S'
        )
        console_handler.setFormatter(formatter)
        file_handler.setFormatter(formatter)
        
        logger.addHandler(console_handler)
        logger.addHandler(file_handler)
        
        return logger
    
    def test_connection(self) -> Tuple[bool, Optional[str]]:
        """
        测试 SSH 连接
        
        Returns:
            (成功状态, 错误信息)
        """
        try:
            self.logger.info(f"正在测试连接到 {self.host}:{self.port}...")
            
            # 创建 socket 连接测试
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(self.timeout)
            
            start_time = time.time()
            result = sock.connect_ex((self.host, self.port))
            elapsed_time = time.time() - start_time
            
            sock.close()
            
            if result == 0:
                self.logger.info(f"✓ 连接成功！响应时间: {elapsed_time:.2f}秒")
                return True, None
            else:
                error_msg = f"连接失败 (错误代码: {result})"
                self.logger.error(f"✗ {error_msg}")
                return False, error_msg
                
        except socket.timeout:
            error_msg = f"连接超时 (超过 {self.timeout} 秒)"
            self.logger.error(f"✗ {error_msg}")
            return False, error_msg
            
        except socket.gaierror as e:
            error_msg = f"DNS 解析失败: {str(e)}"
            self.logger.error(f"✗ {error_msg}")
            return False, error_msg
            
        except ConnectionRefusedError:
            error_msg = "连接被拒绝 - 服务器可能未运行 SSH 服务"
            self.logger.error(f"✗ {error_msg}")
            return False, error_msg
            
        except Exception as e:
            error_msg = f"未知错误: {str(e)}"
            self.logger.error(f"✗ {error_msg}")
            return False, error_msg
    
    def retry_connection(self, max_retries: int = 3, retry_delay: int = 5) -> Tuple[bool, Optional[str]]:
        """
        重试连接
        
        Args:
            max_retries: 最大重试次数
            retry_delay: 重试延迟（秒）
            
        Returns:
            (成功状态, 错误信息)
        """
        self.logger.info(f"开始连接重试，最多尝试 {max_retries} 次...")
        
        for attempt in range(1, max_retries + 1):
            self.logger.info(f"尝试 {attempt}/{max_retries}...")
            
            success, error = self.test_connection()
            
            if success:
                self.logger.info("✓ 连接成功！")
                return True, None
            
            if attempt < max_retries:
                self.logger.info(f"等待 {retry_delay} 秒后重试...")
                time.sleep(retry_delay)
        
        final_error = f"连接失败：所有 {max_retries} 次重试均失败"
        self.logger.error(f"✗ {final_error}")
        return False, final_error
    
    def get_connection_diagnostics(self) -> dict:
        """
        获取连接诊断信息
        
        Returns:
            诊断信息字典
        """
        diagnostics = {
            'timestamp': datetime.now().isoformat(),
            'host': self.host,
            'port': self.port,
            'timeout': self.timeout,
        }
        
        # 测试网络连接
        try:
            socket.gethostbyname(self.host)
            diagnostics['dns_resolution'] = '成功'
        except socket.gaierror:
            diagnostics['dns_resolution'] = '失败 - 无法解析主机名'
        
        # 测试连接
        success, error = self.test_connection()
        diagnostics['connection_test'] = '成功' if success else f'失败 - {error}'
        
        return diagnostics
    
    def print_diagnostics(self):
        """打印诊断信息"""
        print("\n" + "=" * 60)
        print("SSH 连接诊断报告")
        print("=" * 60)
        
        diagnostics = self.get_connection_diagnostics()
        
        print(f"\n时间: {diagnostics['timestamp']}")
        print(f"主机: {diagnostics['host']}")
        print(f"端口: {diagnostics['port']}")
        print(f"超时设置: {diagnostics['timeout']} 秒")
        print(f"\nDNS 解析: {diagnostics['dns_resolution']}")
        print(f"连接测试: {diagnostics['connection_test']}")
        
        print("\n" + "=" * 60)
        print("建议:")
        print("=" * 60)
        
        if 'DNS 解析' in diagnostics['connection_test']:
            print("1. 检查主机名是否正确")
            print("2. 检查网络连接")
            print("3. 检查 DNS 服务器设置")
        elif '超时' in diagnostics['connection_test']:
            print("1. 检查网络连接")
            print("2. 检查防火墙设置")
            print("3. 增加超时时间设置")
        elif '拒绝' in diagnostics['connection_test']:
            print("1. 确认远程主机 SSH 服务已启动")
            print("2. 检查 SSH 端口是否正确")
            print("3. 检查防火墙规则")
        else:
            print("1. 检查日志文件 ssh_connection.log 获取详细信息")
            print("2. 确认远程主机可访问")
            print("3. 确认有正确的访问权限")
        
        print("\n日志文件位置: ssh_connection.log")
        print("=" * 60 + "\n")


def handle_connection_failure(host: str, port: int = 22):
    """
    处理 SSH 连接失败的便捷函数
    
    Args:
        host: 远程主机地址
        port: SSH 端口，默认 22
    """
    handler = SSHConnectionHandler(host, port)
    handler.print_diagnostics()
    
    # 询问是否重试
    retry = input("\n是否尝试重新连接？(y/n): ").lower()
    if retry == 'y':
        success, error = handler.retry_connection(max_retries=3, retry_delay=5)
        if not success:
            print(f"\n❌ 连接失败: {error}")
            print("请查看日志文件获取更多详细信息。")
        else:
            print("\n✅ 连接成功！")


if __name__ == "__main__":
    # 示例使用
    print("SSH 连接处理器测试")
    print("-" * 60)
    
    host = input("请输入远程主机地址 (如: example.com): ").strip()
    if not host:
        host = "localhost"
    
    port_input = input("请输入 SSH 端口 (默认 22): ").strip()
    port = int(port_input) if port_input else 22
    
    handle_connection_failure(host, port)
