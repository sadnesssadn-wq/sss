.class public Lcom/zoho/livechat/android/comm/PXRSendPredictMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/wms/common/pex/PEXEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeSend(Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 0

    return-void
.end method

.method public onComplete(Lcom/zoho/wms/common/pex/PEXResponse;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeTimerPreferences()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "receivelivechat"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "message"

    const-string v0, "endchattimer"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    :cond_0
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

.method public process(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v1

    sget-object v2, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;
    :try_end_0
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zoho/wms/common/exception/WMSEventException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "sid"

    if-ne v1, v2, :cond_0

    :try_start_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "chid"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "sender"

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getSID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "msg"

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dname"

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/zoho/wms/common/pex/PEXRequest;

    sget-object p2, Lcom/zoho/wms/common/WmsService;->LIVEDESK:Lcom/zoho/wms/common/WmsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/sendprdctmsg.mls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1, v0}, Lcom/zoho/wms/common/pex/PEXRequest;-><init>(Lcom/zoho/wms/common/WmsService;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "X-Pex-Agent"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getUserAgentDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zoho/wms/common/pex/PEXEvent;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "POST"

    invoke-virtual {p1, p2}, Lcom/zoho/wms/common/pex/PEXRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/zoho/wms/common/pex/PEXEvent;->setHandler(Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    invoke-static {p1}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->process(Lcom/zoho/wms/common/pex/PEXEvent;)V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "missing chid in send predict message"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p1, "annonid"

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "missing annonid in send predict message"

    goto :goto_0

    :cond_2
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "missing sid in send predict message"
    :try_end_1
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/zoho/wms/common/exception/WMSEventException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
