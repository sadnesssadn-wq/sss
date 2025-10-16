.class public Lcom/github/mikephil/charting/charts/RadarChart;
.super Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase<",
        "Lc/c/b/a/d/v;",
        ">;"
    }
.end annotation


# instance fields
.field public M:F

.field public N:F

.field public O:I

.field public P:I

.field public Q:I

.field public R:Z

.field public S:I

.field public T:Lc/c/b/a/c/j;

.field public U:Lc/c/b/a/j/v;

.field public V:Lc/c/b/a/j/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x40200000    # 2.5f

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->M:F

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->N:F

    const/16 p1, 0x7a

    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    iput p2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->O:I

    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->P:I

    const/16 p1, 0x96

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->Q:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->R:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->S:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x40200000    # 2.5f

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->M:F

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->N:F

    const/16 p1, 0x7a

    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    iput p2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->O:I

    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->P:I

    const/16 p1, 0x96

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->Q:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->R:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->S:I

    return-void
.end method


# virtual methods
.method public getFactor()F
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 1
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->T:Lc/c/b/a/c/j;

    iget v1, v1, Lc/c/b/a/c/a;->B:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getRadius()F
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 1
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getRequiredBaseOffset()F
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    .line 1
    iget-boolean v1, v0, Lc/c/b/a/c/b;->a:Z

    if-eqz v1, :cond_0

    .line 2
    iget-boolean v1, v0, Lc/c/b/a/c/a;->t:Z

    if-eqz v1, :cond_0

    .line 3
    iget v0, v0, Lc/c/b/a/c/i;->C:I

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    :goto_0
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

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public getSkipWebLineCount()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->S:I

    return v0
.end method

.method public getSliceAngle()F
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v0, Lc/c/b/a/d/v;

    invoke-virtual {v0}, Lc/c/b/a/d/l;->g()Lc/c/b/a/g/b/e;

    move-result-object v0

    check-cast v0, Lc/c/b/a/g/b/j;

    invoke-interface {v0}, Lc/c/b/a/g/b/e;->y0()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public getWebAlpha()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->Q:I

    return v0
.end method

.method public getWebColor()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->O:I

    return v0
.end method

.method public getWebColorInner()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->P:I

    return v0
.end method

.method public getWebLineWidth()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->M:F

    return v0
.end method

.method public getWebLineWidthInner()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->N:F

    return v0
.end method

.method public getYAxis()Lc/c/b/a/c/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->T:Lc/c/b/a/c/j;

    return-object v0
.end method

.method public getYChartMax()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->T:Lc/c/b/a/c/j;

    iget v0, v0, Lc/c/b/a/c/a;->z:F

    return v0
.end method

.method public getYChartMin()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->T:Lc/c/b/a/c/j;

    iget v0, v0, Lc/c/b/a/c/a;->A:F

    return v0
.end method

.method public getYRange()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->T:Lc/c/b/a/c/j;

    iget v0, v0, Lc/c/b/a/c/a;->B:F

    return v0
.end method

