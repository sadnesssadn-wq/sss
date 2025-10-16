.class public Lcom/zoho/livechat/android/utils/AudioPlayer$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/AudioPlayer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/utils/AudioPlayer$2;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/utils/AudioPlayer$2;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/AudioPlayer$2$1;->this$0:Lcom/zoho/livechat/android/utils/AudioPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->getListener(Ljava/lang/String;)Lcom/zoho/livechat/android/utils/AudioSeekbarHandler$SeekBarListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->getProgress(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$100()Landroid/media/MediaPlayer;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler$SeekBarListener;->onProgress(IZ)V

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$100()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$002(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    return-void
.end method
