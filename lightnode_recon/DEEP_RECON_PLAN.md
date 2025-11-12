# LightNode 深度信息收集计划
**目标**: lightnode.com  
**状态**: 全面信息收集进行中

---

## 📊 当前信息收集状态

### ✅ 已收集信息

1. **基础信息**
   - 公司名称: LightNode
   - 业务类型: VPS/云服务提供商
   - 物理地址: 6/F MANULIFE PLACE 348 KWUN TONG ROAD KL
   - 联系电话: +852 68969513
   - 主域名: lightnode.com

2. **子域名** (100+个)
   - 从DNS暴力破解发现大量子域名
   - 包括: admin, api, dev, test, staging, jenkins, gitlab等

3. **邮箱** (2个已验证)
   - support@lightnode.com
   - business@lightnode.com

4. **API端点** (10+个)
   - /api/auth/login
   - /api/user/register
   - /api/v1, /api/v2
   - /graphql

5. **GitHub信息**
   - 仓库: aurora423/next-lightnode-frontend
   - 泄露: Infura API密钥
   - 提交: 20+条历史记录

---

## ❌ 缺失的关键信息

### 1. 员工信息（高优先级）

**缺失内容**:
- [ ] 员工姓名列表
- [ ] 员工邮箱（除support/business外）
- [ ] 员工职位和部门
- [ ] 员工LinkedIn账号
- [ ] 员工GitHub账号
- [ ] 员工社交媒体账号

**收集方法**:
```bash
# 1. LinkedIn公司页面深度挖掘
# - 访问 https://www.linkedin.com/company/lightnode
# - 提取所有员工信息
# - 使用LinkedIn API（如果有权限）

# 2. GitHub员工账号
# - 搜索与lightnode相关的GitHub用户
# - 检查仓库的contributors
# - 检查commit历史中的作者

# 3. 证书透明度
# - 从SSL证书中提取邮箱
# - 检查所有子域名的证书

# 4. WHOIS信息
# - 查询域名注册信息
# - 提取注册邮箱

# 5. 社交媒体
# - Facebook页面管理员
# - Twitter关注者
# - LinkedIn公司员工
```

### 2. 技术栈详细信息（中优先级）

**缺失内容**:
- [ ] 后端框架和版本
- [ ] 数据库类型和版本
- [ ] 云服务提供商（AWS/Azure/GCP）
- [ ] CDN配置详情
- [ ] 服务器操作系统
- [ ] 使用的第三方服务

**收集方法**:
```bash
# 1. HTTP响应头分析
curl -I https://www.lightnode.com
curl -I https://console.lightnode.com
# 提取: Server, X-Powered-By, X-Framework等

# 2. 错误页面分析
# 触发404/500错误，查看错误信息

# 3. 源代码分析
# 从GitHub仓库分析技术栈
# 检查package.json, requirements.txt等

# 4. Wappalyzer扫描
wappalyzer https://www.lightnode.com

# 5. 安全头分析
curl -I https://www.lightnode.com | grep -iE "security|x-"
```

### 3. API端点完整列表（高优先级）

**缺失内容**:
- [ ] 所有API端点路径
- [ ] API版本信息
- [ ] API认证方式
- [ ] API文档位置
- [ ] GraphQL schema

**收集方法**:
```bash
# 1. JS文件分析
# 下载所有JS文件，提取API调用

# 2. Apifox文档
# 访问 https://apidoc.lightnode.com
# 提取所有API端点

# 3. API路径Fuzz
ffuf -u https://api.lightnode.com/FUZZ -w api_wordlist.txt

# 4. GraphQL内省
curl -X POST https://api.lightnode.com/graphql \
  -d '{"query":"{ __schema { types { name } } }"}'
```

### 4. 云服务配置（中优先级）

**缺失内容**:
- [ ] AWS S3桶列表
- [ ] 云服务账户ID
- [ ] 使用的云服务区域
- [ ] 云服务凭证泄露

**收集方法**:
```bash
# 1. S3桶枚举
# 测试常见桶名: lightnode, lightnode-backup等

# 2. IP归属查询
# 查询所有IP的归属，识别云服务提供商

# 3. GitHub搜索
# 搜索AWS凭证、Azure凭证等

# 4. 错误信息泄露
# 查看错误页面是否泄露云服务信息
```

### 5. 合作伙伴和客户信息（低优先级）

**缺失内容**:
- [ ] 合作伙伴列表
- [ ] 客户案例
- [ ] 供应商信息
- [ ] 第三方服务集成

**收集方法**:
```bash
# 1. 网站链接分析
# 提取所有外部链接

# 2. 社交媒体关注
# 查看关注的公司和账号

# 3. 新闻和公告
# 查找合作伙伴公告
```

### 6. 安全配置信息（高优先级）

**缺失内容**:
- [ ] WAF类型和配置
- [ ] 防火墙规则
- [ ] 安全头配置
- [ ] 证书配置
- [ ] 邮件服务器安全配置

