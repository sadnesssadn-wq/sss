.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$24;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->refreshChatList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$24;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object p1

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$24;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLastBotSender(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/zoho/livechat/android/comm/PXRTransferChat;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$24;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/zoho/livechat/android/comm/PXRTransferChat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/comm/PXRTransferChat;->request()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$24;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/ChatViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getBotChatTransferLayout()Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
