.class public final Lcom/zoho/livechat/android/utils/AudioPlayer$1;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/AudioPlayer;->initMediaPlayer(Ljava/lang/String;Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$pkid:Ljava/lang/String;

.field public final synthetic val$starttime:I

.field public final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/AudioPlayer$1;->val$pkid:Ljava/lang/String;

    iput p2, p0, Lcom/zoho/livechat/android/utils/AudioPlayer$1;->val$starttime:I

    iput-object p3, p0, Lcom/zoho/livechat/android/utils/AudioPlayer$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/AudioPlayer$1;->val$pkid:Ljava/lang/String;

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zoho/livechat/android/utils/AudioPlayer$1;->val$starttime:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$200()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/zoho/livechat/android/utils/AudioPlayer$1;->val$starttime:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$200()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$300()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->closeMediaPlayer()V

    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$102(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/AudioPlayer$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/utils/AudioPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/utils/AudioPlayer$1$1;-><init>(Lcom/zoho/livechat/android/utils/AudioPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
