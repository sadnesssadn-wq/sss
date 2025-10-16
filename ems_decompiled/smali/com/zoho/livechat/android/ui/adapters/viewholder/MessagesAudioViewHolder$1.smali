.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/utils/AudioSeekbarHandler$SeekBarListener;


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

.field public final synthetic val$finalDuration:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;->val$finalDuration:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/ui/activities/ChatActivity;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isActivityLive(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;->val$finalDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$400(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$300(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$500(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
