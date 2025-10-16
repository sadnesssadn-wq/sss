.class public Lcom/emsportal/activity/SelectProvinceActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/u/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/activity/SelectProvinceActivity;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/activity/SelectProvinceActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SelectProvinceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/activity/SelectProvinceActivity$a;->a:Lcom/emsportal/activity/SelectProvinceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/activity/SelectProvinceActivity$a;->a:Lcom/emsportal/activity/SelectProvinceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    iget-object v0, p0, Lcom/emsportal/activity/SelectProvinceActivity$a;->a:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/activity/SelectProvinceActivity;->l:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/emsportal/model/ObjProvince;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/emsportal/activity/SelectProvinceActivity$a;->a:Lcom/emsportal/activity/SelectProvinceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    iget-object v0, p0, Lcom/emsportal/activity/SelectProvinceActivity$a;->a:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/activity/SelectProvinceActivity;->e:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/emsportal/activity/SelectProvinceActivity$a;->a:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/activity/SelectProvinceActivity;->g:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/emsportal/activity/SelectProvinceActivity$a;->a:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 5
    iget-object v0, p1, Lcom/emsportal/activity/SelectProvinceActivity;->h:Lcom/emsportal/model/ObjProvince;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Lcom/emsportal/activity/SelectProvinceActivity;->y(Lcom/emsportal/model/ObjProvince;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/emsportal/activity/SelectProvinceActivity$a;->a:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 8
    iget-object p1, p1, Lcom/emsportal/activity/SelectProvinceActivity;->f:Lc/b/i/j;

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/activity/SelectProvinceActivity$a;->a:Lcom/emsportal/activity/SelectProvinceActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    return-void
.end method
