.class public Lc/c/b/a/j/n;
.super Lc/c/b/a/j/k;
.source ""


# instance fields
.field public h:Lcom/github/mikephil/charting/charts/RadarChart;

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Path;

.field public l:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/RadarChart;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lc/c/b/a/j/k;-><init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/n;->k:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/n;->l:Landroid/graphics/Path;

    iput-object p1, p0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    const/16 p3, 0xff

    const/16 v0, 0xbb

    const/16 v1, 0x73

    invoke-static {p3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/n;->i:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/n;->j:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v0

    check-cast v0, Lc/c/b/a/d/v;

    invoke-virtual {v0}, Lc/c/b/a/d/l;->g()Lc/c/b/a/g/b/e;

    move-result-object v1

    check-cast v1, Lc/c/b/a/g/b/j;

    invoke-interface {v1}, Lc/c/b/a/g/b/e;->y0()I

    move-result v1

    .line 1
    iget-object v0, v0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/a/g/b/j;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v3

    iget-object v4, p0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v4

    iget-object v5, p0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lc/c/b/a/k/e;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6, v6}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v6

    iget-object v7, p0, Lc/c/b/a/j/n;->k:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v10

    if-ge v8, v10, :cond_3

    iget-object v10, p0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v2, v8}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    invoke-interface {v2, v8}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v10

    check-cast v10, Lc/c/b/a/d/w;

    .line 4
    iget v10, v10, Lc/c/b/a/d/g;->c:F

    .line 5
    iget-object v11, p0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v10, v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v10, v10, v11

    int-to-float v12, v8

    mul-float v12, v12, v3

    mul-float v12, v12, v11

    iget-object v11, p0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v11

    add-float/2addr v11, v12

    invoke-static {v5, v10, v11, v6}, Lc/c/b/a/k/i;->g(Lc/c/b/a/k/e;FFLc/c/b/a/k/e;)V

    iget v10, v6, Lc/c/b/a/k/e;->b:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    if-nez v9, :cond_2

    iget v9, v6, Lc/c/b/a/k/e;->b:F

    iget v10, v6, Lc/c/b/a/k/e;->c:F

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    iget v10, v6, Lc/c/b/a/k/e;->b:F

    iget v11, v6, Lc/c/b/a/k/e;->c:F

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v3

    if-le v3, v1, :cond_4

    iget v3, v5, Lc/c/b/a/k/e;->b:F

    iget v4, v5, Lc/c/b/a/k/e;->c:F

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    invoke-interface {v2}, Lc/c/b/a/g/b/g;->L0()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Lc/c/b/a/g/b/g;->s0()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, p1, v7, v3}, Lc/c/b/a/j/k;->l(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Lc/c/b/a/g/b/g;->l()I

    move-result v3

    invoke-interface {v2}, Lc/c/b/a/g/b/g;->q()I

    move-result v4

    invoke-virtual {p0, p1, v7, v3, v4}, Lc/c/b/a/j/k;->k(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    :cond_6
    :goto_3
    iget-object v3, p0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v2}, Lc/c/b/a/g/b/g;->I()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {v2}, Lc/c/b/a/g/b/g;->L0()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Lc/c/b/a/g/b/g;->q()I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6
    :cond_8
    sget-object v2, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v2, v5}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object v2, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v2, v6}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v1

    iget-object v2, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v2

    iget-object v3, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v3

    iget-object v4, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lc/c/b/a/k/e;

    move-result-object v4

    iget-object v5, v0, Lc/c/b/a/j/n;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebLineWidth()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, v0, Lc/c/b/a/j/n;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lc/c/b/a/j/n;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/RadarChart;->getSkipWebLineCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v6

    check-cast v6, Lc/c/b/a/d/v;

    invoke-virtual {v6}, Lc/c/b/a/d/l;->g()Lc/c/b/a/g/b/e;

    move-result-object v6

    check-cast v6, Lc/c/b/a/g/b/j;

    invoke-interface {v6}, Lc/c/b/a/g/b/e;->y0()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v7}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_0

    iget-object v11, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getYRange()F

    move-result v11

    mul-float v11, v11, v2

    int-to-float v12, v10

    mul-float v12, v12, v1

    add-float/2addr v12, v3

    invoke-static {v4, v11, v12, v8}, Lc/c/b/a/k/i;->g(Lc/c/b/a/k/e;FFLc/c/b/a/k/e;)V

    iget v14, v4, Lc/c/b/a/k/e;->b:F

    iget v15, v4, Lc/c/b/a/k/e;->c:F

    iget v11, v8, Lc/c/b/a/k/e;->b:F

    iget v12, v8, Lc/c/b/a/k/e;->c:F

    iget-object v13, v0, Lc/c/b/a/j/n;->i:Landroid/graphics/Paint;

    move-object/from16 v18, v13

    move-object/from16 v13, p1

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v5

    goto :goto_0

    .line 2
    :cond_0
    sget-object v5, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v5, v8}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    .line 3
    iget-object v5, v0, Lc/c/b/a/j/n;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebLineWidthInner()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, v0, Lc/c/b/a/j/n;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebColorInner()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lc/c/b/a/j/n;->i:Landroid/graphics/Paint;

    iget-object v6, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lc/c/b/a/c/j;

    move-result-object v5

    iget v5, v5, Lc/c/b/a/c/a;->m:I

    invoke-static {v7, v7}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v6

    invoke-static {v7, v7}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_2

    const/4 v10, 0x0

    :goto_2
    iget-object v11, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v11

    check-cast v11, Lc/c/b/a/d/v;

    invoke-virtual {v11}, Lc/c/b/a/d/l;->e()I

    move-result v11

    if-ge v10, v11, :cond_1

    iget-object v11, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lc/c/b/a/c/j;

    move-result-object v11

    iget-object v11, v11, Lc/c/b/a/c/a;->k:[F

    aget v11, v11, v8

    iget-object v12, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v12

    sub-float/2addr v11, v12

    mul-float v11, v11, v2

    int-to-float v12, v10

    mul-float v12, v12, v1

    add-float/2addr v12, v3

    invoke-static {v4, v11, v12, v6}, Lc/c/b/a/k/i;->g(Lc/c/b/a/k/e;FFLc/c/b/a/k/e;)V

    add-int/lit8 v10, v10, 0x1

    int-to-float v12, v10

    mul-float v12, v12, v1

    add-float/2addr v12, v3

    invoke-static {v4, v11, v12, v7}, Lc/c/b/a/k/i;->g(Lc/c/b/a/k/e;FFLc/c/b/a/k/e;)V

    iget v14, v6, Lc/c/b/a/k/e;->b:F

    iget v15, v6, Lc/c/b/a/k/e;->c:F

    iget v11, v7, Lc/c/b/a/k/e;->b:F

    iget v12, v7, Lc/c/b/a/k/e;->c:F

    iget-object v13, v0, Lc/c/b/a/j/n;->i:Landroid/graphics/Paint;

    move-object/from16 v18, v13

    move-object/from16 v13, p1

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4
    :cond_2
    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v6}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v7}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    return-void
