.class public final synthetic Lc/b/r/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/international/activity/AddParcelBatchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/international/activity/AddParcelBatchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/r/a/c;->c:Lcom/emsportal/international/activity/AddParcelBatchActivity;

    return-void
.end method


# virtual methods
.method public final k(I)V
    .locals 3

    iget-object v0, p0, Lc/b/r/a/c;->c:Lcom/emsportal/international/activity/AddParcelBatchActivity;

    .line 1
    iget-object v1, v0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/r/c/f;

    iput-object p1, v0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->x:Lc/b/r/c/f;

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_ITEM_INTERNATIONAL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget p1, v0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->y:I

    const-string v2, "SERVICE_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-class p1, Lcom/emsportal/international/activity/UpdateItemActivity;

    const/16 v2, 0x5fe

    invoke-static {v0, p1, v2, v1}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    return-void
.end method
