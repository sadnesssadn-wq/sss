/**
 * 通用SSL Pinning绕过脚本 - Android
 * 支持: OkHttp3, HttpsURLConnection, TrustManager, Cronet
 * 使用: frida -U -f com.target.app -l frida_ssl_bypass.js --no-pause
 */

Java.perform(function() {
    console.log("[*] SSL Pinning绕过脚本已启动");

    // 1. OkHttp3 CertificatePinner绕过
    try {
        var CertificatePinner = Java.use("okhttp3.CertificatePinner");
        CertificatePinner.check.overload('java.lang.String', 'java.util.List').implementation = function(str, list) {
            console.log("[+] OkHttp3 SSL Pinning bypassed for: " + str);
            return;
        };
        console.log("[✓] OkHttp3 CertificatePinner hooked");
    } catch(e) {
        console.log("[-] OkHttp3 not found");
    }

    // 2. TrustManager绕过
    try {
        var X509TrustManager = Java.use('javax.net.ssl.X509TrustManager');
        var SSLContext = Java.use('javax.net.ssl.SSLContext');
        
        var TrustManager = Java.registerClass({
            name: 'com.sensepost.test.TrustManager',
            implements: [X509TrustManager],
            methods: {
                checkClientTrusted: function(chain, authType) {},
                checkServerTrusted: function(chain, authType) {},
                getAcceptedIssuers: function() { return []; }
            }
        });

        var TrustManagers = [TrustManager.$new()];
        var SSLContext_init = SSLContext.init.overload('[Ljavax.net.ssl.KeyManager;', '[Ljavax.net.ssl.TrustManager;', 'java.security.SecureRandom');
        SSLContext_init.implementation = function(keyManager, trustManager, secureRandom) {
            console.log("[+] TrustManager bypassed");
            SSLContext_init.call(this, keyManager, TrustManagers, secureRandom);
        };
        console.log("[✓] TrustManager hooked");
    } catch(e) {
        console.log("[-] TrustManager hook failed");
    }

    // 3. HttpsURLConnection绕过
    try {
        var HostnameVerifier = Java.use("javax.net.ssl.HostnameVerifier");
        var HttpsURLConnection = Java.use("javax.net.ssl.HttpsURLConnection");
        
        HttpsURLConnection.setDefaultHostnameVerifier.implementation = function(hostnameVerifier) {
            console.log("[+] HttpsURLConnection HostnameVerifier bypassed");
            return null;
        };
        
        HttpsURLConnection.setSSLSocketFactory.implementation = function(sslSocketFactory) {
            console.log("[+] HttpsURLConnection SSLSocketFactory bypassed");
            return null;
        };
        console.log("[✓] HttpsURLConnection hooked");
    } catch(e) {
        console.log("[-] HttpsURLConnection not found");
    }

    // 4. WebView SSL Error绕过
    try {
        var WebViewClient = Java.use("android.webkit.WebViewClient");
        WebViewClient.onReceivedSslError.implementation = function(webView, sslErrorHandler, sslError) {
            console.log("[+] WebView SSL Error bypassed");
            sslErrorHandler.proceed();
        };
        console.log("[✓] WebView SSL Error hooked");
    } catch(e) {
        console.log("[-] WebView hook failed");
    }

    // 5. Cronet绕过 (Google网络库)
    try {
        var CronetEngine = Java.use("org.chromium.net.CronetEngine");
        CronetEngine.Builder.enablePublicKeyPinningBypassForLocalTrustAnchors.implementation = function(arg) {
            console.log("[+] Cronet Public Key Pinning bypassed");
            return this.enablePublicKeyPinningBypassForLocalTrustAnchors(true);
        };
        console.log("[✓] Cronet hooked");
    } catch(e) {
        console.log("[-] Cronet not found");
    }

    console.log("[*] SSL Pinning绕过完成，开始拦截流量...");
});
