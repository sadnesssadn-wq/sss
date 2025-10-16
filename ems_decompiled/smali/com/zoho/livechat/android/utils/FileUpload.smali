.class public Lcom/zoho/livechat/android/utils/FileUpload;
.super Ljava/lang/Thread;
.source ""


# static fields
.field private static final LINE_FEED:Ljava/lang/String; = "\r\n"


# instance fields
.field private boundary:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private error:Z

.field private filepath:Ljava/lang/String;

.field private fis:Ljava/io/FileInputStream;

.field private headerBuffer:Ljava/nio/CharBuffer;

.field private in:Ljava/io/InputStream;

.field private islog:Z

.field private message:Lcom/zoho/livechat/android/models/SalesIQMessage;

.field private messageMeta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

.field private out:Ljava/io/OutputStream;

.field private serparam:Ljava/lang/String;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->islog:Z

    const-string v1, "LiveDesk/1.1("

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->serparam:Ljava/lang/String;

    const-string v1, "SwA"

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->headerBuffer:Ljava/nio/CharBuffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->fis:Ljava/io/FileInputStream;

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->socket:Ljava/net/Socket;

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->in:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    iput-boolean v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->error:Z

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->filepath:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iput-boolean p3, p0, Lcom/zoho/livechat/android/utils/FileUpload;->islog:Z

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->messageMeta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/utils/FileUpload;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->filepath:Ljava/lang/String;

    return-object p0
.end method

