.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQArticle;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;

.field public final synthetic val$article:Lcom/zoho/livechat/android/models/SalesIQArticle;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;Lcom/zoho/livechat/android/models/SalesIQArticle;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder$1;->val$article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;)Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder$1;->val$article:Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-interface {p1, v0}, Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;->onSearchClicked(Lcom/zoho/livechat/android/models/SalesIQArticle;)V

    return-void
.end method
