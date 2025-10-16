.class public Lcom/zoho/livechat/android/utils/FileDownload;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private fName:Ljava/lang/String;

.field private fSize:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/FileDownload;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/livechat/android/utils/FileDownload;->fName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/zoho/livechat/android/utils/FileDownload;->fSize:J

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/utils/FileDownload;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/utils/FileDownload;->url:Ljava/lang/String;

    return-object p0
.end method

.method private copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x1000

    new-array v1, v1, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x0

    :cond_0
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    move-object/from16 v9, p2

    invoke-virtual {v9, v1, v3, v8}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v10, v0, Lcom/zoho/livechat/android/utils/FileDownload;->fSize:J

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-eqz v14, :cond_0

    add-int/2addr v5, v8

    const-wide/16 v12, 0x14

    if-eq v6, v2, :cond_3

    int-to-long v14, v5

    int-to-long v2, v6

    mul-long v2, v2, v10

    div-long/2addr v2, v12

    cmp-long v16, v14, v2

    if-gtz v16, :cond_3

    if-nez v7, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v2

    iget-object v3, v0, Lcom/zoho/livechat/android/utils/FileDownload;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zoho/livechat/android/utils/FileDownloader;->isCancelDownload(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v2

    iget-object v3, v0, Lcom/zoho/livechat/android/utils/FileDownload;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zoho/livechat/android/utils/FileDownloader;->getListener(Ljava/lang/String;)Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/zoho/livechat/android/utils/FileDownload$3;

    invoke-direct {v3, v0, v6}, Lcom/zoho/livechat/android/utils/FileDownload$3;-><init>(Lcom/zoho/livechat/android/utils/FileDownload;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_3
    int-to-long v2, v5

    int-to-long v14, v6

    mul-long v10, v10, v14

    div-long/2addr v10, v12

    cmp-long v12, v2, v10

    if-ltz v12, :cond_4

    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v9, p2

    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private writeAttachtoFile(Ljava/io/InputStream;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileDownload;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/zoho/livechat/android/utils/FileDownload;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v2, v0

    :goto_3
    move-object v0, v1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v2, v0

    :goto_4
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_6
    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileDownload;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/utils/FileDownload;->writeAttachtoFile(Ljava/io/InputStream;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileDownload;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/utils/FileDownloader;->getListener(Ljava/lang/String;)Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/zoho/livechat/android/utils/FileDownload$1;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/utils/FileDownload$1;-><init>(Lcom/zoho/livechat/android/utils/FileDownload;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileDownload;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/utils/FileDownloader;->remove(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileDownload;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/utils/FileDownloader;->getListener(Ljava/lang/String;)Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/zoho/livechat/android/utils/FileDownload$2;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/utils/FileDownload$2;-><init>(Lcom/zoho/livechat/android/utils/FileDownload;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/FileDownload;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/utils/FileDownloader;->remove(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    :goto_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v2

    iget-object v3, p0, Lcom/zoho/livechat/android/utils/FileDownload;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zoho/livechat/android/utils/FileDownloader;->remove(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    throw v1
.end method
