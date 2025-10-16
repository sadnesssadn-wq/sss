.class public Lc/b/o/y$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/o/y;->o(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc/b/o/y;


# direct methods
.method public constructor <init>(Lc/b/o/y;I)V
    .locals 0

    iput-object p1, p0, Lc/b/o/y$a;->b:Lc/b/o/y;

    iput p2, p0, Lc/b/o/y$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    iget-object v0, p0, Lc/b/o/y$a;->b:Lc/b/o/y;

    .line 1
    iget-object v0, v0, Lc/b/o/y;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    const-class v0, Lc/b/m/d/r;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lc/b/o/y$a;->b:Lc/b/o/y;

    .line 3
    iget-object v2, v2, Lc/b/o/y;->c:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lc/b/o/y$a;->b:Lc/b/o/y;

    .line 5
    iget-object v0, v0, Lc/b/o/y;->d:Lc/b/i/e;

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    iget-object v0, p0, Lc/b/o/y$a;->b:Lc/b/o/y;

    .line 7
    iget-object v0, v0, Lc/b/o/y;->c:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/o/y$a;->b:Lc/b/o/y;

    .line 9
    iget-object v0, v0, Lc/b/o/y;->i:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/o/y$a;->b:Lc/b/o/y;

    .line 11
    iget-object v0, v0, Lc/b/o/y;->i:Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 12
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lc/b/o/y$a;->b:Lc/b/o/y;

    .line 13
    iget-object v0, v0, Lc/b/o/y;->j:Lc/b/x/c;

    .line 14
    iput-boolean v1, v0, Lc/b/x/c;->a:Z

    .line 15
    iget v2, p0, Lc/b/o/y$a;->a:I

    invoke-virtual {p1}, Lc/b/t/a;->d()I

    move-result p1

    if-lt v2, p1, :cond_1

    const/4 v1, 0x1

    .line 16
    :cond_1
    iput-boolean v1, v0, Lc/b/x/c;->i:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/o/y$a;->b:Lc/b/o/y;

    .line 1
    iget-object v0, v0, Lc/b/o/y;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    iget-object v0, p0, Lc/b/o/y$a;->b:Lc/b/o/y;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
