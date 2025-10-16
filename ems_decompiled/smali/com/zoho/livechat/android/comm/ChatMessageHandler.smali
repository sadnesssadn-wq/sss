.class public Lcom/zoho/livechat/android/comm/ChatMessageHandler;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private executorService:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public getExecutorService()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public onAttachmentMessage(Ljava/util/Hashtable;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "receivelivechat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    const-string v2, "ontyping"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "typing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleChatAttachment(Ljava/util/Hashtable;)V

    return-void
.end method

.method public onConnect()V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->onWMSConnect()V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->sendUnsentMessages()V

    return-void
.end method

.method public onCustomMessage(Ljava/util/Hashtable;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "module"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "pickupsupport"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "chid"

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handlePickUpChat(Ljava/util/Hashtable;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "sendcusmsg"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "message"

    const-string v5, "receivelivechat"

    if-eqz v2, :cond_1

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "applogs"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v15, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1a

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object v9

    sget-object v6, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v14

    move-object v6, v15

    move-wide v10, v1

    move-wide v12, v1

    invoke-direct/range {v6 .. v14}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v1

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v6, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v6, v2, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "refreshchat"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "actendsession"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "cleartimer"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v2

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    const-string v1, "timer"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "lastmsgtime"

    invoke-static {v0, v3}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getLastmsgtime()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    cmp-long v0, v6, v2

    if-nez v0, :cond_5

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "endtimerstart"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "endtimertime"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "chattimerstart"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeTimerPreferences()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "endchattimer"

    :goto_0
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "missed"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleMissedChat(Ljava/util/Hashtable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "receivelivechat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    const-string v2, "wmsconnect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    return-void
.end method

.method public onIdle(Ljava/util/Hashtable;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "receivelivechat"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    const-string v1, "ontyping"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "typing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    return-void
.end method

.method public onMessage(ILjava/util/Hashtable;)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "chid"

    const-string v4, "message"

    const-string v5, "receivelivechat"

    const-string v6, "msg"

    const/16 v7, 0x72

    if-ne v1, v7, :cond_c

    const-string v1, "module"

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "blockip"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleIPBlock()V

    goto/16 :goto_2

    :cond_0
    const-string v7, "acctranschat"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "image_fkey"

    const-string v9, "dname"

    const-string v10, "lsuid"

    const-string v11, "opruser"

    const-string v12, "refreshchat"

    const-string v13, "time"

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Hashtable;

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    invoke-static {v14, v13}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v3

    new-instance v13, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x5

    const-wide/16 v21, 0x0

    sget-object v15, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v15}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v23

    const-string v18, ""

    move-object v15, v13

    move-wide/from16 v19, v3

    invoke-direct/range {v15 .. v23}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    new-instance v15, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-direct {v15, v14}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v13, v15}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v14, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v14, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    :cond_1
    sget-object v14, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v13}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v13

    invoke-virtual {v14, v7, v13}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-virtual {v1, v3, v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->setLastmsgtime(J)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->setIsBotAttender(Z)V

    const-string v3, "attenderemail"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    invoke-virtual {v2, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    invoke-virtual {v2, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderName(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderid(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderImgkey(Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v14, v7, v1, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, v25

    invoke-virtual {v2, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v24

    :goto_0
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    goto/16 :goto_2

    :cond_4
    move-object/from16 v26, v4

    move-object v4, v3

    move-object/from16 v3, v26

    const-string v7, "addsupportrep"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    invoke-static {v2, v13}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v8

    new-instance v10, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x5

    const-wide/16 v20, 0x0

    sget-object v11, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v11}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v22

    const-string v17, ""

    move-object v14, v10

    move-wide/from16 v18, v8

    invoke-direct/range {v14 .. v22}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    new-instance v11, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-direct {v11, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v10, v11}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    :cond_5
    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v10}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-virtual {v1, v8, v9}, Lcom/zoho/livechat/android/models/SalesIQChat;->setLastmsgtime(J)V

    invoke-virtual {v2, v7, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v7, "VISITORNAMECHANGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    const-string v2, "VISITORDATA"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "livechatname"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2

    :cond_7
    const-string v7, "acceptforward"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    invoke-static {v2, v13}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v13

    new-instance v15, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x5

    const-wide/16 v20, 0x0

    sget-object v18, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual/range {v18 .. v18}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v22

    const-string v18, ""

    move-wide/from16 p1, v13

    move-object v14, v15

    move-object v13, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-wide/from16 v18, p1

    invoke-direct/range {v14 .. v22}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    new-instance v14, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-direct {v14, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v13, v14}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    :cond_8
    sget-object v6, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v13}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v13

    invoke-virtual {v6, v7, v13}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    move-wide/from16 v13, p1

    invoke-virtual {v1, v13, v14}, Lcom/zoho/livechat/android/models/SalesIQChat;->setLastmsgtime(J)V

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/zoho/livechat/android/models/SalesIQChat;->setIsBotAttender(Z)V

    invoke-virtual {v2, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v2, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    invoke-virtual {v2, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderName(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderid(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderImgkey(Ljava/lang/String;)V

    :cond_9
    const/4 v2, 0x1

    invoke-virtual {v6, v7, v1, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const-string v7, "forwardsupport"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    invoke-static {v2, v13}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v8

    new-instance v10, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x5

    const-wide/16 v20, 0x0

    sget-object v11, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v11}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v22

    const-string v17, ""

    move-object v14, v10

    move-wide/from16 v18, v8

    invoke-direct/range {v14 .. v22}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    new-instance v11, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-direct {v11, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v10, v11}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    :cond_b
    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v10}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-virtual {v1, v8, v9}, Lcom/zoho/livechat/android/models/SalesIQChat;->setLastmsgtime(J)V

    const/4 v6, 0x1

    invoke-virtual {v2, v7, v1, v6}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    move-object/from16 v26, v4

    move-object v4, v3

    move-object/from16 v3, v26

    const/16 v7, 0x73

    if-ne v1, v7, :cond_d

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleChatSharedURL(Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :cond_d
    const/16 v7, 0x71

    const-string v8, "typing"

    const-string v9, "ontyping"

    if-ne v1, v7, :cond_f

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    const-string v6, "mode"

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "END_SUPPORT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "sender"

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isBotSender(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/zoho/livechat/android/comm/ChatMessageHandler$1;

    invoke-direct {v2, v0}, Lcom/zoho/livechat/android/comm/ChatMessageHandler$1;-><init>(Lcom/zoho/livechat/android/comm/ChatMessageHandler;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :cond_e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleEndChatByAgent()V

    goto :goto_2

    :cond_f
    const/16 v2, 0x23

    if-ne v1, v2, :cond_10

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    :cond_10
    :goto_2
    return-void
.end method

.method public onNetworkUp()V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->onWMSConnect()V

    return-void
.end method

.method public onReconnect()V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->onWMSConnect()V

    return-void
.end method

.method public onTextEntered(Ljava/util/Hashtable;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "receivelivechat"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    const-string v1, "ontyping"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "typing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    return-void
.end method

.method public onTextMessage(Ljava/util/Hashtable;)V
    .locals 8

    const-string v0, "sender"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isBotSender(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v0, "msglist"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "msgid"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_1

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getMessage(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    const-string v6, "meta"

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "msg"

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mtype"

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "time"

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lcom/zoho/livechat/android/utils/BotMessageRunnable;

    invoke-direct {v6, v4}, Lcom/zoho/livechat/android/utils/BotMessageRunnable;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleChatTextMessage(Ljava/util/Hashtable;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/zoho/livechat/android/utils/BotMessageRunnable;

    invoke-direct {v1, p1}, Lcom/zoho/livechat/android/utils/BotMessageRunnable;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "receivelivechat"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    const-string v3, "ontyping"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "typing"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleChatTextMessage(Ljava/util/Hashtable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onTyping(Ljava/util/Hashtable;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "receivelivechat"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    const-string v1, "ontyping"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "typing"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    return-void
.end method
