.class public Linfo/androidhive/barcode/BarcodeReader$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/androidhive/barcode/BarcodeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final synthetic c:Linfo/androidhive/barcode/BarcodeReader;


# direct methods
.method public constructor <init>(Linfo/androidhive/barcode/BarcodeReader;Linfo/androidhive/barcode/BarcodeReader$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Linfo/androidhive/barcode/BarcodeReader$i;->c:Linfo/androidhive/barcode/BarcodeReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 7

    iget-object v0, p0, Linfo/androidhive/barcode/BarcodeReader$i;->c:Linfo/androidhive/barcode/BarcodeReader;

    .line 1
    iget-object v0, v0, Linfo/androidhive/barcode/BarcodeReader;->e:Le/a/a/j/a;

    .line 2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 3
    iget-object v1, v0, Le/a/a/j/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Le/a/a/j/a;->c:Landroid/hardware/Camera;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit v1

    goto :goto_3

    :cond_0
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v4

    if-nez v4, :cond_1

    const-string p1, "OpenCameraSource"

    const-string v0, "Zoom is not supported on this device"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v4

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_2

    int-to-float v5, v5

    div-int/lit8 v6, v4, 0xa

    int-to-float v6, v6

    mul-float p1, p1, v6

    add-float/2addr p1, v5

    goto :goto_1

    :cond_2
    int-to-float v5, v5

    mul-float p1, p1, v5

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    if-le p1, v4, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, p1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget-object p1, v0, Le/a/a/j/a;->c:Landroid/hardware/Camera;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
