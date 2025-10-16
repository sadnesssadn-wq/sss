.class public Lcom/zoho/livechat/android/utils/WavAudioRecorder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/utils/WavAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$1;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 1

    sget-object p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->STOPPED:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$1;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$000(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$1;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    iget-object v0, p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$100(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
