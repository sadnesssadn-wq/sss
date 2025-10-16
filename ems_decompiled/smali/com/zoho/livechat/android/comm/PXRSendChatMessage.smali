.class public Lcom/zoho/livechat/android/comm/PXRSendChatMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/wms/common/pex/PEXEventHandler;


# instance fields
.field private chid:Ljava/lang/String;

.field private message:Lcom/zoho/livechat/android/models/SalesIQMessage;

.field private meta:Ljava/util/Hashtable;

.field private visitorid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->chid:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->visitorid:Ljava/lang/String;

    iput-object p3, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    return-void
.end method

.method private handleStatus(Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;)V
    .locals 4

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "STATUS"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p2, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;->contenturi:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "MSGID=?"

    invoke-virtual {v0, p2, v1, p1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string p2, "receivelivechat"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "message"

    const-string v0, "refreshchat"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "movetolast"

    const-string v0, "true"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->chid:Ljava/lang/String;

    const-string v0, "chid"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onBeforeSend(Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->ONPROGRESS:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-direct {p0, p1, v0}, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->handleStatus(Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;)V

    return-void
.end method

.method public onComplete(Lcom/zoho/wms/common/pex/PEXResponse;Z)V
    .locals 0

    iget-object p1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    sget-object p2, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->handleStatus(Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;)V

    return-void
.end method

.method public onFailure(Lcom/zoho/wms/common/pex/PEXError;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-direct {p0, p1, v0}, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->handleStatus(Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;)V

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
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-direct {p0, p1, v0}, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->handleStatus(Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;)V

    return-void
.end method

.method public process()V
    .locals 5

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->chid:Ljava/lang/String;

    const-string v2, "chid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sender"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msgid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getDname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dname"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isbotchat"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->visitorid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->visitorid:Ljava/lang/String;

    const-string v2, "visitorid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->meta:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "meta"

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

    const-string v4, "/sendmessage.mls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/zoho/wms/common/pex/PEXRequest;-><init>(Lcom/zoho/wms/common/WmsService;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "POST"

    invoke-virtual {v1, v0}, Lcom/zoho/wms/common/pex/PEXRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/zoho/wms/common/pex/PEXEvent;->setHandler(Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    invoke-static {v1}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->process(Lcom/zoho/wms/common/pex/PEXEvent;)V
    :try_end_0
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->DISCONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-direct {p0, v0, v1}, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->handleStatus(Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setMeta(Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/comm/PXRSendChatMessage;->meta:Ljava/util/Hashtable;

    return-void
.end method
