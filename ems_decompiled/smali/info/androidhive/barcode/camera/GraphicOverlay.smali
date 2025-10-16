.class public Linfo/androidhive/barcode/camera/GraphicOverlay;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/androidhive/barcode/camera/GraphicOverlay$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linfo/androidhive/barcode/camera/GraphicOverlay$a;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;

.field public d:I

.field public e:F

.field public f:I

.field public g:F

.field public h:I

.field public i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->c:Ljava/lang/Object;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->e:F

    iput p1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->g:F

    const/4 p1, 0x0

    iput p1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->h:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->i:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 1

    iget-object v0, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->d:I

    iput p2, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->f:I

    iput p3, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->h:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getGraphics()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    iget-object v2, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->i:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHeightScaleFactor()F
    .locals 1

    iget v0, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->g:F

    return v0
.end method

.method public getWidthScaleFactor()F
    .locals 1

    iget v0, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->e:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->d:I

    if-eqz v1, :cond_0

    iget v1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->f:I

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->e:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->g:F

    :cond_0
    iget-object v1, p0, Linfo/androidhive/barcode/camera/GraphicOverlay;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/androidhive/barcode/camera/GraphicOverlay$a;

    invoke-virtual {v2, p1}, Linfo/androidhive/barcode/camera/GraphicOverlay$a;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
