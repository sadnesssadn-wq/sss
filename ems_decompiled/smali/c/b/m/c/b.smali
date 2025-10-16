.class public Lc/b/m/c/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lc/b/m/c/a;


# direct methods
.method public constructor <init>(Lc/b/m/c/a;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/c/b;->c:Lc/b/m/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 3

    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lc/b/m/c/b;->c:Lc/b/m/c/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/b/m/c/b;->c:Lc/b/m/c/a;

    .line 1
    iget-object v0, v0, Lc/b/m/c/a;->l:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/f;

    iget-object v0, p0, Lc/b/m/c/b;->c:Lc/b/m/c/a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATA_INVENTORY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-class v0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    invoke-static {p1, v0, v1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
