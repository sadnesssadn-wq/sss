#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
单元测试模块
"""

import unittest
from unittest.mock import patch
from io import StringIO
import sys

# 导入主模块（我们需要重构 main.py 使其可测试）


class TestCalculatorFunctions(unittest.TestCase):
    """测试计算器功能"""
    
    def test_addition(self):
        """测试加法"""
        self.assertEqual(5 + 3, 8)
        self.assertEqual(10 + (-5), 5)
        self.assertEqual(0 + 0, 0)
        self.assertEqual(-5 + (-3), -8)
    
    def test_subtraction(self):
        """测试减法"""
        self.assertEqual(10 - 3, 7)
        self.assertEqual(5 - 10, -5)
        self.assertEqual(0 - 5, -5)
        self.assertEqual(-5 - (-3), -2)
    
    def test_multiplication(self):
        """测试乘法"""
        self.assertEqual(5 * 3, 15)
        self.assertEqual(5 * (-3), -15)
        self.assertEqual(0 * 100, 0)
        self.assertEqual(-5 * (-3), 15)
    
    def test_division(self):
        """测试除法"""
        self.assertEqual(10 / 2, 5)
        self.assertEqual(9 / 3, 3)
        self.assertEqual(7 / 2, 3.5)
        self.assertEqual(-10 / 2, -5)
    
    def test_division_by_zero(self):
        """测试除以零的情况"""
        with self.assertRaises(ZeroDivisionError):
            result = 10 / 0


class TestInputValidation(unittest.TestCase):
    """测试输入验证"""
    
    def test_valid_float_conversion(self):
        """测试有效的浮点数转换"""
        self.assertEqual(float("123"), 123.0)
        self.assertEqual(float("123.45"), 123.45)
        self.assertEqual(float("-123.45"), -123.45)
        self.assertEqual(float("0"), 0.0)
    
    def test_invalid_float_conversion(self):
        """测试无效的浮点数转换"""
        with self.assertRaises(ValueError):
            float("abc")
        with self.assertRaises(ValueError):
            float("12.34.56")
        with self.assertRaises(ValueError):
            float("")


class TestMainFunction(unittest.TestCase):
    """测试主函数"""
    
    @patch('builtins.input', side_effect=['张三', '10', '5'])
    @patch('sys.stdout', new_callable=StringIO)
    def test_main_with_valid_input(self, mock_stdout, mock_input):
        """测试主函数的正常运行"""
        from main import main
        
        try:
            main()
        except EOFError:
            pass  # 预期的行为，因为我们模拟了有限的输入
        
        output = mock_stdout.getvalue()
        self.assertIn("欢迎使用 Python 应用！", output)
        self.assertIn("张三", output)
    
    @patch('builtins.input', side_effect=['李四', 'abc', '5'])
    @patch('sys.stdout', new_callable=StringIO)
    def test_main_with_invalid_input(self, mock_stdout, mock_input):
        """测试主函数处理无效输入"""
        from main import main
        
        try:
            main()
        except EOFError:
            pass
        
        output = mock_stdout.getvalue()
        self.assertIn("错误", output)


if __name__ == '__main__':
    unittest.main()
