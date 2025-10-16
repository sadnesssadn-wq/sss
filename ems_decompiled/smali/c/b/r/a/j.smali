.class public final synthetic Lc/b/r/a/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/international/activity/CreateParcelBatchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/r/a/j;->c:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    return-void
.end method


# virtual methods
.method public final k(I)V
    .locals 3

    iget-object v0, p0, Lc/b/r/a/j;->c:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    .line 1
    iget-object v1, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/r/c/j;

    iput-object p1, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->a0:Lc/b/r/c/j;

    .line 2
    invoke-static {}, Lb/u/a;->M()Z

    move-result v1

    if-nez v1, :cond_0

    const p1, 0x7f100263

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PARCEL_BATCH"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;

    const/16 v2, 0x5fe

    invoke-static {v0, p1, v2, v1}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
