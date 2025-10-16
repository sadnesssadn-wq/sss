.class public Lcom/zoho/wms/common/websocket/WebSocketV13;
.super Lcom/zoho/wms/common/websocket/WebSocket;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/wms/common/websocket/WebSocketV13$Status;,
        Lcom/zoho/wms/common/websocket/WebSocketV13$OPCode;,
        Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;,
        Lcom/zoho/wms/common/websocket/WebSocketV13$ReadFrame;,
        Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;,
        Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;,
        Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;,
        Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;
    }
.end annotation


# static fields
.field private static final NEWLINE:Ljava/lang/String; = "\r\n"

.field private static final PING_INTERVAL:J = 0xfL

.field private static final VERSION:I = 0xd

.field private static sslContext:Ljavax/net/ssl/SSLContext;


# instance fields
.field private callbackHandler:Lcom/zoho/wms/common/websocket/WebSocketHandler;

.field private callbackQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;",
            ">;"
        }
    .end annotation
.end field

.field private callbackThread:Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;

.field private closed:Z

.field private conStatus:I

.field private cookie:Ljava/lang/String;

.field private deflater:Ljava/util/zip/Deflater;

.field private headerBuffer:Ljava/nio/CharBuffer;

.field private host:Ljava/lang/String;

.field private in:Ljava/io/InputStream;

.field private inflater:Ljava/util/zip/Inflater;

.field private isSSL:Z

.field private iscompressionenabled:Z

.field private lastreadtime:J

.field private out:Ljava/io/OutputStream;

.field private port:I

.field private random:Ljava/util/Random;

.field private readThread:Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;

.field private socket:Ljava/net/Socket;

.field private uri:Ljava/net/URI;

.field private writeQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;",
            ">;"
        }
    .end annotation
.end field

