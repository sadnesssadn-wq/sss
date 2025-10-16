.class public Lc/c/b/a/j/s;
.super Lc/c/b/a/j/q;
.source ""


# instance fields
.field public p:Lcom/github/mikephil/charting/charts/RadarChart;


# direct methods
.method public constructor <init>(Lc/c/b/a/k/j;Lc/c/b/a/c/i;Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc/c/b/a/j/q;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/i;Lc/c/b/a/k/g;)V

    iput-object p3, p0, Lc/c/b/a/j/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    return-void
.end method


# virtual methods
.method public h(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 1
    iget-boolean v1, v0, Lc/c/b/a/c/b;->a:Z

    if-eqz v1, :cond_2

    .line 2
    iget-boolean v1, v0, Lc/c/b/a/c/a;->t:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v1, v2}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v1

    iget-object v2, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v3, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v3, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 4
    iget v3, v3, Lc/c/b/a/c/b;->d:F

    .line 5
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v3, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 6
    iget v3, v3, Lc/c/b/a/c/b;->e:I

    .line 7
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lc/c/b/a/j/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v9

    iget-object v2, p0, Lc/c/b/a/j/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v10

    iget-object v2, p0, Lc/c/b/a/j/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lc/c/b/a/k/e;

    move-result-object v11

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_0
    iget-object v2, p0, Lc/c/b/a/j/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v2

    check-cast v2, Lc/c/b/a/d/v;

    invoke-virtual {v2}, Lc/c/b/a/d/l;->g()Lc/c/b/a/g/b/e;

    move-result-object v2

    check-cast v2, Lc/c/b/a/g/b/j;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v2

    if-ge v13, v2, :cond_1

    iget-object v2, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-virtual {v2}, Lc/c/b/a/c/a;->e()Lc/c/b/a/e/e;

    move-result-object v2

    int-to-float v3, v13

    .line 8
    invoke-virtual {v2, v3}, Lc/c/b/a/e/e;->b(F)Ljava/lang/String;

    move-result-object v4

    mul-float v3, v3, v9

    .line 9
    iget-object v2, p0, Lc/c/b/a/j/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v2

    add-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    rem-float/2addr v2, v3

    iget-object v3, p0, Lc/c/b/a/j/s;->p:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getYRange()F

    move-result v3

    mul-float v3, v3, v10

    iget-object v5, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    iget v5, v5, Lc/c/b/a/c/i;->C:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v3

    invoke-static {v11, v5, v2, v12}, Lc/c/b/a/k/i;->g(Lc/c/b/a/k/e;FFLc/c/b/a/k/e;)V

    iget v5, v12, Lc/c/b/a/k/e;->b:F

    iget v2, v12, Lc/c/b/a/k/e;->c:F

    iget-object v3, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    iget v3, v3, Lc/c/b/a/c/i;->D:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float v6, v2, v3

    move-object v2, p0

    move-object v3, p1

    move-object v7, v1

    move v8, v0

    invoke-virtual/range {v2 .. v8}, Lc/c/b/a/j/q;->e(Landroid/graphics/Canvas;Ljava/lang/String;FFLc/c/b/a/k/e;F)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 10
    :cond_1
    sget-object p1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, v11}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object p1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, v12}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object p1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, v1}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public k(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
