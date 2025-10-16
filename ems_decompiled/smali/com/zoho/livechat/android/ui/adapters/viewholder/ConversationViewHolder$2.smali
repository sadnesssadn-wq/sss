.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->loadOperatorImage(Lcom/zoho/livechat/android/models/SalesIQChat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;

.field public final synthetic val$attenderId:Ljava/lang/String;

.field public final synthetic val$displayImageOptions:Lc/e/a/b/c;

.field public final synthetic val$imagefile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;Ljava/io/File;Lc/e/a/b/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;->val$imagefile:Ljava/io/File;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;->val$displayImageOptions:Lc/e/a/b/c;

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;->val$attenderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete()V
    .locals 5

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;->val$imagefile:Ljava/io/File;

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getFilePathForImageloader(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;

    invoke-static {v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;->val$displayImageOptions:Lc/e/a/b/c;

    new-instance v4, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2$1;

    invoke-direct {v4, p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lc/e/a/b/d;->d(Ljava/lang/String;Landroid/widget/ImageView;Lc/e/a/b/c;Lc/e/a/b/r/a;)V

    return-void
.end method

.method public onDownloadFailed()V
    .locals 0

    return-void
.end method

.method public onDownloadStarted()V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(II)V
    .locals 0

    return-void
.end method
