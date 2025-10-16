.class public Lc/b/m/c/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/m/c/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/m/c/a;


# direct methods
.method public constructor <init>(Lc/b/m/c/a;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/c/a$d;->a:Lc/b/m/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 4

    iget-object v0, p0, Lc/b/m/c/a$d;->a:Lc/b/m/c/a;

    .line 1
    iget-object v1, v0, Lc/b/m/c/a;->p:Lc/b/x/c;

    .line 2
    iget v0, v0, Lc/b/m/c/a;->v:I

    .line 3
    invoke-virtual {p1}, Lc/b/t/a;->d()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput-boolean v0, v1, Lc/b/x/c;->i:Z

    .line 5
    iget-object v0, p0, Lc/b/m/c/a$d;->a:Lc/b/m/c/a;

    .line 6
    iget-object v1, v0, Lc/b/m/c/a;->p:Lc/b/x/c;

    .line 7
    iput-boolean v3, v1, Lc/b/x/c;->a:Z

    .line 8
    iget-object v0, v0, Lc/b/m/c/a;->o:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 9
    const-class v0, Lc/b/m/d/f;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lc/b/m/c/a$d;->a:Lc/b/m/c/a;

    .line 10
    iget-object v0, v0, Lc/b/m/c/a;->l:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lc/b/m/c/a$d;->a:Lc/b/m/c/a;

    .line 12
    iget-object v2, v2, Lc/b/m/c/a;->l:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lc/b/m/c/a$d;->a:Lc/b/m/c/a;

    .line 14
    iget-object p1, p1, Lc/b/m/c/a;->k:Lc/b/m/b/e;

    .line 15
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V

    iget-object p1, p0, Lc/b/m/c/a$d;->a:Lc/b/m/c/a;

    .line 16
    iget-object p1, p1, Lc/b/m/c/a;->l:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/b/m/c/a$d;->a:Lc/b/m/c/a;

    .line 18
    iget-object p1, p1, Lc/b/m/c/a;->q:Landroid/widget/TextView;

    .line 19
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lc/b/m/c/a$d;->a:Lc/b/m/c/a;

    .line 20
    iget-object p1, p1, Lc/b/m/c/a;->q:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/c/a$d;->a:Lc/b/m/c/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/m/c/a$d;->a:Lc/b/m/c/a;

    .line 1
    iget-object p1, p1, Lc/b/m/c/a;->o:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
