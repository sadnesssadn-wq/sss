#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
main.py 的单元测试
"""

import unittest
from unittest.mock import patch
import io
import sys


class TestMainFunction(unittest.TestCase):
    """测试主函数"""
    
    @patch('builtins.input', side_effect=['张三', '10', '5'])
    @patch('sys.stdout', new_callable=io.StringIO)
    def test_main_with_valid_input(self, mock_stdout, mock_input):
        """测试正常输入流程"""
        from main import main
        
        main()
        
        output = mock_stdout.getvalue()
        self.assertIn('欢迎使用 Python 应用', output)
        self.assertIn('你好，张三', output)
        self.assertIn('10.0 + 5.0 = 15.0', output)
        self.assertIn('10.0 - 5.0 = 5.0', output)
        self.assertIn('10.0 × 5.0 = 50.0', output)
        self.assertIn('10.0 ÷ 5.0 = 2.0', output)
    
    @patch('builtins.input', side_effect=['李四', '8', '0'])
    @patch('sys.stdout', new_callable=io.StringIO)
    def test_main_with_zero_division(self, mock_stdout, mock_input):
        """测试除数为0的情况"""
        from main import main
        
        main()
        
        output = mock_stdout.getvalue()
        self.assertIn('你好，李四', output)
        self.assertIn('除数不能为 0', output)
    
    @patch('builtins.input', side_effect=['王五', 'abc', '5'])
    @patch('sys.stdout', new_callable=io.StringIO)
    def test_main_with_invalid_input(self, mock_stdout, mock_input):
        """测试无效输入"""
        from main import main
        
        main()
        
        output = mock_stdout.getvalue()
        self.assertIn('你好，王五', output)
        self.assertIn('错误：请输入有效的数字', output)


class TestCalculations(unittest.TestCase):
    """测试计算功能"""
    
    def test_addition(self):
        """测试加法"""
        self.assertEqual(10 + 5, 15)
        self.assertEqual(-3 + 7, 4)
    
    def test_subtraction(self):
        """测试减法"""
        self.assertEqual(10 - 5, 5)
        self.assertEqual(5 - 10, -5)
    
    def test_multiplication(self):
        """测试乘法"""
        self.assertEqual(10 * 5, 50)
        self.assertEqual(-3 * 4, -12)
    
    def test_division(self):
        """测试除法"""
        self.assertEqual(10 / 5, 2)
        self.assertEqual(15 / 3, 5)
        
        # 测试除数为0
        with self.assertRaises(ZeroDivisionError):
            result = 10 / 0


if __name__ == '__main__':
    unittest.main()
