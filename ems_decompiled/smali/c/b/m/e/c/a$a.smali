.class public Lc/b/m/e/c/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/m/e/c/a;->u(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc/b/m/e/c/a;


# direct methods
.method public constructor <init>(Lc/b/m/e/c/a;I)V
    .locals 0

    iput-object p1, p0, Lc/b/m/e/c/a$a;->b:Lc/b/m/e/c/a;

    iput p2, p0, Lc/b/m/e/c/a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    const-class v0, Lc/b/m/e/d/c;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lc/b/m/e/c/a$a;->b:Lc/b/m/e/c/a;

    .line 1
    sget v2, Lc/b/m/e/c/a;->k:I

    .line 2
    iget-object v1, v1, Lcom/emsportal/base/BaseListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 3
    iget-object v1, p0, Lc/b/m/e/c/a$a;->b:Lc/b/m/e/c/a;

    .line 4
    invoke-virtual {v1, v0}, Lcom/emsportal/base/BaseListFragment;->o(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lc/b/m/e/c/a$a;->b:Lc/b/m/e/c/a;

    iget v1, p0, Lc/b/m/e/c/a$a;->a:I

    .line 6
    iget p1, p1, Lc/b/t/a;->f:I

    if-lt v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, v0, Lcom/emsportal/base/BaseListFragment;->onScrollListener:Lc/b/x/c;

    .line 8
    iput-boolean v2, v0, Lc/b/x/c;->a:Z

    .line 9
    iput-boolean p1, v0, Lc/b/x/c;->i:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/m/e/c/a$a;->b:Lc/b/m/e/c/a;

    .line 1
    sget v1, Lc/b/m/e/c/a;->k:I

    .line 2
    iget-object v0, v0, Lcom/emsportal/base/BaseListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 3
    iget-object v0, p0, Lc/b/m/e/c/a$a;->b:Lc/b/m/e/c/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
