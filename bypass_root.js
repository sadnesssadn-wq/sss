
// Bypass Root检测
Java.perform(function() {
    console.log('[*] Bypassing Root Detection...');
    
    // Hook常见Root检测
    var Runtime = Java.use('java.lang.Runtime');
    Runtime.exec.overload('[Ljava.lang.String;').implementation = function(cmd) {
        var cmdStr = cmd.join(' ');
        if (cmdStr.includes('su') || cmdStr.includes('busybox')) {
            console.log('[*] Blocked Root Check: ' + cmdStr);
            throw new Error('Command not found');
        }
        return this.exec.call(this, cmd);
    };
});
            