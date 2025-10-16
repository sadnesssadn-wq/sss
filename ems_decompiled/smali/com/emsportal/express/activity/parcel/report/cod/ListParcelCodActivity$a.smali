.class public Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const-class v0, Lc/b/m/d/d;

    invoke-virtual {p1, v0}, Lc/b/t/a;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc/b/m/d/d;->a()Lc/b/m/d/e;

    move-result-object p1

    invoke-virtual {p1}, Lc/b/m/d/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f100293

    invoke-static {v0, v2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;

    .line 3
    iget-object v2, v2, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->d:Ljava/util/List;

    .line 4
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;

    .line 5
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->e:Lc/b/m/b/j;

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :goto_0
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;

    .line 7
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->j:Lc/b/x/c;

    .line 8
    iput-boolean v1, v2, Lc/b/x/c;->a:Z

    .line 9
    iget v0, v0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->i:I

    .line 10
    invoke-virtual {p1}, Lc/b/m/d/e;->b()I

    move-result p1

    if-lt v0, p1, :cond_1

    const/4 v1, 0x1

    .line 11
    :cond_1
    iput-boolean v1, v2, Lc/b/x/c;->i:Z

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
