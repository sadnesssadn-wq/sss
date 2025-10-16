.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PredictHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/ChatViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v3}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v3, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2202(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/lang/String;)Ljava/lang/String;

    new-instance v3, Lcom/zoho/livechat/android/comm/PXRSendPredictMessage;

    invoke-direct {v3}, Lcom/zoho/livechat/android/comm/PXRSendPredictMessage;-><init>()V

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v4}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/zoho/livechat/android/comm/PXRSendPredictMessage;->process(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v3}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_3

    new-instance v3, Lcom/zoho/livechat/android/comm/PXRSendPredictMessage;

    invoke-direct {v3}, Lcom/zoho/livechat/android/comm/PXRSendPredictMessage;-><init>()V

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v4}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/zoho/livechat/android/comm/PXRSendPredictMessage;->process(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v3}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_3

    new-instance v3, Lcom/zoho/livechat/android/comm/PXRSendUserStatus;

    invoke-direct {v3}, Lcom/zoho/livechat/android/comm/PXRSendUserStatus;-><init>()V

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v4}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/comm/PXRSendUserStatus;->process(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$PredictHandler;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v3, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2202(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
