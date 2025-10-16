.class public Linfo/androidhive/barcode/BarcodeReader$h;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/androidhive/barcode/BarcodeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic c:Linfo/androidhive/barcode/BarcodeReader;


# direct methods
.method public constructor <init>(Linfo/androidhive/barcode/BarcodeReader;Linfo/androidhive/barcode/BarcodeReader$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Linfo/androidhive/barcode/BarcodeReader$h;->c:Linfo/androidhive/barcode/BarcodeReader;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v0, p0, Linfo/androidhive/barcode/BarcodeReader$h;->c:Linfo/androidhive/barcode/BarcodeReader;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1
    iget-object v4, v0, Linfo/androidhive/barcode/BarcodeReader;->g:Linfo/androidhive/barcode/camera/GraphicOverlay;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v5, v3, v4

    int-to-float v5, v5

    sub-float/2addr v1, v5

    iget-object v5, v0, Linfo/androidhive/barcode/BarcodeReader;->g:Linfo/androidhive/barcode/camera/GraphicOverlay;

    invoke-virtual {v5}, Linfo/androidhive/barcode/camera/GraphicOverlay;->getWidthScaleFactor()F

    move-result v5

    div-float/2addr v1, v5

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Linfo/androidhive/barcode/BarcodeReader;->g:Linfo/androidhive/barcode/camera/GraphicOverlay;

    invoke-virtual {v3}, Linfo/androidhive/barcode/camera/GraphicOverlay;->getHeightScaleFactor()F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, v0, Linfo/androidhive/barcode/BarcodeReader;->g:Linfo/androidhive/barcode/camera/GraphicOverlay;

    invoke-virtual {v3}, Linfo/androidhive/barcode/camera/GraphicOverlay;->getGraphics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/a/a;

    .line 2
    iget-object v8, v8, Le/a/a/a;->d:Lc/d/a/b/q/e/a;

    .line 3
    invoke-virtual {v8}, Lc/d/a/b/q/e/a;->v()Landroid/graphics/Rect;

    move-result-object v9

    float-to-int v10, v1

    float-to-int v11, v2

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v6, v8

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lc/d/a/b/q/e/a;->v()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v1, v9

    invoke-virtual {v8}, Lc/d/a/b/q/e/a;->v()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v2, v10

    mul-float v9, v9, v9

    mul-float v10, v10, v10

    add-float/2addr v9, v10

    cmpg-float v10, v9, v7

    if-gez v10, :cond_0

    move-object v6, v8

    move v7, v9

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "Barcode"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    .line 4
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v4, 0x1

    :cond_5
    return v4
.end method
