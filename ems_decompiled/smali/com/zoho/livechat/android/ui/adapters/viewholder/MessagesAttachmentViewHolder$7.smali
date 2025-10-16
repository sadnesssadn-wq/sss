.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/ui/listener/FileUploadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$7;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(II)V
    .locals 1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$7;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/ui/activities/ChatActivity;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isActivityLive(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$7;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$7;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;)Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->isIndeterminate()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$7;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;)Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->stopAnimation()V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$7;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;)Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setIndeterminate(Z)V

    :cond_0
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$7;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;)Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setProgress(F)V

    :cond_1
    return-void
.end method
