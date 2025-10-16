.class public abstract Lcom/emsportal/base/BaseListFragment;
.super Lcom/emsportal/base/BaseFragment;
.source ""

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;
.implements Lc/b/x/c$a;
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public adapter:Lcom/emsportal/base/BaseAdapter;

.field public imgLogoNodata:Landroid/widget/ImageView;

.field private layoutManager:Landroidx/recyclerview/widget/RecyclerView$m;

.field public onScrollListener:Lc/b/x/c;

.field public page:I

.field private rcvData:Landroidx/recyclerview/widget/RecyclerView;

.field public rootNodata:Landroid/view/ViewGroup;

.field public swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public tvNoData:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/base/BaseListFragment;->page:I

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    const v0, 0x7f0b006d

    return v0
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/base/BaseListFragment;->page:I

    iget-object v0, p0, Lcom/emsportal/base/BaseListFragment;->adapter:Lcom/emsportal/base/BaseAdapter;

    .line 1
    iget-object v1, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcom/emsportal/base/BaseListFragment;->onScrollListener:Lc/b/x/c;

    iget v1, p0, Lcom/emsportal/base/BaseListFragment;->page:I

    .line 3
    iput v1, v0, Lc/b/x/c;->e:I

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Lc/b/x/c;->i:Z

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/emsportal/base/BaseListFragment;->r(IZ)V

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/base/BaseListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;)V

    iget-object v0, p0, Lcom/emsportal/base/BaseListFragment;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/emsportal/base/BaseListFragment;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/emsportal/base/BaseListFragment;->imgLogoNodata:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/emsportal/base/BaseListFragment;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/emsportal/base/BaseListFragment;->rcvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    invoke-virtual {p0}, Lcom/emsportal/base/BaseListFragment;->t()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v1

    iput-object v1, p0, Lcom/emsportal/base/BaseListFragment;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {p0}, Lcom/emsportal/base/BaseListFragment;->s()Lcom/emsportal/base/BaseAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/emsportal/base/BaseListFragment;->adapter:Lcom/emsportal/base/BaseAdapter;

    .line 2
    iput-object p0, v1, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 3
    new-instance v1, Lc/b/x/c;

    invoke-direct {v1, p0}, Lc/b/x/c;-><init>(Lc/b/x/c$a;)V

    iput-object v1, p0, Lcom/emsportal/base/BaseListFragment;->onScrollListener:Lc/b/x/c;

    iget-object v1, p0, Lcom/emsportal/base/BaseListFragment;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/base/BaseListFragment;->adapter:Lcom/emsportal/base/BaseAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v1, p0, Lcom/emsportal/base/BaseListFragment;->onScrollListener:Lc/b/x/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$q;)V

    .line 4
    iget v0, p0, Lcom/emsportal/base/BaseListFragment;->page:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/emsportal/base/BaseListFragment;->r(IZ)V

    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f080215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/base/BaseListFragment;->rcvData:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f08040a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/emsportal/base/BaseListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v0, 0x7f08049a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/base/BaseListFragment;->tvNoData:Landroid/widget/TextView;

    const v0, 0x7f08015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/emsportal/base/BaseListFragment;->imgLogoNodata:Landroid/widget/ImageView;

    const v0, 0x7f080251

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/emsportal/base/BaseListFragment;->rootNodata:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput p1, p0, Lcom/emsportal/base/BaseListFragment;->page:I

    return-void
.end method

.method public m(I)V
    .locals 1

    iput p1, p0, Lcom/emsportal/base/BaseListFragment;->page:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/emsportal/base/BaseListFragment;->r(IZ)V

    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/base/BaseListFragment;->adapter:Lcom/emsportal/base/BaseAdapter;

    .line 1
    iget-object v1, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    .line 2
    iget-object p1, p0, Lcom/emsportal/base/BaseListFragment;->adapter:Lcom/emsportal/base/BaseAdapter;

    iget-object p1, p1, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/emsportal/base/BaseListFragment;->rootNodata:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/emsportal/base/BaseListFragment;->rootNodata:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public p()I
    .locals 1

    const v0, 0x7f070131

    return v0
.end method

.method public q()I
    .locals 1

    const v0, 0x7f100293

    return v0
.end method

.method public abstract r(IZ)V
.end method

.method public abstract s()Lcom/emsportal/base/BaseAdapter;
.end method

.method public abstract t()Landroidx/recyclerview/widget/RecyclerView$m;
.end method
