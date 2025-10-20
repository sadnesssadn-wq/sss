#!/usr/bin/env python3
import os, struct, hashlib, secrets
from Crypto.Cipher import ARC4

class Curve25519:
    @staticmethod
    def generate_private_key():
        key = bytearray(secrets.token_bytes(32))
        key[0] &= 0xF8
        key[31] = (key[31] & 0x7F) | 0x40
        return bytes(key)
    
    @staticmethod
    def get_public_key(private_key):
        from cryptography.hazmat.primitives.asymmetric.x25519 import X25519PrivateKey
        from cryptography.hazmat.primitives import serialization
        priv = X25519PrivateKey.from_private_bytes(private_key)
        pub = priv.public_key()
        return pub.public_bytes(
            encoding=serialization.Encoding.Raw,
            format=serialization.PublicFormat.Raw
        )
    
    @staticmethod
    def compute_shared_secret(private_key, peer_public_key):
        from cryptography.hazmat.primitives.asymmetric.x25519 import X25519PrivateKey, X25519PublicKey
        priv = X25519PrivateKey.from_private_bytes(private_key)
        pub = X25519PublicKey.from_public_bytes(peer_public_key)
        return priv.exchange(pub)

class RC4Cipher:
    def __init__(self, key):
        self.cipher = ARC4.new(key)
        self.cipher.encrypt(b"\\x00" * 768)
    
    def encrypt(self, data):
        return self.cipher.encrypt(data)
    
    def decrypt(self, data):
        return self.cipher.encrypt(data)

class RouterOSWebFigSession:
    def __init__(self):
        self.private_key = Curve25519.generate_private_key()
        self.public_key = Curve25519.get_public_key(self.private_key)
        self.session_id = None
        self.tx_seq = 1
        self.rx_seq = 1
        self.tx_cipher = None
        self.rx_cipher = None
        self.padding = b" " * 8
    
    def make_initial_request(self):
        return struct.pack(">II", 0, 0) + self.public_key
    
    def key_exchange(self, response):
        if len(response) < 40:
            raise ValueError("Invalid server response")
        self.session_id = struct.unpack(">I", response[0:4])[0]
        server_public_key = response[8:40]
        shared_secret = Curve25519.compute_shared_secret(self.private_key, server_public_key)
        rx_key = self._make_key(shared_secret, False, False)
        tx_key = self._make_key(shared_secret, True, False)
        self.rx_cipher = RC4Cipher(rx_key)
        self.tx_cipher = RC4Cipher(tx_key)
        return True
    
    def _make_key(self, master_key, is_send, is_server):
        magic_send = b"On the client side, this is the send key; on the server side, it is the receive key."
        magic_recv = b"On the client side, this is the receive key; on the server side, it is the send key."
        v = bytearray(master_key)
        v.extend([0] * 40)
        if is_send == is_server:
            v.extend(magic_recv)
        else:
            v.extend(magic_send)
        v.extend([0xF2] * 40)
        return hashlib.sha1(bytes(v)).digest()[:16]
    
    def encrypt(self, data):
        if isinstance(data, str):
            data = data.encode("utf-8")
        header = struct.pack(">II", self.session_id, self.tx_seq)
        encrypted_data = self.tx_cipher.encrypt(data)
        encrypted_padding = self.tx_cipher.encrypt(self.padding)
        self.tx_seq += len(data) + 8
        return header + encrypted_data + encrypted_padding
    
    def decrypt(self, packet):
        if len(packet) < 16:
            raise ValueError("Packet too short")
        session_id = struct.unpack(">I", packet[0:4])[0]
        seq = struct.unpack(">I", packet[4:8])[0]
        if session_id != self.session_id:
            raise ValueError("Session ID mismatch")
        if seq != self.rx_seq:
            raise ValueError("Sequence mismatch")
        encrypted = packet[8:-8]
        decrypted = self.rx_cipher.decrypt(encrypted)
        padding_check = self.rx_cipher.decrypt(packet[-8:])
        if padding_check != self.padding:
            raise ValueError("Invalid padding")
        self.rx_seq += len(packet) - 8
        return decrypted

if __name__ == "__main__":
    session = RouterOSWebFigSession()
    print("[+] 公钥:", session.public_key.hex())
    initial = session.make_initial_request()
    print("[+] 初始请求长度:", len(initial))
    print("[+] RouterOS WebFig 认证协议已实现!")
