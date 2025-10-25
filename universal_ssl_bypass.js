/**
 * 🔥 通用SSL Pinning绕过脚本
 * 支持所有常见的证书锁定方案
 * 适用于: React Native, Flutter, OkHttp3, TrustKit等
 */

console.log("\n╔════════════════════════════════════════════════════╗");
console.log("║  🔥 通用SSL Pinning完全绕过系统 🔥           ║");
console.log("╚════════════════════════════════════════════════════╝\n");

// ============================================================
// 1. Java层 - OkHttp3 SSL Pinning绕过
// ============================================================
Java.perform(function() {
    console.log("[*] 开始Java层SSL Pinning绕过...\n");
    
    // 1.1 OkHttp3 CertificatePinner
    try {
        var CertificatePinner = Java.use("okhttp3.CertificatePinner");
        
        CertificatePinner.check.overload('java.lang.String', 'java.util.List').implementation = function(hostname, peerCertificates) {
            console.log("[+] OkHttp3 CertificatePinner.check() 已绕过: " + hostname);
            return;
        };
        
        CertificatePinner.check.overload('java.lang.String', '[Ljava.security.cert.Certificate;').implementation = function(hostname, peerCertificates) {
            console.log("[+] OkHttp3 CertificatePinner.check() 已绕过: " + hostname);
            return;
        };
        
        console.log("[✓] OkHttp3 CertificatePinner 已绕过");
    } catch(err) {
        console.log("[-] OkHttp3 CertificatePinner 不适用");
    }
    
    // 1.2 TrustManager绕过
    try {
        var X509TrustManager = Java.use("javax.net.ssl.X509TrustManager");
        var SSLContext = Java.use("javax.net.ssl.SSLContext");
        
        var TrustManager = Java.registerClass({
            name: "com.universal.TrustManager",
            implements: [X509TrustManager],
            methods: {
                checkClientTrusted: function(chain, authType) {
                    console.log("[+] checkClientTrusted 已绕过");
                },
                checkServerTrusted: function(chain, authType) {
                    console.log("[+] checkServerTrusted 已绕过");
                },
                getAcceptedIssuers: function() {
                    return [];
                }
            }
        });
        
        var TrustManagers = [TrustManager.$new()];
        var SSLContext_init = SSLContext.init.overload(
            "[Ljavax.net.ssl.KeyManager;",
            "[Ljavax.net.ssl.TrustManager;",
            "java.security.SecureRandom"
        );
        
        SSLContext_init.implementation = function(keyManager, trustManager, secureRandom) {
            console.log("[+] SSLContext.init() 使用自定义TrustManager");
            SSLContext_init.call(this, keyManager, TrustManagers, secureRandom);
        };
        
        console.log("[✓] X509TrustManager 已绕过");
    } catch(err) {
        console.log("[-] TrustManager 绕过失败: " + err);
    }
    
    // 1.3 HttpsURLConnection绕过
    try {
        var HttpsURLConnection = Java.use("javax.net.ssl.HttpsURLConnection");
        
        HttpsURLConnection.setDefaultHostnameVerifier.implementation = function(hostnameVerifier) {
            console.log("[+] setDefaultHostnameVerifier 已拦截");
            var TrustAllHostnameVerifier = Java.registerClass({
                name: "com.universal.TrustAllHostnameVerifier",
                implements: [Java.use("javax.net.ssl.HostnameVerifier")],
                methods: {
                    verify: function(hostname, session) {
                        console.log("[+] HostnameVerifier.verify() 已绕过: " + hostname);
                        return true;
                    }
                }
            });
            return this.setDefaultHostnameVerifier(TrustAllHostnameVerifier.$new());
        };
        
        HttpsURLConnection.setSSLSocketFactory.implementation = function(sslSocketFactory) {
            console.log("[+] setSSLSocketFactory 已拦截");
            return this.setSSLSocketFactory(sslSocketFactory);
        };
        
        console.log("[✓] HttpsURLConnection 已绕过");
    } catch(err) {
        console.log("[-] HttpsURLConnection 不适用");
    }
    
    // 1.4 Cronet (Chrome网络库)
    try {
        var CronetEngine = Java.use("org.chromium.net.CronetEngine");
        var CronetEngineBuilderImpl = Java.use("org.chromium.net.impl.CronetEngineBuilderImpl");
        
        CronetEngineBuilderImpl.enablePublicKeyPinningBypassForLocalTrustAnchors.implementation = function(value) {
            console.log("[+] Cronet enablePublicKeyPinningBypassForLocalTrustAnchors 强制启用");
            return this.enablePublicKeyPinningBypassForLocalTrustAnchors(true);
        };
        
        console.log("[✓] Cronet SSL Pinning 已绕过");
    } catch(err) {
        console.log("[-] Cronet 不适用");
    }
    
    // 1.5 WebView SSL错误绕过
    try {
        var WebViewClient = Java.use("android.webkit.WebViewClient");
        
        WebViewClient.onReceivedSslError.implementation = function(view, handler, error) {
            console.log("[+] WebView SSL错误已忽略");
            handler.proceed();
            return;
        };
        
        console.log("[✓] WebView SSL错误 已绕过");
    } catch(err) {
        console.log("[-] WebView 不适用");
    }
    
    // 1.6 Apache HttpClient
    try {
        var AbstractVerifier = Java.use("org.apache.http.conn.ssl.AbstractVerifier");
        
        AbstractVerifier.verify.overload('java.lang.String', '[Ljava.lang.String', '[Ljava.lang.String', 'boolean').implementation = function(host, cns, subjectAlts, strictWithSubDomains) {
            console.log("[+] Apache HttpClient AbstractVerifier 已绕过: " + host);
            return;
        };
        
        console.log("[✓] Apache HttpClient 已绕过");
    } catch(err) {
        console.log("[-] Apache HttpClient 不适用");
    }
    
    // 1.7 Conscrypt (Google安全库)
    try {
        var ConscryptTrustManager = Java.use("com.android.org.conscrypt.TrustManagerImpl");
        
        ConscryptTrustManager.verifyChain.implementation = function(untrustedChain, trustAnchorChain, host, clientAuth, ocspData, tlsSctData) {
            console.log("[+] Conscrypt TrustManager 已绕过: " + host);
            return untrustedChain;
        };
        
        console.log("[✓] Conscrypt 已绕过");
    } catch(err) {
        console.log("[-] Conscrypt 不适用");
    }
    
    // 1.8 TrustKit (移动端证书锁定库)
    try {
        var TrustKit = Java.use("com.datatheorem.android.trustkit.TrustKit");
        
        TrustKit.getInstance.implementation = function() {
            console.log("[+] TrustKit.getInstance() 已拦截");
            return null;
        };
        
        console.log("[✓] TrustKit 已绕过");
    } catch(err) {
        console.log("[-] TrustKit 不适用");
    }
    
    // 1.9 Network Security Config绕过
    try {
        var NetworkSecurityConfig = Java.use("android.security.net.config.NetworkSecurityConfig");
        
        NetworkSecurityConfig.isCleartextTrafficPermitted.implementation = function() {
            console.log("[+] isCleartextTrafficPermitted 强制返回true");
            return true;
        };
        
        console.log("[✓] Network Security Config 已绕过");
    } catch(err) {
        console.log("[-] Network Security Config 不适用");
    }
    
    console.log("\n[✓] Java层SSL Pinning绕过完成\n");
});

