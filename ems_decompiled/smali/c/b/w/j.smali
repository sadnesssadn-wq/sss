.class public Lc/b/w/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lc/b/w/n;


# direct methods
.method public constructor <init>(Lc/b/w/n;)V
    .locals 0

    iput-object p1, p0, Lc/b/w/j;->c:Lc/b/w/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lc/b/w/j;->c:Lc/b/w/n;

    check-cast p1, Lc/b/m/a/b/a/i;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0x180

    const-string v1, "DATA_INVENTORY"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p1, Lc/b/m/a/b/a/i;->b:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 2
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 3
    const-class v1, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;

    invoke-static {v0, v1, p2}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p2, p1, Lc/b/m/a/b/a/i;->b:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const/16 v1, 0x144

    invoke-virtual {p2, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p1, Lc/b/m/a/b/a/i;->b:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
