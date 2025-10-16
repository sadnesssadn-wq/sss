.class public Lcom/emsportal/user/activity/ListStoresActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/user/activity/ListStoresActivity;->v(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/emsportal/user/activity/ListStoresActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/ListStoresActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    iput p2, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 6

    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/user/activity/ListStoresActivity;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    .line 4
    iget-object v0, v0, Lcom/emsportal/user/activity/ListStoresActivity;->i:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-class v2, Lc/b/m/d/h0;

    invoke-virtual {p1, v2}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    .line 6
    iget-object v3, v3, Lcom/emsportal/user/activity/ListStoresActivity;->i:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    .line 8
    iget-object v5, v5, Lcom/emsportal/user/activity/ListStoresActivity;->i:Ljava/util/ArrayList;

    .line 9
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v3, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    .line 12
    iget-object v3, v3, Lcom/emsportal/user/activity/ListStoresActivity;->h:Lc/b/v/b/b;

    .line 13
    invoke-virtual {v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    .line 14
    iget-object v0, v0, Lcom/emsportal/user/activity/ListStoresActivity;->j:Lc/b/x/c;

    .line 15
    iput-boolean v1, v0, Lc/b/x/c;->a:Z

    .line 16
    iget v2, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->a:I

    invoke-virtual {p1}, Lc/b/t/a;->d()I

    move-result p1

    if-lt v2, p1, :cond_0

    const/4 v1, 0x1

    .line 17
    :cond_0
    iput-boolean v1, v0, Lc/b/x/c;->i:Z

    .line 18
    iget-object p1, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    .line 19
    iget-object p1, p1, Lcom/emsportal/user/activity/ListStoresActivity;->i:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100298

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 22
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/user/activity/ListStoresActivity;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity$a;->b:Lcom/emsportal/user/activity/ListStoresActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
