.class public Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/utils/WavAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriteThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$300(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$200(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$200(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$400(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Ljava/io/RandomAccessFile;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$200(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$500(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)I

    move-result v2

    iget-object v4, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$200(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$502(Lcom/zoho/livechat/android/utils/WavAudioRecorder;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const-wide/16 v1, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$200(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)[B

    move-result-object v4

    aget-byte v4, v4, v3

    iget-object v5, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$200(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)[B

    move-result-object v5

    aget-byte v5, v5, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    mul-int v4, v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    if-lez v0, :cond_1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    :try_start_2
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$600(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;->this$0:Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->access$1100(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread$1;-><init>(Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;D)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    return-void
.end method
