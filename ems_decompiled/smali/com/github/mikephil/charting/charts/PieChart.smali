.class public Lcom/github/mikephil/charting/charts/PieChart;
.super Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase<",
        "Lc/c/b/a/d/s;",
        ">;"
    }
.end annotation


# instance fields
.field public M:Landroid/graphics/RectF;

.field public N:Z

.field public O:[F

.field public P:[F

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Ljava/lang/CharSequence;

.field public V:Lc/c/b/a/k/e;

.field public W:F

.field public a0:F

.field public b0:Z

.field public c0:F

.field public d0:F

.field public e0:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->M:Landroid/graphics/RectF;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->N:Z

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->O:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->P:[F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->R:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->S:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->T:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->U:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    invoke-static {p2, p2}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->V:Lc/c/b/a/k/e;

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->W:F

    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->a0:F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->b0:Z

    const/high16 p1, 0x42c80000    # 100.0f

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->c0:F

    const/high16 p1, 0x43b40000    # 360.0f

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->d0:F

    iput p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->e0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->M:Landroid/graphics/RectF;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->N:Z

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->O:[F

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->P:[F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->R:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->S:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->T:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->U:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    invoke-static {p2, p2}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object p3

    iput-object p3, p0, Lcom/github/mikephil/charting/charts/PieChart;->V:Lc/c/b/a/k/e;

    const/high16 p3, 0x42480000    # 50.0f

    iput p3, p0, Lcom/github/mikephil/charting/charts/PieChart;->W:F

    const/high16 p3, 0x425c0000    # 55.0f

    iput p3, p0, Lcom/github/mikephil/charting/charts/PieChart;->a0:F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->b0:Z

    const/high16 p1, 0x42c80000    # 100.0f

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->c0:F

    const/high16 p1, 0x43b40000    # 360.0f

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->d0:F

    iput p2, p0, Lcom/github/mikephil/charting/charts/PieChart;->e0:F

    return-void
.end method


# virtual methods
.method public f()V
    .locals 8

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->f()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getDiameter()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lc/c/b/a/k/e;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v2, Lc/c/b/a/d/s;

    invoke-virtual {v2}, Lc/c/b/a/d/s;->o()Lc/c/b/a/g/b/i;

    move-result-object v2

    invoke-interface {v2}, Lc/c/b/a/g/b/i;->a0()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieChart;->M:Landroid/graphics/RectF;

    iget v4, v1, Lc/c/b/a/k/e;->b:F

    sub-float v5, v4, v0

    add-float/2addr v5, v2

    iget v6, v1, Lc/c/b/a/k/e;->c:F

    sub-float v7, v6, v0

    add-float/2addr v7, v2

    add-float/2addr v4, v0

    sub-float/2addr v4, v2

    add-float/2addr v6, v0

    sub-float/2addr v6, v2

    invoke-virtual {v3, v5, v7, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1
    sget-object v0, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v0, v1}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    return-void
.end method

.method public getAbsoluteAngles()[F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->P:[F

    return-object v0
.end method

.method public getCenterCircleBox()Lc/c/b/a/k/e;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->M:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->M:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {v0, v1}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v0

    return-object v0
.end method

.method public getCenterText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->U:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCenterTextOffset()Lc/c/b/a/k/e;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->V:Lc/c/b/a/k/e;

    iget v1, v0, Lc/c/b/a/k/e;->b:F

    iget v0, v0, Lc/c/b/a/k/e;->c:F

    invoke-static {v1, v0}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v0

    return-object v0
.end method

.method public getCenterTextRadiusPercent()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->c0:F

    return v0
.end method

.method public getCircleBox()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->M:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDrawAngles()[F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->O:[F

    return-object v0
.end method

.method public getHoleRadius()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->W:F

    return v0
.end method

.method public getMaxAngle()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->d0:F

    return v0
.end method

.method public getMinAngleForSlices()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->e0:F

    return v0
.end method

.method public getRadius()F
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->M:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->M:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getRequiredBaseOffset()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRequiredLegendOffset()F
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->s:Lc/c/b/a/j/i;

    .line 1
    iget-object v0, v0, Lc/c/b/a/j/i;->b:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public getTransparentCircleRadius()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->a0:F

    return v0
.end method

.method public getXAxis()Lc/c/b/a/c/i;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PieChart has no XAxis"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Lc/c/b/a/f/d;)[F
    .locals 11

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lc/c/b/a/k/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float v2, v1, v2

    const v3, 0x40666666    # 3.6f

    mul-float v2, v2, v3

    .line 1
    iget-boolean v3, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v1, v2

    .line 2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v3

    mul-float v3, v3, v2

    sub-float v2, v1, v3

    div-float/2addr v2, v4

    :cond_0
    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v2

    .line 3
    iget p1, p1, Lc/c/b/a/f/d;->a:F

    float-to-int p1, p1

    .line 4
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/PieChart;->O:[F

    aget v3, v3, p1

    div-float/2addr v3, v4

    float-to-double v4, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->P:[F

    aget v1, v1, p1

    add-float/2addr v1, v2

    sub-float/2addr v1, v3

    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v1, v1, v6

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v4

    iget v1, v0, Lc/c/b/a/k/e;->b:F

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    double-to-float v1, v7

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/PieChart;->P:[F

    aget p1, v7, p1

    add-float/2addr v2, p1

    sub-float/2addr v2, v3

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    mul-float v2, v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    iget p1, v0, Lc/c/b/a/k/e;->c:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-float p1, v2

    .line 5
    sget-object v2, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v2, v0}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method

.method public n()V
    .locals 3

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->n()V

    new-instance v0, Lc/c/b/a/j/m;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-direct {v0, p0, v1, v2}, Lc/c/b/a/j/m;-><init>(Lcom/github/mikephil/charting/charts/PieChart;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    new-instance v0, Lc/c/b/a/f/g;

    invoke-direct {v0, p0}, Lc/c/b/a/f/g;-><init>(Lcom/github/mikephil/charting/charts/PieChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->u:Lc/c/b/a/f/f;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lc/c/b/a/j/m;

    if-eqz v1, :cond_2

    check-cast v0, Lc/c/b/a/j/m;

    .line 1
    iget-object v1, v0, Lc/c/b/a/j/m;->q:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lc/c/b/a/j/m;->q:Landroid/graphics/Canvas;

    :cond_0
    iget-object v1, v0, Lc/c/b/a/j/m;->p:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v1, v0, Lc/c/b/a/j/m;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v2, v0, Lc/c/b/a/j/m;->p:Ljava/lang/ref/WeakReference;

    .line 2
    :cond_2
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    invoke-virtual {v0, p1}, Lc/c/b/a/j/g;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    invoke-virtual {v0, p1, v1}, Lc/c/b/a/j/g;->d(Landroid/graphics/Canvas;[Lc/c/b/a/f/d;)V

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    invoke-virtual {v0, p1}, Lc/c/b/a/j/g;->c(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    invoke-virtual {v0, p1}, Lc/c/b/a/j/g;->e(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->s:Lc/c/b/a/j/i;

    invoke-virtual {v0, p1}, Lc/c/b/a/j/i;->c(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->h(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->i(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public s()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v1, Lc/c/b/a/d/s;

    invoke-virtual {v1}, Lc/c/b/a/d/l;->e()I

    move-result v1

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/PieChart;->O:[F

    array-length v2, v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    new-array v2, v1, [F

    iput-object v2, v0, Lcom/github/mikephil/charting/charts/PieChart;->O:[F

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v5, v0, Lcom/github/mikephil/charting/charts/PieChart;->O:[F

    aput v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/github/mikephil/charting/charts/PieChart;->P:[F

    array-length v2, v2

    if-eq v2, v1, :cond_2

    new-array v2, v1, [F

    iput-object v2, v0, Lcom/github/mikephil/charting/charts/PieChart;->P:[F

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    iget-object v5, v0, Lcom/github/mikephil/charting/charts/PieChart;->P:[F

    aput v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v2, v0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v2, Lc/c/b/a/d/s;

    invoke-virtual {v2}, Lc/c/b/a/d/s;->p()F

    move-result v2

    iget-object v5, v0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v5, Lc/c/b/a/d/s;

    .line 2
    iget-object v5, v5, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 3
    iget v6, v0, Lcom/github/mikephil/charting/charts/PieChart;->e0:F

    cmpl-float v7, v6, v3

    if-eqz v7, :cond_4

    int-to-float v7, v1

    mul-float v7, v7, v6

    iget v6, v0, Lcom/github/mikephil/charting/charts/PieChart;->d0:F

    cmpg-float v6, v7, v6

    if-gtz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    new-array v7, v1, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5
    iget-object v12, v0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v12, Lc/c/b/a/d/s;

    invoke-virtual {v12}, Lc/c/b/a/d/l;->d()I

    move-result v12

    if-ge v8, v12, :cond_9

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc/c/b/a/g/b/i;

    const/4 v13, 0x0

    :goto_6
    invoke-interface {v12}, Lc/c/b/a/g/b/e;->y0()I

    move-result v14

    if-ge v13, v14, :cond_8

    invoke-interface {v12, v13}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v14

    check-cast v14, Lc/c/b/a/d/u;

    .line 4
    iget v14, v14, Lc/c/b/a/d/g;->c:F

    .line 5
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    div-float/2addr v14, v2

    .line 6
    iget v15, v0, Lcom/github/mikephil/charting/charts/PieChart;->d0:F

    mul-float v14, v14, v15

    if-eqz v6, :cond_6

    .line 7
    iget v15, v0, Lcom/github/mikephil/charting/charts/PieChart;->e0:F

    sub-float v4, v14, v15

    cmpg-float v16, v4, v3

    if-gtz v16, :cond_5

    aput v15, v7, v11

    neg-float v4, v4

    add-float/2addr v9, v4

    goto :goto_7

    :cond_5
    aput v14, v7, v11

    add-float/2addr v10, v4

    :cond_6
    :goto_7
    iget-object v4, v0, Lcom/github/mikephil/charting/charts/PieChart;->O:[F

    aput v14, v4, v11

    iget-object v14, v0, Lcom/github/mikephil/charting/charts/PieChart;->P:[F

    if-nez v11, :cond_7

    aget v4, v4, v11

    aput v4, v14, v11

    goto :goto_8

    :cond_7
    add-int/lit8 v15, v11, -0x1

    aget v15, v14, v15

    aget v4, v4, v11

    add-float/2addr v15, v4

    aput v15, v14, v11

    :goto_8
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_c

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_b

    aget v3, v7, v2

    aget v4, v7, v2

    iget v5, v0, Lcom/github/mikephil/charting/charts/PieChart;->e0:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v10

    mul-float v4, v4, v9

    sub-float/2addr v3, v4

    aput v3, v7, v2

    if-nez v2, :cond_a

    iget-object v3, v0, Lcom/github/mikephil/charting/charts/PieChart;->P:[F

    const/4 v4, 0x0

    aget v5, v7, v4

    aput v5, v3, v4

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    iget-object v3, v0, Lcom/github/mikephil/charting/charts/PieChart;->P:[F

    add-int/lit8 v5, v2, -0x1

    aget v5, v3, v5

    aget v6, v7, v2

    add-float/2addr v5, v6

    aput v5, v3, v2

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_b
    iput-object v7, v0, Lcom/github/mikephil/charting/charts/PieChart;->O:[F

    :cond_c
    return-void
.end method

.method public setCenterText(Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->U:Ljava/lang/CharSequence;

    return-void
.end method

.method public setCenterTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    check-cast v0, Lc/c/b/a/j/m;

    .line 1
    iget-object v0, v0, Lc/c/b/a/j/m;->j:Landroid/text/TextPaint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public setCenterTextRadiusPercent(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->c0:F

    return-void
.end method

.method public setCenterTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    check-cast v0, Lc/c/b/a/j/m;

    .line 1
    iget-object v0, v0, Lc/c/b/a/j/m;->j:Landroid/text/TextPaint;

    .line 2
    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public setCenterTextSizePixels(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    check-cast v0, Lc/c/b/a/j/m;

    .line 1
    iget-object v0, v0, Lc/c/b/a/j/m;->j:Landroid/text/TextPaint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public setCenterTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    check-cast v0, Lc/c/b/a/j/m;

    .line 1
    iget-object v0, v0, Lc/c/b/a/j/m;->j:Landroid/text/TextPaint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setDrawCenterText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->b0:Z

    return-void
.end method

.method public setDrawEntryLabels(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->N:Z

    return-void
.end method

.method public setDrawHoleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Z

    return-void
.end method

.method public setDrawRoundedSlices(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->T:Z

    return-void
.end method

.method public setDrawSliceText(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->N:Z

    return-void
.end method

.method public setDrawSlicesUnderHole(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->R:Z

    return-void
.end method

.method public setEntryLabelColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    check-cast v0, Lc/c/b/a/j/m;

    .line 1
    iget-object v0, v0, Lc/c/b/a/j/m;->k:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setEntryLabelTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    check-cast v0, Lc/c/b/a/j/m;

    .line 1
    iget-object v0, v0, Lc/c/b/a/j/m;->k:Landroid/graphics/Paint;

    .line 2
    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setEntryLabelTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    check-cast v0, Lc/c/b/a/j/m;

    .line 1
    iget-object v0, v0, Lc/c/b/a/j/m;->k:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setHoleColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    check-cast v0, Lc/c/b/a/j/m;

    .line 1
    iget-object v0, v0, Lc/c/b/a/j/m;->g:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setHoleRadius(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->W:F

    return-void
.end method

.method public setMaxAngle(F)V
    .locals 2

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/high16 p1, 0x43b40000    # 360.0f

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/high16 p1, 0x42b40000    # 90.0f

    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->d0:F

    return-void
.end method

.method public setMinAngleForSlices(F)V
    .locals 4

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->d0:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    div-float p1, v0, v1

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->e0:F

    return-void
.end method

.method public setTransparentCircleAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    check-cast v0, Lc/c/b/a/j/m;

    .line 1
    iget-object v0, v0, Lc/c/b/a/j/m;->h:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setTransparentCircleColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    check-cast v0, Lc/c/b/a/j/m;

    .line 1
    iget-object v0, v0, Lc/c/b/a/j/m;->h:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setTransparentCircleRadius(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->a0:F

    return-void
.end method

.method public setUsePercentValues(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->S:Z

    return-void
.end method

.method public v(F)I
    .locals 3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Lc/c/b/a/k/i;->f(F)F

    move-result p1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->P:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    cmpl-float v1, v1, p1

    if-lez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
