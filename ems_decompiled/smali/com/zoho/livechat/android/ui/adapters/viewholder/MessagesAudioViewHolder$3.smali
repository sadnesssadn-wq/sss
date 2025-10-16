.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field public final synthetic val$file:Ljava/io/File;

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->getCurrentlyPlaying()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->getListener(Ljava/lang/String;)Lcom/zoho/livechat/android/utils/AudioSeekbarHandler$SeekBarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->getProgress(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler$SeekBarListener;->onProgress(IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->getProgress(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->updateSeekProgress(Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->val$url:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/AudioPlayer;->isPlaying(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$400(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$300(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->val$file:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$400(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$500(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->val$file:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/zoho/livechat/android/utils/AudioPlayer;->initMediaPlayer(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method
