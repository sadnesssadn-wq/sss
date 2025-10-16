.class public Lc/b/p/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc/b/p/d/b;


# direct methods
.method public constructor <init>(Lc/b/p/d/b;I)V
    .locals 0

    iput-object p1, p0, Lc/b/p/d/a;->b:Lc/b/p/d/b;

    iput p2, p0, Lc/b/p/d/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc/b/p/d/a;->b:Lc/b/p/d/b;

    .line 1
    sget v1, Lc/b/p/d/b;->k:I

    .line 2
    iget-object v0, v0, Lcom/emsportal/base/BaseListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 3
    const-class v0, Lc/b/p/e/b;

    invoke-virtual {p1, v0}, Lc/b/t/a;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lc/b/p/d/a;->b:Lc/b/p/d/b;

    .line 4
    invoke-virtual {v2, v0}, Lcom/emsportal/base/BaseListFragment;->o(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lc/b/p/d/a;->b:Lc/b/p/d/b;

    iget v2, p0, Lc/b/p/d/a;->a:I

    invoke-virtual {p1}, Lc/b/t/a;->d()I

    move-result p1

    if-lt v2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v0, v0, Lcom/emsportal/base/BaseListFragment;->onScrollListener:Lc/b/x/c;

    .line 7
    iput-boolean v1, v0, Lc/b/x/c;->a:Z

    .line 8
    iput-boolean p1, v0, Lc/b/x/c;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/p/d/a;->b:Lc/b/p/d/b;

    .line 1
    sget v1, Lc/b/p/d/b;->k:I

    .line 2
    iget-object v0, v0, Lcom/emsportal/base/BaseListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 3
    iget-object v0, p0, Lc/b/p/d/a;->b:Lc/b/p/d/b;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