.method public n()V
    .locals 3

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->n()V

    new-instance v0, Lc/c/b/a/c/j;

    sget-object v1, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    invoke-direct {v0, v1}, Lc/c/b/a/c/j;-><init>(Lc/c/b/a/c/j$a;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->T:Lc/c/b/a/c/j;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->M:F

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->N:F

    new-instance v0, Lc/c/b/a/j/n;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-direct {v0, p0, v1, v2}, Lc/c/b/a/j/n;-><init>(Lcom/github/mikephil/charting/charts/RadarChart;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    new-instance v0, Lc/c/b/a/j/v;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->T:Lc/c/b/a/c/j;

    invoke-direct {v0, v1, v2, p0}, Lc/c/b/a/j/v;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/j;Lcom/github/mikephil/charting/charts/RadarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->U:Lc/c/b/a/j/v;

    new-instance v0, Lc/c/b/a/j/s;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    invoke-direct {v0, v1, v2, p0}, Lc/c/b/a/j/s;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/i;Lcom/github/mikephil/charting/charts/RadarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->V:Lc/c/b/a/j/s;

    new-instance v0, Lc/c/b/a/f/i;

    invoke-direct {v0, p0}, Lc/c/b/a/f/i;-><init>(Lcom/github/mikephil/charting/charts/RadarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->u:Lc/c/b/a/f/f;

    return-void
.end method

.method public o()V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/RadarChart;->s()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->U:Lc/c/b/a/j/v;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->T:Lc/c/b/a/c/j;

    iget v2, v1, Lc/c/b/a/c/a;->A:F

    iget v3, v1, Lc/c/b/a/c/a;->z:F

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lc/c/b/a/j/a;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->V:Lc/c/b/a/j/s;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v3, v2, Lc/c/b/a/c/a;->A:F

    iget v2, v2, Lc/c/b/a/c/a;->z:F

    invoke-virtual {v0, v3, v2, v1}, Lc/c/b/a/j/q;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->s:Lc/c/b/a/j/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    invoke-virtual {v0, v1}, Lc/c/b/a/j/i;->a(Lc/c/b/a/d/l;)V

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->f()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    .line 1
    iget-boolean v1, v0, Lc/c/b/a/c/b;->a:Z

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->V:Lc/c/b/a/j/s;

    iget v2, v0, Lc/c/b/a/c/a;->A:F

    iget v0, v0, Lc/c/b/a/c/a;->z:F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lc/c/b/a/j/q;->a(FFZ)V

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->V:Lc/c/b/a/j/s;

    invoke-virtual {v0, p1}, Lc/c/b/a/j/s;->h(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->R:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    invoke-virtual {v0, p1}, Lc/c/b/a/j/g;->c(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->T:Lc/c/b/a/c/j;

    .line 3
    iget-boolean v1, v0, Lc/c/b/a/c/b;->a:Z

    if-eqz v1, :cond_3

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    invoke-virtual {v0, p1}, Lc/c/b/a/j/g;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    invoke-virtual {v0, p1, v1}, Lc/c/b/a/j/g;->d(Landroid/graphics/Canvas;[Lc/c/b/a/f/d;)V

    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->T:Lc/c/b/a/c/j;

    .line 5
    iget-boolean v1, v0, Lc/c/b/a/c/b;->a:Z

    if-eqz v1, :cond_5

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->U:Lc/c/b/a/j/v;

    invoke-virtual {v0, p1}, Lc/c/b/a/j/v;->j(Landroid/graphics/Canvas;)V

    :cond_5
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->U:Lc/c/b/a/j/v;

    invoke-virtual {v0, p1}, Lc/c/b/a/j/v;->g(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    invoke-virtual {v0, p1}, Lc/c/b/a/j/g;->e(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->s:Lc/c/b/a/j/i;

    invoke-virtual {v0, p1}, Lc/c/b/a/j/i;->c(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->h(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->i(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public s()V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->T:Lc/c/b/a/c/j;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v1, Lc/c/b/a/d/v;

    sget-object v2, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    invoke-virtual {v1, v2}, Lc/c/b/a/d/l;->i(Lc/c/b/a/c/j$a;)F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v3, Lc/c/b/a/d/v;

    invoke-virtual {v3, v2}, Lc/c/b/a/d/l;->h(Lc/c/b/a/c/j$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc/c/b/a/c/j;->b(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v2, Lc/c/b/a/d/v;

    invoke-virtual {v2}, Lc/c/b/a/d/l;->g()Lc/c/b/a/g/b/e;

    move-result-object v2

    check-cast v2, Lc/c/b/a/g/b/j;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lc/c/b/a/c/a;->b(FF)V

    return-void
.end method

.method public setDrawWeb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->R:Z

    return-void
.end method

.method public setSkipWebLineCount(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->S:I

    return-void
.end method

.method public setWebAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->Q:I

    return-void
.end method

.method public setWebColor(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->O:I

    return-void
.end method

.method public setWebColorInner(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->P:I

    return-void
.end method

.method public setWebLineWidth(F)V
    .locals 0

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->M:F

    return-void
.end method

.method public setWebLineWidthInner(F)V
    .locals 0

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->N:F

    return-void
.end method

.method public v(F)I
    .locals 7

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Lc/c/b/a/k/i;->f(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v1, Lc/c/b/a/d/v;

    invoke-virtual {v1}, Lc/c/b/a/d/l;->g()Lc/c/b/a/g/b/e;

    move-result-object v1

    check-cast v1, Lc/c/b/a/g/b/j;

    invoke-interface {v1}, Lc/c/b/a/g/b/e;->y0()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v3, 0x1

    int-to-float v5, v4

    mul-float v5, v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v0, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v5, p1

    if-lez v5, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method
