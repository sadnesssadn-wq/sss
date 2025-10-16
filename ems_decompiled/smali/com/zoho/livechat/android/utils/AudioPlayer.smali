.class public Lcom/zoho/livechat/android/utils/AudioPlayer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static audioPlayer:Landroid/media/MediaPlayer;

.field private static currentlyplaying:Ljava/lang/String;

.field private static handler:Landroid/os/Handler;

.field private static timer:Ljava/util/Timer;

.field private static timerTask:Ljava/util/TimerTask;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->currentlyplaying:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/utils/AudioPlayer;->currentlyplaying:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100()Landroid/media/MediaPlayer;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->audioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public static synthetic access$102(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/utils/AudioPlayer;->audioPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->stopTimer()V

    return-void
.end method

.method public static synthetic access$300()V
    .locals 0

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->startTimer()V

    return-void
.end method

.method public static synthetic access$400()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static closeMediaPlayer()V
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->stopTimer()V

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->audioPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public static getCurrentlyPlaying()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->currentlyplaying:Ljava/lang/String;

    return-object v0
.end method

.method public static initMediaPlayer(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1

    new-instance v0, Lcom/zoho/livechat/android/utils/AudioPlayer$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/zoho/livechat/android/utils/AudioPlayer$1;-><init>(Ljava/lang/String;ILandroid/net/Uri;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static initTimerTask()V
    .locals 1

    new-instance v0, Lcom/zoho/livechat/android/utils/AudioPlayer$2;

    invoke-direct {v0}, Lcom/zoho/livechat/android/utils/AudioPlayer$2;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->timerTask:Ljava/util/TimerTask;

    return-void
.end method

.method public static isPlaying(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->currentlyplaying:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/zoho/livechat/android/utils/AudioPlayer;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static startTimer()V
    .locals 7

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->timer:Ljava/util/Timer;

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->initTimerTask()V

    sget-object v1, Lcom/zoho/livechat/android/utils/AudioPlayer;->timer:Ljava/util/Timer;

    sget-object v2, Lcom/zoho/livechat/android/utils/AudioPlayer;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private static stopTimer()V
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zoho/livechat/android/utils/AudioPlayer;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method
