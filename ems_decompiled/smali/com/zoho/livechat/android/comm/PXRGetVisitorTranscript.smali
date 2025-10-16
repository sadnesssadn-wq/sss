.class public Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/wms/common/pex/PEXEventHandler;


# instance fields
.field private chid:Ljava/lang/String;

.field private ftime:J

.field private visitorid:Ljava/lang/String;

.field private zldt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;->chid:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;->visitorid:Ljava/lang/String;

    iput-object p3, p0, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;->zldt:Ljava/lang/String;

    iput-wide p4, p0, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;->ftime:J

    return-void
.end method


# virtual methods
.method public onBeforeSend(Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 0

    return-void
.end method

.method public onComplete(Lcom/zoho/wms/common/pex/PEXResponse;Z)V
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEXResponse;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    const-string p2, "d"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;->chid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->syncMessages(Ljava/lang/String;Ljava/util/ArrayList;Z)V

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

.method public request()V
    .locals 8

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iget-object v2, p0, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;->visitorid:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "visitorid"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;->zldt:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "uvid"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "annonid"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "uid"

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tzoffset"

    const-string v4, "330"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v4, "mobile"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p0, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;->ftime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ftime"

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v2

    sget-object v4, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v2, v4, :cond_3

    new-instance v2, Lcom/zoho/wms/common/pex/PEXRequest;

    sget-object v4, Lcom/zoho/wms/common/WmsService;->LIVEDESK:Lcom/zoho/wms/common/WmsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getScreenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/getvisitortranscript.mls"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5, v1}, Lcom/zoho/wms/common/pex/PEXRequest;-><init>(Lcom/zoho/wms/common/WmsService;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "GET"

    invoke-virtual {v2, v1}, Lcom/zoho/wms/common/pex/PEXRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/zoho/wms/common/pex/PEXEvent;->setHandler(Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    :try_start_0
    const-string v1, "X-Pex-Agent"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getUserAgentDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/zoho/wms/common/pex/PEXEvent;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "salesiq_appkey"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "salesiq_accesskey"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "X-appkey"

    invoke-virtual {v2, v3, v1}, Lcom/zoho/wms/common/pex/PEXEvent;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-accesskey"

    invoke-virtual {v2, v1, v0}, Lcom/zoho/wms/common/pex/PEXEvent;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-bundleid"

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/zoho/wms/common/pex/PEXEvent;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->process(Lcom/zoho/wms/common/pex/PEXEvent;)V
    :try_end_0
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zoho/wms/common/exception/WMSEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
