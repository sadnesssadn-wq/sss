.class public final synthetic Lc/b/r/a/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/international/activity/ListInternationalParcelActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/international/activity/ListInternationalParcelActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/r/a/p;->c:Lcom/emsportal/international/activity/ListInternationalParcelActivity;

    return-void
.end method


# virtual methods
.method public final k(I)V
    .locals 3

    iget-object v0, p0, Lc/b/r/a/p;->c:Lcom/emsportal/international/activity/ListInternationalParcelActivity;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lb/u/a;->M()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/r/c/e;

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_INTERNATIONAL_PARCEL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class p1, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    invoke-static {v0, p1, v1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
