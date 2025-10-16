.class public Lc/b/h/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/SelectPostalActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SelectPostalActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/n;->c:Lcom/emsportal/activity/SelectPostalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 5

    iget-object v0, p0, Lc/b/h/n;->c:Lcom/emsportal/activity/SelectPostalActivity;

    .line 1
    iget v1, v0, Lcom/emsportal/activity/SelectPostalActivity;->l:I

    const/16 v2, 0x216

    if-ne v1, v2, :cond_0

    .line 2
    const-class v1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    .line 3
    iget-object v2, v0, Lcom/emsportal/activity/SelectPostalActivity;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/Postal;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v0, Lcom/emsportal/activity/SelectPostalActivity;->h:Lcom/emsportal/model/ObjProvince;

    const-string v4, "PROVINCE"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v3, v0, Lcom/emsportal/activity/SelectPostalActivity;->i:Lcom/emsportal/model/ObjDistrict;

    const-string v4, "DISTRICT"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "POSTAL"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, v0, Lcom/emsportal/activity/SelectPostalActivity;->k:Lcom/emsportal/activity/SelectPostalActivity;

    invoke-static {p1, v1, v2}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
