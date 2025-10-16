.class public Lc/b/m/a/b/b/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/b/c;->a:Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 4

    const-class v0, Lc/b/m/d/f;

    invoke-virtual {p1, v0}, Lc/b/t/a;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/f;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc/b/m/d/f;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/m/a/b/b/c;->a:Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/m/a/b/b/c;->a:Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lc/b/m/a/b/b/c;->a:Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;

    .line 5
    iget-object v1, v0, Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v2, Lc/b/m/b/m;

    iget-object v3, v0, Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;->e:Lc/b/m/d/f;

    invoke-virtual {v3}, Lc/b/m/d/f;->I()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lc/b/m/b/m;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;->d:Lc/b/m/b/m;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, v0, Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;->d:Lc/b/m/b/m;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    new-instance p1, Lc/b/x/d;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p1, v0, v2}, Lc/b/x/d;-><init>(Landroid/content/Context;F)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/m/a/b/b/c;->a:Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;

    new-instance v1, Lc/b/m/a/b/b/a;

    invoke-direct {v1, p0}, Lc/b/m/a/b/b/a;-><init>(Lc/b/m/a/b/b/c;)V

    invoke-static {v0, p1, v1}, Lb/u/a;->j0(Landroid/content/Context;Ljava/lang/String;Lc/b/w/m;)V

    return-void
.end method
