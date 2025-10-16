.class public Lc/d/a/c/s/e;
.super Lb/b/k/r;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/k/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Z)Z
    .locals 1

    invoke-virtual {p0}, Lb/m/d/l;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    instance-of v0, p1, Lc/d/a/c/s/d;

    if-eqz v0, :cond_1

    check-cast p1, Lc/d/a/c/s/d;

    .line 1
    iget-object v0, p1, Lc/d/a/c/s/d;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lc/d/a/c/s/d;->d()Landroid/widget/FrameLayout;

    :cond_0
    iget-object p1, p1, Lc/d/a/c/s/d;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    iget-boolean p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/d/a/c/s/e;->d(Z)Z

    invoke-super {p0}, Lb/m/d/l;->dismiss()V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc/d/a/c/s/e;->d(Z)Z

    invoke-super {p0}, Lb/m/d/l;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Lc/d/a/c/s/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lb/m/d/l;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lc/d/a/c/s/d;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
