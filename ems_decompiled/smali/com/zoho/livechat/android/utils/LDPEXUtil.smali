.class public Lcom/zoho/livechat/android/utils/LDPEXUtil;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public connectToWMS()V
    .locals 12

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->isConnectedToInternet()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "message"

    const-string v2, "receivelivechat"

    if-eqz v0, :cond_6

    :try_start_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChatConsentConfig()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "chat_consent"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isHold()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->resume()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    new-instance v3, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getZLDT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getLastmsgtime()J

    move-result-wide v10

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3}, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;->request()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    new-instance v3, Lcom/zoho/livechat/android/comm/PXRClearUnread;

    invoke-direct {v3}, Lcom/zoho/livechat/android/comm/PXRClearUnread;-><init>()V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/comm/PXRClearUnread;->request(Ljava/lang/String;)V

    new-instance v3, Lcom/zoho/livechat/android/comm/PXRReJoinVisitor;

    invoke-direct {v3}, Lcom/zoho/livechat/android/comm/PXRReJoinVisitor;-><init>()V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Lcom/zoho/livechat/android/comm/PXRReJoinVisitor;->request(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v4

    if-ne v4, v3, :cond_5

    :cond_3
    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/zoho/livechat/android/comm/PXRReJoinVisitor;

    invoke-direct {v3}, Lcom/zoho/livechat/android/comm/PXRReJoinVisitor;-><init>()V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->connect()V

    :cond_5
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "checkandshareScreenshot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    :goto_2
    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "9"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "onPXRUserStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    const-string v2, "nonetwork"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method

.method public handleAddVisitor(Ljava/util/Hashtable;Z)V
    .locals 13

    const-string v0, "CU_ID"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VISIT_ID"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHID"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEPARTMENT"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zoho/livechat/android/VisitorChat;->setQuestion(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "DEPTID"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "VISITID"

    invoke-virtual {v6, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v1

    const-string v3, "STATUS"

    const-string v7, "CHATID"

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-eq v1, v8, :cond_2

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VISITORID"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v6, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    sget-object p2, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    new-array v0, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const-string v10, "CHATID=?"

    invoke-virtual {v12, p2, v6, v10, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p2

    if-eq p2, v8, :cond_3

    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;->contenturi:Landroid/net/Uri;

    new-array v3, v9, [Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-virtual {v12, v0, p2, v10, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getFileMetaData()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getFileMetaData()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getDim()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    const/4 v5, 0x3

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    const/4 v5, 0x7

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    const/4 v5, 0x4

    :goto_1
    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getMsgTime()J

    move-result-wide v7

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getMsgTime()J

    move-result-wide v9

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENDING:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v11

    move-object v3, v0

    move-object v4, v2

    invoke-direct/range {v3 .. v11}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-static {v3}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getMsgTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    sget-object v3, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v3, v12, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v3

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2, v0, v1}, Lcom/zoho/livechat/android/utils/FileUploader;->uploadFile(Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/zoho/livechat/android/config/LDChatConfig;->setFileMetaData(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    :cond_6
    new-instance p2, Landroid/content/Intent;

    const-string v0, "receivelivechat"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    const-string v1, "refreshchat"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "chid"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->sendUnsentMessages()V

    :cond_7
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->clearTriggerDepartments()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "API | add vist response handled | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V

    return-void
.end method

.method public handleChatAttachment(Ljava/util/Hashtable;)V
    .locals 27

    move-object/from16 v0, p1

    const-string v1, "message"

    const-string v2, "receivelivechat"

    const-string v3, "$"

    const-string v4, "meta"

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sender"

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "time"

    invoke-static {v0, v7}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v13

    const-string v7, "dname"

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    :try_start_0
    sget-object v11, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select * from SIQ_MESSAGES where STIME=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "\' and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "STATUS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v8}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v12

    if-eqz v12, :cond_8

    const-string v7, "msg"

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/util/Hashtable;

    const-string v7, "dim"

    invoke-virtual {v10, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x3

    goto :goto_0

    :cond_0
    const-string v7, "content"

    invoke-virtual {v10, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "audio"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x7

    goto :goto_0

    :cond_1
    const/4 v7, 0x4

    :goto_0
    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    if-eqz v4, :cond_2

    new-instance v9, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v9, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v9, v7}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getMessageType(I)I

    move-result v7

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    move v4, v7

    new-instance v7, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v12}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v16

    const-wide/16 v17, 0x0

    invoke-virtual {v8}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v20

    move-object v8, v7

    move-object v7, v8

    move-object/from16 v21, v1

    move-object v1, v8

    move-object/from16 v8, v16

    move-object/from16 v22, v2

    move-object v2, v9

    move v9, v4

    move/from16 v16, v4

    move-object v4, v10

    move-object v10, v6

    move-object/from16 v23, v5

    move-object v5, v11

    move-object/from16 v24, v12

    move-wide v11, v13

    move-wide/from16 v25, v13

    move-wide/from16 v13, v17

    move-object/from16 v17, v5

    move-object v5, v15

    move/from16 v15, v20

    invoke-direct/range {v7 .. v15}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v1, v5}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    new-instance v7, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-direct {v7, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v1, v7}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-static {v6}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isBotSender(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setIsBot(Z)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v1

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setMetaInfo(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V

    :cond_3
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    move-wide/from16 v7, v25

    if-nez v2, :cond_4

    invoke-virtual {v1, v7, v8}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setCtime(J)V

    goto :goto_2

    :cond_4
    const-string v2, "msgid"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setMsgid(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getMessage(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getCtime()J

    move-result-wide v10

    invoke-virtual {v9, v4, v10, v11}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v10

    invoke-virtual {v9, v4, v10, v11}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_5
    :goto_2
    const-string v2, "mtype"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v17

    move-object/from16 v2, v23

    invoke-virtual {v4, v2, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-static/range {p1 .. p1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->setLastmsginfo(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Lcom/zoho/livechat/android/models/SalesIQChat;->setLastmsgtime(J)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeTimerPreferences()V

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLiveChatID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7, v8}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isNotificationShown(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->setUnreadCountInPrefs()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowInAppNotification()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    move/from16 v9, v16

    if-ne v9, v3, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v3

    sget v9, Lcom/zoho/livechat/android/R$string;->livechat_messages_shared_image:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v0

    invoke-virtual {v3, v9, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v3

    sget v9, Lcom/zoho/livechat/android/R$string;->livechat_messages_shared_file:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v0

    invoke-virtual {v3, v9, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->WMS:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v7, v4

    move-object v8, v2

    move-object v10, v6

    move-object v11, v5

    move-object v15, v0

    invoke-virtual/range {v7 .. v18}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertPushNotification(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->getBadgeCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v0, v5}, Lcom/zoho/livechat/android/NotificationService;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Landroid/content/Intent;

    move-object/from16 v2, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "refreshchat"

    move-object/from16 v4, v21

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "chid"

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "endchattimer"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    const/16 v19, 0x0

    goto :goto_6

    :catch_1
    move-exception v0

    const/16 v19, 0x0

    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v19, :cond_9

    :cond_8
    :goto_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void

    :goto_6
    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0
.end method

.method public handleChatSharedURL(Ljava/util/Hashtable;)V
    .locals 28

    move-object/from16 v0, p1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time"

    invoke-static {v0, v3}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v13

    const-string v3, "msg"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sender"

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const-string v4, "dname"

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "meta"

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Hashtable;

    if-eqz v6, :cond_0

    new-instance v4, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v4, v6}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v4, v5}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getMessageType(I)I

    move-result v5

    move-object v12, v4

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    move-object v12, v4

    const/4 v6, 0x2

    :goto_0
    new-instance v10, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v16

    move-object v4, v10

    move-object/from16 v7, v18

    move-wide v8, v13

    move-object/from16 v27, v1

    move-object v1, v10

    move-wide v10, v13

    move-wide/from16 v19, v13

    move-object v13, v12

    move/from16 v12, v16

    invoke-direct/range {v4 .. v12}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v1, v15}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isBotSender(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setIsBot(Z)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v1

    if-eqz v13, :cond_1

    invoke-virtual {v1, v13}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setMetaInfo(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V

    :cond_1
    sget-object v4, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v4, v2, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "mtype"

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->setLastmsginfo(Ljava/lang/String;)V

    move-wide/from16 v5, v19

    invoke-virtual {v1, v5, v6}, Lcom/zoho/livechat/android/models/SalesIQChat;->setLastmsgtime(J)V

    invoke-virtual {v4, v2, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeTimerPreferences()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChatID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLiveChatID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->setUnreadCountInPrefs()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowInAppNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v16

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v17

    invoke-static {v15}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->WMS:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object v0, v15

    move-object v15, v4

    move-object/from16 v23, v3

    invoke-virtual/range {v15 .. v26}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertPushNotification(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->getBadgeCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v0, v3, v5}, Lcom/zoho/livechat/android/NotificationService;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "receivelivechat"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    const-string v4, "refreshchat"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v1

    const-string v4, "chid"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "endchattimer"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    :cond_3
    return-void
.end method

.method public handleChatTextMessage(Ljava/util/Hashtable;)V
    .locals 27

    move-object/from16 v0, p1

    const-string v1, "istranslated"

    const-string v2, "message"

    const-string v3, "receivelivechat"

    const-string v4, "meta"

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sender"

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "time"

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-string v9, "dname"

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v9, "msgid"

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v9, "lmsgtime"

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    if-eqz v4, :cond_0

    new-instance v11, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v11, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V

    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getMessageType(I)I

    move-result v4

    move-object/from16 v16, v12

    move-object/from16 v26, v11

    move v11, v4

    move-object/from16 v4, v26

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    move-object/from16 v16, v12

    const/4 v4, 0x0

    const/4 v11, 0x2

    :goto_0
    const-string v12, "ctime"

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static {v8}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isBotSender(Ljava/lang/String;)Z

    move-result v12

    const-wide/16 v19, -0x1

    cmp-long v21, v9, v19

    if-nez v21, :cond_1

    if-nez v12, :cond_1

    move-wide/from16 v17, v13

    :cond_1
    new-instance v10, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v19

    sget-object v9, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v9}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v20

    move-object v9, v10

    move-object/from16 v21, v1

    move-object v1, v10

    move-object/from16 v10, v19

    move-object/from16 v22, v2

    move v2, v12

    move-object/from16 v19, v16

    move-object v12, v8

    move-wide/from16 v23, v13

    move-object/from16 v25, v8

    move-object v8, v15

    move-wide/from16 v15, v17

    move/from16 v17, v20

    invoke-direct/range {v9 .. v17}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v1, v8}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v1, v7}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setIsBot(Z)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMetaInfo(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V

    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    :cond_3
    sget-object v9, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v1

    invoke-virtual {v9, v6, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    const-string v1, "mtype"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->setLastmsginfo(Ljava/lang/String;)V

    move-wide/from16 v1, v23

    invoke-virtual {v5, v1, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setLastmsgtime(J)V

    invoke-virtual {v9, v6, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeTimerPreferences()V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "endchattimer"

    move-object/from16 v15, v22

    invoke-virtual {v4, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v6

    invoke-virtual {v6, v4}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    const-string v4, "$"

    move-object/from16 v6, v25

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLiveChatID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isNotificationShown(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowInAppNotification()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->WMS:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    const/4 v4, 0x0

    const/16 v16, 0x0

    invoke-static {v7}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object v12, v6

    move-object v1, v15

    move-object v15, v4

    invoke-virtual/range {v9 .. v20}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertPushNotification(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->getBadgeCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v4, v6, v7, v8}, Lcom/zoho/livechat/android/NotificationService;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v15

    :goto_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->setUnreadCountInPrefs()V

    goto :goto_2

    :cond_5
    move-object v1, v15

    :goto_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "refreshchat"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "chid"

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lb/q/a/a;->c(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-void
.end method

.method public handleEndChatByAgent()V
    .locals 5

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->setUnsent()V

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/VisitorChat;->setAttenderEmail(Ljava/lang/String;)V

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/VisitorChat;->setQuestion(Ljava/lang/String;)V

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/VisitorChat;->setChatID(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/zoho/livechat/android/utils/LDPEXUtil$4;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/utils/LDPEXUtil$4;-><init>(Lcom/zoho/livechat/android/utils/LDPEXUtil;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->showFeedback(Z)V

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->showContinueChat(Z)V

    sget-object v3, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v3, v1, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeActiveChatPKID()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->clearUnreadCountInPrefs()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeTimerPreferences()V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v1

    sget-object v3, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->disconnect()V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "receivelivechat"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    const-string v4, "refreshchat"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    const-string v3, "chid"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "endchat"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    const-string v0, "API | End chat by agent | Handled"

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public handleEndChatByVisitor()V
    .locals 5

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->setUnsent()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/VisitorChat;->setAttenderEmail(Ljava/lang/String;)V

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/VisitorChat;->setQuestion(Ljava/lang/String;)V

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/VisitorChat;->setChatID(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/zoho/livechat/android/utils/LDPEXUtil$5;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/utils/LDPEXUtil$5;-><init>(Lcom/zoho/livechat/android/utils/LDPEXUtil;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->showFeedback(Z)V

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->showContinueChat(Z)V

    sget-object v3, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v3, v1, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeActiveChatPKID()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->clearUnreadCountInPrefs()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeTimerPreferences()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/zoho/livechat/android/utils/LDPEXUtil$6;

    invoke-direct {v3, p0}, Lcom/zoho/livechat/android/utils/LDPEXUtil$6;-><init>(Lcom/zoho/livechat/android/utils/LDPEXUtil;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v1

    sget-object v3, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->disconnect()V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "receivelivechat"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    const-string v4, "refreshchat"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    const-string v3, "chid"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "endchat"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    :cond_2
    return-void
.end method

.method public handleIPBlock()V
    .locals 5

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "STATUS"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeActiveChatPKID()V

    sget-object v2, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "embednotallowed"

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    sget-object v2, Lcom/zoho/livechat/android/provider/ZohoLDContract$PushNotification;->contenturi:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/NotificationService;->cancelAll(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "receivelivechat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    const-string v2, "closeui"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "fcmid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pushstatus"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unRegisterDevice()V

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->clearUnreadCountInPrefs()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/utils/LDPEXUtil$3;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/utils/LDPEXUtil$3;-><init>(Lcom/zoho/livechat/android/utils/LDPEXUtil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleLibraryProperties(Ljava/util/Hashtable;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/SalesIQCache;->setLibraryPropsStatus(Z)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zoho/livechat/android/utils/GetConversationsUtil;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAVUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getCVUID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zoho/livechat/android/utils/GetConversationsUtil;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->connectToWMS()V

    :cond_1
    const-string v0, "embedstatus"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/zoho/livechat/android/utils/LDPEXUtil$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/zoho/livechat/android/utils/LDPEXUtil$7;-><init>(Lcom/zoho/livechat/android/utils/LDPEXUtil;Ljava/util/Hashtable;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public handleMissedChat(Ljava/util/Hashtable;)V
    .locals 7

    const-string v0, "chid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "visitid"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChat(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v2

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->setUnsent()V

    sget-object v3, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {v3, p1}, Lcom/zoho/livechat/android/VisitorChat;->setChatID(Ljava/lang/String;)V

    sget-object p1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/zoho/livechat/android/VisitorChat;->setQuestion(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUS"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "ATTENDER_ID"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ATTENDER"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ATTENDER_IMGKEY"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ATTENDER_EMAIL"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeActiveChatPKID()V

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string v6, "CHATID=?"

    invoke-virtual {p1, v3, v2, v6, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeTimerPreferences()V

    new-instance p1, Landroid/content/Intent;

    const-string v2, "receivelivechat"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    const-string v3, "refreshchat"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "endchat"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->clearUnreadCountInPrefs()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/utils/LDPEXUtil$8;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/utils/LDPEXUtil$8;-><init>(Lcom/zoho/livechat/android/utils/LDPEXUtil;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public handlePickUpChat(Ljava/util/Hashtable;)V
    .locals 13

    const-string v0, "chid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attender"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attendername"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "visitid"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "image_fkey"

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "visitorid"

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "CHATID"

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "ATTENDER"

    invoke-virtual {v10, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "VISITORID"

    invoke-virtual {v10, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "VISITID"

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUS"

    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "ATTENDER_IMGKEY"

    invoke-virtual {v10, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "isbotpickup"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "ISBOTATTENDER"

    invoke-virtual {v10, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_2
    const-string v3, "ATTENDER_ID"

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attenderemail"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "ATTENDER_EMAIL"

    invoke-virtual {v10, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object p1, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v3, v5

    const-string v6, "CHATID=?"

    invoke-virtual {v9, p1, v10, v6, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;->contenturi:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v8, v2, v5

    const-string v4, "CHATID=? "

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->sendUnsentMessages()V

    new-instance p1, Lcom/zoho/livechat/android/comm/JoinChat;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/zoho/livechat/android/comm/JoinChat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/VisitorChat;->setQuestion(Ljava/lang/String;)V

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/VisitorChat;->setAttenderEmail(Ljava/lang/String;)V

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/VisitorChat;->setChatID(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v1

    sget-object v2, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-interface {v1, v2}, Lcom/zoho/livechat/android/ChatActivityInterface;->handleVisitorAttended(Lcom/zoho/livechat/android/VisitorChat;)V

    :cond_4
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/zoho/livechat/android/utils/LDPEXUtil$2;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/utils/LDPEXUtil$2;-><init>(Lcom/zoho/livechat/android/utils/LDPEXUtil;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "receivelivechat"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    const-string v3, "refreshchat"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "movetolast"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    :cond_5
    return-void
.end method

.method public handleRejoinChat(Ljava/util/Hashtable;)V
    .locals 8

    const-string v0, "chatstatus"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chid"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attender"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "attendername"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "visitid"

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "API | Rejoinvisitor | chatstatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "Missed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "Closed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "Ended"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChat(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderid(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderName(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->setVisitid(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v0, v6, p1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-virtual {p0}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleEndChatByAgent()V

    goto :goto_2

    :cond_2
    const-string v1, "Connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "attenderemail"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isbotpickup"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handlePickUpChat(Ljava/util/Hashtable;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getCloseChat()Lcom/zoho/livechat/android/comm/PXRCloseChat;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getCloseChat()Lcom/zoho/livechat/android/comm/PXRCloseChat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/comm/PXRCloseChat;->request()V

    invoke-static {v0}, Lcom/zoho/livechat/android/config/LDChatConfig;->setCloseChat(Lcom/zoho/livechat/android/comm/PXRCloseChat;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getMissedVisitor()Lcom/zoho/livechat/android/comm/PXRMissedVisitor;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getMissedVisitor()Lcom/zoho/livechat/android/comm/PXRMissedVisitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/comm/PXRMissedVisitor;->request()V

    invoke-static {v0}, Lcom/zoho/livechat/android/config/LDChatConfig;->setMissedVisitor(Lcom/zoho/livechat/android/comm/PXRMissedVisitor;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleMissedChat(Ljava/util/Hashtable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onWMSConnect()V
    .locals 10

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getZLDT()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getLastmsgtime()J

    move-result-wide v8

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    invoke-virtual {v1}, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;->request()V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/zoho/livechat/android/comm/PXRClearUnread;

    invoke-direct {v1}, Lcom/zoho/livechat/android/comm/PXRClearUnread;-><init>()V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/comm/PXRClearUnread;->request(Ljava/lang/String;)V

    new-instance v1, Lcom/zoho/livechat/android/comm/PXRReJoinVisitor;

    invoke-direct {v1}, Lcom/zoho/livechat/android/comm/PXRReJoinVisitor;-><init>()V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/comm/PXRReJoinVisitor;->request(Ljava/lang/String;)V

    new-instance v1, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getZLDT()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getLastmsgtime()J

    move-result-wide v8

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v1

    if-ne v1, v3, :cond_5

    :cond_2
    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/zoho/livechat/android/comm/PXRReJoinVisitor;

    invoke-direct {v1}, Lcom/zoho/livechat/android/comm/PXRReJoinVisitor;-><init>()V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/comm/PXRReJoinVisitor;->request(Ljava/lang/String;)V

    const-string v1, "fetch_messages"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getZLDT()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getAddVisitRequest()Lcom/zoho/livechat/android/comm/PXRAddVisitor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getAddVisitRequest()Lcom/zoho/livechat/android/comm/PXRAddVisitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->request()V

    invoke-static {v1}, Lcom/zoho/livechat/android/config/LDChatConfig;->setAddVisitRequest(Lcom/zoho/livechat/android/comm/PXRAddVisitor;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getJoinProActive()Lcom/zoho/livechat/android/comm/JoinProActive;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getJoinProActive()Lcom/zoho/livechat/android/comm/JoinProActive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/comm/JoinProActive;->request()V

    invoke-static {v1}, Lcom/zoho/livechat/android/config/LDChatConfig;->setJoinProActive(Lcom/zoho/livechat/android/comm/JoinProActive;)V

    :cond_5
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "receivelivechat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    const-string v2, "wmsconnect"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    :cond_6
    return-void
.end method

.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/zoho/livechat/android/utils/LDPEXUtil$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/utils/LDPEXUtil$1;-><init>(Lcom/zoho/livechat/android/utils/LDPEXUtil;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/LDPEXUtil;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public sendUnsentMessages()V
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "temp_chid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const-string v7, "STATUS=? and TYPE=? and CHATID =? "

    sget-object v4, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    const-string v5, "SIQ_MESSAGES"

    const/4 v6, 0x0

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v9}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v8, v2

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-direct {v2, v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;-><init>(Landroid/database/Cursor;)V

    new-instance v3, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-virtual {v3}, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->process()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public syncMessages(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 30

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object/from16 v10, p1

    const/4 v9, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_16

    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/Hashtable;

    const-string v13, "msg"

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v1, "mode"

    invoke-virtual {v12, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v15, "CHATID =? "

    const-string v8, "LMTIME"

    const-string v6, "LASTMSG"

    const-string v7, "mtype"

    const-string v3, "msgid"

    const-string v4, "dname"

    const-string v5, "sender"

    const/16 v16, 0x0

    move-object/from16 v17, v6

    const-string v6, "time"

    move-object/from16 v18, v7

    const-string v7, "meta"

    move-object/from16 v19, v8

    const/4 v8, 0x1

    if-eqz v2, :cond_c

    invoke-virtual {v12, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    const-string v0, "intime"

    invoke-static {v12, v0}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "visitorname"

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "question"

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v12, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v1, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v1, v8}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getMessageType(I)I

    move-result v0

    move v2, v0

    move-object v12, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    move-object/from16 v12, v16

    const/4 v2, 0x1

    :goto_2
    new-instance v8, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v16

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v11, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v11, v13}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v11, v15}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    if-eqz v12, :cond_3

    invoke-virtual {v11, v12}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMetaInfo(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V

    :cond_3
    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v11}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v1

    goto/16 :goto_6

    :cond_4
    const-string v1, "att"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Hashtable;

    invoke-virtual {v12, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v6}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v20

    invoke-virtual {v12, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "dim"

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_3

    :cond_5
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    goto :goto_3

    :cond_6
    const/4 v0, 0x4

    :goto_3
    invoke-virtual {v12, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v12, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    if-eqz v1, :cond_7

    new-instance v2, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v2, v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getMessageType(I)I

    move-result v0

    move-object v6, v2

    move v2, v0

    goto :goto_4

    :cond_7
    move v2, v0

    move-object/from16 v6, v16

    :goto_4
    new-instance v7, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const-wide/16 v22, 0x0

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v16

    const/4 v4, 0x1

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v3, v11

    move-object/from16 v24, v15

    const/4 v15, 0x1

    move-wide/from16 v4, v20

    move-object v15, v7

    move-object/from16 v25, v17

    move-object/from16 v26, v18

    move-object/from16 v18, v12

    move-object v12, v6

    move-wide/from16 v6, v22

    move-object/from16 v27, v19

    move-object/from16 v19, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v15, v13}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-static {v11}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isBotSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setIsBot(Z)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    goto :goto_5

    :cond_9
    move-object/from16 v0, v19

    :goto_5
    new-instance v1, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-direct {v1, v10}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v15, v1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    if-eqz v12, :cond_a

    invoke-virtual {v15, v12}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMetaInfo(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V

    :cond_a
    invoke-virtual {v15}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getMessage(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getCtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_b

    sget-object v2, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getCtime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2, v0}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2, v1}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_b
    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v15}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v9, v0, :cond_14

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "20"

    move-object/from16 v11, v18

    move-object/from16 v12, v26

    invoke-virtual {v11, v12, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v15, v25

    invoke-virtual {v0, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v8, v27

    invoke-virtual {v0, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    move-object/from16 v3, v24

    invoke-virtual {v14, v2, v0, v3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_c
    move-object v11, v12

    move-object/from16 v24, v15

    move-object/from16 v15, v17

    move-object/from16 v12, v18

    move-object/from16 v8, v19

    instance-of v2, v0, Ljava/util/Hashtable;

    if-eqz v2, :cond_f

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/Hashtable;

    invoke-virtual {v11, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADDSUPPORTREP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ACCEPT_TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "ACCEPT_FORWARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_d
    invoke-static {v11, v6}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v4

    new-instance v12, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const/4 v2, 0x5

    const-wide/16 v6, 0x0

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v8

    const-string v3, ""

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-direct {v0, v11}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v12, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v11, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    :cond_e
    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v12}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v14, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    goto/16 :goto_9

    :cond_f
    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<br/>"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v13, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v6}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v17

    invoke-virtual {v11, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/4 v0, 0x2

    invoke-virtual {v11, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v11, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    if-eqz v1, :cond_10

    new-instance v2, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v2, v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getMessageType(I)I

    move-result v0

    move-object v7, v2

    move v2, v0

    goto :goto_7

    :cond_10
    const/4 v0, 0x2

    move-object/from16 v7, v16

    const/4 v2, 0x2

    :goto_7
    new-instance v4, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const-wide/16 v20, 0x0

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v16

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v5, v24

    move-object v3, v13

    move-object/from16 v28, v5

    move-object/from16 v25, v15

    move-object v15, v4

    move-wide/from16 v4, v17

    move-object/from16 v22, v11

    move-object/from16 v26, v12

    move-object v11, v6

    move-object v12, v7

    move-wide/from16 v6, v20

    move-object/from16 v29, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v15, v11}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v15, v10}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-static {v13}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isBotSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setIsBot(Z)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    const-string v19, ""

    :cond_11
    move-object/from16 v0, v19

    if-eqz v12, :cond_12

    invoke-virtual {v15, v12}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMetaInfo(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V

    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    invoke-virtual {v15, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    :cond_13
    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v15}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v9, v0, :cond_14

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "12"

    move-object/from16 v3, v22

    move-object/from16 v4, v26

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v25

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, v29

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    move-object/from16 v3, v28

    invoke-virtual {v14, v2, v0, v3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_14
    :goto_8
    move-object/from16 v10, p1

    :cond_15
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "receivelivechat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    const-string v2, "refreshchat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "chid"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "movetolast"

    const-string v2, "true"

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
