.class public Lcom/emsportal/international/activity/ListCountryActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;


# instance fields
.field public c:Landroid/widget/EditText;

.field public d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public e:Landroidx/recyclerview/widget/RecyclerView;

.field public f:Landroid/view/ViewGroup;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/r/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/r/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/r/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lc/b/r/b/a;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/emsportal/international/activity/ListCountryActivity;->j:Lc/b/r/b/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeRemoved(II)V

    iget-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->k:Ljava/lang/String;

    .line 1
    new-instance v1, Lc/b/r/a/m0;

    invoke-direct {v1, p0}, Lc/b/r/a/m0;-><init>(Lcom/emsportal/international/activity/ListCountryActivity;)V

    invoke-static {v0, v2, v1}, Lc/b/s/a;->h(Ljava/lang/String;ZLc/b/t/b$d;)V

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f0b003a

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/emsportal/international/activity/ListCountryActivity$a;

    invoke-direct {v1, p0}, Lcom/emsportal/international/activity/ListCountryActivity$a;-><init>(Lcom/emsportal/international/activity/ListCountryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->h:Ljava/util/List;

    new-instance v0, Lc/b/r/b/a;

    iget-object v1, p0, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Lc/b/r/b/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->j:Lc/b/r/b/a;

    iget-object v1, p0, Lcom/emsportal/international/activity/ListCountryActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->j:Lc/b/r/b/a;

    new-instance v1, Lc/b/r/a/o;

    invoke-direct {v1, p0}, Lc/b/r/a/o;-><init>(Lcom/emsportal/international/activity/ListCountryActivity;)V

    .line 2
    iput-object v1, v0, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SERVICE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->k:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "1"

    iput-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->k:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->k:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    new-instance v2, Lc/b/r/a/m0;

    invoke-direct {v2, p0}, Lc/b/r/a/m0;-><init>(Lcom/emsportal/international/activity/ListCountryActivity;)V

    invoke-static {v0, v1, v2}, Lc/b/s/a;->h(Ljava/lang/String;ZLc/b/t/b$d;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f1003a2

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f08022a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->f:Landroid/view/ViewGroup;

    const v0, 0x7f08040a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity;->f:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lb/u/a;->c(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