.field private writeThread:Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Lcom/zoho/wms/common/websocket/WebSocketV13;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocket;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->lastreadtime:J

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->headerBuffer:Ljava/nio/CharBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->cookie:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->conStatus:I

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->in:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->out:Ljava/io/OutputStream;

    iput-boolean v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->iscompressionenabled:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->random:Ljava/util/Random;

    iput-boolean v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->closed:Z

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ws"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "wss"

    if-nez p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v0, "Invalid url"

    invoke-direct {p1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->isSSL:Z

    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p1

    iput p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->port:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->isSSL:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x1bb

    iput p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->port:I

    goto :goto_1

    :cond_2
    const/16 p1, 0x50

    iput p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->port:I

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->host:Ljava/lang/String;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->inflater:Ljava/util/zip/Inflater;

    new-instance p1, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-direct {p1, v1, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->deflater:Ljava/util/zip/Deflater;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "Exception : "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v1}, Lc/a/a/a/a;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance p1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v0, "Invalid Url"

    invoke-direct {p1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lcom/zoho/wms/common/websocket/WebSocketV13;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->doConnect()V

    return-void
.end method

.method public static synthetic access$100(Lcom/zoho/wms/common/websocket/WebSocketV13;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->doHandshake()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/zoho/wms/common/websocket/WebSocketV13;)Lcom/zoho/wms/common/websocket/WebSocketHandler;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackHandler:Lcom/zoho/wms/common/websocket/WebSocketHandler;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/zoho/wms/common/websocket/WebSocketV13;)B
    .locals 0

    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->readByte()B

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Lcom/zoho/wms/common/websocket/WebSocketV13;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->iscompressionenabled:Z

    return p0
.end method

.method public static synthetic access$1300(Lcom/zoho/wms/common/websocket/WebSocketV13;[B)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->inflate([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/zoho/wms/common/websocket/WebSocketV13;[B)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->deflate([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/zoho/wms/common/websocket/WebSocketV13;I)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->getRandomBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$202(Lcom/zoho/wms/common/websocket/WebSocketV13;I)I
    .locals 0

    iput p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->conStatus:I

    return p1
.end method

.method public static synthetic access$300(Lcom/zoho/wms/common/websocket/WebSocketV13;)Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeThread:Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/zoho/wms/common/websocket/WebSocketV13;Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;)Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeThread:Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/zoho/wms/common/websocket/WebSocketV13;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zoho/wms/common/websocket/WebSocketV13;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->closed:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/zoho/wms/common/websocket/WebSocketV13;)J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->lastreadtime:J

    return-wide v0
.end method

.method public static synthetic access$602(Lcom/zoho/wms/common/websocket/WebSocketV13;J)J
    .locals 0

    iput-wide p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->lastreadtime:J

    return-wide p1
.end method

.method public static synthetic access$700(Lcom/zoho/wms/common/websocket/WebSocketV13;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->handleClose()V

    return-void
.end method

.method public static synthetic access$800(Lcom/zoho/wms/common/websocket/WebSocketV13;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/zoho/wms/common/websocket/WebSocketV13;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeBytes([B)V

    return-void
.end method

.method private appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->headerBuffer:Ljava/nio/CharBuffer;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->headerBuffer:Ljava/nio/CharBuffer;

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    return-void
.end method

.method private deflate([B)[B
    .locals 5

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setInput([B)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length p1, p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 p1, 0x400

    new-array v1, p1, [B

    :goto_0
    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->deflater:Ljava/util/zip/Deflater;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, p1, v3}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, p1, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private doConnect()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->isSSL:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/wms/common/websocket/WebSocketV13;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->host:Ljava/lang/String;

    iget v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->port:I

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->host:Ljava/lang/String;

    iget v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    :goto_0
    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->socket:Ljava/net/Socket;

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->in:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

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

    new-instance v1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Host : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private doHandshake()V
    .locals 14

    const-string v0, "Sec-Websocket-Extensions"

    const-string v1, "permessage-deflate"

    const-string v2, "Connection"

    const-string v3, "websocket"

    const-string v4, "\r\n"

    const-string v5, "UTF-8"

    const-string v6, "Upgrade"

    :try_start_0
    iget-object v7, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    iget-object v7, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->uri:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, "/"

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->uri:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->uri:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->headerBuffer:Ljava/nio/CharBuffer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GET "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " HTTP/1.1"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    const-string v7, "Host"

    iget-object v8, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->host:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/zoho/wms/common/websocket/WebSocketV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v3}, Lcom/zoho/wms/common/websocket/WebSocketV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v6}, Lcom/zoho/wms/common/websocket/WebSocketV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Sec-WebSocket-Version"

    const-string v8, "13"

    invoke-direct {p0, v7, v8}, Lcom/zoho/wms/common/websocket/WebSocketV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Sec-WebSocket-Extensions"

    invoke-direct {p0, v7, v1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Sec-WebSocket-Key"

    const/16 v8, 0x10

    invoke-direct {p0, v8}, Lcom/zoho/wms/common/websocket/WebSocketV13;->getRandomBytes(I)[B

    move-result-object v8

    invoke-static {v8}, Lcom/zoho/wms/common/Base64;->encodeByte([B)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/zoho/wms/common/websocket/WebSocketV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zoho/wms/common/websocket/WebSocket;->headers:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/zoho/wms/common/websocket/WebSocket;->headers:Ljava/util/Hashtable;

    invoke-virtual {v9, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/zoho/wms/common/websocket/WebSocketV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->cookie:Ljava/lang/String;

    if-eqz v7, :cond_3

    const-string v8, "Cookie"

    invoke-direct {p0, v8, v7}, Lcom/zoho/wms/common/websocket/WebSocketV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v7, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    iget-object v4, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeBytes([B)V

    const/16 v4, 0x400

    new-array v7, v4, [B

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->readByte()B

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v10, -0x1

    aget-byte v11, v7, v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_a

    add-int/lit8 v11, v10, -0x2

    aget-byte v11, v7, v11

    const/16 v13, 0xd

    if-ne v11, v13, :cond_a

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v4, :cond_8

    :try_start_1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x9

    const/16 v7, 0xc

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v5, 0x65

    if-ne v4, v5, :cond_7

    :try_start_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v10, ": "

    const/4 v11, 0x2

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v10, v7, v9

    aget-object v7, v7, v8

    invoke-virtual {v4, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v8, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->iscompressionenabled:Z

    :cond_5
    return-void

    :cond_6
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "Headers on upgrade not found"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to verify response header : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0
    :try_end_3
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_7
    :try_start_4
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :try_start_5
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "Invalid Status message in response"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    throw v0

    :cond_8
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "Insuffcient response header"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v7, v4, [B

    const/4 v10, 0x0

    :cond_a
    const/16 v11, 0x3fc

    if-ge v10, v11, :cond_c

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v11, v12, :cond_b

    goto/16 :goto_2

    :cond_b
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many headers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header too long : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v0

    new-instance v1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v2, "Exception doHandshake : "

    invoke-static {v2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2}, Lc/a/a/a/a;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v2, "IOException : "

    invoke-static {v2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_6
    move-exception v0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private getRandomBytes(I)[B
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->random:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    return-object p1
.end method

.method private declared-synchronized handleClose()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->readThread:Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    :try_start_3
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackThread:Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    :try_start_4
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackThread:Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    :try_start_6
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeThread:Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_3
    :try_start_7
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_4
    :try_start_8
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_5
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_9
    iput v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->conStatus:I

    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackHandler:Lcom/zoho/wms/common/websocket/WebSocketHandler;

    invoke-interface {v2, v0}, Lcom/zoho/wms/common/websocket/WebSocketHandler;->onClose(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackHandler:Lcom/zoho/wms/common/websocket/WebSocketHandler;

    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->readThread:Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;

    :goto_1
    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeThread:Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;

    goto :goto_2

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackHandler:Lcom/zoho/wms/common/websocket/WebSocketHandler;

    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->readThread:Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;

    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeThread:Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;

    throw v0

    :catch_6
    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackHandler:Lcom/zoho/wms/common/websocket/WebSocketHandler;

    iput-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->readThread:Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private inflate([B)[B
    .locals 4

    array-length v0, p1

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array p1, v1, [B

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length p1, p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 p1, 0x400

    new-array v1, p1, [B

    :goto_0
    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->inflater:Ljava/util/zip/Inflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private readByte()B
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [B

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0

    :cond_0
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "Stream Closed"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "IOException on read"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeBytes([B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v0, "IOException on write"

    invoke-direct {p1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->cookie:Ljava/lang/String;

    const-string v1, "="

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->cookie:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-static {v0, p1, v1, p2}, Lc/a/a/a/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->cookie:Ljava/lang/String;

    return-void
.end method

.method public close()V
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->conStatus:I

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;

    const/16 v2, 0x8

    const-string v3, ""

    invoke-direct {v1, p0, v2, v3}, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;-><init>(Lcom/zoho/wms/common/websocket/WebSocketV13;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public connect()V
    .locals 3

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackHandler:Lcom/zoho/wms/common/websocket/WebSocketHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->host:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->port:I

    if-ltz v0, :cond_0

    new-instance v0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;

    invoke-direct {v0, p0}, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;-><init>(Lcom/zoho/wms/common/websocket/WebSocketV13;)V

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->readThread:Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;

    invoke-direct {v0, p0}, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;-><init>(Lcom/zoho/wms/common/websocket/WebSocketV13;)V

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackThread:Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "Invalid port "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "Invalid host "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "WebSocket Handler not found"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hold()V
    .locals 4

    invoke-virtual {p0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->conStatus:I

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;

    const/4 v2, 0x1

    const-string v3, "."

    invoke-direct {v1, p0, v2, v3}, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;-><init>(Lcom/zoho/wms/common/websocket/WebSocketV13;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public isHold()Z
    .locals 2

    iget v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->conStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 2

    iget v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->conStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public resume()V
    .locals 4

    invoke-virtual {p0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->isHold()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->conStatus:I

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;

    const-string v3, ","

    invoke-direct {v2, p0, v0, v3}, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;-><init>(Lcom/zoho/wms/common/websocket/WebSocketV13;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setHandler(Lcom/zoho/wms/common/websocket/WebSocketHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->callbackHandler:Lcom/zoho/wms/common/websocket/WebSocketHandler;

    return-void
.end method

.method public write(Ljava/lang/String;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->closed:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13;->writeQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1}, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;-><init>(Lcom/zoho/wms/common/websocket/WebSocketV13;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v0, "WebSocket closed"

    invoke-direct {p1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
