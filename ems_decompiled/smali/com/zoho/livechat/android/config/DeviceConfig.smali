.class public Lcom/zoho/livechat/android/config/DeviceConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static chatuilive:Z = false

.field private static isuilive:Z = false

.field private static italicFont:Landroid/graphics/Typeface; = null

.field private static ldpreferences:Landroid/content/SharedPreferences; = null

.field private static liveChatID:Ljava/lang/String; = "temp_chid"

.field private static mediumFont:Landroid/graphics/Typeface;

.field private static mediumItalicFont:Landroid/graphics/Typeface;

.field private static monoFont:Landroid/graphics/Typeface;

.field private static regularFont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLauncherPositions()V
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher_x"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "launcher_y"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static dpToPx(F)I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static getAppInstallTime()Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "[yyyy/MM/dd - HH:mm:ss]"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppLocale()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getAppUpdatedTime()Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "[yyyy/MM/dd - HH:mm:ss]"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBatteryLevel()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "scale"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v3, v1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    if-ltz v2, :cond_0

    const-wide/16 v7, 0x0

    cmpl-double v1, v3, v7

    if-lez v1, :cond_0

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v1, v3

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static getCalenderInfo()Ljava/lang/String;
    .locals 1

    const-string v0, "3"

    return-object v0
.end method

.method private static getCameraAccessInfo()Ljava/lang/String;
    .locals 4

    const-string v0, "0"

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "3"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static getCarrier()Ljava/lang/String;
    .locals 3

    const-string v0, "9"

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    return-object v0
.end method

.method public static getChatUILive()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/config/DeviceConfig;->chatuilive:Z

    return v0
.end method

.method private static getContactsInfo()Ljava/lang/String;
    .locals 4

    const-string v0, "0"

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "3"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getDeviceCarrier()Ljava/lang/String;
    .locals 9

    :try_start_0
    const-string v0, ""

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x8

    const-string v4, "EDGE 2g"

    const-string v5, "GPRS"

    const-string v6, "4g"

    const-string v7, "3g"

    const-string v8, "Type"

    if-ne v2, v3, :cond_0

    :try_start_1
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    const-string v0, "9"

    return-object v0
.end method

.method public static getDeviceHeight()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getDeviceLocale()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceWidth()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private static getInternalStorageSpace()Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v1, v3

    :try_start_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "#.###"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " GB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    const-string v0, "9"

    return-object v0
.end method

