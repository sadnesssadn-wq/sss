.class public Lcom/zoho/livechat/android/utils/FileDownload$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/FileDownload;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/utils/FileDownload;

.field public final synthetic val$progress:I


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/utils/FileDownload;I)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/FileDownload$3;->this$0:Lcom/zoho/livechat/android/utils/FileDownload;

    iput p2, p0, Lcom/zoho/livechat/android/utils/FileDownload$3;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/FileDownload$3;->this$0:Lcom/zoho/livechat/android/utils/FileDownload;

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/FileDownload;->access$000(Lcom/zoho/livechat/android/utils/FileDownload;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/utils/FileDownloader;->getListener(Ljava/lang/String;)Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;

    move-result-object v0

    iget v1, p0, Lcom/zoho/livechat/android/utils/FileDownload$3;->val$progress:I

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;->onProgressUpdate(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
