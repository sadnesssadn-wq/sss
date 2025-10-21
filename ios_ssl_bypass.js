/**
 * iOS SSL Pinning绕过脚本
 * 支持: NSURLSession, AFNetworking, Alamofire
 * 使用: frida -U -f com.target.app -l ios_ssl_bypass.js --no-pause
 */

console.log("[*] iOS SSL Pinning绕过脚本已启动");

// 1. NSURLSession SSL绕过
if (ObjC.available) {
    try {
        var NSURLSession = ObjC.classes.NSURLSession;
        var originalMethod = NSURLSession['- URLSession:didReceiveChallenge:completionHandler:'];
        
        Interceptor.attach(originalMethod.implementation, {
            onEnter: function(args) {
                console.log("[+] NSURLSession SSL challenge intercepted");
                var block = new ObjC.Block(args[4]);
                var callback = block.implementation;
                block.implementation = function(disposition, credential) {
                    console.log("[+] SSL challenge bypassed - accepting all certificates");
                    var URLCredential = ObjC.classes.NSURLCredential;
                    var serverTrust = ObjC.Object(args[3]).serverTrust();
                    var newCredential = URLCredential.credentialForTrust_(serverTrust);
                    callback(1, newCredential); // NSURLSessionAuthChallengeUseCredential
                };
            }
        });
        console.log("[✓] NSURLSession hooked");
    } catch(e) {
        console.log("[-] NSURLSession hook failed: " + e);
    }

    // 2. AFNetworking 2.x绕过
    try {
        var AFHTTPSessionManager = ObjC.classes.AFHTTPSessionManager;
        if (AFHTTPSessionManager) {
            Interceptor.attach(AFHTTPSessionManager['- setSecurityPolicy:'].implementation, {
                onEnter: function(args) {
                    console.log("[+] AFNetworking SecurityPolicy disabled");
                    var policy = ObjC.Object(args[2]);
                    policy.setAllowInvalidCertificates_(true);
                    policy.setValidatesDomainName_(false);
                }
            });
            console.log("[✓] AFNetworking 2.x hooked");
        }
    } catch(e) {}

    // 3. AFNetworking 3.x绕过
    try {
        var AFSecurityPolicy = ObjC.classes.AFSecurityPolicy;
        if (AFSecurityPolicy) {
            Interceptor.attach(AFSecurityPolicy['+ policyWithPinningMode:'].implementation, {
                onLeave: function(retval) {
                    console.log("[+] AFSecurityPolicy pinning disabled");
                    var policy = new ObjC.Object(retval);
                    policy.setAllowInvalidCertificates_(true);
                    policy.setValidatesDomainName_(false);
                }
            });
            console.log("[✓] AFNetworking 3.x hooked");
        }
    } catch(e) {}

    // 4. Alamofire绕过
    try {
        var ServerTrustPolicy = ObjC.classes.ServerTrustPolicy;
        if (ServerTrustPolicy) {
            Interceptor.attach(ServerTrustPolicy['+ disableEvaluation'].implementation, {
                onLeave: function(retval) {
                    console.log("[+] Alamofire ServerTrustPolicy disabled");
                }
            });
            console.log("[✓] Alamofire hooked");
        }
    } catch(e) {}

    // 5. 通用证书验证绕过
    try {
        var SecTrustEvaluate = Module.findExportByName('Security', 'SecTrustEvaluate');
        if (SecTrustEvaluate) {
            Interceptor.replace(SecTrustEvaluate, new NativeCallback(function(trust, result) {
                console.log("[+] SecTrustEvaluate bypassed");
                Memory.writeU8(result, 1); // kSecTrustResultProceed
                return 0; // errSecSuccess
            }, 'int', ['pointer', 'pointer']));
            console.log("[✓] SecTrustEvaluate hooked");
        }
    } catch(e) {}

    // 6. TrustKit绕过
    try {
        var TrustKit = ObjC.classes.TrustKit;
        if (TrustKit) {
            Interceptor.attach(TrustKit['+ initSharedInstanceWithConfiguration:'].implementation, {
                onEnter: function(args) {
                    console.log("[+] TrustKit disabled");
                    args[2] = NULL;
                }
            });
            console.log("[✓] TrustKit hooked");
        }
    } catch(e) {}

    console.log("[*] iOS SSL Pinning绕过完成");
} else {
    console.log("[-] Objective-C Runtime not available");
}
