.class public Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/websocket/WebSocketV13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriteFrame"
.end annotation


# instance fields
.field private data:[B

.field private mask:Z

.field private opcode:B

.field private prepared:Z

.field public final synthetic this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/websocket/WebSocketV13;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;-><init>(Lcom/zoho/wms/common/websocket/WebSocketV13;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/zoho/wms/common/websocket/WebSocketV13;ILjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->mask:Z

    iput-boolean p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->prepared:Z

    int-to-byte p1, p2

    :try_start_0
    iput-byte p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->opcode:B

    iput-boolean p4, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->mask:Z

    const-string p1, "UTF-8"

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string p3, "Unable to prepare write frame : "

    invoke-static {p3}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p1, p3}, Lc/a/a/a/a;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public declared-synchronized getBytes()[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->prepared:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->prepareFrame()[B

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->data:[B

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->prepared:Z

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCloseFrame()Z
    .locals 2

    iget-byte v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->opcode:B

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepareFrame()[B
    .locals 9

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->data:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$1200(Lcom/zoho/wms/common/websocket/WebSocketV13;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-byte v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->opcode:B

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->data:[B

    invoke-static {v1, v2}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$1400(Lcom/zoho/wms/common/websocket/WebSocketV13;[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->data:[B

    goto :goto_0

    :cond_0
    iget-byte v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->opcode:B

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->data:[B

    array-length v1, v1

    const/16 v2, 0x7e

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ge v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->mask:Z

    if-eqz v2, :cond_1

    or-int/lit16 v1, v1, 0x80

    :cond_1
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    const/16 v6, 0xff

    const v7, 0xffff

    const/4 v8, 0x1

    if-gt v1, v7, :cond_4

    iget-boolean v7, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->mask:Z

    if-eqz v7, :cond_3

    const/16 v2, 0xfe

    :cond_3
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-array v2, v5, [B

    ushr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    and-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, v2, v8

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    :cond_4
    if-le v1, v7, :cond_6

    iget-boolean v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->mask:Z

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v6, 0x7f

    :goto_1
    int-to-byte v2, v6

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x8

    new-array v2, v2, [B

    ushr-int/lit8 v6, v1, 0x38

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    ushr-int/lit8 v6, v1, 0x30

    int-to-byte v6, v6

    aput-byte v6, v2, v8

    ushr-int/lit8 v6, v1, 0x28

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    const/4 v5, 0x3

    ushr-int/lit8 v6, v1, 0x20

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    ushr-int/lit8 v5, v1, 0x18

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    const/4 v5, 0x5

    ushr-int/lit8 v6, v1, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    const/4 v5, 0x6

    ushr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    const/4 v5, 0x7

    int-to-byte v1, v1

    aput-byte v1, v2, v5

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_6
    :goto_2
    iget-boolean v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->mask:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v1, v4}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$1500(Lcom/zoho/wms/common/websocket/WebSocketV13;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_3
    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->data:[B

    array-length v4, v2

    if-ge v3, v4, :cond_7

    aget-byte v4, v2, v3

    rem-int/lit8 v5, v3, 0x4

    aget-byte v5, v1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->data:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v2, "Unable to prepare write frame : "

    invoke-static {v2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2}, Lc/a/a/a/a;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
