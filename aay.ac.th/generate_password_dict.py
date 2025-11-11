#!/usr/bin/env python3
import itertools

# 收集到的信息
target_info = {
    "school_name": "ake ayothaya school",
    "short_name": "aay",
    "domain": "aay.ac.th",
    "location": "ayothaya",
    "country": "thailand",
    "type": "school",
    "years": [2012, 2016, 2022, 2023, 2024, 2025],
    "thai_name": "เอกอโยธยา"
}

passwords = set()

# 基础词汇
base_words = [
    "aay", "ayothaya", "ayutthaya", "ake", "akeyothaya",
    "school", "admin", "password", "welcome",
    "education", "student", "teacher", "thailand",
    "bangkok", "eservice", "elibrary"
]

# 年份列表
years = ["2012", "2016", "2022", "2023", "2024", "2025"]
years_short = ["12", "16", "22", "23", "24", "25"]

# 常见后缀
suffixes = ["", "123", "!", "@123", "#123", "@2024", "@2025", "2024", "2025"]

# 生成规则1: 基础词 + 年份/后缀
for word in base_words:
    # 原始
    passwords.add(word)
    # 首字母大写
    passwords.add(word.capitalize())
    # 全大写
    passwords.add(word.upper())
    
    # 加年份
    for year in years:
        passwords.add(f"{word}{year}")
        passwords.add(f"{word.capitalize()}{year}")
        passwords.add(f"{word}@{year}")
        passwords.add(f"{word.capitalize()}@{year}")
    
    # 加短年份
    for year in years_short:
        passwords.add(f"{word}{year}")
        passwords.add(f"{word.capitalize()}{year}")
    
    # 加常见后缀
    for suffix in suffixes:
        if suffix:
            passwords.add(f"{word}{suffix}")
            passwords.add(f"{word.capitalize()}{suffix}")

# 生成规则2: 学校特定组合
special_combos = [
    "aay.ac.th", "aayacth", "aay2024", "aay2025",
    "Aay@2024", "Aay@2025", "AAY2024", "AAY2025",
    "ayothaya123", "Ayothaya123", "Ayothaya@123",
    "ake123", "Ake123", "Ake@123",
    "akeyothaya", "AkeAyothaya", "AkeAyothaya123",
    "school2024", "School2024", "School@2024",
    "admin2024", "Admin2024", "Admin@2024",
    "aayschool", "AaySchool", "AaySchool123",
    "ayothaya2024", "Ayothaya2024", "Ayothaya@2024",
    "thailand2024", "Thailand2024", "Thailand@2024"
]
passwords.update(special_combos)

# 生成规则3: 常见模式
patterns = [
    "Aa123456", "Aa@12345", "Aa123456!",
    "Aay123456", "Aay@12345", "Aay123456!",
    "Admin123!", "Admin@123", "Admin#123",
    "Password123", "P@ssw0rd", "P@ssw0rd123",
    "Welcome123", "Welcome@123", "Welcome2024"
]
passwords.update(patterns)

# 生成规则4: 泰语相关数字/拼音
thai_related = [
    "sawatdee", "sawatdee123", "Sawatdee123",  # สวัสดี (你好)
    "krungthep", "krungthep123",  # กรุงเทพ (曼谷)
    "muang", "muang123",  # เมือง (城市)
]
passwords.update(thai_related)

# 排序并输出（按长度和可能性排序）
sorted_passwords = sorted(passwords, key=lambda x: (len(x), x.lower()))

# 优先级排序：越短越常见的放前面
priority_keywords = ["aay", "admin", "school", "2024", "2025"]
def get_priority(pwd):
    score = 0
    pwd_lower = pwd.lower()
    for keyword in priority_keywords:
        if keyword in pwd_lower:
            score += 10
    # 长度适中的优先（8-16字符）
    if 8 <= len(pwd) <= 16:
        score += 5
    # 有数字的优先
    if any(c.isdigit() for c in pwd):
        score += 3
    # 有大写的优先
    if any(c.isupper() for c in pwd):
        score += 2
    return -score  # 负数排序（高分在前）

sorted_passwords = sorted(passwords, key=get_priority)

print(f"[+] 生成密码数量: {len(sorted_passwords)}")
print(f"[+] 基于信息: 学校名aay, ayothaya, 年份2012-2025")
print(f"[+] 保存到: smart_passwords.txt")
print()

# 输出前20个最可能的密码
print("[+] TOP 20 最可能的密码:")
for i, pwd in enumerate(sorted_passwords[:20], 1):
    print(f"  {i:2d}. {pwd}")

# 保存所有密码
with open('smart_passwords.txt', 'w') as f:
    for pwd in sorted_passwords:
        f.write(pwd + '\n')

print(f"\n[+] 完整字典已保存: smart_passwords.txt")
