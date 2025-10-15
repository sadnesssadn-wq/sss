
// VNPost API签名分析Frida脚本
Java.perform(function() {
    console.log("[+] VNPost API签名分析脚本已加载");
    
    // Hook MessageDigest
    var MessageDigest = Java.use("java.security.MessageDigest");
    MessageDigest.digest.overload('[B').implementation = function(input) {
        console.log("\n[+] MessageDigest.digest 被调用");
        console.log("算法: " + this.getAlgorithm());
        console.log("输入数据: " + bytesToHex(input));
        
        var result = this.digest(input);
        console.log("输出哈希: " + bytesToHex(result));
        return result;
    };
    
    // Hook Mac (HMAC)
    try {
        var Mac = Java.use("javax.crypto.Mac");
        Mac.doFinal.overload('[B').implementation = function(input) {
            console.log("\n[+] Mac.doFinal 被调用");
            console.log("算法: " + this.getAlgorithm());
            console.log("输入数据: " + bytesToHex(input));
            
            var result = this.doFinal(input);
            console.log("HMAC输出: " + bytesToHex(result));
            return result;
        };
    } catch(e) {
        console.log("[-] Mac Hook失败: " + e);
    }
    
    // Hook Base64编码
    var Base64 = Java.use("android.util.Base64");
    Base64.encodeToString.overload('[B', 'int').implementation = function(input, flags) {
        var result = this.encodeToString(input, flags);
        console.log("\n[+] Base64编码");
        console.log("输入: " + bytesToHex(input));
        console.log("输出: " + result);
        return result;
    };
    
    // Hook OkHttp拦截器
    try {
        var Request = Java.use("okhttp3.Request");
        var RequestBuilder = Java.use("okhttp3.Request$Builder");
        
        RequestBuilder.addHeader.overload('java.lang.String', 'java.lang.String')
            .implementation = function(name, value) {
            if (name.toLowerCase().includes('sign') || 
                name.toLowerCase().includes('auth') ||
                name.toLowerCase().includes('token')) {
                console.log("\n[+] 添加签名相关Header");
                console.log("Header: " + name + " = " + value);
            }
            return this.addHeader(name, value);
        };
    } catch(e) {
        console.log("[-] OkHttp Hook失败: " + e);
    }
    
    // 辅助函数：字节数组转十六进制
    function bytesToHex(bytes) {
        var hex = "";
        for (var i = 0; i < bytes.length; i++) {
            var byte = bytes[i] & 0xFF;
            hex += (byte < 16 ? "0" : "") + byte.toString(16);
        }
        return hex.toUpperCase();
    }
    
    console.log("[+] 所有Hook已设置完成，开始监控...");
});
