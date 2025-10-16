.class public Lcom/zoho/livechat/android/utils/WavAudioRecorder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;,
        Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;
    }
.end annotation


# static fields
.field private static final SAMPLERATES:[I

.field private static final TIMER_INTERVAL:I = 0x78


# instance fields
.field private aFormat:I

.field private activity:Landroid/app/Activity;

.field private audioRecorder:Landroid/media/AudioRecord;

.field private buffer:[B

.field private chatbottom_temp_parent:Landroid/widget/RelativeLayout;

.field private executed:Z

.field private filePath:Ljava/lang/String;

.field private isanimate:Z

.field private isfill:Z

.field private ispartial:Z

.field private mAudioSource:I

.field private mBitsPersample:S

.field private mBufferSize:I

.field private mPeriodInFrames:I

.field private nChannels:S

.field private payloadSize:I

.field private randomAccessWriter:Ljava/io/RandomAccessFile;

.field private sRate:I

.field private state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

.field public threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private updateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private writeThread:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->SAMPLERATES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xac44
        0x5622
        0x2b11
        0x1f40
    .end array-data
.end method

.method private constructor <init>(IIIILandroid/widget/RelativeLayout;Landroid/app/Activity;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lcom/zoho/livechat/android/utils/BlockingLifoQueue;

    invoke-direct {v6}, Lcom/zoho/livechat/android/utils/BlockingLifoQueue;-><init>()V

    const/4 v1, 0x5

    const/16 v2, 0x1e

    const-wide/16 v3, 0xa

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->filePath:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->isfill:Z

    iput-boolean v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->ispartial:Z

    iput-boolean v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->executed:Z

    iput-boolean v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->isanimate:Z

    new-instance v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$1;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder$1;-><init>(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)V

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->updateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    :try_start_0
    iput-object p6, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->chatbottom_temp_parent:Landroid/widget/RelativeLayout;

    const/16 p5, 0x10

    const/16 p6, 0x8

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    iput-short p5, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mBitsPersample:S

    goto :goto_0

    :cond_0
    iput-short p6, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mBitsPersample:S

    :goto_0
    const/4 v2, 0x1

    if-ne p3, p5, :cond_1

    iput-short v2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->nChannels:S

    goto :goto_1

    :cond_1
    iput-short v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->nChannels:S

    :goto_1
    iput p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mAudioSource:I

    iput p2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->sRate:I

    iput p4, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->aFormat:I

    new-instance p5, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    invoke-direct {p5, p0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;-><init>(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)V

    iput-object p5, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->writeThread:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    mul-int/lit8 p5, p2, 0x78

    div-int/lit16 p5, p5, 0x3e8

    iput p5, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mPeriodInFrames:I

    mul-int/lit8 p5, p5, 0x2

    iget-short v3, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->nChannels:S

    mul-int p5, p5, v3

    iget-short v3, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mBitsPersample:S

    mul-int p5, p5, v3

    div-int/2addr p5, p6

    iput p5, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mBufferSize:I

    invoke-static {p2, p3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    if-ge p5, v3, :cond_2

    invoke-static {p2, p3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p5

    iput p5, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mBufferSize:I

    iget-short v3, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mBitsPersample:S

    mul-int/lit8 v3, v3, 0x2

    iget-short v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->nChannels:S

    mul-int v3, v3, v1

    div-int/2addr v3, p6

    div-int/2addr p5, v3

    iput p5, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mPeriodInFrames:I

    :cond_2
    new-instance p5, Landroid/media/AudioRecord;

    iget v8, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mBufferSize:I

    move-object v3, p5

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p5, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p5}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    iget-object p2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->updateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    invoke-virtual {p1, p2}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    iget p2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mPeriodInFrames:I

    invoke-virtual {p1, p2}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->filePath:Ljava/lang/String;

    sget-object p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->INITIALIZING:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "AudioRecord initialization failed"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const-class p2, Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->ERROR:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    :goto_2
    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->writeThread:Lcom/zoho/livechat/android/utils/WavAudioRecorder$WriteThread;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->chatbottom_temp_parent:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)[B
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->buffer:[B

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Ljava/io/RandomAccessFile;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)I
    .locals 0

    iget p0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->payloadSize:I

    return p0
.end method

.method public static synthetic access$502(Lcom/zoho/livechat/android/utils/WavAudioRecorder;I)I
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->payloadSize:I

    return p1
.end method

.method public static synthetic access$600(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->isanimate:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->isfill:Z

    return p0
.end method

.method public static synthetic access$702(Lcom/zoho/livechat/android/utils/WavAudioRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->isfill:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->executed:Z

    return p0
.end method

.method public static synthetic access$802(Lcom/zoho/livechat/android/utils/WavAudioRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->executed:Z

    return p1
.end method

.method public static synthetic access$900(Lcom/zoho/livechat/android/utils/WavAudioRecorder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->ispartial:Z

    return p0
.end method

.method public static synthetic access$902(Lcom/zoho/livechat/android/utils/WavAudioRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->ispartial:Z

    return p1
.end method

.method public static getInstance(Landroid/widget/RelativeLayout;Landroid/app/Activity;)Lcom/zoho/livechat/android/utils/WavAudioRecorder;
    .locals 10

    const/4 v0, 0x3

    :cond_0
    new-instance v8, Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    const/4 v2, 0x1

    sget-object v9, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->SAMPLERATES:[I

    aget v3, v9, v0

    const/16 v4, 0x10

    const/4 v5, 0x2

    move-object v1, v8

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;-><init>(IIIILandroid/widget/RelativeLayout;Landroid/app/Activity;)V

    const/4 v1, 0x1

    add-int/2addr v0, v1

    array-length v2, v9

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v8}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->getState()Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    move-result-object v4

    sget-object v5, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->INITIALIZING:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v1, v2

    if-nez v1, :cond_0

    return-object v8
.end method


# virtual methods
.method public getSampleRate()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    return-object v0
.end method

.method public prepare()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    sget-object v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->INITIALIZING:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->filePath:Ljava/lang/String;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-string v3, "RIFF"

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-string v3, "WAVE"

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-string v3, "fmt "

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    iget-short v2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->nChannels:S

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->sRate:I

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->sRate:I

    iget-short v3, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->nChannels:S

    mul-int v2, v2, v3

    iget-short v3, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mBitsPersample:S

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    iget-short v2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->nChannels:S

    iget-short v3, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mBitsPersample:S

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    iget-short v2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mBitsPersample:S

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mPeriodInFrames:I

    iget-short v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mBitsPersample:S

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x8

    iget-short v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->nChannels:S

    mul-int v0, v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->buffer:[B

    sget-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->READY:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    :goto_2
    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->ERROR:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->release()V

    sget-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->ERROR:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-class v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->ERROR:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    :goto_3
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    sget-object v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->RECORDING:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->stop()V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->READY:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    sget-object v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->ERROR:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->filePath:Ljava/lang/String;

    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mAudioSource:I

    iget v3, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->sRate:I

    iget-short v4, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->nChannels:S

    iget v5, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->aFormat:I

    iget v6, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mBufferSize:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->updateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    iget v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->mPeriodInFrames:I

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    sget-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->INITIALIZING:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "AudioRecord initialization failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-class v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->ERROR:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    :cond_1
    :goto_0
    return-void
.end method

.method public setAnimate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->isanimate:Z

    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    sget-object v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->INITIALIZING:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->filePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->ERROR:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    sget-object v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->READY:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->payloadSize:I

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->buffer:[B

    array-length v3, v2

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioRecord;->read([BII)I

    sget-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->RECORDING:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->ERROR:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    :goto_0
    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    sget-object v1, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->RECORDING:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->payloadSize:I

    add-int/lit8 v1, v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->payloadSize:I

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->randomAccessWriter:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->ERROR:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    :goto_0
    sget-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->STOPPED:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;->ERROR:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    :goto_1
    iput-object v0, p0, Lcom/zoho/livechat/android/utils/WavAudioRecorder;->state:Lcom/zoho/livechat/android/utils/WavAudioRecorder$State;

    return-void
.end method
