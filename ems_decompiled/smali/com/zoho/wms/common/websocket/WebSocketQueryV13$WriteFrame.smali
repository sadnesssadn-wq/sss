.class public Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/websocket/WebSocketQueryV13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriteFrame"
.end annotation


# instance fields
.field private data:[B

.field private opcode:B

.field public final synthetic this$0:Lcom/zoho/wms/common/websocket/WebSocketQueryV13;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;-><init>(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;ILjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;->this$0:Lcom/zoho/wms/common/websocket/WebSocketQueryV13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte p1, p2

    :try_start_0
    iput-byte p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;->opcode:B

    const-string p1, "UTF-8"

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;->prepareFrame([BZ)[B

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;->data:[B
    :try_end_0
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_0 .. :try_end_0} :catch_1
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

    :catch_1
    move-exception p1

    throw p1
.end method

.method private prepareFrame([BZ)[B
    .locals 9

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-byte v1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;->opcode:B

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, p1

    const/16 v2, 0x7e

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ge v1, v2, :cond_1

    if-eqz p2, :cond_0

    or-int/lit16 v1, v1, 0x80

    :cond_0
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    const/16 v6, 0xff

    const v7, 0xffff

    const/4 v8, 0x1

    if-gt v1, v7, :cond_3

    if-eqz p2, :cond_2

    const/16 v2, 0xfe

    :cond_2
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

    goto :goto_1

    :cond_3
    if-le v1, v7, :cond_5

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v6, 0x7f

    :goto_0
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

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;->this$0:Lcom/zoho/wms/common/websocket/WebSocketQueryV13;

    invoke-static {p2, v4}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->access$100(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;I)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_2
    array-length v1, p1

    if-ge v3, v1, :cond_6

    aget-byte v1, p1, v3

    rem-int/lit8 v2, v3, 0x4

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v0, "Unable to prepare write frame : "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v0}, Lc/a/a/a/a;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;->data:[B

    return-object v0
.end method

.method public isCloseFrame()Z
    .locals 2

    iget-byte v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;->opcode:B

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
