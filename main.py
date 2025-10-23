#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
简单的 Python Web 计算器应用
运行在端口 8888
"""

from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    """主页"""
    return render_template('index.html')

@app.route('/calculate', methods=['POST'])
def calculate():
    """执行计算"""
    try:
        data = request.get_json()
        num1 = float(data.get('num1', 0))
        num2 = float(data.get('num2', 0))
        
        results = {
            'addition': num1 + num2,
            'subtraction': num1 - num2,
            'multiplication': num1 * num2,
            'division': num1 / num2 if num2 != 0 else '除数不能为 0'
        }
        
        return jsonify({'success': True, 'results': results})
    except ValueError:
        return jsonify({'success': False, 'error': '请输入有效的数字！'})
    except Exception as e:
        return jsonify({'success': False, 'error': str(e)})

if __name__ == "__main__":
    print("=" * 50)
    print("欢迎使用 Python Web 计算器！")
    print("访问 http://localhost:8888")
    print("=" * 50)
    app.run(host='0.0.0.0', port=8888, debug=True)
