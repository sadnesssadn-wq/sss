.class public Lc/b/m/c/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/m/c/d;


# direct methods
.method public constructor <init>(Lc/b/m/c/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/c/c;->a:Lc/b/m/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/b/m/c/c;->a:Lc/b/m/c/d;

    const-class v2, Lc/b/m/d/t;

    invoke-virtual {p1, v2}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 3
    sget v3, Lc/b/m/c/d;->f:I

    invoke-virtual {v0, v2}, Lcom/emsportal/base/BaseListFragment;->o(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lc/b/m/c/c;->a:Lc/b/m/c/d;

    .line 5
    iget-object v2, v0, Lc/b/m/c/d;->e:Lc/b/m/c/d;

    .line 6
    iget v2, v2, Lcom/emsportal/base/BaseListFragment;->page:I

    .line 7
    invoke-virtual {p1}, Lc/b/t/a;->d()I

    move-result p1

    if-le v2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-object v0, v0, Lcom/emsportal/base/BaseListFragment;->onScrollListener:Lc/b/x/c;

    .line 9
    iput-boolean v1, v0, Lc/b/x/c;->a:Z

    .line 10
    iput-boolean p1, v0, Lc/b/x/c;->i:Z

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lc/b/m/c/c;->a:Lc/b/m/c/d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    .line 12
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 13
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lc/b/m/c/c;->a:Lc/b/m/c/d;

    .line 14
    sget v0, Lc/b/m/c/d;->f:I

    .line 15
    iget-object p1, p1, Lcom/emsportal/base/BaseListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/m/c/c;->a:Lc/b/m/c/d;

    .line 1
    sget v1, Lc/b/m/c/d;->f:I

    .line 2
    iget-object v0, v0, Lcom/emsportal/base/BaseListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 3
    iget-object v0, p0, Lc/b/m/c/c;->a:Lc/b/m/c/d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
