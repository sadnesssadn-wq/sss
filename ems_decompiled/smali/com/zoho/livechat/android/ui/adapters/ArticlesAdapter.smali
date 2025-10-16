.class public Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticlesViewHolder;",
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

.field private clickListener:Lcom/zoho/livechat/android/ui/listener/ArticlesClickListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/listener/ArticlesClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticle;",
            ">;",
            "Lcom/zoho/livechat/android/ui/listener/ArticlesClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;->articles:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;->clickListener:Lcom/zoho/livechat/android/ui/listener/ArticlesClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;->articles:Ljava/util/ArrayList;

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

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticlesViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticlesViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticlesViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;->articles:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-virtual {p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticlesViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQArticle;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticlesViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticlesViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticlesViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_item_article:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;->clickListener:Lcom/zoho/livechat/android/ui/listener/ArticlesClickListener;

    invoke-direct {p2, p1, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticlesViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/ui/listener/ArticlesClickListener;)V

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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;->articles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method
