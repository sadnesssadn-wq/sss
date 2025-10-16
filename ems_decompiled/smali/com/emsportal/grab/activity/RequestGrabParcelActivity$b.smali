.class public Lcom/emsportal/grab/activity/RequestGrabParcelActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/e/b<",
        "Lb/a/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/grab/activity/RequestGrabParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity$b;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lb/a/e/a;

    .line 1
    iget v0, p1, Lb/a/e/a;->c:I

    const/16 v1, 0x144

    if-ne v0, v1, :cond_3

    .line 2
    iget-object p1, p1, Lb/a/e/a;->d:Landroid/content/Intent;

    if-eqz p1, :cond_3

    .line 3
    sget v0, Lcom/emsportal/activity/SelectPlaceManualActivity;->h:I

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "KEY_PLACE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/emsportal/model/PlaceManual;

    :cond_0
    if-nez v0, :cond_1

    .line 4
    sget-object p1, Lcom/emsportal/base/BaseNavigationActivity;->self:Lcom/emsportal/base/BaseNavigationActivity;

    const v0, 0x7f1002b1

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/emsportal/model/PlaceManual;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/emsportal/model/PlaceManual;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/emsportal/model/PlaceManual;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/emsportal/model/PlaceManual;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ", "

    invoke-static {v1, v3, p1}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity$b;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 5
    iget-object v1, v1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->n:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity$b;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 7
    iget-object v3, v1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->n:Ljava/util/List;

    .line 8
    iget v1, v1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->v:I

    .line 9
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/p/e/j;

    invoke-virtual {v1, p1}, Lc/b/p/e/j;->A(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/b/p/e/j;->M(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lc/b/p/e/j;->D(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lc/b/p/e/j;->G(D)V

    invoke-virtual {v1, v2, v3}, Lc/b/p/e/j;->I(D)V

    iget-object p1, p0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity$b;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 10
    iget-object v0, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->m:Lc/b/p/b/g;

    .line 11
    iget p1, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->v:I

    .line 12
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemChanged(I)V

    :cond_3
    :goto_0
    return-void
.end method
