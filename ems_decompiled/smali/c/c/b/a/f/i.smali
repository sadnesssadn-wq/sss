.class public Lc/c/b/a/f/i;
.super Lc/c/b/a/f/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/f/h<",
        "Lcom/github/mikephil/charting/charts/RadarChart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c/b/a/f/h;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    return-void
.end method


# virtual methods
.method public b(IFF)Lc/c/b/a/f/d;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lc/c/b/a/f/h;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v2, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getAnimator()Lc/c/b/a/a/a;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v2, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getAnimator()Lc/c/b/a/a/a;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v2, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v2

    iget-object v3, v0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v3, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_0
    iget-object v6, v0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v6, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v6

    check-cast v6, Lc/c/b/a/d/v;

    invoke-virtual {v6}, Lc/c/b/a/d/l;->d()I

    move-result v6

    if-ge v13, v6, :cond_0

    iget-object v6, v0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v6, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v6

    check-cast v6, Lc/c/b/a/d/v;

    invoke-virtual {v6, v13}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v6

    invoke-interface {v6, v1}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v7

    invoke-virtual {v7}, Lc/c/b/a/d/g;->a()F

    move-result v8

    iget-object v9, v0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v9, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v9

    sub-float/2addr v8, v9

    iget-object v9, v0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v9, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lc/c/b/a/k/e;

    move-result-object v9

    mul-float v8, v8, v3

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v8, v8, v10

    int-to-float v11, v1

    mul-float v12, v2, v11

    mul-float v12, v12, v10

    iget-object v10, v0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v10, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v10

    add-float/2addr v10, v12

    invoke-static {v9, v8, v10, v4}, Lc/c/b/a/k/i;->g(Lc/c/b/a/k/e;FFLc/c/b/a/k/e;)V

    iget-object v14, v0, Lc/c/b/a/f/h;->b:Ljava/util/List;

    new-instance v15, Lc/c/b/a/f/d;

    invoke-virtual {v7}, Lc/c/b/a/d/g;->a()F

    move-result v8

    iget v9, v4, Lc/c/b/a/k/e;->b:F

    iget v10, v4, Lc/c/b/a/k/e;->c:F

    invoke-interface {v6}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v12

    move-object v6, v15

    move v7, v11

    move v11, v13

    invoke-direct/range {v6 .. v12}, Lc/c/b/a/f/d;-><init>(FFFFILc/c/b/a/c/j$a;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lc/c/b/a/f/h;->b:Ljava/util/List;

    .line 2
    iget-object v2, v0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v2, Lcom/github/mikephil/charting/charts/RadarChart;

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->t(FF)F

    move-result v2

    iget-object v3, v0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v3, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c/b/a/f/d;

    .line 3
    iget v7, v6, Lc/c/b/a/f/d;->b:F

    sub-float/2addr v7, v2

    .line 4
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v8, v7, v4

    if-gez v8, :cond_1

    move-object v3, v6

    move v4, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-object v3
.end method