.method public static getItalicFont()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/DeviceConfig;->italicFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getLauncherMode()I
    .locals 3

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLauncherPosition()[I
    .locals 4

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher_x"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "launcher_y"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    return-object v2
.end method

.method public static getLiveChatID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/DeviceConfig;->liveChatID:Ljava/lang/String;

    return-object v0
.end method

.method private static getLocationAccessInfo()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    return-object v0

    :cond_0
    const-string v0, "3"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0"

    return-object v0
.end method

.method public static getLogName()Ljava/lang/String;
    .locals 1

    const-string v0, "ZohoLiveDesk"

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "9"

    return-object v0
.end method

.method public static getMediumFont()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/DeviceConfig;->mediumFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getMediumItalicFont()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/DeviceConfig;->mediumItalicFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static getMicroPhoneInfo()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    return-object v0

    :cond_0
    const-string v0, "3"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0"

    return-object v0
.end method

.method public static getMonoFont()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/DeviceConfig;->monoFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static getNetworkAccessInfo()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "3"

    return-object v0

    :cond_0
    const-string v0, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0"

    return-object v0
.end method

.method private static getNetworkCountryCode()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 5

    const-string v0, "connectivity"

    :try_start_0
    const-string v1, ""

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v0, :cond_2

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v0, :cond_1

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v0, :cond_3

    :cond_1
    const-string v1, "Wifi"

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "Mobile"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-object v1

    :catch_0
    const-string v0, "9"

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "9"

    return-object v0
.end method

.method public static getOs()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "Android"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "9"

    return-object v0
.end method

.method public static getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/DeviceConfig;->ldpreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getProduct()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "9"

    return-object v0
.end method

.method public static getRegularFont()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/DeviceConfig;->regularFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static getReminderInfo()Ljava/lang/String;
    .locals 1

    const-string v0, "3"

    return-object v0
.end method

.method public static getResolution()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getDeviceWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getDeviceHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "9"

    return-object v0
.end method

.method public static getToolbarHeight()I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getUILive()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/config/DeviceConfig;->isuilive:Z

    return v0
.end method

.method public static getUserAgentDetails()Ljava/lang/String;
    .locals 5

    const-string v0, "0"

    const-string v1, "9"

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getProduct()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "product"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getProduct()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "manufacturer"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getOs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "mobileos"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getOs()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getOSVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "os-version"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getOSVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "network-type"

    if-eqz v3, :cond_4

    :try_start_1
    const-string v3, "Wifi"

    :goto_0
    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "carrier"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getInternalStorageSpace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "storage"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getInternalStorageSpace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getAppName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v3, "process"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getVersionCode()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_8

    const-string v3, "version"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMicroPhoneInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getReminderInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getCalenderInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getContactsInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getInternalStorageSpace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getCameraAccessInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getNetworkAccessInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLocationAccessInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "access-value"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resolution"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getResolution()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getAppLocale()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "app-locale"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getAppLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getAppInstallTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "app-install-time"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getAppInstallTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getAppUpdatedTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "app-updated-time"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getAppUpdatedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v0, "sdk-version"

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getAppUpdatedTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "os-locale"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getDeviceLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "network-country-code"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getTitleViews()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "currentpage"

    if-eqz v3, :cond_f

    :try_start_2
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getTitleViews()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_f
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getAppActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_10
    :goto_4
    const-string v0, "power-saving-mode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->isPowerSaverOn()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method private static getVersionCode()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private static initFonts(Landroid/content/Context;Lcom/zoho/commons/InitConfig;)V
    .locals 6

    const-string v0, "roboto_regular.ttf"

    const-string v1, "roboto_medium.ttf"

    const-string v2, "roboto_italic.ttf"

    const-string v3, "roboto_medium_italic.ttf"

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/zoho/commons/InitConfig;->getFont(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Lcom/zoho/commons/InitConfig;->getFont(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/zoho/commons/InitConfig;->getFont(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Lcom/zoho/commons/InitConfig;->getFont(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/zoho/commons/InitConfig;->getFont(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v4}, Lcom/zoho/commons/InitConfig;->getFont(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/zoho/commons/InitConfig;->getFont(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v4}, Lcom/zoho/commons/InitConfig;->getFont(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/zoho/livechat/android/config/DeviceConfig;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/zoho/livechat/android/config/DeviceConfig;->mediumFont:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/zoho/livechat/android/config/DeviceConfig;->italicFont:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "roboto_mono.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/zoho/livechat/android/config/DeviceConfig;->monoFont:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    sput-object p0, Lcom/zoho/livechat/android/config/DeviceConfig;->mediumItalicFont:Landroid/graphics/Typeface;

    return-void
.end method

.method private static initImageLoader(Landroid/content/Context;)V
    .locals 15

    new-instance v0, Lc/e/a/b/c$b;

    invoke-direct {v0}, Lc/e/a/b/c$b;-><init>()V

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lc/e/a/b/c$b;->h:Z

    .line 2
    iput-boolean v1, v0, Lc/e/a/b/c$b;->i:Z

    .line 3
    invoke-virtual {v0}, Lc/e/a/b/c$b;->b()Lc/e/a/b/c;

    move-result-object v0

    new-instance v2, Lc/e/a/b/e$b;

    invoke-direct {v2, p0}, Lc/e/a/b/e$b;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object v0, v2, Lc/e/a/b/e$b;->p:Lc/e/a/b/c;

    .line 5
    new-instance p0, Lc/e/a/a/b/b/a;

    const/high16 v0, 0xc00000

    invoke-direct {p0, v0}, Lc/e/a/a/b/b/a;-><init>(I)V

    .line 6
    iget v3, v2, Lc/e/a/b/e$b;->h:I

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    new-array v3, v6, [Ljava/lang/Object;

    const-string v7, "memoryCache() and memoryCacheSize() calls overlap each other"

    .line 7
    invoke-static {v4, v5, v7, v3}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_0
    iput-object p0, v2, Lc/e/a/b/e$b;->k:Lc/e/a/a/b/a;

    if-eqz p0, :cond_1

    new-array p0, v6, [Ljava/lang/Object;

    const-string v3, "memoryCache() and memoryCacheSize() calls overlap each other"

    .line 9
    invoke-static {v4, v5, v3, p0}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_1
    iput v0, v2, Lc/e/a/b/e$b;->h:I

    const/high16 p0, 0x3200000

    .line 11
    iget-object v0, v2, Lc/e/a/b/e$b;->l:Lc/e/a/a/a/a;

    if-eqz v0, :cond_2

    new-array v0, v6, [Ljava/lang/Object;

    const-string v3, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    .line 12
    invoke-static {v4, v5, v3, v0}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    int-to-long v7, p0

    .line 13
    iput-wide v7, v2, Lc/e/a/b/e$b;->i:J

    const/16 p0, 0x64

    .line 14
    iget-object v0, v2, Lc/e/a/b/e$b;->l:Lc/e/a/a/a/a;

    if-eqz v0, :cond_3

    new-array v0, v6, [Ljava/lang/Object;

    const-string v3, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    .line 15
    invoke-static {v4, v5, v3, v0}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :cond_3
    iput p0, v2, Lc/e/a/b/e$b;->j:I

    .line 17
    iget-object p0, v2, Lc/e/a/b/e$b;->b:Ljava/util/concurrent/Executor;

    if-nez p0, :cond_4

    iget-object p0, v2, Lc/e/a/b/e$b;->c:Ljava/util/concurrent/Executor;

    if-eqz p0, :cond_5

    :cond_4
    new-array p0, v6, [Ljava/lang/Object;

    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    .line 18
    invoke-static {v4, v5, v0, p0}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const/4 p0, 0x3

    .line 19
    iput p0, v2, Lc/e/a/b/e$b;->f:I

    .line 20
    sget-object v0, Lc/e/a/b/m/g;->d:Lc/e/a/b/m/g;

    .line 21
    iget-object v3, v2, Lc/e/a/b/e$b;->b:Ljava/util/concurrent/Executor;

    if-nez v3, :cond_6

    iget-object v3, v2, Lc/e/a/b/e$b;->c:Ljava/util/concurrent/Executor;

    if-eqz v3, :cond_7

    :cond_6
    new-array v3, v6, [Ljava/lang/Object;

    const-string v7, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    .line 22
    invoke-static {v4, v5, v7, v3}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :cond_7
    iput-object v0, v2, Lc/e/a/b/e$b;->g:Lc/e/a/b/m/g;

    .line 24
    iput-boolean v1, v2, Lc/e/a/b/e$b;->q:Z

    .line 25
    iget-object v3, v2, Lc/e/a/b/e$b;->b:Ljava/util/concurrent/Executor;

    if-nez v3, :cond_8

    iget v3, v2, Lc/e/a/b/e$b;->f:I

    invoke-static {p0, v3, v0}, Lc/d/b/u/n;->e(IILc/e/a/b/m/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, v2, Lc/e/a/b/e$b;->b:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_8
    iput-boolean v1, v2, Lc/e/a/b/e$b;->d:Z

    :goto_0
    iget-object v0, v2, Lc/e/a/b/e$b;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_9

    iget v0, v2, Lc/e/a/b/e$b;->f:I

    iget-object v3, v2, Lc/e/a/b/e$b;->g:Lc/e/a/b/m/g;

    invoke-static {p0, v0, v3}, Lc/d/b/u/n;->e(IILc/e/a/b/m/g;)Ljava/util/concurrent/Executor;

    move-result-object p0

    iput-object p0, v2, Lc/e/a/b/e$b;->c:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_9
    iput-boolean v1, v2, Lc/e/a/b/e$b;->e:Z

    :goto_1
    iget-object p0, v2, Lc/e/a/b/e$b;->l:Lc/e/a/a/a/a;

    if-nez p0, :cond_10

    iget-object p0, v2, Lc/e/a/b/e$b;->m:Lc/e/a/a/a/c/a;

    if-nez p0, :cond_a

    .line 26
    new-instance p0, Lc/e/a/a/a/c/a;

    invoke-direct {p0}, Lc/e/a/a/a/c/a;-><init>()V

    .line 27
    iput-object p0, v2, Lc/e/a/b/e$b;->m:Lc/e/a/a/a/c/a;

    :cond_a
    iget-object p0, v2, Lc/e/a/b/e$b;->a:Landroid/content/Context;

    iget-object v0, v2, Lc/e/a/b/e$b;->m:Lc/e/a/a/a/c/a;

    iget-wide v11, v2, Lc/e/a/b/e$b;->i:J

    iget v13, v2, Lc/e/a/b/e$b;->j:I

    .line 28
    invoke-static {p0, v6}, Lc/d/b/u/n;->j(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v3

    new-instance v7, Ljava/io/File;

    const-string v8, "uil-images"

    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_b
    move-object v3, v7

    :cond_c
    const-wide/16 v9, 0x0

    cmp-long v7, v11, v9

    if-gtz v7, :cond_d

    if-lez v13, :cond_f

    .line 29
    :cond_d
    invoke-static {p0, v1}, Lc/d/b/u/n;->j(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v7

    .line 30
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-nez v8, :cond_e

    move-object v8, v7

    goto :goto_2

    :cond_e
    move-object v8, v9

    .line 31
    :goto_2
    :try_start_0
    new-instance v14, Lc/e/a/a/a/b/c/b;

    move-object v7, v14

    move-object v9, v3

    move-object v10, v0

    invoke-direct/range {v7 .. v13}, Lc/e/a/a/a/b/c/b;-><init>(Ljava/io/File;Ljava/io/File;Lc/e/a/a/a/c/a;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v7

    invoke-static {v7}, Lc/e/a/c/c;->b(Ljava/lang/Throwable;)V

    .line 32
    :cond_f
    invoke-static {p0, v1}, Lc/d/b/u/n;->j(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    .line 33
    new-instance v14, Lc/e/a/a/a/b/b;

    invoke-direct {v14, p0, v3, v0}, Lc/e/a/a/a/b/b;-><init>(Ljava/io/File;Ljava/io/File;Lc/e/a/a/a/c/a;)V

    .line 34
    :goto_3
    iput-object v14, v2, Lc/e/a/b/e$b;->l:Lc/e/a/a/a/a;

    :cond_10
    iget-object p0, v2, Lc/e/a/b/e$b;->k:Lc/e/a/a/b/a;

    if-nez p0, :cond_14

    iget-object p0, v2, Lc/e/a/b/e$b;->a:Landroid/content/Context;

    iget v0, v2, Lc/e/a/b/e$b;->h:I

    if-nez v0, :cond_13

    const-string v0, "activity"

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x100000

    and-int/2addr p0, v7

    if-eqz p0, :cond_11

    goto :goto_4

    :cond_11
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_12

    .line 37
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v3

    :cond_12
    mul-int v3, v3, v7

    .line 38
    div-int/lit8 v0, v3, 0x8

    :cond_13
    new-instance p0, Lc/e/a/a/b/b/a;

    invoke-direct {p0, v0}, Lc/e/a/a/b/b/a;-><init>(I)V

    .line 39
    iput-object p0, v2, Lc/e/a/b/e$b;->k:Lc/e/a/a/b/a;

    :cond_14
    iget-object p0, v2, Lc/e/a/b/e$b;->n:Lc/e/a/b/p/b;

    if-nez p0, :cond_15

    iget-object p0, v2, Lc/e/a/b/e$b;->a:Landroid/content/Context;

    .line 40
    new-instance v0, Lc/e/a/b/p/a;

    invoke-direct {v0, p0}, Lc/e/a/b/p/a;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object v0, v2, Lc/e/a/b/e$b;->n:Lc/e/a/b/p/b;

    :cond_15
    iget-object p0, v2, Lc/e/a/b/e$b;->o:Lc/e/a/b/n/b;

    if-nez p0, :cond_16

    iget-boolean p0, v2, Lc/e/a/b/e$b;->q:Z

    .line 42
    new-instance v0, Lc/e/a/b/n/a;

    invoke-direct {v0, p0}, Lc/e/a/b/n/a;-><init>(Z)V

    .line 43
    iput-object v0, v2, Lc/e/a/b/e$b;->o:Lc/e/a/b/n/b;

    :cond_16
    iget-object p0, v2, Lc/e/a/b/e$b;->p:Lc/e/a/b/c;

    if-nez p0, :cond_17

    .line 44
    new-instance p0, Lc/e/a/b/c$b;

    invoke-direct {p0}, Lc/e/a/b/c$b;-><init>()V

    invoke-virtual {p0}, Lc/e/a/b/c$b;->b()Lc/e/a/b/c;

    move-result-object p0

    .line 45
    iput-object p0, v2, Lc/e/a/b/e$b;->p:Lc/e/a/b/c;

    .line 46
    :cond_17
    new-instance p0, Lc/e/a/b/e;

    invoke-direct {p0, v2, v5}, Lc/e/a/b/e;-><init>(Lc/e/a/b/e$b;Lc/e/a/b/e$a;)V

    .line 47
    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object v0

    .line 48
    monitor-enter v0

    :try_start_1
    iget-object v1, v0, Lc/e/a/b/d;->a:Lc/e/a/b/e;

    if-nez v1, :cond_18

    const-string v1, "Initialize ImageLoader with configuration"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lc/e/a/b/g;

    invoke-direct {v1, p0}, Lc/e/a/b/g;-><init>(Lc/e/a/b/e;)V

    iput-object v1, v0, Lc/e/a/b/d;->b:Lc/e/a/b/g;

    iput-object p0, v0, Lc/e/a/b/d;->a:Lc/e/a/b/e;

    goto :goto_5

    :cond_18
    const-string p0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    new-array v1, v6, [Ljava/lang/Object;

    .line 49
    invoke-static {v4, v5, p0, v1}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static initialize(Landroid/content/Context;Lcom/zoho/commons/InitConfig;)V
    .locals 2

    sget-object v0, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {v0, p0}, Lcom/zoho/livechat/android/utils/ImageUtils;->initialize(Landroid/content/Context;)V

    const-string v0, "siq_session"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/zoho/livechat/android/config/DeviceConfig;->ldpreferences:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/zoho/livechat/android/config/DeviceConfig;->initImageLoader(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/zoho/livechat/android/config/DeviceConfig;->initFonts(Landroid/content/Context;Lcom/zoho/commons/InitConfig;)V

    return-void
.end method

.method public static isConnectedToInternet()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isPowerSaverOn()I
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static setChatUILive(ZLjava/lang/String;)V
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/config/DeviceConfig;->chatuilive:Z

    sput-object p1, Lcom/zoho/livechat/android/config/DeviceConfig;->liveChatID:Ljava/lang/String;

    return-void
.end method

.method public static setLauncherMode(I)V
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher_mode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLauncherPosition([I)V
    .locals 3

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p0, v1

    const-string v2, "launcher_x"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    aget p0, p0, v1

    const-string v1, "launcher_y"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setUILive(Z)V
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/config/DeviceConfig;->isuilive:Z

    return-void
.end method
