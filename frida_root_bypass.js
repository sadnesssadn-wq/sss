/**
 * Root检测绕过脚本 - Android
 * 对抗: su/Magisk/Xposed检测、模拟器检测
 * 使用: frida -U -f com.target.app -l frida_root_bypass.js --no-pause
 */

Java.perform(function() {
    console.log("[*] Root检测绕过脚本已启动");

    // 1. 常见Root检测类绕过
    var rootPackages = [
        "com.noshufou.android.su",
        "com.thirdparty.superuser",
        "eu.chainfire.supersu",
        "com.koushikdutta.superuser",
        "com.topjohnwu.magisk"
    ];

    var RootBeer = null;
    try {
        RootBeer = Java.use("com.scottyab.rootbeer.RootBeer");
        RootBeer.isRooted.implementation = function() {
            console.log("[+] RootBeer.isRooted() bypassed");
            return false;
        };
        RootBeer.isRootedWithoutBusyBoxCheck.implementation = function() {
            console.log("[+] RootBeer.isRootedWithoutBusyBoxCheck() bypassed");
            return false;
        };
        console.log("[✓] RootBeer hooked");
    } catch(e) {}

    // 2. File.exists() 检测su文件
    try {
        var File = Java.use("java.io.File");
        File.exists.implementation = function() {
            var path = this.getAbsolutePath();
            if (path.indexOf("su") !== -1 || 
                path.indexOf("magisk") !== -1 ||
                path.indexOf("busybox") !== -1) {
                console.log("[+] File.exists() blocked: " + path);
                return false;
            }
            return this.exists();
        };
        console.log("[✓] File.exists() hooked");
    } catch(e) {}

    // 3. Runtime.exec() 检测su命令
    try {
        var Runtime = Java.use("java.lang.Runtime");
        Runtime.exec.overload('java.lang.String').implementation = function(cmd) {
            if (cmd.indexOf("su") !== -1 || cmd.indexOf("which") !== -1) {
                console.log("[+] Runtime.exec() blocked: " + cmd);
                throw Java.use("java.io.IOException").$new("Command not found");
            }
            return this.exec(cmd);
        };
        
        Runtime.exec.overload('[Ljava.lang.String;').implementation = function(cmdarr) {
            var cmdstr = cmdarr.join(" ");
            if (cmdstr.indexOf("su") !== -1 || cmdstr.indexOf("getprop") !== -1) {
                console.log("[+] Runtime.exec() blocked: " + cmdstr);
                throw Java.use("java.io.IOException").$new("Command not found");
            }
            return this.exec(cmdarr);
        };
        console.log("[✓] Runtime.exec() hooked");
    } catch(e) {}

    // 4. PackageManager检测Root应用
    try {
        var PackageManager = Java.use("android.app.ApplicationPackageManager");
        PackageManager.getPackageInfo.overload('java.lang.String', 'int').implementation = function(pkg, flags) {
            if (rootPackages.indexOf(pkg) !== -1) {
                console.log("[+] PackageManager.getPackageInfo() blocked: " + pkg);
                throw Java.use("android.content.pm.PackageManager$NameNotFoundException").$new(pkg);
            }
            return this.getPackageInfo(pkg, flags);
        };
        console.log("[✓] PackageManager hooked");
    } catch(e) {}

    // 5. Build.TAGS检测 (test-keys)
    try {
        var Build = Java.use("android.os.Build");
        var BuildClass = Java.use("android.os.Build");
        BuildClass.TAGS.value = "release-keys";
        console.log("[+] Build.TAGS modified to: release-keys");
    } catch(e) {}

    // 6. 模拟器检测绕过
    try {
        var SystemProperties = Java.use("android.os.SystemProperties");
        SystemProperties.get.overload('java.lang.String').implementation = function(key) {
            if (key === "ro.kernel.qemu" || 
                key === "ro.hardware" ||
                key === "ro.product.model") {
                console.log("[+] SystemProperties.get() spoofed: " + key);
                return "real_device";
            }
            return this.get(key);
        };
        console.log("[✓] SystemProperties hooked");
    } catch(e) {}

    // 7. Xposed检测绕过
    try {
        var Exception = Java.use("java.lang.Exception");
        Exception.$init.overload('java.lang.String').implementation = function(message) {
            if (message && message.indexOf("Xposed") !== -1) {
                console.log("[+] Xposed exception hidden");
                return this.$init("Unknown error");
            }
            return this.$init(message);
        };
    } catch(e) {}

    console.log("[*] Root检测绕过完成");
});
