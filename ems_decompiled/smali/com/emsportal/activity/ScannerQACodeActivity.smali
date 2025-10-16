.class public Lcom/emsportal/activity/ScannerQACodeActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Linfo/androidhive/barcode/BarcodeReader$g;


# instance fields
.field public c:Linfo/androidhive/barcode/BarcodeReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/q/e/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/emsportal/activity/ScannerQACodeActivity;->c:Linfo/androidhive/barcode/BarcodeReader;

    invoke-virtual {v0}, Linfo/androidhive/barcode/BarcodeReader;->d()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/q/e/a;

    iget-object v0, v0, Lc/d/a/b/q/e/a;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public f(Lc/d/a/b/q/e/a;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/activity/ScannerQACodeActivity;->c:Linfo/androidhive/barcode/BarcodeReader;

    invoke-virtual {v0}, Linfo/androidhive/barcode/BarcodeReader;->d()V

    iget-object p1, p1, Lc/d/a/b/q/e/a;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f0b004d

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/activity/ScannerQACodeActivity;->c:Linfo/androidhive/barcode/BarcodeReader;

    .line 1
    iput-object p0, v0, Linfo/androidhive/barcode/BarcodeReader;->j:Linfo/androidhive/barcode/BarcodeReader$g;

    return-void
.end method

.method public r()V
    .locals 2

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Lb/m/d/y;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Linfo/androidhive/barcode/BarcodeReader;

    iput-object v0, p0, Lcom/emsportal/activity/ScannerQACodeActivity;->c:Linfo/androidhive/barcode/BarcodeReader;

    return-void
.end method
