.class public Lcom/zoho/livechat/android/utils/BotMessageRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private msg:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/BotMessageRunnable;->msg:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/BotMessageRunnable;->msg:Ljava/util/Hashtable;

    const-string v2, "sender"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/BotMessageRunnable;->msg:Ljava/util/Hashtable;

    const-string v3, "time"

    invoke-static {v2, v3}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/zoho/livechat/android/utils/BotMessageRunnable;->msg:Ljava/util/Hashtable;

    const-string v5, "meta"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/zoho/livechat/android/utils/BotMessageRunnable;->msg:Ljava/util/Hashtable;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    if-eqz v4, :cond_1

    new-instance v5, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v5, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getMessageDelay()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    if-lez v4, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, v3, v1, v5}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->addTypingMessage(Ljava/lang/String;JLjava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "receivelivechat"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    const-string v3, "refreshchatlist"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chid"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    int-to-long v1, v4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->deleteTypingMessage(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/BotMessageRunnable;->msg:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleChatTextMessage(Ljava/util/Hashtable;)V

    :try_start_1
    div-int/lit8 v4, v4, 0x2

    int-to-long v0, v4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/BotMessageRunnable;->msg:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleChatTextMessage(Ljava/util/Hashtable;)V

    :cond_1
    :goto_1
    return-void
.end method
