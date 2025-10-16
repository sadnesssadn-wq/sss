.class public Lc/b/h/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/SearchPlaceActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SearchPlaceActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/k;->c:Lcom/emsportal/activity/SearchPlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 2

    iget-object v0, p0, Lc/b/h/k;->c:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/activity/SearchPlaceActivity;->e:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/Place;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_PLACE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lc/b/h/k;->c:Lcom/emsportal/activity/SearchPlaceActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lc/b/h/k;->c:Lcom/emsportal/activity/SearchPlaceActivity;

    const/16 v1, 0x144

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lc/b/h/k;->c:Lcom/emsportal/activity/SearchPlaceActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
