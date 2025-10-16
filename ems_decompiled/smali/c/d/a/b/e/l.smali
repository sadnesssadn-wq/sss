.class public Lc/d/a/b/e/l;
.super Lb/m/d/l;
.source ""


# instance fields
.field public c:Landroid/app/Dialog;

.field public d:Landroid/content/DialogInterface$OnCancelListener;

.field public e:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/m/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lc/d/a/b/e/l;->d:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object p1, p0, Lc/d/a/b/e/l;->c:Landroid/app/Dialog;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lb/m/d/l;->setShowsDialog(Z)V

    iget-object p1, p0, Lc/d/a/b/e/l;->e:Landroid/app/Dialog;

    if-nez p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/e/l;->e:Landroid/app/Dialog;

    :cond_0
    iget-object p1, p0, Lc/d/a/b/e/l;->e:Landroid/app/Dialog;

    :cond_1
    return-object p1
.end method

.method public show(Lb/m/d/y;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lb/m/d/y;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    return-void
.end method
