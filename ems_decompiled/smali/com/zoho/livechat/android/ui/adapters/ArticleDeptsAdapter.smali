.class public Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public clickListener:Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;

.field public departments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;",
            ">;",
            "Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;->departments:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;->clickListener:Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;->departments:Ljava/util/ArrayList;

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

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;->departments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;

    invoke-virtual {p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_item_article_dept:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;->clickListener:Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;

    invoke-direct {p2, p1, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;)V

    return-object p2
.end method

.method public updateDepartments(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;->departments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method
