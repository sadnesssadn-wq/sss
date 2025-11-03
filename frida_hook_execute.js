// Frida脚本：Hook EMSONE /execute 端点
// 用法：frida -U -f com.ems.emsone -l frida_hook_execute.js

console.log("[*] EMSONE Execute Hook 已加载");

Java.perform(function() {
    console.log("[*] Java.perform 开始");
    
    // ==================== Hook RSAUtils ====================
    try {
        var RSAUtils = Java.use("com.ems.emsone.utils.RSAUtils");
        
        // Hook sign方法
        RSAUtils.sign.implementation = function(data) {
            console.log("\n[+] RSAUtils.sign() 调用");
            console.log("[+] 输入数据: " + data);
            
            var signature = this.sign(data);
            
            console.log("[+] 生成签名: " + signature);
            console.log("[+] 签名长度: " + signature.length);
            
            return signature;
        };
        
        // Hook getPublicKeyBase64方法
        RSAUtils.getPublicKeyBase64.implementation = function() {
            var publicKey = this.getPublicKeyBase64();
            
            console.log("\n[+] RSAUtils.getPublicKeyBase64() 调用");
            console.log("[+] 公钥: " + publicKey.substring(0, 100) + "...");
            
            return publicKey;
        };
        
        console.log("[✓] RSAUtils Hook 成功");
    } catch(e) {
        console.log("[-] RSAUtils Hook 失败: " + e);
    }
    
    // ==================== Hook DataStoreManager ====================
    try {
        var DataStoreManager = Java.use("com.ems.emsone.datastore.DataStoreManager");
        
        // Hook getToken
        DataStoreManager.getToken.implementation = function() {
            var token = this.getToken();
            console.log("\n[+] DataStoreManager.getToken() 调用");
            console.log("[+] Token: " + token);
            return token;
        };
        
        // Hook saveToken
        DataStoreManager.saveToken.implementation = function(token) {
            console.log("\n[+] DataStoreManager.saveToken() 调用");
            console.log("[+] 保存Token: " + token);
            this.saveToken(token);
        };
        
        console.log("[✓] DataStoreManager Hook 成功");
    } catch(e) {
        console.log("[-] DataStoreManager Hook 失败: " + e);
    }
    
    // ==================== Hook NetWorkController ====================
    try {
        var NetWorkController = Java.use("com.ems.emsone.netword.NetWorkController");
        
        // Hook emsLogin方法
        NetWorkController.emsLogin.implementation = function(loginModel) {
            console.log("\n[+] NetWorkController.emsLogin() 调用");
            console.log("[+] LoginModel: " + loginModel);
            console.log("[+] UserName: " + loginModel.getUserName());
            console.log("[+] Password: " + loginModel.getPassword());
            console.log("[+] IsShop: " + loginModel.getIsShop());
            console.log("[+] ShopID: " + loginModel.getShopID());
            
            var result = this.emsLogin(loginModel);
            
            // Hook Single结果
            result.subscribe(Java.use("io.reactivex.functions.Consumer").$new({
                accept: function(data) {
                    console.log("\n[+] 登录成功!");
                    console.log("[+] 响应数据: " + data);
                }
            }), Java.use("io.reactivex.functions.Consumer").$new({
                accept: function(error) {
                    console.log("\n[-] 登录失败: " + error);
                }
            }));
            
            return result;
        };
        
        console.log("[✓] NetWorkController Hook 成功");
    } catch(e) {
        console.log("[-] NetWorkController Hook 失败: " + e);
    }
    
    // ==================== Hook OkHttp 拦截器 ====================
    try {
        var OkHttpClient = Java.use("okhttp3.OkHttpClient");
        var Request = Java.use("okhttp3.Request");
        
        // 监控所有HTTP请求
        var Interceptor = Java.use("okhttp3.Interceptor");
        var LoggingInterceptor = Java.registerClass({
            name: "com.frida.LoggingInterceptor",
            implements: [Interceptor],
            methods: {
                intercept: function(chain) {
                    var request = chain.request();
                    
                    console.log("\n[+] HTTP 请求");
                    console.log("[+] URL: " + request.url());
                    console.log("[+] Method: " + request.method());
                    
                    // 打印所有Header
                    var headers = request.headers();
                    console.log("[+] Headers:");
                    for (var i = 0; i < headers.size(); i++) {
                        var name = headers.name(i);
                        var value = headers.value(i);
                        
                        if (name === "signature" || name === "Authorization" || name === "public_key") {
                            console.log("    " + name + ": " + value.substring(0, 100) + "...");
                        } else {
                            console.log("    " + name + ": " + value);
                        }
                    }
                    
                    // 打印请求体
                    var body = request.body();
                    if (body != null) {
                        try {
                            var Buffer = Java.use("okio.Buffer");
                            var buffer = Buffer.$new();
                            body.writeTo(buffer);
                            var bodyStr = buffer.readUtf8();
                            console.log("[+] Body: " + bodyStr);
                        } catch(e) {
                            console.log("[+] Body: (无法读取)");
                        }
                    }
                    
                    var response = chain.proceed(request);
                    
                    console.log("[+] HTTP 响应");
                    console.log("[+] Code: " + response.code());
                    
                    return response;
                }
            }
        });
        
        console.log("[✓] OkHttp Interceptor Hook 准备就绪");
    } catch(e) {
        console.log("[-] OkHttp Hook 失败: " + e);
    }
    
    // ==================== Hook Utils ====================
    try {
        var Utils = Java.use("com.ems.emsone.utils.Utils");
        
        // Hook buildSignString
        Utils.buildSignString.overload('[Ljava.lang.String;').implementation = function(params) {
            var result = this.buildSignString(params);
            
            console.log("\n[+] Utils.buildSignString() 调用");
            console.log("[+] 参数数量: " + params.length);
            console.log("[+] 参数: ");
            for (var i = 0; i < params.length; i++) {
                console.log("    [" + i + "] " + params[i]);
            }
            console.log("[+] 结果: " + result);
            
            return result;
        };
        
        console.log("[✓] Utils Hook 成功");
    } catch(e) {
        console.log("[-] Utils Hook 失败: " + e);
    }
    
    console.log("\n[*] 所有Hook设置完成!");
    console.log("[*] 等待应用活动...\n");
});
