.class public Lc/b/r/a/m0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/international/activity/ListCountryActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/ListCountryActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/m0;->a:Lcom/emsportal/international/activity/ListCountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    iget-object v0, p0, Lc/b/r/a/m0;->a:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/international/activity/ListCountryActivity;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const-class v0, Lc/b/r/c/a;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lc/b/r/a/m0;->a:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 3
    iget-object v2, v2, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    .line 4
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lc/b/r/a/m0;->a:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 5
    iget-object p1, p1, Lcom/emsportal/international/activity/ListCountryActivity;->j:Lc/b/r/b/a;

    .line 6
    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V

    iget-object p1, p0, Lc/b/r/a/m0;->a:Lcom/emsportal/international/activity/ListCountryActivity;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/b/r/a/m0;->a:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 7
    iget-object v1, v1, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    iput-object v0, p1, Lcom/emsportal/international/activity/ListCountryActivity;->h:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/r/a/m0;->a:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/international/activity/ListCountryActivity;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p0, Lc/b/r/a/m0;->a:Lcom/emsportal/international/activity/ListCountryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