**收集方法**:
```bash
# 1. 安全头分析
curl -I https://www.lightnode.com | grep -iE "security|x-"

# 2. WAF识别
wafw00f https://www.lightnode.com

# 3. SSL/TLS分析
sslscan https://www.lightnode.com

# 4. 邮件服务器安全
# SPF, DMARC, DKIM记录
```

---

## 🎯 立即执行的深度收集任务

### 任务1: 员工邮箱全面收集

```bash
# 1.1 从LinkedIn提取员工姓名
# 需要: 手动访问LinkedIn页面或使用API

# 1.2 生成邮箱变体
python3 << 'PYEOF'
domain = "lightnode.com"
# 从LinkedIn获取的员工姓名（示例）
employees = [
    "John Smith", "Jane Doe", "Mike Johnson",  # 需要实际数据
]

email_formats = [
    "{first}.{last}@{domain}",
    "{first}_{last}@{domain}",
    "{first}{last}@{domain}",
    "{f}.{last}@{domain}",
    "{first}.{l}@{domain}",
]

for name in employees:
    parts = name.split()
    if len(parts) >= 2:
        first = parts[0].lower()
        last = parts[-1].lower()
        f = first[0]
        l = last[0]
        
        for fmt in email_formats:
            email = fmt.format(first=first, last=last, f=f, l=l, domain=domain)
            print(email)
PYEOF

# 1.3 SMTP验证邮箱
# 使用smtp验证工具验证邮箱是否存在
```

### 任务2: API端点完整枚举

```bash
# 2.1 下载并分析所有JS文件
curl -sk "https://www.lightnode.com" | \
    grep -oE 'src=["\047]([^"\047]+\.js)' | \
    cut -d'"' -f2 | while read js; do
        curl -sk "https://www.lightnode.com$js" | \
            grep -oE '/api/[a-zA-Z0-9/_-]+' | sort -u
    done

# 2.2 Apifox文档完整提取
curl -sk "https://apidoc.lightnode.com" | \
    grep -oE '/api/[a-zA-Z0-9/_-]+' | sort -u

# 2.3 API路径Fuzz
ffuf -u "https://api.lightnode.com/FUZZ" \
    -w /usr/share/seclists/Discovery/Web-Content/api/api-endpoints.txt \
    -mc 200,301,302,401,403,500
```

### 任务3: GitHub深度挖掘

```bash
# 3.1 搜索所有相关仓库
gh api search/repositories -q "lightnode" --jq '.items[] | "\(.full_name)|\(.html_url)"'

# 3.2 检查每个仓库的敏感文件
for repo in $(gh api search/repositories -q "lightnode" --jq '.items[].full_name'); do
    # 检查.env文件
    gh api "repos/$repo/contents/.env" 2>/dev/null
    
    # 检查config文件
    gh api "repos/$repo/contents/config.json" 2>/dev/null
    
    # 检查历史提交
    gh api "repos/$repo/commits?per_page=100" --jq '.[].sha'
done

# 3.3 搜索代码中的敏感信息
gh api search/code -q "lightnode api_key OR apikey" --jq '.items[] | "\(.repository.full_name)|\(.html_url)"'
gh api search/code -q "lightnode password OR secret" --jq '.items[] | "\(.repository.full_name)|\(.html_url)"'
```

### 任务4: 子域名深度验证

```bash
# 4.1 验证所有发现的子域名
cat comprehensive/all_subdomains_found.txt | while read subdomain; do
    status=$(curl -sk -o /dev/null -w "%{http_code}" "https://$subdomain" 2>/dev/null)
    echo "$subdomain|$status"
done

# 4.2 识别高价值子域名
# - admin, api, dev, test, staging等
# - 检查是否可以访问
# - 检查是否有登录页面
```

---

## 📋 信息收集检查清单

### 员工信息
- [ ] LinkedIn员工列表（至少10个）
- [ ] 员工邮箱列表（至少20个）
- [ ] 员工职位信息
- [ ] 员工GitHub账号

### 技术信息
- [ ] 完整技术栈列表
- [ ] 后端框架和版本
- [ ] 数据库类型
- [ ] 云服务提供商
- [ ] 第三方服务集成

### API信息
- [ ] 所有API端点（至少50个）
- [ ] API认证方式
- [ ] GraphQL schema
- [ ] API文档位置

### 安全信息
- [ ] WAF类型
- [ ] 安全头配置
- [ ] SSL/TLS配置
- [ ] 邮件服务器安全配置

### 基础设施信息
- [ ] 所有子域名（至少100个）
- [ ] IP地址列表
- [ ] 云服务配置
- [ ] 合作伙伴信息

---

## 🚀 下一步行动

1. **立即执行**: 员工信息收集（LinkedIn、GitHub、证书透明度）
2. **24小时内**: API端点完整枚举、GitHub深度挖掘
3. **48小时内**: 技术栈识别、云服务配置分析
4. **72小时内**: 安全配置分析、合作伙伴信息收集

---

**状态**: 信息收集进行中  
**优先级**: 员工信息 > API端点 > 技术栈 > 云服务配置
