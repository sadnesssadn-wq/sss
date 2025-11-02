
// Hook网络请求
Java.perform(function() {
    console.log('[*] Hooking Network Requests...');
    
    var NetworkManager = Java.use('c.b.t.b');
    
    // Hook所有网络方法
    NetworkManager.a.overload('java.lang.String', 'java.util.Map', 'boolean', 'c.b.t.d').implementation = function(url, params, showProgress, callback) {
        console.log('[*] Network Request:');
        console.log('  URL: ' + url);
        console.log('  Params: ' + params);
        
        // 获取Token
        var CacheManager = Java.use('c.b.k.a');
        var token = CacheManager.b().f2956a.value.b('PREF_TOKEN_USER');
        console.log('  Token: ' + token);
        
        return this.a.call(this, url, params, showProgress, callback);
    };
});
            