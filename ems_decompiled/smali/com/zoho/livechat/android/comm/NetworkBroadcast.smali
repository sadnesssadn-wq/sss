.class public Lcom/zoho/livechat/android/comm/NetworkBroadcast;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    const-string v0, "networkstatus"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getUILive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->connectToWMS()V

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, p2}, Lcom/zoho/livechat/android/operation/OperationCallback;->handle(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const-string v2, "noConnectivity"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getUILive()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->networkDown()V

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/zoho/livechat/android/operation/OperationCallback;->handle(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "receivelivechat"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "message"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    :cond_4
    return-void
.end method
