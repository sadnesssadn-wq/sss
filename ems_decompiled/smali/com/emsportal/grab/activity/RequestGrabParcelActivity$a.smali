.class public Lcom/emsportal/grab/activity/RequestGrabParcelActivity$a;
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

    iput-object p1, p0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity$a;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lb/a/e/a;

    .line 1
    iget v0, p1, Lb/a/e/a;->c:I

    const/16 v1, 0x144

    if-ne v0, v1, :cond_3

    .line 2
    iget-object p1, p1, Lb/a/e/a;->d:Landroid/content/Intent;

    if-eqz p1, :cond_4

    .line 3
    sget v0, Lcom/emsportal/activity/SearchPlaceActivity;->g:I

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

    check-cast v0, Lcom/emsportal/model/Place;

    :cond_0
    if-nez v0, :cond_1

    .line 4
    sget-object p1, Lcom/emsportal/base/BaseNavigationActivity;->self:Lcom/emsportal/base/BaseNavigationActivity;

    const v0, 0x7f1002b1

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/emsportal/model/Place;->c()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/emsportal/model/Place;->f()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/emsportal/model/Place;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/emsportal/model/Place;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/emsportal/model/Place;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity$a;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 5
    iget-object v6, v6, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->n:Ljava/util/List;

    .line 6
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity$a;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 7
    iget-object v7, v6, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->n:Ljava/util/List;

    .line 8
    iget v6, v6, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->v:I

    .line 9
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/b/p/e/j;

    invoke-virtual {v6, p1}, Lc/b/p/e/j;->A(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Lc/b/p/e/j;->G(D)V

    invoke-virtual {v6, v3, v4}, Lc/b/p/e/j;->I(D)V

    invoke-virtual {v6, v5}, Lc/b/p/e/j;->M(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lc/b/p/e/j;->D(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity$a;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 10
    iget-object p1, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->m:Lc/b/p/b/g;

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 12
    iget-object p1, p1, Lb/a/e/a;->d:Landroid/content/Intent;

    .line 13
    invoke-static {p1}, Lcom/google/android/libraries/places/widget/Autocomplete;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    sget-object v0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->x:Ljava/lang/String;

    sget-object v0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->x:Ljava/lang/String;

    .line 14
    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->e:Ljava/lang/String;

    .line 15
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
