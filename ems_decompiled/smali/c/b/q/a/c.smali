.class public Lc/b/q/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# instance fields
.field public final synthetic a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/a/c;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lc/b/q/a/c;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    .line 1
    sget v1, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->o:I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x202a

    const-string v3, "DATA_SUPER_SPEED_PARCEL"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
