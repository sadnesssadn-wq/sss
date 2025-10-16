.class public Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private articles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticle;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;

.field private recentArticle:Z

.field private recentlyViewed:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticle;",
            ">;",
            "Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->recentArticle:Z

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->recentlyViewed:Z

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->listener:Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->articles:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->articles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;I)V
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->articles:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/models/SalesIQArticle;

    iget-boolean v1, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->recentArticle:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->recentlyViewed:Z

    if-eqz v4, :cond_1

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQArticle;ZZ)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_item_search_article:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->listener:Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;

    invoke-direct {p2, p1, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;)V

    return-object p2
.end method

.method public updateArticles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->articles:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->recentArticle:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public updateRecentArticles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->articles:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->recentArticle:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public updateRecentlyViewedArtciles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->articles:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->recentlyViewed:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method
