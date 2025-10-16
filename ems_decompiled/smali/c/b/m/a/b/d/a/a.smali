.class public Lc/b/m/a/b/d/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/d/a/a;->c:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 4

    iget-object v0, p0, Lc/b/m/a/b/d/a/a;->c:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;->f:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/w;

    invoke-virtual {p1}, Lc/b/m/d/w;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc/b/m/d/i;

    iget-object v2, p0, Lc/b/m/a/b/d/a/a;->c:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    .line 3
    iget-object v3, v2, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;->k:Ljava/lang/String;

    .line 4
    iget-object v2, v2, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;->l:Ljava/lang/String;

    .line 5
    invoke-direct {v1, v0, v3, v2, p1}, Lc/b/m/d/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/b/m/d/w;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "KEY_DATA_FILTER_REPORT"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lc/b/m/a/b/d/a/a;->c:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    const/16 v2, 0x7b

    invoke-static {v0, v1, v2, p1}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    return-void
.end method
