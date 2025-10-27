#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
🔥 GHN地址数据库完整导出工具
导出越南全国地址数据: 省份 -> 区域 -> Ward

使用方法:
  python3 ghn_address_exporter.py --token YOUR_TOKEN --output vietnam_db.json
"""

import requests
import json
import time
import argparse

class AddressExporter:
    def __init__(self, token):
        self.token = token
        self.headers = {
            'Token': token,
            'Content-Type': 'application/json'
        }
        self.base_url = 'https://online-gateway.ghn.vn/shiip/public-api'
    
    def get_provinces(self):
        """获取所有省份"""
        print('[*] 获取省份列表...')
        
        r = requests.get(
            f'{self.base_url}/master-data/province',
            headers=self.headers,
            timeout=15
        )
        
        if r.status_code == 200:
            data = r.json()
            provinces = data.get('data', [])
            print(f'[+] 获取到 {len(provinces)} 个省份\n')
            return provinces
        else:
            print(f'[-] 失败: {r.status_code}')
            return []
    
    def get_districts(self, province_id):
        """获取省份的所有区域"""
        r = requests.post(
            f'{self.base_url}/master-data/district',
            headers=self.headers,
            json={'province_id': province_id},
            timeout=15
        )
        
        if r.status_code == 200:
            data = r.json()
            return data.get('data', [])
        return []
    
    def get_wards(self, district_id):
        """获取区域的所有Ward"""
        r = requests.post(
            f'{self.base_url}/master-data/ward',
            headers=self.headers,
            json={'district_id': district_id},
            timeout=15
        )
        
        if r.status_code == 200:
            data = r.json()
            return data.get('data', [])
        return []
    
    def export_full_database(self, output_file='vietnam_address_db.json'):
        """导出完整地址数据库"""
        print('=' * 70)
        print('  GHN地址数据库完整导出')
        print('=' * 70)
        print()
        
        # 1. 获取所有省份
        provinces = self.get_provinces()
        
        if not provinces:
            print('[-] 无法获取省份数据')
            return
        
        full_database = []
        total_districts = 0
        total_wards = 0
        
        # 2. 遍历每个省份
        for i, province in enumerate(provinces, 1):
            province_id = province.get('ProvinceID')
            province_name = province.get('ProvinceName')
            
            print(f'[{i}/{len(provinces)}] 处理: {province_name}')
            
            # 获取该省的所有区域
            districts = self.get_districts(province_id)
            print(f'        → {len(districts)} 个区域')
            
            total_districts += len(districts)
            
            province_data = {
                'province': province,
                'districts': []
            }
            
            # 3. 遍历每个区域
            for district in districts:
                district_id = district.get('DistrictID')
                
                # 获取该区域的所有Ward
                wards = self.get_wards(district_id)
                
                total_wards += len(wards)
                
                province_data['districts'].append({
                    'district': district,
                    'wards': wards
                })
                
                time.sleep(0.1)  # 限速
            
            full_database.append(province_data)
            time.sleep(0.2)
        
        # 4. 保存到文件
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(full_database, f, indent=2, ensure_ascii=False)
        
        # 5. 生成CSV格式
        csv_file = output_file.replace('.json', '.csv')
        with open(csv_file, 'w', encoding='utf-8') as f:
            f.write('Province ID,Province Name,District ID,District Name,Ward Code,Ward Name\n')
            
            for province_data in full_database:
                province = province_data['province']
                for district_data in province_data['districts']:
                    district = district_data['district']
                    for ward in district_data['wards']:
                        f.write(f'{province.get("ProvinceID")},{province.get("ProvinceName")},'
                               f'{district.get("DistrictID")},{district.get("DistrictName")},'
                               f'{ward.get("WardCode")},{ward.get("WardName")}\n')
        
        # 6. 统计
        print()
        print('=' * 70)
        print('导出完成!')
        print('=' * 70)
        print(f'省份总数: {len(provinces)}')
        print(f'区域总数: {total_districts}')
        print(f'Ward总数: {total_wards}')
        print(f'\n文件:')
        print(f'  JSON: {output_file}')
        print(f'  CSV:  {csv_file}')
        print(f'\n商业价值: 完整的越南地址数据库')
        print(f'估算价值: $$$$')

def main():
    parser = argparse.ArgumentParser(description='GHN地址数据库导出工具')
    parser.add_argument('--token', '-t', required=True, help='有效的GHN Token')
    parser.add_argument('--output', '-o', default='vietnam_address_db.json', help='输出文件名')
    
    args = parser.parse_args()
    
    exporter = AddressExporter(args.token)
    exporter.export_full_database(args.output)

if __name__ == '__main__':
    main()
