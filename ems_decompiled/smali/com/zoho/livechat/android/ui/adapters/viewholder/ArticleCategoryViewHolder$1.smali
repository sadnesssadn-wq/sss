.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQArticleCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;

.field public final synthetic val$category:Lcom/zoho/livechat/android/models/SalesIQArticleCategory;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;Lcom/zoho/livechat/android/models/SalesIQArticleCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder$1;->val$category:Lcom/zoho/livechat/android/models/SalesIQArticleCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;)Lcom/zoho/livechat/android/ui/listener/ArticleCategoryClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;)Lcom/zoho/livechat/android/ui/listener/ArticleCategoryClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder$1;->val$category:Lcom/zoho/livechat/android/models/SalesIQArticleCategory;

    invoke-interface {p1, v0}, Lcom/zoho/livechat/android/ui/listener/ArticleCategoryClickListener;->onCategoryClicked(Lcom/zoho/livechat/android/models/SalesIQArticleCategory;)V

    :cond_0
    return-void
.end method
