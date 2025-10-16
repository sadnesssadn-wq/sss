.class public Lcom/emsportal/instant/activity/CreateSuperParcelActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->r()V
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
.field public final synthetic a:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/instant/activity/CreateSuperParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$b;->a:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lb/a/e/a;

    .line 1
    iget v0, p1, Lb/a/e/a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Lb/a/e/a;->d:Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/android/libraries/places/widget/Autocomplete;->getPlaceFromIntent(Landroid/content/Intent;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v1, v0, Lcom/google/android/gms/maps/model/LatLng;->c:D

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->d:D

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getName()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$b;->a:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;

    .line 4
    iget-object v0, v0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->m:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$b;->a:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;

    .line 6
    iget-object v5, v0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->m:Ljava/util/List;

    .line 7
    iget v0, v0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->t:I

    .line 8
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/q/d/d;

    invoke-virtual {v0, p1}, Lc/b/q/d/d;->n(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lc/b/q/d/d;->r(D)V

    invoke-virtual {v0, v3, v4}, Lc/b/q/d/d;->u(D)V

    iget-object p1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$b;->a:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;

    .line 9
    iget-object v0, p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->l:Lc/b/q/b/f;

    .line 10
    iget p1, p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->t:I

    .line 11
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 12
    iget-object p1, p1, Lb/a/e/a;->d:Landroid/content/Intent;

    .line 13
    invoke-static {p1}, Lcom/google/android/libraries/places/widget/Autocomplete;->getStatusFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    sget-object v0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->w:Ljava/lang/String;

    sget-object v0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->w:Ljava/lang/String;

    .line 14
    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->e:Ljava/lang/String;

    .line 15
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
