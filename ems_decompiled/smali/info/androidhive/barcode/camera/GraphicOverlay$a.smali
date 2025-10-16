.class public abstract Linfo/androidhive/barcode/camera/GraphicOverlay$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/androidhive/barcode/camera/GraphicOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public a:Linfo/androidhive/barcode/camera/GraphicOverlay;


# direct methods
.method public constructor <init>(Linfo/androidhive/barcode/camera/GraphicOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay$a;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Canvas;)V
.end method

.method public b(F)F
    .locals 3

    iget-object v0, p0, Linfo/androidhive/barcode/camera/GraphicOverlay$a;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    .line 1
    iget v1, v0, Linfo/androidhive/barcode/camera/GraphicOverlay;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget-object v1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay$a;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    .line 4
    iget v1, v1, Linfo/androidhive/barcode/camera/GraphicOverlay;->e:F

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    return v0

    :cond_0
    iget v0, v0, Linfo/androidhive/barcode/camera/GraphicOverlay;->e:F

    mul-float p1, p1, v0

    return p1
.end method
