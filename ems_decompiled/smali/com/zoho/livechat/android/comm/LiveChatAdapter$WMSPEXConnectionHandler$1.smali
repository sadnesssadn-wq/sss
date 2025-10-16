.class public Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler$1;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;->schedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler$1;->this$0:Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$700()V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$300()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$308()I

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->access$000()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler$1;->this$0:Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;

    invoke-static {v0}, Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;->access$800(Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;)V

    :cond_1
    return-void
.end method
