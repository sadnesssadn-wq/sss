.class public final synthetic Lc/b/r/a/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/international/activity/ListCountryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/international/activity/ListCountryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/r/a/o;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    return-void
.end method


# virtual methods
.method public final k(I)V
    .locals 4

    iget-object v0, p0, Lc/b/r/a/o;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v0, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/r/c/a;

    const-string v3, "country"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, 0x144

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
