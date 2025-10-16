.class public Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/websocket/WebSocketQueryV13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadFrame"
.end annotation


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private finSet:Z

.field private opcode:I

.field private payloadSize:I

.field public final synthetic this$0:Lcom/zoho/wms/common/websocket/WebSocketQueryV13;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->this$0:Lcom/zoho/wms/common/websocket/WebSocketQueryV13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->payloadSize:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->opcode:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->finSet:Z

    return-void
.end method

.method private readSize(I)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    iget-object v3, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->this$0:Lcom/zoho/wms/common/websocket/WebSocketQueryV13;

    invoke-static {v3}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->access$000(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->baos:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->baos:Ljava/io/ByteArrayOutputStream;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v2, "Unable to get text : "

    invoke-static {v2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2}, Lc/a/a/a/a;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isCloseFrame()Z
    .locals 2

    iget v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->opcode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSingleFrame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->finSet:Z

    return v0
.end method

.method public isTextFrame()Z
    .locals 2

    iget v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->opcode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public readFully()I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->this$0:Lcom/zoho/wms/common/websocket/WebSocketQueryV13;

    invoke-static {v0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->access$000(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;)B

    move-result v0

    shr-int/lit8 v1, v0, 0x7

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->finSet:Z

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->opcode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->this$0:Lcom/zoho/wms/common/websocket/WebSocketQueryV13;

    invoke-static {v0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->access$000(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;)B

    move-result v0

    const/16 v4, 0x7e

    if-lez v0, :cond_2

    if-ge v0, v4, :cond_2

    iput v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->payloadSize:I

    goto :goto_2

    :cond_2
    if-ne v0, v4, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->readSize(I)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    const/16 v4, 0x7f

    if-ne v0, v4, :cond_4

    invoke-direct {p0, v1}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->readSize(I)J

    move-result-wide v0

    :goto_1
    long-to-int v1, v0

    iput v1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->payloadSize:I

    :cond_4
    :goto_2
    iget v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->payloadSize:I

    if-ge v0, v2, :cond_5

    return v3

    :cond_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->payloadSize:I

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->baos:Ljava/io/ByteArrayOutputStream;

    :goto_3
    iget v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->payloadSize:I

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->baos:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->this$0:Lcom/zoho/wms/common/websocket/WebSocketQueryV13;

    invoke-static {v1}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->access$000(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->payloadSize:I

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "Corrupted Stream"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v2, "Exception : "

    invoke-static {v2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2}, Lc/a/a/a/a;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
