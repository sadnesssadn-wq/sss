.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/e/a/b/r/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;->onDownloadComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;->val$attenderId:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/SalesIQCache;->addUser(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lc/e/a/b/m/b;)V
    .locals 0

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
