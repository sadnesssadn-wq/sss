.class public Lcom/emsportal/express/activity/parcel/detail/RoutePackageActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Lc/b/m/b/n;

.field public e:Landroid/widget/TextView;

.field public f:Lc/b/m/d/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b004b

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 3

    const v0, 0x7f1003ab

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DATA_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/f;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/RoutePackageActivity;->f:Lc/b/m/d/f;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lc/b/m/d/f;->I()Ljava/lang/String;

    move-result-object v0

    .line 1
    new-instance v1, Lc/b/m/a/b/b/d;

    invoke-direct {v1, p0}, Lc/b/m/a/b/b/d;-><init>(Lcom/emsportal/express/activity/parcel/detail/RoutePackageActivity;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lc/b/s/a;->q(Ljava/lang/String;ZLc/b/t/b$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f08021b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/RoutePackageActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f08049a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/RoutePackageActivity;->e:Landroid/widget/TextView;

    return-void
.end method
