.class public Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Ljava/util/Hashtable;)V
    .locals 7

    invoke-static {p1}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->updateName(Ljava/util/Hashtable;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->isProactiveChatAvailable()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "STATUS"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeActiveChatPKID()V

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    new-array v5, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string v6, "CHATID=?"

    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->clearUnreadCountInPrefs()V

    move-object v3, v1

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler$1;

    invoke-direct {v1, p0}, Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler$1;-><init>(Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->isTriggerChatAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "executedtriggerid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->sendTriggerAcknowledgement()V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "receivelivechat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    const-string v4, "refreshchat"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "chid"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "endchat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    :cond_3
    const-string v0, "triggers"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->handleTrigger(Ljava/util/Hashtable;)V

    :cond_4
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    return-void
.end method

.method public onMessage(ILjava/util/Hashtable;)V
    .locals 1

    invoke-static {p2}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->updateName(Ljava/util/Hashtable;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->handleProactiveChat(Ljava/util/Hashtable;)V

    :cond_0
    const-string p1, "triggers"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->handleTrigger(Ljava/util/Hashtable;)V

    :cond_1
    return-void
.end method

.method public onReconnect(Ljava/util/Hashtable;)V
    .locals 2

    invoke-static {p1}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->updateName(Ljava/util/Hashtable;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "executedtriggerid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->sendTriggerAcknowledgement()V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v0, "triggers"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->handleTrigger(Ljava/util/Hashtable;)V

    :cond_1
    return-void
.end method
