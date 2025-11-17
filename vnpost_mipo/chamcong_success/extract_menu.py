import re

with open('leftmenu_raw.txt', 'r', encoding='utf-8', errors='ignore') as f:
    content = f.read()

# 提取所有.aspx URL
urls = re.findall(r'(?:href|src)="([^"]+\.aspx[^"]*)"', content)
urls = list(set(urls))
urls.sort()

print("=" * 60)
print(f"发现 {len(urls)} 个不同的.aspx页面")
print("=" * 60)

for url in urls:
    print(f"  {url}")

# 保存到文件
with open('all_aspx_urls.txt', 'w') as f:
    for url in urls:
        f.write(url + '\n')

print("\n✅ 已保存到 all_aspx_urls.txt")
