.class public Lcom/zoho/livechat/android/utils/FileUploader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static fileUploader:Lcom/zoho/livechat/android/utils/FileUploader;


# instance fields
.field private uploadfilesmap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uploadlisteners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zoho/livechat/android/ui/listener/FileUploadingListener;",
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

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/FileUploader;->uploadlisteners:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/utils/FileUploader;->uploadfilesmap:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/zoho/livechat/android/utils/FileUploader;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/FileUploader;->fileUploader:Lcom/zoho/livechat/android/utils/FileUploader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zoho/livechat/android/utils/FileUploader;

    invoke-direct {v0}, Lcom/zoho/livechat/android/utils/FileUploader;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/utils/FileUploader;->fileUploader:Lcom/zoho/livechat/android/utils/FileUploader;

    :cond_0
    sget-object v0, Lcom/zoho/livechat/android/utils/FileUploader;->fileUploader:Lcom/zoho/livechat/android/utils/FileUploader;

    return-object v0
.end method


# virtual methods
.method public getListener(Ljava/lang/String;)Lcom/zoho/livechat/android/ui/listener/FileUploadingListener;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUploader;->uploadlisteners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zoho/livechat/android/ui/listener/FileUploadingListener;

    return-object p1
.end method

.method public isAlreadyUploading(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUploader;->uploadfilesmap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUploader;->uploadfilesmap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUploader;->uploadlisteners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setListener(Lcom/zoho/livechat/android/models/SalesIQMessage;Ljava/lang/String;Lcom/zoho/livechat/android/ui/listener/FileUploadingListener;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/zoho/livechat/android/utils/FileUploader;->isAlreadyUploading(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/FileUploader;->uploadlisteners:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public uploadFile(Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/utils/FileUploader;->isAlreadyUploading(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/FileUploader;->uploadfilesmap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/zoho/livechat/android/utils/FileUpload;

    invoke-direct {v0, p1, p2, p3}, Lcom/zoho/livechat/android/utils/FileUpload;-><init>(Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