// ============================================================
// 2. Native层 - SSL Pinning绕过
// ============================================================
console.log("[*] 开始Native层SSL Pinning绕过...\n");

// 2.1 libssl.so (OpenSSL)
try {
    var SSL_CTX_set_custom_verify = Module.findExportByName("libssl.so", "SSL_CTX_set_custom_verify");
    if (SSL_CTX_set_custom_verify) {
        Interceptor.replace(SSL_CTX_set_custom_verify, new NativeCallback(function(ssl, mode, callback) {
            console.log("[+] SSL_CTX_set_custom_verify 已拦截");
            return;
        }, 'void', ['pointer', 'int', 'pointer']));
        console.log("[✓] OpenSSL SSL_CTX_set_custom_verify 已绕过");
    }
    
    var SSL_get_verify_result = Module.findExportByName("libssl.so", "SSL_get_verify_result");
    if (SSL_get_verify_result) {
        Interceptor.replace(SSL_get_verify_result, new NativeCallback(function(ssl) {
            console.log("[+] SSL_get_verify_result 返回成功");
            return 0; // X509_V_OK
        }, 'int', ['pointer']));
        console.log("[✓] OpenSSL SSL_get_verify_result 已绕过");
    }
} catch(err) {
    console.log("[-] OpenSSL 不适用: " + err);
}

