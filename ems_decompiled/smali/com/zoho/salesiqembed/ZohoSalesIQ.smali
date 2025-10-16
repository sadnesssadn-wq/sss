.class public Lcom/zoho/salesiqembed/ZohoSalesIQ;
.super Lcom/zoho/livechat/android/ZohoLiveChat;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/salesiqembed/ZohoSalesIQ$Tracking;,
        Lcom/zoho/salesiqembed/ZohoSalesIQ$Visitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ZohoLiveChat;-><init>()V

    return-void
.end method

.method public static clearData(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/livechat/android/ZohoLiveChat;->clearData(Landroid/content/Context;)V

    return-void
.end method

.method public static forceInitialiseSDK()V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->syncWithServer()V

    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/zoho/salesiqembed/ZohoSalesIQ;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/commons/InitConfig;Lcom/zoho/commons/OnInitCompleteListener;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/commons/InitConfig;Lcom/zoho/commons/OnInitCompleteListener;)V
    .locals 7

    new-instance v0, Lcom/zoho/salesiqembed/android/UTSOperationCallback;

    invoke-direct {v0}, Lcom/zoho/salesiqembed/android/UTSOperationCallback;-><init>()V

    invoke-static {v0}, Lcom/zoho/livechat/android/config/LDChatConfig;->setOperationCallback(Lcom/zoho/livechat/android/operation/OperationCallback;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/zoho/livechat/android/ZohoLiveChat;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/commons/OnInitCompleteListener;Lcom/zoho/commons/InitConfig;)V

    invoke-static {p0}, Lcom/zoho/salesiqembed/ZohoSalesIQ;->registerCallbacks(Landroid/app/Application;)V

    return-void
.end method

.method public static isSDKEnabled()Z
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isEmbedAllowed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static registerCallbacks(Landroid/app/Application;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/zoho/salesiqembed/ZohoSalesIQ$1;

    invoke-direct {v0}, Lcom/zoho/salesiqembed/ZohoSalesIQ$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance v0, Lcom/zoho/salesiqembed/ZohoSalesIQ$2;

    invoke-direct {v0}, Lcom/zoho/salesiqembed/ZohoSalesIQ$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setLauncherProperties(Lcom/zoho/commons/LauncherProperties;)V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->setLauncherProperties(Lcom/zoho/commons/LauncherProperties;)V

    return-void
.end method

.method public static setThemeColor(Ljava/lang/String;Lcom/zoho/commons/Color;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->setThemeColor(Ljava/lang/String;Lcom/zoho/commons/Color;)V

    return-void
.end method
