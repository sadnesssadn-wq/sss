.class public Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private data:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;->data:Ljava/util/Hashtable;

    return-void
.end method

.method private processMessage(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v8, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;->data:Ljava/util/Hashtable;

    const-string v3, "msg"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v8, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;->data:Ljava/util/Hashtable;

    const-string v3, "dname"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v8, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;->data:Ljava/util/Hashtable;

    const-string v3, "msgid"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getMessageType(I)I

    move-result v3

    move v11, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    const/4 v11, 0x2

    :goto_0
    new-instance v3, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    sget-object v6, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v17

    move-object v9, v3

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p4

    invoke-direct/range {v9 .. v17}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v3, v5}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v3, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setIsBot(Z)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMetaInfo(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V

    :cond_1
    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->setUnreadCountInPrefs()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;-><init>(Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "receivelivechat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    const-string v2, "refreshchat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "chid"

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;->data:Ljava/util/Hashtable;

    const-string v1, "sender"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;->data:Ljava/util/Hashtable;

    const-string v1, "time"

    invoke-static {v0, v1}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;->data:Ljava/util/Hashtable;

    const-string v1, "meta"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;->data:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v2, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getMessageDelay()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    if-lez v0, :cond_0

    const-string v1, "temp_chid"

    invoke-static {v1, v5, v6, v4, v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->addTypingMessage(Ljava/lang/String;JLjava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V

    new-instance v3, Landroid/content/Intent;

    const-string v7, "receivelivechat"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "message"

    const-string v8, "refreshchatlist"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "chid"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v7

    invoke-virtual {v7, v3}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    int-to-long v7, v0

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->deleteTypingMessage(Ljava/lang/String;)V

    const-string v3, "temp_chid"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;->processMessage(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;Ljava/lang/String;Ljava/lang/String;J)V

    :try_start_1
    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    const-string v3, "temp_chid"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;->processMessage(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    :goto_1
    return-void
.end method
