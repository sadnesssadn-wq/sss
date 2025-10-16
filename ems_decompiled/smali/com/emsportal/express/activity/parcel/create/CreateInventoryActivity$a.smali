.class public Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/u/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity$a;->a:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity$a;->a:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity$a;->a:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->F:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/emsportal/model/ObjProvince;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity$a;->a:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/emsportal/model/ObjProvince;

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity$a;->a:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    .line 1
    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->F:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    .line 2
    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->H:Lcom/emsportal/model/ObjProvince;

    .line 3
    invoke-virtual {v1}, Lcom/emsportal/model/ObjProvince;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/emsportal/model/ObjProvince;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity$a;->a:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    .line 4
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->F:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    .line 5
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->H:Lcom/emsportal/model/ObjProvince;

    .line 6
    invoke-virtual {v0}, Lcom/emsportal/model/ObjProvince;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/emsportal/model/ObjProvince;->h(Ljava/util/List;)V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity$a;->a:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    .line 7
    invoke-virtual {p1}, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->x()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity$a;->a:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    return-void
.end method
