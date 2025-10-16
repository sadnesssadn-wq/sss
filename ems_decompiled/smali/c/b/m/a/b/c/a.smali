.class public Lc/b/m/a/b/c/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/c/a;->c:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 3

    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lc/b/m/a/b/c/a;->c:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/b/m/a/b/c/a;->c:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->h:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/f;

    iget-object v0, p0, Lc/b/m/a/b/c/a;->c:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATA_INVENTORY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class p1, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    invoke-static {v0, p1, v1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
