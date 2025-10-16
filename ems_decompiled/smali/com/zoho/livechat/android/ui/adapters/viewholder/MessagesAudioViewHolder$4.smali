.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

.field public final synthetic val$is_last_message:Z

.field public final synthetic val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iput-boolean p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->val$is_last_message:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete()V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/ui/activities/ChatActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isActivityLive(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iget-boolean v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->val$is_last_message:Z

    invoke-virtual {v0, v1, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    :cond_0
    return-void
.end method

.method public onDownloadFailed()V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/ui/activities/ChatActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isActivityLive(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iget-boolean v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->val$is_last_message:Z

    invoke-virtual {v0, v1, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    :cond_0
    return-void
.end method

.method public onDownloadStarted()V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/ui/activities/ChatActivity;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isActivityLive(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$600(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->isIndeterminate()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$600(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->stopAnimation()V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$600(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setIndeterminate(Z)V

    :cond_0
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$600(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setProgress(F)V

    :cond_1
    return-void
.end method
