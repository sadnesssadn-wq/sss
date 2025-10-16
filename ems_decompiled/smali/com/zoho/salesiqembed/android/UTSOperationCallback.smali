.class public Lcom/zoho/salesiqembed/android/UTSOperationCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/operation/OperationCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "libraryproperties"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->isTrackingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isSupportedVersion()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isEmbedAllowed()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->connectToUTS(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->disconnect()V

    goto :goto_0

    :cond_1
    const-string v0, "networkstatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    move-result-object p1

    sget-object p2, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->DISCONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne p1, p2, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->isLibraryPropsCalled()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/zoho/livechat/android/comm/PXRGetEmbedProps;

    invoke-direct {p1}, Lcom/zoho/livechat/android/comm/PXRGetEmbedProps;-><init>()V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/comm/PXRGetEmbedProps;->request()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getUILive()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->setNoReconnect()V

    goto :goto_0

    :cond_3
    const-string v0, "uts_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {p2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->updatePageTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const-string p2, "sdk_open"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    :try_start_1
    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->updateSDKOpen()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    const-string p2, "disconnect_uts"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :try_start_2
    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mobilisten"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    return-void
.end method