.end method

.method public d(Landroid/graphics/Canvas;[Lc/c/b/a/f/d;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v3

    iget-object v4, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v4

    iget-object v5, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lc/c/b/a/k/e;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6, v6}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v7

    iget-object v8, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v8

    check-cast v8, Lc/c/b/a/d/v;

    array-length v9, v2

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_8

    aget-object v12, v2, v11

    .line 1
    iget v13, v12, Lc/c/b/a/f/d;->f:I

    .line 2
    invoke-virtual {v8, v13}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v13

    check-cast v13, Lc/c/b/a/g/b/j;

    if-eqz v13, :cond_7

    invoke-interface {v13}, Lc/c/b/a/g/b/e;->D0()Z

    move-result v14

    if-nez v14, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget v14, v12, Lc/c/b/a/f/d;->a:F

    float-to-int v14, v14

    .line 4
    invoke-interface {v13, v14}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v14

    check-cast v14, Lc/c/b/a/d/w;

    invoke-virtual {v0, v14, v13}, Lc/c/b/a/j/c;->h(Lc/c/b/a/d/o;Lc/c/b/a/g/b/b;)Z

    move-result v15

    if-nez v15, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    iget v14, v14, Lc/c/b/a/d/g;->c:F

    .line 6
    iget-object v15, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v15

    sub-float/2addr v14, v15

    mul-float v14, v14, v4

    iget-object v15, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float v14, v14, v15

    .line 7
    iget v6, v12, Lc/c/b/a/f/d;->a:F

    mul-float v6, v6, v3

    .line 8
    iget-object v10, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    mul-float v6, v6, v15

    iget-object v10, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v10

    add-float/2addr v10, v6

    invoke-static {v5, v14, v10, v7}, Lc/c/b/a/k/i;->g(Lc/c/b/a/k/e;FFLc/c/b/a/k/e;)V

    iget v6, v7, Lc/c/b/a/k/e;->b:F

    iget v10, v7, Lc/c/b/a/k/e;->c:F

    .line 9
    iput v6, v12, Lc/c/b/a/f/d;->i:F

    iput v10, v12, Lc/c/b/a/f/d;->j:F

    .line 10
    invoke-virtual {v0, v1, v6, v10, v13}, Lc/c/b/a/j/l;->j(Landroid/graphics/Canvas;FFLc/c/b/a/g/b/h;)V

    invoke-interface {v13}, Lc/c/b/a/g/b/j;->O()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, v7, Lc/c/b/a/k/e;->b:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_7

    iget v6, v7, Lc/c/b/a/k/e;->c:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v13}, Lc/c/b/a/g/b/j;->G()I

    move-result v6

    const v10, 0x112233

    const/4 v12, 0x0

    if-ne v6, v10, :cond_2

    invoke-interface {v13, v12}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v6

    :cond_2
    invoke-interface {v13}, Lc/c/b/a/g/b/j;->r()I

    move-result v14

    const/16 v15, 0xff

    if-ge v14, v15, :cond_3

    invoke-interface {v13}, Lc/c/b/a/g/b/j;->r()I

    move-result v14

    .line 11
    sget v16, Lc/c/b/a/k/a;->a:I

    const v16, 0xffffff

    and-int v6, v6, v16

    and-int/2addr v14, v15

    shl-int/lit8 v14, v14, 0x18

    or-int/2addr v6, v14

    .line 12
    :cond_3
    invoke-interface {v13}, Lc/c/b/a/g/b/j;->p()F

    move-result v14

    invoke-interface {v13}, Lc/c/b/a/g/b/j;->g0()F

    move-result v15

    invoke-interface {v13}, Lc/c/b/a/g/b/j;->m()I

    move-result v12

    invoke-interface {v13}, Lc/c/b/a/g/b/j;->e()F

    move-result v13

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {v15}, Lc/c/b/a/k/i;->d(F)F

    move-result v15

    invoke-static {v14}, Lc/c/b/a/k/i;->d(F)F

    move-result v14

    if-eq v12, v10, :cond_5

    iget-object v10, v0, Lc/c/b/a/j/n;->l:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    iget v2, v7, Lc/c/b/a/k/e;->b:F

    move/from16 v17, v3

    iget v3, v7, Lc/c/b/a/k/e;->c:F

    move/from16 v18, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v2, v3, v15, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/4 v2, 0x0

    cmpl-float v3, v14, v2

    if-lez v3, :cond_4

    iget v3, v7, Lc/c/b/a/k/e;->b:F

    iget v4, v7, Lc/c/b/a/k/e;->c:F

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v3, v4, v14, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_4
    iget-object v2, v0, Lc/c/b/a/j/n;->j:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lc/c/b/a/j/n;->j:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lc/c/b/a/j/n;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    move/from16 v17, v3

    move/from16 v18, v4

    :goto_1
    const v2, 0x112233

    if-eq v6, v2, :cond_6

    iget-object v2, v0, Lc/c/b/a/j/n;->j:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lc/c/b/a/j/n;->j:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v0, Lc/c/b/a/j/n;->j:Landroid/graphics/Paint;

    invoke-static {v13}, Lc/c/b/a/k/i;->d(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, v7, Lc/c/b/a/k/e;->b:F

    iget v3, v7, Lc/c/b/a/k/e;->c:F

    iget-object v4, v0, Lc/c/b/a/j/n;->j:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v15, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_7
    :goto_2
    move/from16 v17, v3

    move/from16 v18, v4

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p2

    move/from16 v3, v17

    move/from16 v4, v18

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 14
    :cond_8
    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v5}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v7}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v1

    iget-object v2, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v2

    iget-object v3, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lc/c/b/a/k/e;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v5

    invoke-static {v4, v4}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v4

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lc/c/b/a/k/i;->d(F)F

    move-result v6

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v9

    check-cast v9, Lc/c/b/a/d/v;

    invoke-virtual {v9}, Lc/c/b/a/d/l;->d()I

    move-result v9

    if-ge v8, v9, :cond_4

    iget-object v9, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v9

    check-cast v9, Lc/c/b/a/d/v;

    invoke-virtual {v9, v8}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v9

    check-cast v9, Lc/c/b/a/g/b/j;

    invoke-virtual {v0, v9}, Lc/c/b/a/j/c;->i(Lc/c/b/a/g/b/e;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object/from16 v10, p1

    move/from16 v16, v1

    move/from16 v17, v6

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0, v9}, Lc/c/b/a/j/g;->a(Lc/c/b/a/g/b/e;)V

    invoke-interface {v9}, Lc/c/b/a/g/b/e;->x0()Lc/c/b/a/e/e;

    move-result-object v10

    invoke-interface {v9}, Lc/c/b/a/g/b/e;->z0()Lc/c/b/a/k/e;

    move-result-object v11

    invoke-static {v11}, Lc/c/b/a/k/e;->c(Lc/c/b/a/k/e;)Lc/c/b/a/k/e;

    move-result-object v11

    iget v12, v11, Lc/c/b/a/k/e;->b:F

    invoke-static {v12}, Lc/c/b/a/k/i;->d(F)F

    move-result v12

    iput v12, v11, Lc/c/b/a/k/e;->b:F

    iget v12, v11, Lc/c/b/a/k/e;->c:F

    invoke-static {v12}, Lc/c/b/a/k/i;->d(F)F

    move-result v12

    iput v12, v11, Lc/c/b/a/k/e;->c:F

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v9}, Lc/c/b/a/g/b/e;->y0()I

    move-result v13

    if-ge v12, v13, :cond_3

    invoke-interface {v9, v12}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v13

    check-cast v13, Lc/c/b/a/d/w;

    .line 1
    iget v14, v13, Lc/c/b/a/d/g;->c:F

    .line 2
    iget-object v15, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v15

    sub-float/2addr v14, v15

    mul-float v14, v14, v2

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float v14, v14, v15

    int-to-float v7, v12

    mul-float v7, v7, v1

    mul-float v7, v7, v15

    iget-object v15, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v15

    add-float/2addr v15, v7

    invoke-static {v3, v14, v15, v5}, Lc/c/b/a/k/i;->g(Lc/c/b/a/k/e;FFLc/c/b/a/k/e;)V

    invoke-interface {v9}, Lc/c/b/a/g/b/e;->j0()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v14, v13, Lc/c/b/a/d/g;->c:F

    .line 5
    invoke-virtual {v10, v14}, Lc/c/b/a/e/e;->b(F)Ljava/lang/String;

    move-result-object v14

    .line 6
    iget v15, v5, Lc/c/b/a/k/e;->b:F

    move/from16 v16, v1

    iget v1, v5, Lc/c/b/a/k/e;->c:F

    sub-float/2addr v1, v6

    move/from16 v17, v6

    invoke-interface {v9, v12}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v6

    move-object/from16 v18, v10

    .line 7
    iget-object v10, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual {v10, v14, v15, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    move/from16 v16, v1

    move/from16 v17, v6

    move-object/from16 v18, v10

    move-object/from16 v10, p1

    .line 8
    :goto_2
    iget-object v1, v13, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v9}, Lc/c/b/a/g/b/e;->Q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, v13, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    .line 11
    iget v6, v13, Lc/c/b/a/d/g;->c:F

    mul-float v6, v6, v2

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float v6, v6, v13

    .line 12
    iget v13, v11, Lc/c/b/a/k/e;->c:F

    add-float/2addr v6, v13

    iget-object v13, v0, Lc/c/b/a/j/n;->h:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v13

    add-float/2addr v13, v7

    invoke-static {v3, v6, v13, v4}, Lc/c/b/a/k/i;->g(Lc/c/b/a/k/e;FFLc/c/b/a/k/e;)V

    iget v6, v4, Lc/c/b/a/k/e;->c:F

    iget v7, v11, Lc/c/b/a/k/e;->b:F

    add-float/2addr v6, v7

    iput v6, v4, Lc/c/b/a/k/e;->c:F

    iget v7, v4, Lc/c/b/a/k/e;->b:F

    float-to-int v7, v7

    float-to-int v6, v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v24

    move-object/from16 v19, p1

    move-object/from16 v20, v1

    move/from16 v21, v7

    move/from16 v22, v6

    invoke-static/range {v19 .. v24}, Lc/c/b/a/k/i;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v16

    move/from16 v6, v17

    move-object/from16 v10, v18

    goto/16 :goto_1

    :cond_3
    move-object/from16 v10, p1

    move/from16 v16, v1

    move/from16 v17, v6

    .line 13
    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v11}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v16

    move/from16 v6, v17

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v3}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v5}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v4}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
