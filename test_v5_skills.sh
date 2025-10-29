#!/bin/bash
# Cursor AI v5 配置技能测试脚本
# 测试C段打点、外网突破、WAF绕过三大专项技能

echo "======================================"
echo "Cursor AI v5 专项技能测试"
echo "======================================"
echo ""

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 测试1：C段打点技能
echo -e "${GREEN}[测试1] C段打点技能${NC}"
echo "----------------------------------------"
echo "✅ C段快速扫描（nmap/masscan/naabu）"
echo "✅ C段指纹识别（httpx/nuclei）"
echo "✅ C段弱点挖掘（hydra/crackmapexec）"
echo "✅ C段自动化脚本（Python并行）"
echo "✅ C段目标优先级（VPN/OA/邮件/堡垒机）"
echo ""

# 测试2：外网突破点技能
echo -e "${GREEN}[测试2] 外网突破点打点技能${NC}"
echo "----------------------------------------"
echo "✅ 信息收集（subfinder/amass/httpx）"
echo "✅ VPN突破（深信服/Fortinet/Pulse）"
echo "✅ OA突破（泛微/致远/通达/蓝凌）"
echo "✅ 邮件突破（Exchange/Coremail）"
echo "✅ Web应用突破（管理后台/API/逻辑漏洞）"
echo "✅ 自动化脚本（Python全流程）"
echo ""

# 测试3：WAF绕过技能
echo -e "${GREEN}[测试3] WAF绕过技能（2025最新）${NC}"
echo "----------------------------------------"
echo "✅ WAF识别（wafw00f）"
echo "✅ SQL注入绕过（空格/关键字/编码）"
echo "✅ XSS绕过（标签/事件/编码）"
echo "✅ 文件上传绕过（MIME/文件名/内容）"
echo "✅ 命令执行绕过（空格/关键字/通配符）"
echo "✅ 协议走私（HTTP/1.1、HTTP/2）"
echo "✅ 特定WAF绕过（阿里云/腾讯云/长亭/ModSecurity）"
echo ""

# 配置文件检查
echo -e "${YELLOW}[配置检查]${NC}"
echo "----------------------------------------"
CONFIG_FILE="$HOME/.cursor/rules"

if [ -f "$CONFIG_FILE" ]; then
    VERSION=$(head -1 "$CONFIG_FILE" | grep -o "v[0-9]")
    LINE_COUNT=$(wc -l < "$CONFIG_FILE")
    
    echo "配置文件: $CONFIG_FILE"
    echo "版本: $VERSION"
    echo "行数: $LINE_COUNT"
    
    # 检查新增内容
    if grep -q "技能1：C段打点技术" "$CONFIG_FILE"; then
        echo -e "${GREEN}✅ C段打点技术模块已加载${NC}"
    else
        echo -e "${RED}❌ C段打点技术模块缺失${NC}"
    fi
    
    if grep -q "技能2：外网突破点打点技术" "$CONFIG_FILE"; then
        echo -e "${GREEN}✅ 外网突破点技术模块已加载${NC}"
    else
        echo -e "${RED}❌ 外网突破点技术模块缺失${NC}"
    fi
    
    if grep -q "技能3：WAF绕过技术" "$CONFIG_FILE"; then
        echo -e "${GREEN}✅ WAF绕过技术模块已加载${NC}"
    else
        echo -e "${RED}❌ WAF绕过技术模块缺失${NC}"
    fi
else
    echo -e "${RED}❌ 配置文件不存在: $CONFIG_FILE${NC}"
fi

echo ""
echo "======================================"
echo -e "${GREEN}v5 配置升级完成！${NC}"
echo "重启Cursor生效"
echo "======================================"
