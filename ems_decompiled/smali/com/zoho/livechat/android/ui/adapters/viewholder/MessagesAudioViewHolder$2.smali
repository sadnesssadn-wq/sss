.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field public final synthetic val$finalDuration:Ljava/lang/String;

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;->val$finalDuration:Ljava/lang/String;

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;->val$url:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->updateSeekProgress(Ljava/lang/String;I)V

    const-string p1, ""

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    invoke-static {p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;->val$finalDuration:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;->val$url:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/AudioPlayer;->isPlaying(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;->val$url:Ljava/lang/String;

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;->val$file:Ljava/io/File;

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/zoho/livechat/android/utils/AudioPlayer;->initMediaPlayer(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
