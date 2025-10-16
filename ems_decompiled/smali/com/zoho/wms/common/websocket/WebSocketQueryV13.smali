.class public Lcom/zoho/wms/common/websocket/WebSocketQueryV13;
.super Lcom/zoho/wms/common/websocket/WebSocket;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/wms/common/websocket/WebSocketQueryV13$Status;,
        Lcom/zoho/wms/common/websocket/WebSocketQueryV13$OPCode;,
        Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;,
        Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;
    }
.end annotation


# static fields
.field private static final NEWLINE:Ljava/lang/String; = "\r\n"

.field private static final VERSION:I = 0xd

.field private static sslContext:Ljavax/net/ssl/SSLContext;


# instance fields
.field private closed:Z

.field private conStatus:I

.field private cookie:Ljava/lang/String;

.field private headerBuffer:Ljava/nio/CharBuffer;

.field private host:Ljava/lang/String;

.field private in:Ljava/io/InputStream;

.field private isSSL:Z

.field private out:Ljava/io/OutputStream;

.field private port:I

.field private random:Ljava/util/Random;

.field private socket:Ljava/net/Socket;

.field private uri:Ljava/net/URI;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->sslContext:Ljavax/net/ssl/SSLContext;

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
    .locals 5

    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocket;-><init>()V

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->headerBuffer:Ljava/nio/CharBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->cookie:Ljava/lang/String;

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->host:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->port:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->isSSL:Z

    iput v2, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->conStatus:I

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->in:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->out:Ljava/io/OutputStream;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->random:Ljava/util/Random;

    iput-boolean v2, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->closed:Z

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->uri:Ljava/net/URI;

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
    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->uri:Ljava/net/URI;

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
    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->isSSL:Z

    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p1

    iput p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->port:I

    if-ne p1, v1, :cond_3

    iget-boolean p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->isSSL:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x1bb

    iput p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->port:I

    goto :goto_1

    :cond_2
    const/16 p1, 0x50

    iput p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->port:I

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->host:Ljava/lang/String;
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

.method public static synthetic access$000(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;)B
    .locals 0

    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->readByte()B

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;I)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->getRandomBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method private appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->headerBuffer:Ljava/nio/CharBuffer;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->headerBuffer:Ljava/nio/CharBuffer;

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    return-void
.end method

.method private doConnect()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->isSSL:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->host:Ljava/lang/String;

    iget v2, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->port:I

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->host:Ljava/lang/String;

    iget v2, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    :goto_0
    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->socket:Ljava/net/Socket;

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->in:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->out:Ljava/io/OutputStream;
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

    const-string v3, "Secruity Exception : "

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
    .locals 12

    const-string v0, "Connection"

    const-string v1, "websocket"

    const-string v2, "\r\n"

    const-string v3, "UTF-8"

    const-string v4, "Upgrade"

    :try_start_0
    iget-object v5, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->uri:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "/"

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->uri:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->uri:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->headerBuffer:Ljava/nio/CharBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GET "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " HTTP/1.1"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    const-string v5, "Host"

    iget-object v6, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->host:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, v1}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Sec-WebSocket-Version"

    const-string v6, "13"

    invoke-direct {p0, v5, v6}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Sec-WebSocket-Key"

    const/16 v6, 0x10

    invoke-direct {p0, v6}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->getRandomBytes(I)[B

    move-result-object v6

    invoke-static {v6}, Lcom/zoho/wms/common/Base64;->encodeByte([B)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zoho/wms/common/websocket/WebSocket;->headers:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/zoho/wms/common/websocket/WebSocket;->headers:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->cookie:Ljava/lang/String;

    if-eqz v5, :cond_3

    const-string v6, "Cookie"

    invoke-direct {p0, v6, v5}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->writeBytes([B)V

    const/16 v2, 0x400

    new-array v5, v2, [B

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->readByte()B

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v8, -0x1

    aget-byte v9, v5, v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_9

    add-int/lit8 v9, v8, -0x2

    aget-byte v9, v5, v9

    const/16 v11, 0xd

    if-ne v9, v11, :cond_9

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v2, :cond_7

    :try_start_1
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x9

    const/16 v5, 0xc

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_6

    :try_start_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ": "

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v7

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
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

    :cond_6
    :try_start_4
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid status code : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    :cond_7
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "Insuffcient response header"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v2, [B

    const/4 v8, 0x0

    :cond_9
    const/16 v9, 0x3fc

    if-ge v8, v9, :cond_b

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v9, v10, :cond_a

    goto/16 :goto_2

    :cond_a
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many headers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header too long : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

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

.method private doReconnect()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->close()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->conStatus:I

    invoke-virtual {p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->connect()V
    :try_end_0
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Lcom/zoho/wms/common/exception/WSRetryFailureException;

    const-string v1, "Retry attempt failed"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WSRetryFailureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRandomBytes(I)[B
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->random:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    return-object p1
.end method

.method private readByte()B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

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
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->out:Ljava/io/OutputStream;

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

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->cookie:Ljava/lang/String;

    const-string v1, "="

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->cookie:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->cookie:Ljava/lang/String;

    return-void
.end method

.method public close()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;

    const/16 v1, 0x8

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;-><init>(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->writeBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public connect()V
    .locals 3

    iget v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->conStatus:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->host:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->port:I

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->doConnect()V

    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->doHandshake()V

    return-void

    :cond_1
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "Invalid port "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "Invalid host "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hold()V
    .locals 0

    return-void
.end method

.method public isHold()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 2

    iget v0, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->conStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public declared-synchronized processCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/zoho/wms/common/websocket/WebSocket;->inprogress:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    iget-boolean v3, p0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->closed:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_6

    :try_start_2
    new-instance v3, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;

    invoke-direct {v3, p0, v0, p1}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;-><init>(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;ILjava/lang/String;)V

    invoke-virtual {v3}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$WriteFrame;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->writeBytes([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_4

    :try_start_3
    new-instance v0, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;

    invoke-direct {v0, p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;-><init>(Lcom/zoho/wms/common/websocket/WebSocketQueryV13;)V

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->readFully()I

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_1

    iput-boolean v2, p0, Lcom/zoho/wms/common/websocket/WebSocket;->inprogress:Z

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->isTextFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_4
    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->isCloseFrame()Z

    move-result v4

    if-nez v4, :cond_3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->isTextFrame()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13$ReadFrame;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->doReconnect()V

    new-instance p1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v0, "Closed"

    invoke-direct {p1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    if-ge p1, v0, :cond_5

    :try_start_5
    iput-boolean v2, p0, Lcom/zoho/wms/common/websocket/WebSocket;->inprogress:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_5
    :try_start_6
    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->doReconnect()V

    new-instance p1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v0, "Command Failed"

    invoke-direct {p1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->doReconnect()V

    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->doReconnect()V

    new-instance p1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v0, "WebSocket closed"

    invoke-direct {p1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_1
    move-exception p1

    :try_start_7
    iput-boolean v2, p0, Lcom/zoho/wms/common/websocket/WebSocket;->inprogress:Z

    invoke-direct {p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;->doReconnect()V

    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setHandler(Lcom/zoho/wms/common/websocket/WebSocketHandler;)V
    .locals 0

    return-void
.end method

.method public write(Ljava/lang/String;)Z
    .locals 1

    new-instance p1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v0, "Unsupported Operation for this connection"

    invoke-direct {p1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
