.class public Lc/c/b/a/j/v;
.super Lc/c/b/a/j/t;
.source ""


# instance fields
.field public r:Lcom/github/mikephil/charting/charts/RadarChart;

.field public s:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lc/c/b/a/k/j;Lc/c/b/a/c/j;Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc/c/b/a/j/t;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/j;Lc/c/b/a/k/g;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/v;->s:Landroid/graphics/Path;

    iput-object p3, p0, Lc/c/b/a/j/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    return-void
.end method


# virtual methods
.method public b(FF)V
    .locals 12

    iget-object v0, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    .line 1
    iget v0, v0, Lc/c/b/a/c/a;->o:I

    sub-float v1, p2, p1

    .line 2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    const-wide/16 v4, 0x0

    cmpg-double v6, v1, v4

    if-lez v6, :cond_b

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_5

    :cond_0
    int-to-double v6, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v6

    invoke-static {v1, v2}, Lc/c/b/a/k/i;->j(D)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    .line 3
    iget-boolean v6, v2, Lc/c/b/a/c/a;->q:Z

    if-eqz v6, :cond_1

    .line 4
    iget v2, v2, Lc/c/b/a/c/a;->p:F

    float-to-double v6, v2

    cmpg-double v2, v0, v6

    if-gez v2, :cond_1

    move-wide v0, v6

    .line 5
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-int v2, v6

    int-to-double v6, v2

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lc/c/b/a/k/i;->j(D)F

    move-result v2

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v10, v0, v6

    double-to-int v2, v10

    const/4 v10, 0x5

    if-le v2, v10, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :cond_2
    iget-object v2, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    cmpl-double v2, v0, v4

    if-nez v2, :cond_3

    move-wide v6, v4

    goto :goto_0

    :cond_3
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    mul-double v6, v6, v0

    :goto_0
    cmpl-double p1, v0, v4

    if-nez p1, :cond_4

    move-wide p1, v4

    goto :goto_1

    :cond_4
    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Lc/c/b/a/k/i;->i(D)D

    move-result-wide p1

    :goto_1
    cmpl-double v2, v0, v4

    if-eqz v2, :cond_5

    move-wide v8, v6

    const/4 v2, 0x0

    :goto_2
    cmpg-double v10, v8, p1

    if-gtz v10, :cond_6

    add-int/lit8 v2, v2, 0x1

    add-double/2addr v8, v0

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    iget-object p1, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    iput v2, p1, Lc/c/b/a/c/a;->m:I

    iget-object p2, p1, Lc/c/b/a/c/a;->k:[F

    array-length p2, p2

    if-ge p2, v2, :cond_7

    new-array p2, v2, [F

    iput-object p2, p1, Lc/c/b/a/c/a;->k:[F

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-ge p1, v2, :cond_9

    cmpl-double p2, v6, v4

    if-nez p2, :cond_8

    move-wide v6, v4

    :cond_8
    iget-object p2, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    iget-object p2, p2, Lc/c/b/a/c/a;->k:[F

    double-to-float v8, v6

    aput v8, p2, p1

    add-double/2addr v6, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_9
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, p1

    iget-object p1, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    if-gez v4, :cond_a

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    iput p2, p1, Lc/c/b/a/c/a;->n:I

    goto :goto_4

    :cond_a
    iput v3, p1, Lc/c/b/a/c/a;->n:I

    :goto_4
    iget-object p1, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    iget-object p2, p1, Lc/c/b/a/c/a;->k:[F

    aget v0, p2, v3

    iput v0, p1, Lc/c/b/a/c/a;->A:F

    add-int/lit8 v2, v2, -0x1

    aget p2, p2, v2

    iput p2, p1, Lc/c/b/a/c/a;->z:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iput p2, p1, Lc/c/b/a/c/a;->B:F

    return-void

    :cond_b
    :goto_5
    iget-object p1, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    new-array p2, v3, [F

    iput-object p2, p1, Lc/c/b/a/c/a;->k:[F

    new-array p2, v3, [F

    iput-object p2, p1, Lc/c/b/a/c/a;->l:[F

    iput v3, p1, Lc/c/b/a/c/a;->m:I

    return-void
.end method

.method public g(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 1
    iget-boolean v1, v0, Lc/c/b/a/c/b;->a:Z

    if-eqz v1, :cond_3

    .line 2
    iget-boolean v1, v0, Lc/c/b/a/c/a;->t:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 4
    iget v1, v1, Lc/c/b/a/c/b;->d:F

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 6
    iget v1, v1, Lc/c/b/a/c/b;->e:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lc/c/b/a/j/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lc/c/b/a/k/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v1

    iget-object v2, p0, Lc/c/b/a/j/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v2

    iget-object v3, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 8
    iget-boolean v4, v3, Lc/c/b/a/c/j;->C:Z

    xor-int/lit8 v4, v4, 0x1

    .line 9
    iget-boolean v5, v3, Lc/c/b/a/c/j;->D:Z

    .line 10
    iget v3, v3, Lc/c/b/a/c/a;->m:I

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    iget-object v6, v5, Lc/c/b/a/c/a;->k:[F

    aget v6, v6, v4

    iget v5, v5, Lc/c/b/a/c/a;->A:F

    sub-float/2addr v6, v5

    mul-float v6, v6, v2

    iget-object v5, p0, Lc/c/b/a/j/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v5

    invoke-static {v0, v6, v5, v1}, Lc/c/b/a/k/i;->g(Lc/c/b/a/k/e;FFLc/c/b/a/k/e;)V

    iget-object v5, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    invoke-virtual {v5, v4}, Lc/c/b/a/c/a;->c(I)Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lc/c/b/a/k/e;->b:F

    const/high16 v7, 0x41200000    # 10.0f

    add-float/2addr v6, v7

    iget v7, v1, Lc/c/b/a/k/e;->c:F

    iget-object v8, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_2
    sget-object p1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, v0}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object p1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, v1}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public j(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 1
    iget-object v0, v0, Lc/c/b/a/c/a;->u:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lc/c/b/a/j/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v1

    iget-object v2, p0, Lc/c/b/a/j/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v2

    iget-object v3, p0, Lc/c/b/a/j/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lc/c/b/a/k/e;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/c/b/a/c/g;

    .line 3
    iget-boolean v8, v8, Lc/c/b/a/c/b;->a:Z

    if-nez v8, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    iget-object v8, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v8, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, p0, Lc/c/b/a/j/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v8

    sub-float v8, v4, v8

    mul-float v8, v8, v2

    iget-object v9, p0, Lc/c/b/a/j/v;->s:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    const/4 v10, 0x0

    :goto_1
    iget-object v11, p0, Lc/c/b/a/j/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v11

    check-cast v11, Lc/c/b/a/d/v;

    invoke-virtual {v11}, Lc/c/b/a/d/l;->g()Lc/c/b/a/g/b/e;

    move-result-object v11

    check-cast v11, Lc/c/b/a/g/b/j;

    invoke-interface {v11}, Lc/c/b/a/g/b/e;->y0()I

    move-result v11

    if-ge v10, v11, :cond_3

    int-to-float v11, v10

    mul-float v11, v11, v1

    iget-object v12, p0, Lc/c/b/a/j/v;->r:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v12

    add-float/2addr v12, v11

    invoke-static {v3, v8, v12, v5}, Lc/c/b/a/k/i;->g(Lc/c/b/a/k/e;FFLc/c/b/a/k/e;)V

    iget v11, v5, Lc/c/b/a/k/e;->b:F

    iget v12, v5, Lc/c/b/a/k/e;->c:F

    if-nez v10, :cond_2

    invoke-virtual {v9, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    iget-object v8, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5
    :cond_4
    sget-object p1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, v3}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object p1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, v5}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    return-void
.end method
