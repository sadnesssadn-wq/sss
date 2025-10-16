.class public final Lcom/zoho/livechat/android/utils/AudioPlayer$2;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/AudioPlayer;->initTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->getProgress(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->updateSeekProgress(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->updateSeekProgress(Ljava/lang/String;I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->closeMediaPlayer()V

    :goto_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$400()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/utils/AudioPlayer$2$1;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/utils/AudioPlayer$2$1;-><init>(Lcom/zoho/livechat/android/utils/AudioPlayer$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
