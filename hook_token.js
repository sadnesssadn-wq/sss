
// Hook Token操作
Java.perform(function() {
    console.log('[*] Hooking Token Operations...');
    
    var SharedPrefs = Java.use('c.b.k.e');
    SharedPrefs.b.overload('java.lang.String').implementation = function(key) {
        var value = this.b.call(this, key);
        if (key.contains('TOKEN')) {
            console.log('[!] Token Read: ' + key + ' = ' + value);
        }
        return value;
    };
    
    SharedPrefs.a.overload('java.lang.String', 'java.lang.String').implementation = function(key, value) {
        if (key.contains('TOKEN')) {
            console.log('[!] Token Write: ' + key + ' = ' + value);
        }
        return this.a.call(this, key, value);
    };
});
            