.class public Lc/b/h/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/SelectProvinceActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SelectProvinceActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/p;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 5

    iget-object v0, p0, Lc/b/h/p;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/activity/SelectProvinceActivity;->e:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjProvince;

    iget-object v0, p0, Lc/b/h/p;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 3
    iput-object p1, v0, Lcom/emsportal/activity/SelectProvinceActivity;->h:Lcom/emsportal/model/ObjProvince;

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lc/b/h/p;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 5
    iget v2, v1, Lcom/emsportal/activity/SelectProvinceActivity;->m:I

    const/16 v3, 0x216

    if-ne v2, v3, :cond_0

    .line 6
    invoke-static {v1, v3}, Lcom/emsportal/activity/SelectProvinceActivity;->v(Lcom/emsportal/activity/SelectProvinceActivity;I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x1d4

    if-ne v2, v3, :cond_1

    invoke-static {v1, v3}, Lcom/emsportal/activity/SelectProvinceActivity;->w(Lcom/emsportal/activity/SelectProvinceActivity;I)V

    goto :goto_0

    :cond_1
    const-string v3, "PROVINCE"

    const/16 v4, 0x3bd

    if-ne v2, v4, :cond_2

    .line 7
    iget-object v1, v1, Lcom/emsportal/activity/SelectProvinceActivity;->i:Lcom/emsportal/model/ObjDistrict;

    const-string v2, "DISTRICT"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "FLAG_TARGET"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lc/b/h/p;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 9
    invoke-virtual {v1, p1}, Lcom/emsportal/activity/SelectProvinceActivity;->y(Lcom/emsportal/model/ObjProvince;)V

    .line 10
    iget-object p1, p0, Lc/b/h/p;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 11
    iget-object p1, p1, Lcom/emsportal/activity/SelectProvinceActivity;->f:Lc/b/i/j;

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    iget-object p1, p0, Lc/b/h/p;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 13
    iget-object p1, p1, Lcom/emsportal/activity/SelectProvinceActivity;->l:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 14
    const-class v1, Lcom/emsportal/activity/SelectDistrictActivity;

    invoke-static {p1, v1, v0}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x195

    if-ne v2, v4, :cond_3

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lc/b/h/p;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    invoke-virtual {v0, v4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lc/b/h/p;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    const/16 p1, 0x1e1

    if-ne v2, p1, :cond_4

    invoke-static {v1, p1}, Lcom/emsportal/activity/SelectProvinceActivity;->v(Lcom/emsportal/activity/SelectProvinceActivity;I)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x1e6

    if-ne v2, p1, :cond_5

    invoke-static {v1, p1}, Lcom/emsportal/activity/SelectProvinceActivity;->w(Lcom/emsportal/activity/SelectProvinceActivity;I)V

    :cond_5
    :goto_0
    return-void
.end method
