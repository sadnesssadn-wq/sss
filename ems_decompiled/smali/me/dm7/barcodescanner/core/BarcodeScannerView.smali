.class public abstract Lme/dm7/barcodescanner/core/BarcodeScannerView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public c:Lg/a/a/a/d;

.field public d:Lg/a/a/a/c;

.field public e:Lg/a/a/a/e;

.field public f:Landroid/graphics/Rect;

.field public g:Lg/a/a/a/b;

.field public h:Ljava/lang/Boolean;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:I

.field public s:Z

.field public t:F

.field public u:I

.field public v:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->i:Z

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->j:Z

    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->k:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lg/a/a/a/f;->viewfinder_laser:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->l:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lg/a/a/a/f;->viewfinder_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->m:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lg/a/a/a/f;->viewfinder_mask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->n:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lg/a/a/a/g;->viewfinder_border_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->o:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lg/a/a/a/g;->viewfinder_border_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->p:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->q:Z

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->r:I

    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->s:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->t:F

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->u:I

    const v2, 0x3dcccccd    # 0.1f

    iput v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->v:F

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lg/a/a/a/h;->BarcodeScannerView:[I

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lg/a/a/a/h;->BarcodeScannerView_shouldScaleToFill:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setShouldScaleToFill(Z)V

    sget p2, Lg/a/a/a/h;->BarcodeScannerView_laserEnabled:I

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->k:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->k:Z

    sget p2, Lg/a/a/a/h;->BarcodeScannerView_laserColor:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->l:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->l:I

    sget p2, Lg/a/a/a/h;->BarcodeScannerView_borderColor:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->m:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->m:I

    sget p2, Lg/a/a/a/h;->BarcodeScannerView_maskColor:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->n:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->n:I

    sget p2, Lg/a/a/a/h;->BarcodeScannerView_borderWidth:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->o:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->o:I

    sget p2, Lg/a/a/a/h;->BarcodeScannerView_borderLength:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->p:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->p:I

    sget p2, Lg/a/a/a/h;->BarcodeScannerView_roundedCorner:I

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->q:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->q:Z

    sget p2, Lg/a/a/a/h;->BarcodeScannerView_cornerRadius:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->r:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->r:I

    sget p2, Lg/a/a/a/h;->BarcodeScannerView_squaredFinder:I

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->s:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->s:Z

    sget p2, Lg/a/a/a/h;->BarcodeScannerView_borderAlpha:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->t:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->t:F

    sget p2, Lg/a/a/a/h;->BarcodeScannerView_finderOffset:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->u:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    new-instance p2, Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-direct {p2, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;-><init>(Landroid/content/Context;)V

    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->m:I

    invoke-virtual {p2, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderColor(I)V

    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->l:I

    invoke-virtual {p2, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setLaserColor(I)V

    iget-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->k:Z

    invoke-virtual {p2, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setLaserEnabled(Z)V

    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->o:I

    invoke-virtual {p2, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderStrokeWidth(I)V

    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->p:I

    invoke-virtual {p2, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderLineLength(I)V

    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->n:I

    invoke-virtual {p2, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setMaskColor(I)V

    iget-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->q:Z

    invoke-virtual {p2, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderCornerRounded(Z)V

    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->r:I

    invoke-virtual {p2, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderCornerRadius(I)V

    iget-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->s:Z

    invoke-virtual {p2, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setSquareViewFinder(Z)V

    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->u:I

    invoke-virtual {p2, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setViewFinderOffset(I)V

    .line 3
    iput-object p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    return-void

    :catchall_0
    move-exception p2

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public getFlash()Z
    .locals 3

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lg/a/a/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/a/a/a/d;->a:Landroid/hardware/Camera;

    invoke-static {v0}, Lc/d/b/u/n;->o(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lg/a/a/a/d;

    iget-object v0, v0, Lg/a/a/a/d;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "torch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public getRotationCount()I
    .locals 1

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Lg/a/a/a/c;

    invoke-virtual {v0}, Lg/a/a/a/c;->getDisplayOrientation()I

    move-result v0

    div-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public setAspectTolerance(F)V
    .locals 0

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->v:F

    return-void
.end method

.method public setAutoFocus(Z)V
    .locals 1

    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->i:Z

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Lg/a/a/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/a/a/a/c;->setAutoFocus(Z)V

    :cond_0
    return-void
.end method

.method public setBorderAlpha(F)V
    .locals 1

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->t:F

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v0, p1}, Lg/a/a/a/e;->setBorderAlpha(F)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    check-cast p1, Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 1
    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->b()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->m:I

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v0, p1}, Lg/a/a/a/e;->setBorderColor(I)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    check-cast p1, Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 1
    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->b()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderCornerRadius(I)V
    .locals 1

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->r:I

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v0, p1}, Lg/a/a/a/e;->setBorderCornerRadius(I)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    check-cast p1, Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 1
    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->b()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderLineLength(I)V
    .locals 1

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->p:I

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v0, p1}, Lg/a/a/a/e;->setBorderLineLength(I)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    check-cast p1, Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 1
    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->b()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBorderStrokeWidth(I)V
    .locals 1

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->o:I

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v0, p1}, Lg/a/a/a/e;->setBorderStrokeWidth(I)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    check-cast p1, Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 1
    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->b()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFlash(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->h:Ljava/lang/Boolean;

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lg/a/a/a/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lg/a/a/a/d;->a:Landroid/hardware/Camera;

    invoke-static {v0}, Lc/d/b/u/n;->o(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lg/a/a/a/d;

    iget-object v0, v0, Lg/a/a/a/d;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "torch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lg/a/a/a/d;

    iget-object p1, p1, Lg/a/a/a/d;->a:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    return-void
.end method

.method public setIsBorderCornerRounded(Z)V
    .locals 1

    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->q:Z

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v0, p1}, Lg/a/a/a/e;->setBorderCornerRounded(Z)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    check-cast p1, Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 1
    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->b()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLaserColor(I)V
    .locals 1

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->l:I

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v0, p1}, Lg/a/a/a/e;->setLaserColor(I)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    check-cast p1, Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 1
    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->b()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLaserEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->k:Z

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v0, p1}, Lg/a/a/a/e;->setLaserEnabled(Z)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    check-cast p1, Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 1
    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->b()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 1

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->n:I

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v0, p1}, Lg/a/a/a/e;->setMaskColor(I)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    check-cast p1, Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 1
    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->b()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShouldScaleToFill(Z)V
    .locals 0

    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->j:Z

    return-void
.end method

.method public setSquareViewFinder(Z)V
    .locals 1

    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->s:Z

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v0, p1}, Lg/a/a/a/e;->setSquareViewFinder(Z)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    check-cast p1, Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 1
    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->b()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setupCameraPreview(Lg/a/a/a/d;)V
    .locals 0

    iput-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->c:Lg/a/a/a/d;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupLayout(Lg/a/a/a/d;)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    check-cast p1, Lme/dm7/barcodescanner/core/ViewFinderView;

    .line 1
    invoke-virtual {p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->b()V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->h:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setFlash(Z)V

    :cond_0
    iget-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->i:Z

    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setAutoFocus(Z)V

    :cond_1
    return-void
.end method

.method public final setupLayout(Lg/a/a/a/d;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    new-instance v0, Lg/a/a/a/c;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lg/a/a/a/c;-><init>(Landroid/content/Context;Lg/a/a/a/d;Landroid/hardware/Camera$PreviewCallback;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Lg/a/a/a/c;

    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->v:F

    invoke-virtual {v0, p1}, Lg/a/a/a/c;->setAspectTolerance(F)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Lg/a/a/a/c;

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->j:Z

    invoke-virtual {p1, v0}, Lg/a/a/a/c;->setShouldScaleToFill(Z)V

    iget-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->j:Z

    if-nez p1, :cond_0

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Lg/a/a/a/c;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->d:Lg/a/a/a/c;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "IViewFinder object returned by \'createViewFinderView()\' should be instance of android.view.View"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
