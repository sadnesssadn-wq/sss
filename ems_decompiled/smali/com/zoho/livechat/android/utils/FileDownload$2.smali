.class public Lcom/zoho/livechat/android/utils/FileDownload$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/FileDownload;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/utils/FileDownload;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/utils/FileDownload;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/FileDownload$2;->this$0:Lcom/zoho/livechat/android/utils/FileDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileDownload$2;->this$0:Lcom/zoho/livechat/android/utils/FileDownload;

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/FileDownload;->access$000(Lcom/zoho/livechat/android/utils/FileDownload;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/utils/FileDownloader;->getListener(Ljava/lang/String;)Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;->onDownloadFailed()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileDownload$2;->this$0:Lcom/zoho/livechat/android/utils/FileDownload;

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/FileDownload;->access$000(Lcom/zoho/livechat/android/utils/FileDownload;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/utils/FileDownloader;->removeListener(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
