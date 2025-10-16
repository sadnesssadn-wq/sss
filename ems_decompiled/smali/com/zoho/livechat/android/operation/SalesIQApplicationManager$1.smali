.class public Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/o/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveToBackground()V
    .locals 1
    .annotation runtime Lb/o/q;
        value = .enum Lb/o/f$a;->ON_STOP:Lb/o/f$a;
    .end annotation

    const-string v0, "App onMoveToBackground"

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeAllScreenshotWindows()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->setUILive(Z)V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->hold()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onMoveToForeground()V
    .locals 8
    .annotation runtime Lb/o/q;
        value = .enum Lb/o/f$a;->ON_START:Lb/o/f$a;
    .end annotation

    const-string v0, "timeuuid"

    const-string v1, "groupid"

    const-string v2, "App onMoveToForeground"

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/zoho/livechat/android/config/DeviceConfig;->setUILive(Z)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isSupportedVersion()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEmbedName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAppID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/ApiUtil;->getAnnonID()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$000(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "emprops"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v3, v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$002(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Z)Z

    new-instance v3, Lcom/zoho/livechat/android/comm/PXRGetEmbedProps;

    invoke-direct {v3}, Lcom/zoho/livechat/android/comm/PXRGetEmbedProps;-><init>()V

    invoke-virtual {v3}, Lcom/zoho/livechat/android/comm/PXRGetEmbedProps;->request()V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v3, Lcom/zoho/livechat/android/utils/GetAppkeyDetailUtil;

    invoke-direct {v3}, Lcom/zoho/livechat/android/utils/GetAppkeyDetailUtil;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->connectToWMS()V

    :cond_5
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pushstatus"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "pushallowed"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "fcmid"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "os"

    const-string v5, "2"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wmsid"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "username"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isTestDevice()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "istestdevice"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getFCMID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "registrationid"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInsID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "insid"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getZLDP()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_zldp"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "osversion"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getEmail()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getEmail()Ljava/lang/String;

    move-result-object v4

    const-string v5, "email"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    const-string v5, "deviceinfo"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/zoho/livechat/android/utils/RegisterUtil;

    invoke-direct {v4, v2, v3}, Lcom/zoho/livechat/android/utils/RegisterUtil;-><init>(ZLjava/util/Map;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/zoho/livechat/android/utils/RegisterUtil;->setAppKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAccesskey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/zoho/livechat/android/utils/RegisterUtil;->setAccessKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/zoho/livechat/android/utils/RegisterUtil;->setBundleID(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_7
    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$100(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v3, v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$102(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Z)Z

    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$200(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$200(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x5c7

    invoke-static {v3, v4}, Lcom/zoho/livechat/android/NotificationService;->cancelNotification(Landroid/content/Context;I)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v4}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$200(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select * from SIQ_NOTIFICATIONS where TYPE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->SIQ:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "TIMEUID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' order by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "STIME"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " desc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_a

    new-instance v6, Lcom/zoho/livechat/android/utils/ClearNotification;

    invoke-direct {v6, v1, v0, v2}, Lcom/zoho/livechat/android/utils/ClearNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v6, Lcom/zoho/livechat/android/provider/ZohoLDContract$PushNotification;->contenturi:Landroid/net/Uri;

    const-string v7, "TIMEUID=?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {v4, v1, v6, v7, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$200(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zoho/livechat/android/NotificationService;->cancelNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->SIQ:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    const-string v1, "select * from SIQ_NOTIFICATIONS where TYPE=1 order by STIME desc"

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    new-instance v2, Lcom/zoho/livechat/android/utils/ClearNotification;

    const-string v4, "all"

    invoke-direct {v2, v4, v3, v5}, Lcom/zoho/livechat/android/utils/ClearNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$PushNotification;->contenturi:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4, v3, v3}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$1;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$200(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0x5c5

    invoke-static {v0, v2}, Lcom/zoho/livechat/android/NotificationService;->cancelNotification(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    move-object v3, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_c

    :cond_a
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_4
    if-eqz v3, :cond_b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :cond_c
    :goto_5
    return-void
.end method
