.class public Lcom/zoho/livechat/android/ZohoLiveChat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ZohoLiveChat$Conversation;,
        Lcom/zoho/livechat/android/ZohoLiveChat$FAQ;,
        Lcom/zoho/livechat/android/ZohoLiveChat$Notification;,
        Lcom/zoho/livechat/android/ZohoLiveChat$Admin;,
        Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;,
        Lcom/zoho/livechat/android/ZohoLiveChat$Chat;
    }
.end annotation


# static fields
.field private static applicationManager:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

.field public static deskportalname:Ljava/lang/String;

.field private static notificationListener:Lcom/zoho/livechat/android/NotificationListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lb/b/k/j;->c:Lb/f/c;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lb/b/q/o0;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/zoho/livechat/android/NotificationListener;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat;->notificationListener:Lcom/zoho/livechat/android/NotificationListener;

    return-object v0
.end method

.method public static synthetic access$002(Lcom/zoho/livechat/android/NotificationListener;)Lcom/zoho/livechat/android/NotificationListener;
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/ZohoLiveChat;->notificationListener:Lcom/zoho/livechat/android/NotificationListener;

    return-object p0
.end method

.method public static clearData(Landroid/content/Context;)V
    .locals 6

    const-string v0, "salesiq_accesskey"

    const-string v1, "salesiq_appkey"

    :try_start_0
    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;->contenturi:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$PushNotification;->contenturi:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$Articles;->contenturi:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$ArticleDepts;->contenturi:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$ArticlesSync;->contenturi:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "siq_session"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "fcmid"

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pushstatus"

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unRegisterDevice()V

    :cond_0
    invoke-interface {p0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isSupportedVersion()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/zoho/livechat/android/utils/GetAppkeyDetailUtil;

    invoke-direct {p0}, Lcom/zoho/livechat/android/utils/GetAppkeyDetailUtil;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->disconnect()V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->clearSid()V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;

    move-result-object p0

    const-string v0, "disconnect_uts"

    invoke-interface {p0, v0, v5}, Lcom/zoho/livechat/android/operation/OperationCallback;->handle(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p0

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat;->applicationManager:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeChatView(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static enableDebugLogs()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->debug_logs:Z

    return-void
.end method

.method public static getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat;->applicationManager:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    return-object v0
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/commons/OnInitCompleteListener;Lcom/zoho/commons/InitConfig;)V
    .locals 5

    const-string v0, "Mobilisten"

    sget-object v1, Lcom/zoho/livechat/android/ZohoLiveChat;->applicationManager:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isKeyDiffers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_c

    invoke-interface {p4}, Lcom/zoho/commons/OnInitCompleteListener;->onInitComplete()V

    goto/16 :goto_7

    :cond_1
    :goto_0
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eu"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p1, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->EU:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    :goto_1
    invoke-static {p1}, Lcom/zoho/livechat/android/constants/UrlUtil;->setDataCenter(Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cn"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object p1, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->CN:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "in"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object p1, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->IN:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "au"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object p1, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->AU:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jp-stage"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object p1, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->FUJI_STAGE:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jp-production"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p1, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->FUJI_PRODUCTION:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    goto :goto_1

    :goto_2
    move-object p1, v1

    :cond_7
    sput-object p3, Lcom/zoho/livechat/android/ZohoLiveChat;->deskportalname:Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Lc/d/a/b/m/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lc/d/a/b/e/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lc/d/a/b/e/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p3

    goto :goto_3

    :catch_1
    move-exception p3

    :goto_3
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    sget-object p3, Lcom/zoho/livechat/android/ZohoLiveChat;->applicationManager:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object p3, Lcom/zoho/livechat/android/ZohoLiveChat;->applicationManager:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {p3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getAppActivity()Landroid/app/Activity;

    move-result-object p3

    goto :goto_5

    :cond_8
    move-object p3, v0

    :goto_5
    invoke-static {p0, p5}, Lcom/zoho/livechat/android/config/DeviceConfig;->initialize(Landroid/content/Context;Lcom/zoho/commons/InitConfig;)V

    new-instance p5, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-direct {p5, p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;-><init>(Landroid/app/Application;)V

    sput-object p5, Lcom/zoho/livechat/android/ZohoLiveChat;->applicationManager:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {p5, p4}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->setOnInitCompleteListener(Lcom/zoho/commons/OnInitCompleteListener;)V

    if-eqz v0, :cond_9

    sget-object p4, Lcom/zoho/livechat/android/ZohoLiveChat;->applicationManager:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {p4, v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->setCurrentActivity(Landroid/app/Activity;)V

    :cond_9
    if-eqz p3, :cond_a

    sget-object p4, Lcom/zoho/livechat/android/ZohoLiveChat;->applicationManager:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {p4, p3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->setAppActivity(Landroid/app/Activity;)V

    :cond_a
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-static {p1, p2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isKeyDiffers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    const-string p5, "salesiq_accesskey"

    const-string v0, "salesiq_appkey"

    if-eqz p4, :cond_b

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3, p5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/zoho/livechat/android/ZohoLiveChat;->clearData(Landroid/content/Context;)V

    goto :goto_6

    :cond_b
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_6
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->clearFeedbackAndRating()V

    :cond_c
    :goto_7
    return-void
.end method

.method public static registerVisitor(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "^[A-Za-z0-9]*$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->setCVUID(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/zoho/livechat/android/exception/InvalidVisitorIDException;

    const-string v1, "Invalid ID : "

    const-string v2, " | Given id should match ^[A-Za-z0-9]*$ this pattern"

    invoke-static {v1, p0, v2}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/exception/InvalidVisitorIDException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unregisterVisitor()V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/ZohoLiveChat;->clearData(Landroid/content/Context;)V

    return-void
.end method