.method private addHeaders()V
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->headerBuffer:Ljava/nio/CharBuffer;

    const-string v1, "\r\nPOST /"

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/upload.ls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " HTTP/1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    invoke-static {}, Lcom/zoho/livechat/android/constants/UrlUtil;->getServerDomain()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Host"

    invoke-direct {p0, v1, v0}, Lcom/zoho/livechat/android/utils/FileUpload;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-direct {p0, v0, v1}, Lcom/zoho/livechat/android/utils/FileUpload;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->filepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->contentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/zoho/livechat/android/utils/FileUpload;->getTotalBodyLength()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-direct {p0, v1, v0}, Lcom/zoho/livechat/android/utils/FileUpload;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/constants/UrlUtil;->getServiceUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Origin"

    invoke-direct {p0, v1, v0}, Lcom/zoho/livechat/android/utils/FileUpload;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "multipart/form-data; boundary="

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-direct {p0, v1, v0}, Lcom/zoho/livechat/android/utils/FileUpload;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->serparam:Ljava/lang/String;

    const-string v1, "user-agent"

    invoke-direct {p0, v1, v0}, Lcom/zoho/livechat/android/utils/FileUpload;->appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/utils/FileUpload;->writeBytes([B)V

    return-void
.end method

.method private addParam()V
    .locals 9

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v3, "sender"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/zoho/livechat/android/utils/FileUpload;->writeParam(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getChid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v3, "chid"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/zoho/livechat/android/utils/FileUpload;->writeParam(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v2, "mod"

    const-string v3, "att"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/zoho/livechat/android/utils/FileUpload;->writeParam(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v3, "msgid"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/zoho/livechat/android/utils/FileUpload;->writeParam(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v3, "sid"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/zoho/livechat/android/utils/FileUpload;->writeParam(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->islog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v2, "filetype"

    const-string v3, "applogs"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/zoho/livechat/android/utils/FileUpload;->writeParam(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getChid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v3, "visitorid"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/zoho/livechat/android/utils/FileUpload;->writeParam(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getDname()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v3, "dname"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/zoho/livechat/android/utils/FileUpload;->writeParam(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->filepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v3, v0

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->messageMeta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zoho/livechat/android/utils/FileUpload;->fis:Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    iget-object v8, p0, Lcom/zoho/livechat/android/utils/FileUpload;->contentType:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/zoho/livechat/android/utils/FileUpload;->writeFile(ILjava/lang/String;Ljava/io/FileInputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private appendHeaderValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->headerBuffer:Ljava/nio/CharBuffer;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->headerBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->headerBuffer:Ljava/nio/CharBuffer;

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    return-void
.end method

.method private closeStream()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->in:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->in:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->fis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->fis:Ljava/io/FileInputStream;

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iput-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private copyStream(ILjava/io/FileInputStream;Ljava/io/OutputStream;)V
    .locals 9

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    :cond_0
    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v7

    iget-object v8, p0, Lcom/zoho/livechat/android/utils/FileUpload;->filepath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/zoho/livechat/android/utils/FileUploader;->isAlreadyUploading(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p3, v0, v2, v6}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v3, v6

    if-eq v4, v1, :cond_2

    mul-int v6, p1, v4

    div-int/lit8 v6, v6, 0x14

    if-gt v3, v6, :cond_2

    if-nez v5, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v5

    iget-object v6, p0, Lcom/zoho/livechat/android/utils/FileUpload;->filepath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/zoho/livechat/android/utils/FileUploader;->getListener(Ljava/lang/String;)Lcom/zoho/livechat/android/ui/listener/FileUploadingListener;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/zoho/livechat/android/utils/FileUpload$1;

    invoke-direct {v6, p0, v4}, Lcom/zoho/livechat/android/utils/FileUpload$1;-><init>(Lcom/zoho/livechat/android/utils/FileUpload;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    mul-int v6, p1, v4

    div-int/lit8 v6, v6, 0x14

    if-lt v3, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "upload cancelled"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "\r\n"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "--"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private doConnect()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/constants/UrlUtil;->getServiceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/upload.ls"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x1bb

    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->socket:Ljava/net/Socket;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, 0x50

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    :goto_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->socket:Ljava/net/Socket;

    :goto_1
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->in:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Exception : "

    invoke-static {v2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v2}, Lc/a/a/a/a;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getFileLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content-disposition:form-data;name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "file1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\";filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, p1

    add-int/lit8 p3, p3, 0x23

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p3

    return p1
.end method

.method private getParamLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\r\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content-disposition:form-data; name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x27

    add-int/lit8 p1, p1, 0x21

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x2

    return p2
.end method

.method private getTotalBodyLength()I
    .locals 4

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v2, "sender"

    invoke-direct {p0, v2, v0, v1}, Lcom/zoho/livechat/android/utils/FileUpload;->getParamLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getChid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v3, "chid"

    invoke-direct {p0, v3, v1, v2}, Lcom/zoho/livechat/android/utils/FileUpload;->getParamLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v2, "mod"

    const-string v3, "att"

    invoke-direct {p0, v2, v3, v1}, Lcom/zoho/livechat/android/utils/FileUpload;->getParamLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v3, "msgid"

    invoke-direct {p0, v3, v1, v2}, Lcom/zoho/livechat/android/utils/FileUpload;->getParamLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->islog:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v2, "filetype"

    const-string v3, "applogs"

    invoke-direct {p0, v2, v3, v1}, Lcom/zoho/livechat/android/utils/FileUpload;->getParamLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v3, "sid"

    invoke-direct {p0, v3, v1, v2}, Lcom/zoho/livechat/android/utils/FileUpload;->getParamLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getChid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v3, "visitorid"

    invoke-direct {p0, v3, v1, v2}, Lcom/zoho/livechat/android/utils/FileUpload;->getParamLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getDname()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    const-string v3, "dname"

    invoke-direct {p0, v3, v1, v2}, Lcom/zoho/livechat/android/utils/FileUpload;->getParamLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->messageMeta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->boundary:Ljava/lang/String;

    iget-object v3, p0, Lcom/zoho/livechat/android/utils/FileUpload;->contentType:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/zoho/livechat/android/utils/FileUpload;->getFileLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private updateError()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->error:Z

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setStatus(I)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0, v1, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "receivelivechat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    const-string v2, "refreshchat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getChid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    return-void
.end method

.method private writeBytes([B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/FileUpload;->out:Ljava/io/OutputStream;

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

.method private writeFile(ILjava/lang/String;Ljava/io/FileInputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\r\n"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content-disposition:form-data;name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file1"

    const-string v2, "\";filename=\""

    const-string v3, "\""

    invoke-static {v0, v1, v2, p2, v3}, Lc/a/a/a/a;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    const-string p2, "Content-Transfer-Encoding: binary\r\n"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Content-Type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0, p1, p3, p4}, Lcom/zoho/livechat/android/utils/FileUpload;->copyStream(ILjava/io/FileInputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private writeParam(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\r\n"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content-disposition:form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    const-string p1, "Content-Type:text/plain;charset=UTF-8\r\n"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    const-string p1, "Content-Transfer-Encoding: 8bit\r\n"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "200"

    :try_start_0
    invoke-direct {p0}, Lcom/zoho/livechat/android/utils/FileUpload;->doConnect()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/utils/FileUpload;->addHeaders()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/utils/FileUpload;->addParam()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->filepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/utils/FileUploader;->remove(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->filepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/utils/FileUploader;->getListener(Ljava/lang/String;)Lcom/zoho/livechat/android/ui/listener/FileUploadingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->filepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/utils/FileUploader;->removeListener(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_1

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/zoho/livechat/android/utils/FileUpload;->updateError()V

    :cond_2
    const/16 v2, 0xc

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/zoho/livechat/android/utils/FileUpload;->updateError()V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fileupload.operation_not_allowed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "maxfilesize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->error:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getMessage(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setStatus(I)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0, v1, v2}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "receivelivechat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    const-string v2, "refreshchat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "chid"

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileUpload;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getChid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0}, Lcom/zoho/livechat/android/utils/FileUpload;->updateError()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/zoho/livechat/android/utils/FileUpload;->closeStream()V

    return-void

    :goto_4
    invoke-direct {p0}, Lcom/zoho/livechat/android/utils/FileUpload;->closeStream()V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
