/**
 * Frida Hook脚本 - EMS ONE Token & RSA Signature提取
 * 
 * 使用方法：
 * 1. 安装com.ems.emsone.apk到Android设备/模拟器
 * 2. 启动Frida Server
 * 3. frida -U -f com.ems.emsone -l frida_hook_emsone.js --no-pause
 * 4. 在APP中登录
 * 5. Token和签名将自动保存到 /sdcard/emsone_tokens.txt
 */

console.log("[*] EMS ONE Token & Signature Extractor");
console.log("[*] Waiting for Java VM...");

Java.perform(function() {
    console.log("[+] Java VM Ready!");
    
    // ================================================================
    // 1. Hook Token存储和获取
    // ================================================================
    try {
        var DataStoreManager = Java.use('com.ems.emsone.datastore.DataStoreManager');
        
        // Hook getToken()
        DataStoreManager.getToken.implementation = function() {
            var token = this.getToken();
            
            if (token && token.length > 0) {
                console.log("\n" + "=".repeat(70));
                console.log("[+] Token Extracted!");
                console.log("=".repeat(70));
                console.log(token);
                console.log("=".repeat(70) + "\n");
                
                // 保存到文件
                saveToFile("Token: " + token);
            }
            
            return token;
        };
        
        console.log("[+] Hooked: DataStoreManager.getToken()");
        
    } catch(e) {
        console.log("[-] DataStoreManager not found: " + e);
    }
    
    // ================================================================
    // 2. Hook RSA签名
    // ================================================================
    try {
        var RSAUtils = Java.use('com.ems.emsone.utils.RSAUtils');
        
        // Hook sign()
        RSAUtils.sign.implementation = function(data) {
            var signature = this.sign(data);
            
            console.log("\n" + "-".repeat(70));
            console.log("[+] RSA Signature Generated!");
            console.log("-".repeat(70));
            console.log("Input Data:");
            console.log(data);
            console.log("\nSignature:");
            console.log(signature);
            console.log("-".repeat(70) + "\n");
            
            // 保存
            saveToFile("\n--- RSA Signature ---\nInput: " + data + "\nOutput: " + signature);
            
            return signature;
        };
        
        // Hook getPublicKeyBase64()
        RSAUtils.getPublicKeyBase64.implementation = function() {
            var publicKey = this.getPublicKeyBase64();
            
            console.log("[+] Public Key: " + publicKey.substring(0, 50) + "...");
            saveToFile("PublicKey: " + publicKey);
            
            return publicKey;
        };
        
        console.log("[+] Hooked: RSAUtils.sign() & getPublicKeyBase64()");
        
    } catch(e) {
        console.log("[-] RSAUtils not found: " + e);
    }
    
    // ================================================================
    // 3. Hook登录Activity
    // ================================================================
    try {
        var LoginPresenter = Java.use('com.ems.emsone.login.LoginPresenter');
        
        // 查找所有方法
        var methods = LoginPresenter.class.getDeclaredMethods();
        for (var i = 0; i < methods.length; i++) {
            var methodName = methods[i].getName();
            
            // Hook可能的登录成功回调
            if (methodName.indexOf("success") >= 0 || 
                methodName.indexOf("Success") >= 0 || 
                methodName.indexOf("onLogin") >= 0) {
                
                console.log("[+] Found potential callback: " + methodName);
                
                // 尝试Hook（需要根据实际方法签名调整）
                try {
                    LoginPresenter[methodName].implementation = function() {
                        console.log("[+] Login Callback: " + methodName);
                        
                        // 调用原始方法
                        var result = this[methodName].apply(this, arguments);
                        
                        // 尝试提取Token
                        setTimeout(function() {
                            try {
                                var dsm = Java.use('com.ems.emsone.datastore.DataStoreManager');
                                var token = dsm.getToken();
                                if (token) {
                                    console.log("[+] Token after login: " + token);
                                }
                            } catch(e) {}
                        }, 1000);
                        
                        return result;
                    };
                } catch(e) {}
            }
        }
        
        console.log("[+] Hooked: LoginPresenter callbacks");
        
    } catch(e) {
        console.log("[-] LoginPresenter not found: " + e);
    }
    
    // ================================================================
    // 4. Hook SharedPreferences（备用Token存储）
    // ================================================================
    try {
        var SharedPreferences = Java.use('android.content.SharedPreferences');
        var Editor = Java.use('android.content.SharedPreferences$Editor');
        
        Editor.putString.overload('java.lang.String', 'java.lang.String').implementation = function(key, value) {
            if (key.toLowerCase().indexOf('token') >= 0 || 
                value.length > 100) {
                
                console.log("\n[+] SharedPreferences.putString()");
                console.log("    Key: " + key);
                console.log("    Value: " + value.substring(0, 100) + "...");
                
                saveToFile("\nSharedPref[" + key + "] = " + value);
            }
            
            return this.putString(key, value);
        };
        
        console.log("[+] Hooked: SharedPreferences.putString()");
        
    } catch(e) {
        console.log("[-] SharedPreferences hook failed: " + e);
    }
    
    // ================================================================
    // 5. Hook HTTP请求（拦截API调用）
    // ================================================================
    try {
        var OkHttpClient = Java.use('okhttp3.OkHttpClient');
        var Request = Java.use('okhttp3.Request');
        
        OkHttpClient.newCall.overload('okhttp3.Request').implementation = function(request) {
            var url = request.url().toString();
            
            // 只记录EMS API
            if (url.indexOf('emsone.com.vn') >= 0 || url.indexOf('ems.com.vn') >= 0) {
                console.log("\n[+] HTTP Request:");
                console.log("    URL: " + url);
                
                // 提取Headers
                var headers = request.headers();
                var headerNames = headers.names().toArray();
                
                console.log("    Headers:");
                for (var i = 0; i < headerNames.length; i++) {
                    var name = headerNames[i];
                    var value = headers.get(name);
                    
                    console.log("      " + name + ": " + value);
                    
                    // 保存重要headers
                    if (name.toLowerCase().indexOf('authorization') >= 0 ||
                        name.toLowerCase().indexOf('token') >= 0 ||
                        name.toLowerCase().indexOf('signature') >= 0 ||
                        name.toLowerCase().indexOf('client') >= 0) {
                        
                        saveToFile("\nHTTP Header[" + name + "] = " + value);
                    }
                }
                
                // 提取Body（如果是POST）
                try {
                    var body = request.body();
                    if (body) {
                        var Buffer = Java.use('okio.Buffer');
                        var buffer = Buffer.$new();
                        body.writeTo(buffer);
                        var bodyStr = buffer.readUtf8();
                        
                        console.log("    Body: " + bodyStr.substring(0, 200));
                        saveToFile("HTTP Body: " + bodyStr);
                    }
                } catch(e) {}
            }
            
            return this.newCall(request);
        };
        
        console.log("[+] Hooked: OkHttpClient.newCall()");
        
    } catch(e) {
        console.log("[-] OkHttpClient hook failed: " + e);
    }
    
    // ================================================================
    // 6. Hook JWT解析（如果使用JWT）
    // ================================================================
    try {
        // 查找JWT相关类
        Java.enumerateLoadedClasses({
            onMatch: function(className) {
                if (className.toLowerCase().indexOf('jwt') >= 0) {
                    console.log("[+] Found JWT class: " + className);
                    
                    try {
                        var JwtClass = Java.use(className);
                        // Hook decode等方法
                    } catch(e) {}
                }
            },
            onComplete: function() {}
        });
        
    } catch(e) {}
    
    // ================================================================
    // 辅助函数：保存到文件
    // ================================================================
    function saveToFile(content) {
        try {
            var File = Java.use('java.io.File');
            var FileWriter = Java.use('java.io.FileWriter');
            var BufferedWriter = Java.use('java.io.BufferedWriter');
            
            var file = File.$new('/sdcard/emsone_tokens.txt');
            var fw = FileWriter.$new(file, true); // append mode
            var bw = BufferedWriter.$new(fw);
            
            bw.write(content);
            bw.newLine();
            bw.flush();
            bw.close();
            
        } catch(e) {
            console.log("[-] Failed to save to file: " + e);
        }
    }
    
    console.log("\n" + "=".repeat(70));
    console.log("[*] All hooks installed!");
    console.log("[*] Waiting for login... (Token will be extracted automatically)");
    console.log("[*] Results will be saved to: /sdcard/emsone_tokens.txt");
    console.log("=".repeat(70) + "\n");
});
