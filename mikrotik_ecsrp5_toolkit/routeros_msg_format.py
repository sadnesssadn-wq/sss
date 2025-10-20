#!/usr/bin/env python3
"""
RouterOS 消息编码/解码实现
基于master.js中的msg2buffer和buffer2msg函数
"""

import struct

# 消息类型定义
FT_BOOL = 0 << 27
FT_U32 = 1 << 27
FT_U64 = 2 << 27
FT_ADDR6 = 3 << 27
FT_STRING = 4 << 27
FT_MESSAGE = 5 << 27
FT_RAW = 6 << 27
FT_BOOL_ARRAY = 16 << 27
FT_U32_ARRAY = 17 << 27
FT_U64_ARRAY = 18 << 27
FT_ADDR6_ARRAY = 19 << 27
FT_STRING_ARRAY = 20 << 27
FT_MESSAGE_ARRAY = 21 << 27
FT_RAW_ARRAY = 22 << 27

class RouterOSMessage:
    """RouterOS消息编码器"""
    
    @staticmethod
    def encode(msg):
        """将消息字典编码为二进制"""
        arr = bytearray()
        
        # 消息头: "M2"
        arr.extend([0x4d, 0x32])
        
        for key, value in msg.items():
            prefix = key[0]
            
            if prefix == "_":
                continue
            
            # 解析字段ID (例如: "s1" -> 0x01, "uff0001" -> 0xff0001)
            field_id = int(key[1:], 16)
            
            # 根据类型编码
            if prefix == "b":  # boolean
                arr.extend(RouterOSMessage._encode_bool(field_id, value))
            elif prefix == "u":  # unsigned 32bit
                arr.extend(RouterOSMessage._encode_u32(field_id, value))
            elif prefix == "q":  # unsigned 64bit
                arr.extend(RouterOSMessage._encode_u64(field_id, value))
            elif prefix == "s":  # string
                arr.extend(RouterOSMessage._encode_string(field_id, value))
            elif prefix == "r":  # raw bytes
                arr.extend(RouterOSMessage._encode_raw(field_id, value))
            elif prefix == "U":  # u32 array
                arr.extend(RouterOSMessage._encode_u32_array(field_id, value))
            elif prefix == "S":  # string array
                arr.extend(RouterOSMessage._encode_string_array(field_id, value))
            elif prefix == "m":  # nested message
                arr.extend(RouterOSMessage._encode_message(field_id, value))
        
        # 在开头添加长度（2字节，big endian）
        length = len(arr)
        return struct.pack(">H", length) + arr[2:]
    
    @staticmethod
    def _encode_bool(field_id, value):
        """编码boolean"""
        idtype = FT_BOOL
        arr = bytearray()
        arr.extend(struct.pack("<I", field_id | (idtype >> 24 << 24)))
        arr.append(1 if value else 0)
        return arr
    
    @staticmethod
    def _encode_u32(field_id, value):
        """编码unsigned 32bit"""
        idtype = FT_U32
        arr = bytearray()
        arr.extend(struct.pack("<I", field_id | (idtype >> 24 << 24)))
        arr.extend(struct.pack("<I", value or 0))
        return arr
    
    @staticmethod
    def _encode_u64(field_id, value):
        """编码unsigned 64bit"""
        idtype = FT_U64
        arr = bytearray()
        arr.extend(struct.pack("<I", field_id | (idtype >> 24 << 24)))
        arr.extend(struct.pack("<Q", value or 0))
        return arr
    
    @staticmethod
    def _encode_string(field_id, value):
        """编码string"""
        idtype = FT_STRING
        arr = bytearray()
        arr.extend(struct.pack("<I", field_id | (idtype >> 24 << 24)))
        
        if not value:
            value = ""
        
        encoded = value.encode("utf-8")
        arr.extend(struct.pack("<I", len(encoded)))
        arr.extend(encoded)
        return arr
    
    @staticmethod
    def _encode_raw(field_id, value):
        """编码raw bytes"""
        idtype = FT_RAW
        arr = bytearray()
        arr.extend(struct.pack("<I", field_id | (idtype >> 24 << 24)))
        
        if isinstance(value, str):
            value = value.encode("utf-8")
        elif not value:
            value = b""
        
        arr.extend(struct.pack("<I", len(value)))
        arr.extend(value)
        return arr
    
    @staticmethod
    def _encode_u32_array(field_id, value):
        """编码u32 array"""
        idtype = FT_U32_ARRAY
        arr = bytearray()
        arr.extend(struct.pack("<I", field_id | (idtype >> 24 << 24)))
        
        if not value:
            value = []
        
        arr.extend(struct.pack("<I", len(value)))
        for v in value:
            arr.extend(struct.pack("<I", v))
        return arr
    
    @staticmethod
    def _encode_string_array(field_id, value):
        """编码string array"""
        idtype = FT_STRING_ARRAY
        arr = bytearray()
        arr.extend(struct.pack("<I", field_id | (idtype >> 24 << 24)))
        
        if not value:
            value = []
        
        arr.extend(struct.pack("<I", len(value)))
        for s in value:
            encoded = s.encode("utf-8")
            arr.extend(struct.pack("<I", len(encoded)))
            arr.extend(encoded)
        return arr
    
    @staticmethod
    def _encode_message(field_id, value):
        """编码nested message"""
        idtype = FT_MESSAGE
        arr = bytearray()
        arr.extend(struct.pack("<I", field_id | (idtype >> 24 << 24)))
        
        if not value:
            arr.extend(struct.pack("<I", 0))
        else:
            nested = RouterOSMessage.encode(value)
            arr.extend(struct.pack("<I", len(nested)))
            arr.extend(nested)
        return arr

if __name__ == "__main__":
    # 测试消息编码
    test_msg = {
        "s1": "admin",
        "s3": "password"
    }
    
    encoded = RouterOSMessage.encode(test_msg)
    print("[+] 编码测试消息:")
    print("   消息:", test_msg)
    print("   长度:", len(encoded))
    print("   十六进制:", encoded.hex())
    print("   前20字节:", encoded[:20].hex())
