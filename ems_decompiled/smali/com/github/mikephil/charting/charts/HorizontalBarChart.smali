.class public Lcom/github/mikephil/charting/charts/HorizontalBarChart;
.super Lcom/github/mikephil/charting/charts/BarChart;
.source ""


# instance fields
.field public u0:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->u0:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->u0:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 9

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->u0:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->u0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    invoke-virtual {v2}, Lc/c/b/a/c/j;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e0:Lc/c/b/a/j/t;

    .line 1
    iget-object v5, v5, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v2, v5}, Lc/c/b/a/c/j;->h(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v3, v2

    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    invoke-virtual {v2}, Lc/c/b/a/c/j;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f0:Lc/c/b/a/j/t;

    .line 3
    iget-object v5, v5, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {v2, v5}, Lc/c/b/a/c/j;->h(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v5, v2, Lc/c/b/a/c/i;->C:I

    int-to-float v5, v5

    .line 5
    iget-boolean v6, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v6, :cond_4

    .line 6
    iget-object v2, v2, Lc/c/b/a/c/i;->E:Lc/c/b/a/c/i$a;

    .line 7
    sget-object v6, Lc/c/b/a/c/i$a;->d:Lc/c/b/a/c/i$a;

    if-ne v2, v6, :cond_2

    add-float/2addr v1, v5

    goto :goto_1

    :cond_2
    sget-object v6, Lc/c/b/a/c/i$a;->c:Lc/c/b/a/c/i$a;

    if-ne v2, v6, :cond_3

    goto :goto_0

    :cond_3
    sget-object v6, Lc/c/b/a/c/i$a;->e:Lc/c/b/a/c/i$a;

    if-ne v2, v6, :cond_4

    add-float/2addr v1, v5

    :goto_0
    add-float/2addr v4, v5

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraTopOffset()F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraRightOffset()F

    move-result v3

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraBottomOffset()F

    move-result v4

    add-float/2addr v4, v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraLeftOffset()F

    move-result v0

    add-float/2addr v0, v1

    iget v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->W:F

    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v1

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v5, v6, v7, v8, v1}, Lc/c/b/a/k/j;->n(FFFF)V

    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offsetLeft: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", offsetTop: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", offsetRight: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", offsetBottom: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPAndroidChart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 8
    iget-object v2, v2, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h0:Lc/c/b/a/k/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/c/b/a/k/g;->h(Z)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc/c/b/a/k/g;->h(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/HorizontalBarChart;->u()V

    return-void
.end method

.method public getHighestVisibleX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    .line 2
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 3
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 4
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 5
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o0:Lc/c/b/a/k/d;

    invoke-virtual {v0, v2, v1, v3}, Lc/c/b/a/k/g;->d(FFLc/c/b/a/k/d;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v0, v0, Lc/c/b/a/c/a;->z:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o0:Lc/c/b/a/k/d;

    iget-wide v2, v2, Lc/c/b/a/k/d;->c:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getLowestVisibleX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    .line 2
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 3
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 4
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 5
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n0:Lc/c/b/a/k/d;

    invoke-virtual {v0, v2, v1, v3}, Lc/c/b/a/k/g;->d(FFLc/c/b/a/k/d;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v0, v0, Lc/c/b/a/c/a;->A:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n0:Lc/c/b/a/k/d;

    iget-wide v2, v2, Lc/c/b/a/k/d;->c:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public j(FF)Lc/c/b/a/f/d;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "MPAndroidChart"

    const-string p2, "Can\'t select by touch. No data set."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHighlighter()Lc/c/b/a/f/f;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lc/c/b/a/f/f;->a(FF)Lc/c/b/a/f/d;

    move-result-object p1

    return-object p1
.end method

.method public k(Lc/c/b/a/f/d;)[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    iget v1, p1, Lc/c/b/a/f/d;->j:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    iget p1, p1, Lc/c/b/a/f/d;->i:F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method

.method public n()V
    .locals 4

    new-instance v0, Lc/c/b/a/k/c;

    invoke-direct {v0}, Lc/c/b/a/k/c;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarChart;->n()V

    new-instance v0, Lc/c/b/a/k/h;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-direct {v0, v1}, Lc/c/b/a/k/h;-><init>(Lc/c/b/a/k/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    new-instance v0, Lc/c/b/a/k/h;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-direct {v0, v1}, Lc/c/b/a/k/h;-><init>(Lc/c/b/a/k/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h0:Lc/c/b/a/k/g;

    new-instance v0, Lc/c/b/a/j/h;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-direct {v0, p0, v1, v2}, Lc/c/b/a/j/h;-><init>(Lc/c/b/a/g/a/a;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    new-instance v0, Lc/c/b/a/f/e;

    invoke-direct {v0, p0}, Lc/c/b/a/f/e;-><init>(Lc/c/b/a/g/a/a;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setHighlighter(Lc/c/b/a/f/b;)V

    new-instance v0, Lc/c/b/a/j/u;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    invoke-direct {v0, v1, v2, v3}, Lc/c/b/a/j/u;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/j;Lc/c/b/a/k/g;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e0:Lc/c/b/a/j/t;

    new-instance v0, Lc/c/b/a/j/u;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h0:Lc/c/b/a/k/g;

    invoke-direct {v0, v1, v2, v3}, Lc/c/b/a/j/u;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/j;Lc/c/b/a/k/g;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f0:Lc/c/b/a/j/t;

    new-instance v0, Lc/c/b/a/j/r;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    invoke-direct {v0, v1, v2, v3, p0}, Lc/c/b/a/j/r;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/i;Lc/c/b/a/k/g;Lcom/github/mikephil/charting/charts/BarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i0:Lc/c/b/a/j/q;

    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v0, v0, Lc/c/b/a/c/a;->B:F

    div-float/2addr v0, p1

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    :cond_0
    iput v0, p1, Lc/c/b/a/k/j;->e:F

    iget-object v0, p1, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    iget-object v1, p1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Lc/c/b/a/k/j;->j(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v0, v0, Lc/c/b/a/c/a;->B:F

    div-float/2addr v0, p1

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1
    :cond_0
    iput v0, p1, Lc/c/b/a/k/j;->f:F

    iget-object v0, p1, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    iget-object v1, p1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Lc/c/b/a/k/j;->j(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public u()V
    .locals 5

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h0:Lc/c/b/a/k/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    iget v2, v1, Lc/c/b/a/c/a;->A:F

    iget v1, v1, Lc/c/b/a/c/a;->B:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v4, v3, Lc/c/b/a/c/a;->B:F

    iget v3, v3, Lc/c/b/a/c/a;->A:F

    invoke-virtual {v0, v2, v1, v4, v3}, Lc/c/b/a/k/g;->i(FFFF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    iget v2, v1, Lc/c/b/a/c/a;->A:F

    iget v1, v1, Lc/c/b/a/c/a;->B:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v4, v3, Lc/c/b/a/c/a;->B:F

    iget v3, v3, Lc/c/b/a/c/a;->A:F

    invoke-virtual {v0, v2, v1, v4, v3}, Lc/c/b/a/k/g;->i(FFFF)V

    return-void
.end method
