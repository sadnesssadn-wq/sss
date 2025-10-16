.class public Lcom/zoho/livechat/android/utils/FileDownloader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static fileDownloader:Lcom/zoho/livechat/android/utils/FileDownloader;


# instance fields
.field private downloadfilesmap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downloadlisteners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadlisteners:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadfilesmap:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/FileDownloader;->fileDownloader:Lcom/zoho/livechat/android/utils/FileDownloader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zoho/livechat/android/utils/FileDownloader;

    invoke-direct {v0}, Lcom/zoho/livechat/android/utils/FileDownloader;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/utils/FileDownloader;->fileDownloader:Lcom/zoho/livechat/android/utils/FileDownloader;

    :cond_0
    sget-object v0, Lcom/zoho/livechat/android/utils/FileDownloader;->fileDownloader:Lcom/zoho/livechat/android/utils/FileDownloader;

    return-object v0
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;Ljava/lang/String;JLcom/zoho/livechat/android/ui/listener/FileDownloadingListener;)V
    .locals 1

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadlisteners:Ljava/util/Map;

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/utils/FileDownloader;->isAlreadyDownloading(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadfilesmap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/zoho/livechat/android/utils/FileDownload;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/zoho/livechat/android/utils/FileDownload;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    if-eqz p5, :cond_1

    invoke-interface {p5}, Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;->onDownloadStarted()V

    :cond_1
    return-void
.end method

.method public getListener(Ljava/lang/String;)Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadlisteners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;

    return-object p1
.end method

.method public isAlreadyDownloading(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadfilesmap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isCancelDownload(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadfilesmap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadfilesmap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAllListener()V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadlisteners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeListener(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadlisteners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setListener(Ljava/lang/String;Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadlisteners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
