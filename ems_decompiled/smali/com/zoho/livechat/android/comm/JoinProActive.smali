.class public Lcom/zoho/livechat/android/comm/JoinProActive;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/wms/common/pex/PEXEventHandler;


# instance fields
.field private chat:Lcom/zoho/livechat/android/models/SalesIQChat;

.field private chid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQChat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/comm/JoinProActive;->chid:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/livechat/android/comm/JoinProActive;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    return-void
.end method


# virtual methods
.method public onBeforeSend(Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 0

    return-void
.end method

.method public onComplete(Lcom/zoho/wms/common/pex/PEXResponse;Z)V
    .locals 11

    const-string v0, "VISITID"

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEXResponse;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "d"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    const-string v2, "objType"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "objString"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CUID"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "VISITORID"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "STATUS"

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p1, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    const-string v0, "CHATID=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/zoho/livechat/android/comm/JoinProActive;->chid:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {p2, p1, v3, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getFileMetaData()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getFileMetaData()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getDim()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v4, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    const/4 v4, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    const/4 v4, 0x4

    :goto_0
    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    iget-object v3, p0, Lcom/zoho/livechat/android/comm/JoinProActive;->chid:Ljava/lang/String;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getMsgTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getMsgTime()J

    move-result-wide v8

    sget-object v2, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENDING:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v10

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getMsgTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v2, p2, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object p2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0, v1}, Lcom/zoho/livechat/android/utils/FileUploader;->uploadFile(Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/zoho/livechat/android/config/LDChatConfig;->setFileMetaData(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "receivelivechat"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "message"

    const-string v0, "refreshchat"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/zoho/livechat/android/comm/JoinProActive;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object p2

    const-string v0, "chid"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    :cond_3
    return-void
.end method

.method public onFailure(Lcom/zoho/wms/common/pex/PEXError;)V
    .locals 0

    return-void
.end method

.method public onProgress(Lcom/zoho/wms/common/pex/PEXResponse;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/zoho/wms/common/pex/PEXResponse;)V
    .locals 0

    return-void
.end method

.method public onTimeOut(Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 0

    return-void
.end method

.method public request()V
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/JoinProActive;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getZLDT()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uvid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/JoinProActive;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vwmsid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAVUID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAVUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "avuid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getCVUID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getCVUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cvuid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :try_start_0
    new-instance v1, Lcom/zoho/wms/common/pex/PEXRequest;

    sget-object v2, Lcom/zoho/wms/common/WmsService;->LIVEDESK:Lcom/zoho/wms/common/WmsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/joinproactive.mls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/zoho/wms/common/pex/PEXRequest;-><init>(Lcom/zoho/wms/common/WmsService;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "POST"

    invoke-virtual {v1, v0}, Lcom/zoho/wms/common/pex/PEXRequest;->setMethod(Ljava/lang/String;)V

    const-string v0, "X-Pex-Agent"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getUserAgentDetails()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/zoho/wms/common/pex/PEXEvent;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/zoho/wms/common/pex/PEXEvent;->setHandler(Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    invoke-static {v1}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->process(Lcom/zoho/wms/common/pex/PEXEvent;)V
    :try_end_0
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zoho/wms/common/exception/WMSEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
