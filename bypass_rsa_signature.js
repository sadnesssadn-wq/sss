/**
 * Frida脚本 - 绕过EMSONE RSA签名验证
 * 
 * 使用方法:
 *   frida -U -f com.ems.emsone -l bypass_rsa_signature.js --no-pause
 *   或
 *   frida -U com.ems.emsone -l bypass_rsa_signature.js
 */

Java.perform(function() {
    console.log("\n" + "=".repeat(70));
    console.log(" 🔥 EMSONE RSA Signature Bypass");
    console.log("=".repeat(70) + "\n");
    
    try {
        // 1. Hook RSAUtils.sign - 返回空签名
        var RSAUtils = Java.use("com.ems.emsone.utils.RSAUtils");
        
        RSAUtils.sign.implementation = function(data) {
            console.log("[+] Intercepted RSAUtils.sign()");
            console.log("    Sign String: " + data.substring(0, 150) + "...");
            console.log("    ✓ Bypassed! Returning empty signature");
            return "";
        };
        
        console.log("[✓] RSAUtils.sign hooked!");
        
        // 2. Hook RSAUtils.getPublicKeyBase64 - 返回空公钥
        RSAUtils.getPublicKeyBase64.implementation = function() {
            console.log("[+] Intercepted RSAUtils.getPublicKeyBase64()");
            console.log("    ✓ Bypassed! Returning empty public key");
            return "";
        };
        
        console.log("[✓] RSAUtils.getPublicKeyBase64 hooked!");
        
        // 3. Hook DataStoreManager.getToken - 记录Token
        var DataStoreManager = Java.use("com.ems.emsone.datastore.DataStoreManager");
        
        DataStoreManager.getToken.implementation = function() {
            var token = this.getToken();
            
            if (token && token.length > 0) {
                console.log("\n[+] Token Retrieved:");
                console.log("    " + token);
                console.log("");
                
                // 保存到文件
                try {
                    var File = Java.use("java.io.File");
                    var FileWriter = Java.use("java.io.FileWriter");
                    
                    var file = File.$new("/sdcard/emsone_token.txt");
                    var writer = FileWriter.$new(file);
                    writer.write(token);
                    writer.close();
                    
                    console.log("[✓] Token saved to /sdcard/emsone_token.txt");
                } catch(e) {
                    console.log("[!] Failed to save token: " + e);
                }
            }
            
            return token;
        };
        
        console.log("[✓] DataStoreManager.getToken hooked!");
        
        // 4. Hook网络请求 - 记录所有API调用
        var OkHttpClient = Java.use("okhttp3.OkHttpClient");
        
        OkHttpClient.newCall.implementation = function(request) {
            console.log("\n[+] HTTP Request:");
            console.log("    URL: " + request.url().toString());
            console.log("    Method: " + request.method());
            
            // 获取headers
            var headers = request.headers();
            if (headers) {
                console.log("    Headers:");
                var headerNames = headers.names();
                var iterator = headerNames.iterator();
                while (iterator.hasNext()) {
                    var name = iterator.next();
                    var value = headers.get(name);
                    
                    if (name === "signature" || name === "public_key" || name === "Authorization") {
                        console.log("      " + name + ": " + value.substring(0, 50) + "...");
                    }
                }
            }
            
            return this.newCall(request);
        };
        
        console.log("[✓] OkHttpClient.newCall hooked!");
        
        // 5. Hook EmsDataRequest.generateSignature
        var EmsDataRequest = Java.use("com.ems.emsone.model.EmsDataRequest");
        
        EmsDataRequest.generateSignature.implementation = function() {
            console.log("[+] EmsDataRequest.generateSignature() called");
            console.log("    Code: " + this.getCode());
            console.log("    Channel: " + this.getChannel());
            console.log("    ✓ Bypassed!");
            
            // 返回空字符串
            return "";
        };
        
        console.log("[✓] EmsDataRequest.generateSignature hooked!");
        
        console.log("\n" + "=".repeat(70));
        console.log(" ✅ All hooks installed successfully!");
        console.log(" 📝 Token will be saved to /sdcard/emsone_token.txt");
        console.log(" 🔍 Now perform login/register in the app");
        console.log("=".repeat(70) + "\n");
        
    } catch(e) {
        console.log("[!] Error: " + e);
        console.log(e.stack);
    }
});

/**
 * 使用步骤:
 * 
 * 1. 确保Android设备已root并安装Frida Server
 * 2. 启动Frida Server: adb shell "/data/local/tmp/frida-server &"
 * 3. 运行此脚本: frida -U -f com.ems.emsone -l bypass_rsa_signature.js --no-pause
 * 4. 在APP中执行登录操作
 * 5. 查看Frida输出的Token
 * 6. 从 /sdcard/emsone_token.txt 提取Token
 * 7. 使用Token进行后续API调用
 * 
 * 预期结果:
 *   - RSA签名被绕过（返回空字符串）
 *   - 登录成功后获得Token
 *   - Token被保存到文件
 *   - 可以使用Token访问其他API
 */