// 2.2 Flutter SSL Pinning绕过
try {
    // Flutter使用BoringSSL
    var ssl_verify_result = Module.findExportByName("libflutter.so", "ssl_verify_result");
    if (!ssl_verify_result) {
        ssl_verify_result = Module.findExportByName("libssl_flutter.so", "SSL_get_verify_result");
    }
    
    if (ssl_verify_result) {
        Interceptor.replace(ssl_verify_result, new NativeCallback(function() {
            console.log("[+] Flutter SSL验证已绕过");
            return 0;
        }, 'int', []));
        console.log("[✓] Flutter SSL Pinning 已绕过");
    }
    
    // Flutter session_verify_cert_chain
    var session_verify_cert_chain = Module.findExportByName("libflutter.so", "session_verify_cert_chain");
    if (session_verify_cert_chain) {
        Interceptor.replace(session_verify_cert_chain, new NativeCallback(function() {
            console.log("[+] Flutter session_verify_cert_chain 已绕过");
            return 1; // 返回成功
        }, 'int', []));
        console.log("[✓] Flutter session_verify_cert_chain 已绕过");
    }
} catch(err) {
    console.log("[-] Flutter 不适用: " + err);
}

// 2.3 React Native SSL Pinning绕过
try {
    var modules = Process.enumerateModules();
    modules.forEach(function(module) {
        if (module.name.indexOf("hermes") !== -1 || module.name.indexOf("jscexecutor") !== -1) {
            console.log("[+] 检测到React Native: " + module.name);
            
            // 查找网络相关函数
            var exports = module.enumerateExports();
            exports.forEach(function(exp) {
                if (exp.name.indexOf("SSL") !== -1 || exp.name.indexOf("certificate") !== -1) {
                    console.log("[+] Hook React Native SSL函数: " + exp.name);
                    Interceptor.attach(exp.address, {
                        onEnter: function(args) {
                            console.log("[+] " + exp.name + " 被调用");
                        },
                        onLeave: function(retval) {
                            if (retval.toInt32() !== 0 && retval.toInt32() !== 1) {
                                retval.replace(0x0); // 强制返回成功
                            }
                        }
                    });
                }
            });
        }
    });
    console.log("[✓] React Native SSL检查完成");
} catch(err) {
    console.log("[-] React Native 分析失败: " + err);
}

console.log("\n[✓] Native层SSL Pinning绕过完成\n");

// ============================================================
// 3. 额外的防护绕过
// ============================================================
console.log("[*] 绕过其他安全检测...\n");

Java.perform(function() {
    // 3.1 Proxy检测绕过
    try {
        var System = Java.use("java.lang.System");
        
        System.getProperty.overload('java.lang.String').implementation = function(key) {
            if (key === "http.proxyHost" || key === "http.proxyPort") {
                console.log("[+] 隐藏代理设置: " + key);
                return null;
            }
            return this.getProperty(key);
        };
        
        console.log("[✓] 代理检测 已绕过");
    } catch(err) {}
    
    // 3.2 VPN检测绕过
    try {
        var NetworkInterface = Java.use("java.net.NetworkInterface");
        
        NetworkInterface.getName.implementation = function() {
            var name = this.getName();
            if (name === "tun0" || name === "ppp0") {
                console.log("[+] 隐藏VPN接口: " + name);
                return "wlan0";
            }
            return name;
        };
        
        console.log("[✓] VPN检测 已绕过");
    } catch(err) {}
    
    // 3.3 Root检测绕过
    try {
        var File = Java.use("java.io.File");
        
        File.exists.implementation = function() {
            var path = this.getAbsolutePath();
            if (path.indexOf("su") !== -1 || path.indexOf("magisk") !== -1) {
                console.log("[+] 隐藏Root文件: " + path);
                return false;
            }
            return this.exists();
        };
        
        console.log("[✓] Root检测 已绕过");
    } catch(err) {}
});

console.log("\n╔════════════════════════════════════════════════════╗");
console.log("║  ✅ SSL Pinning完全绕过系统已激活 ✅         ║");
console.log("║  现在可以使用BurpSuite/Charles抓包了！           ║");
console.log("╚════════════════════════════════════════════════════╝\n");
