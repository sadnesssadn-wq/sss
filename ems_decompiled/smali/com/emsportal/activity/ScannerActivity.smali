.class public Lcom/emsportal/activity/ScannerActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Lme/dm7/barcodescanner/zxing/ZXingScannerView$b;


# static fields
.field public static final synthetic n:I


# instance fields
.field public c:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

.field public d:Lcom/emsportal/activity/ScannerActivity;

.field public e:Ljava/lang/String;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/FrameLayout;

.field public h:Landroidx/appcompat/widget/Toolbar;

.field public i:Z

.field public j:Landroid/content/SharedPreferences;

.field public k:Landroid/content/SharedPreferences;

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emsportal/activity/ScannerActivity;->i:Z

    iput-boolean v0, p0, Lcom/emsportal/activity/ScannerActivity;->l:Z

    iput-boolean v0, p0, Lcom/emsportal/activity/ScannerActivity;->m:Z

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b004c

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->g:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/emsportal/activity/ScannerActivity;->i:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/emsportal/activity/ScannerActivity;->i:Z

    invoke-virtual {p0, p1}, Lcom/emsportal/activity/ScannerActivity;->w(Z)V

    iget-object p1, p0, Lcom/emsportal/activity/ScannerActivity;->k:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-boolean v0, p0, Lcom/emsportal/activity/ScannerActivity;->i:Z

    const-string v1, "flash"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p1, p0, Lcom/emsportal/activity/ScannerActivity;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    iget-boolean v0, p0, Lcom/emsportal/activity/ScannerActivity;->i:Z

    invoke-virtual {p1, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setFlash(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/emsportal/base/BaseNavigationActivity;->onPause()V

    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .line 1
    iget-object v1, v0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lg/a/a/a/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Lg/a/a/a/c;

    invoke-virtual {v1}, Lg/a/a/a/c;->f()V

    iget-object v1, v0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Lg/a/a/a/c;

    .line 2
    iput-object v2, v1, Lg/a/a/a/c;->c:Lg/a/a/a/d;

    iput-object v2, v1, Lg/a/a/a/c;->i:Landroid/hardware/Camera$PreviewCallback;

    .line 3
    iget-object v1, v0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lg/a/a/a/d;

    iget-object v1, v1, Lg/a/a/a/d;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    iput-object v2, v0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lg/a/a/a/d;

    :cond_0
    iget-object v1, v0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->g:Lg/a/a/a/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, v0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->g:Lg/a/a/a/b;

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    const-string p1, "android.permission.CAMERA"

    invoke-static {p2, p3, p1}, Lb/u/a;->N([Ljava/lang/String;[ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Lb/i/e/a;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1000ac

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f100333

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f1000ab

    new-instance p3, Lcom/emsportal/activity/ScannerActivity$c;

    invoke-direct {p3, p0}, Lcom/emsportal/activity/ScannerActivity$c;-><init>(Lcom/emsportal/activity/ScannerActivity;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p2, 0x7f10004b

    new-instance p3, Lcom/emsportal/activity/ScannerActivity$d;

    invoke-direct {p3, p0}, Lcom/emsportal/activity/ScannerActivity$d;-><init>(Lcom/emsportal/activity/ScannerActivity;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v0, p0, Lcom/emsportal/activity/ScannerActivity;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/emsportal/activity/ScannerActivity;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .line 1
    iput-object p0, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->y:Lme/dm7/barcodescanner/zxing/ZXingScannerView$b;

    .line 2
    iget-object v0, v0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Lg/a/a/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/a/a/a/c;->e()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/emsportal/activity/ScannerActivity;->l:Z

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/emsportal/base/BaseNavigationActivity;->onResume()V

    const/4 v0, 0x0

    const-string v1, "permissionStatus"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/emsportal/activity/ScannerActivity;->j:Landroid/content/SharedPreferences;

    const-string v1, "android.permission.CAMERA"

    invoke-static {p0, v1}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, v1}, Lb/i/e/a;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7f1000ab

    const v4, 0x7f100333

    const v5, 0x7f1000ac

    if-eqz v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lc/b/h/g;

    invoke-direct {v2, p0}, Lc/b/h/g;-><init>(Lcom/emsportal/activity/ScannerActivity;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lc/b/h/h;

    invoke-direct {v3, p0}, Lc/b/h/h;-><init>(Lcom/emsportal/activity/ScannerActivity;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/emsportal/activity/ScannerActivity;->j:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lc/b/h/i;

    invoke-direct {v2, p0}, Lc/b/h/i;-><init>(Lcom/emsportal/activity/ScannerActivity;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f10004b

    new-instance v3, Lc/b/h/j;

    invoke-direct {v3, p0}, Lc/b/h/j;-><init>(Lcom/emsportal/activity/ScannerActivity;)V

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    invoke-static {p0, v0, v2}, Lb/i/e/a;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :cond_2
    iget-object v1, p0, Lcom/emsportal/activity/ScannerActivity;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v1, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$b;)V

    iget-object v1, p0, Lcom/emsportal/activity/ScannerActivity;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v4, -0x1

    :goto_2
    if-ge v0, v2, :cond_4

    invoke-static {v0, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v4, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v0, 0x1

    move v6, v4

    move v4, v0

    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v4

    .line 4
    :goto_3
    iget-object v2, v1, Lme/dm7/barcodescanner/core/BarcodeScannerView;->g:Lg/a/a/a/b;

    if-nez v2, :cond_5

    new-instance v2, Lg/a/a/a/b;

    invoke-direct {v2, v1}, Lg/a/a/a/b;-><init>(Lme/dm7/barcodescanner/core/BarcodeScannerView;)V

    iput-object v2, v1, Lme/dm7/barcodescanner/core/BarcodeScannerView;->g:Lg/a/a/a/b;

    :cond_5
    iget-object v1, v1, Lme/dm7/barcodescanner/core/BarcodeScannerView;->g:Lg/a/a/a/b;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lg/a/a/a/a;

    invoke-direct {v3, v1, v0}, Lg/a/a/a/a;-><init>(Lg/a/a/a/b;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/emsportal/activity/ScannerActivity;->i:Z

    invoke-virtual {p0, v0}, Lcom/emsportal/activity/ScannerActivity;->w(Z)V

    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lb/b/k/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->o(Z)V

    const v0, 0x7f1003ac

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->h:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/emsportal/activity/ScannerActivity$b;

    invoke-direct {v1, p0}, Lcom/emsportal/activity/ScannerActivity$b;-><init>(Lcom/emsportal/activity/ScannerActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r()V
    .locals 3

    const-string v0, "flashStatus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->k:Landroid/content/SharedPreferences;

    const-string v2, "flash"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/emsportal/activity/ScannerActivity;->i:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "KEY_CREATE_REQUEST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->e:Ljava/lang/String;

    iput-object p0, p0, Lcom/emsportal/activity/ScannerActivity;->d:Lcom/emsportal/activity/ScannerActivity;

    const v0, 0x7f08051b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    iput-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->f:Landroid/widget/ImageView;

    const v0, 0x7f080135

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->g:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setFlash(Z)V

    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setAutoFocus(Z)V

    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->c:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setAspectTolerance(F)V

    iget-object v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x7f080435

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/emsportal/activity/ScannerActivity;->h:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lb/u/a;->A()Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/emsportal/activity/ScannerActivity$e;

    invoke-direct {v6, p0, p1}, Lcom/emsportal/activity/ScannerActivity$e;-><init>(Lcom/emsportal/activity/ScannerActivity;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lc/b/s/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/b/t/b$d;)V

    return-void
.end method

.method public final w(Z)V
    .locals 2

    const v0, 0x7f050281

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/emsportal/activity/ScannerActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f0700ec

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/emsportal/activity/ScannerActivity;->f:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/emsportal/activity/ScannerActivity;->f:Landroid/widget/ImageView;

    const v1, 0x7f0700ed

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/emsportal/activity/ScannerActivity;->f:Landroid/widget/ImageView;

    .line 1
    :goto_0
    invoke-static {p0, v0}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1003a9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/emsportal/activity/ScannerActivity$f;

    invoke-direct {v2, p0, p1}, Lcom/emsportal/activity/ScannerActivity$f;-><init>(Lcom/emsportal/activity/ScannerActivity;Ljava/lang/String;)V

    const p1, 0x7f100319

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/emsportal/activity/ScannerActivity$a;

    invoke-direct {p1, p0}, Lcom/emsportal/activity/ScannerActivity$a;-><init>(Lcom/emsportal/activity/ScannerActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iput-boolean v1, p0, Lcom/emsportal/activity/ScannerActivity;->m:Z

    :cond_0
    return-void
.end method
