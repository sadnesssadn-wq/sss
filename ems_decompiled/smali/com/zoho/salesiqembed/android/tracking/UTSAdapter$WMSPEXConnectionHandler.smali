.class public Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$WMSPEXConnectionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/wms/common/pex/PEXConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WMSPEXConnectionHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$WMSPEXConnectionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeConnect()V
    .locals 0

    return-void
.end method

.method public onConnect()V
    .locals 3

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->CONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$502(Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;)Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$602(Z)Z

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$300()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->timedTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$102(I)I

    return-void
.end method

.method public onDisconnect()V
    .locals 4

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->DISCONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$502(Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;)Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    :try_start_0
    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$600()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$700()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$602(Z)Z

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->RECONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$502(Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;)Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$300()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->timedTask:Ljava/lang/Runnable;

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$200()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$100()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$800()Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$800()Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;->onDisconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessage(Ljava/util/Hashtable;)V
    .locals 2

    const-string v0, "o"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "d"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$800()Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$800()Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;->onMessage(ILjava/util/Hashtable;)V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$800()Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$800()Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;->onConnect(Ljava/util/Hashtable;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->access$800()Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;->onReconnect(Ljava/util/Hashtable;)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isChatActive()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/zoho/livechat/android/comm/UTSReJoinVisitor;

    invoke-direct {p1}, Lcom/zoho/livechat/android/comm/UTSReJoinVisitor;-><init>()V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/comm/UTSReJoinVisitor;->request()V

    :cond_4
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getUILive()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->hold()V

    :cond_5
    :goto_2
    return-void
.end method
