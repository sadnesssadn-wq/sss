.class public Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticleCategory;",
            ">;"
        }
    .end annotation
.end field

.field public clickListener:Lcom/zoho/livechat/android/ui/listener/ArticleCategoryClickListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/listener/ArticleCategoryClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticleCategory;",
            ">;",
            "Lcom/zoho/livechat/android/ui/listener/ArticleCategoryClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;->categories:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;->clickListener:Lcom/zoho/livechat/android/ui/listener/ArticleCategoryClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;->categories:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/models/SalesIQArticleCategory;

    invoke-virtual {p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQArticleCategory;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_item_article_dept:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;->clickListener:Lcom/zoho/livechat/android/ui/listener/ArticleCategoryClickListener;

    invoke-direct {p2, p1, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleCategoryViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/ui/listener/ArticleCategoryClickListener;)V

    return-object p2
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticleCategory;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;->categories:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method
