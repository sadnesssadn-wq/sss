.class public Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;->onConnect(Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;


# direct methods
.method public constructor <init>(Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler$1;->this$0:Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getUILive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->refreshChatBubble()V

    :cond_0
    return-void
.end method
