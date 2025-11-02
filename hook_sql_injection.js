
// Hook SQL注入点
Java.perform(function() {
    console.log('[*] Hooking SQL Injection...');
    
    var CacheManager = Java.use('c.b.k.a');
    CacheManager.a.overload('java.lang.String').implementation = function(url) {
        console.log('[*] CacheManager.a() called');
        console.log('  URL: ' + url);
        
        // 获取SQL查询
        var result = this.a.call(this, url);
        console.log('  Result: ' + result);
        
        // 注入payload测试
        // var malicious = "' UNION SELECT * FROM caching --";
        // return this.a.call(this, malicious);
        
        return result;
    };
});
            