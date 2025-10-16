.class public Lc/b/h/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/h/o;->a(Lc/b/t/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/h/o;


# direct methods
.method public constructor <init>(Lc/b/h/o;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/o$a;->a:Lc/b/h/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lc/b/h/o$a;->a:Lc/b/h/o;

    iget-object v0, v0, Lc/b/h/o;->a:Lcom/emsportal/activity/SelectPostalActivity;

    .line 1
    iget v1, v0, Lcom/emsportal/activity/SelectPostalActivity;->l:I

    const/16 v2, 0x216

    if-ne v1, v2, :cond_0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lcom/emsportal/activity/SelectPostalActivity;->h:Lcom/emsportal/model/ObjProvince;

    const-string v3, "PROVINCE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, v0, Lcom/emsportal/activity/SelectPostalActivity;->i:Lcom/emsportal/model/ObjDistrict;

    const-string v3, "DISTRICT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, v0, Lcom/emsportal/activity/SelectPostalActivity;->k:Lcom/emsportal/activity/SelectPostalActivity;

    const-class v2, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    invoke-static {v0, v2, v1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
