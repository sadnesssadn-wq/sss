.class public abstract Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc/c/b/a/d/l<",
        "+",
        "Lc/c/b/a/g/b/e<",
        "+",
        "Lc/c/b/a/d/o;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public I:F

.field public J:F

.field public K:Z

.field public L:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x43870000    # 270.0f

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->I:F

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->J:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->K:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x43870000    # 270.0f

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->I:F

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->J:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->K:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:F

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 8

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->p:Lc/c/b/a/h/b;

    instance-of v1, v0, Lc/c/b/a/h/f;

    if-eqz v1, :cond_2

    check-cast v0, Lc/c/b/a/h/f;

    .line 1
    iget v1, v0, Lc/c/b/a/h/f;->l:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget v1, v0, Lc/c/b/a/h/f;->l:F

    iget-object v5, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v5, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/Chart;->getDragDecelerationFrictionCoef()F

    move-result v5

    mul-float v5, v5, v1

    iput v5, v0, Lc/c/b/a/h/f;->l:F

    iget-wide v5, v0, Lc/c/b/a/h/f;->k:J

    sub-long v5, v3, v5

    long-to-float v1, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v1, v5

    iget-object v5, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v5, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v6

    iget v7, v0, Lc/c/b/a/h/f;->l:F

    mul-float v7, v7, v1

    add-float/2addr v7, v6

    invoke-virtual {v5, v7}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationAngle(F)V

    iput-wide v3, v0, Lc/c/b/a/h/f;->k:J

    iget v1, v0, Lc/c/b/a/h/f;->l:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_1

    iget-object v0, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    .line 2
    sget-object v1, Lc/c/b/a/k/i;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 3
    :cond_1
    iput v2, v0, Lc/c/b/a/h/f;->l:F

    :cond_2
    :goto_0
    return-void
.end method

.method public f()V
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lc/c/b/a/c/e$c;->e:Lc/c/b/a/c/e$c;

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    .line 1
    iget-boolean v4, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v4, :cond_11

    .line 2
    iget-boolean v4, v2, Lc/c/b/a/c/e;->j:Z

    if-nez v4, :cond_11

    .line 3
    iget v4, v2, Lc/c/b/a/c/e;->t:F

    iget-object v5, v0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 4
    iget v5, v5, Lc/c/b/a/k/j;->c:F

    .line 5
    iget v2, v2, Lc/c/b/a/c/e;->s:F

    mul-float v5, v5, v2

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 7
    iget-object v4, v4, Lc/c/b/a/c/e;->i:Lc/c/b/a/c/e$d;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v4, v0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 9
    iget-object v7, v4, Lc/c/b/a/c/e;->g:Lc/c/b/a/c/e$c;

    .line 10
    sget-object v8, Lc/c/b/a/c/e$c;->c:Lc/c/b/a/c/e$c;

    if-eq v7, v8, :cond_2

    if-ne v7, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 11
    :cond_2
    :goto_0
    iget-object v4, v4, Lc/c/b/a/c/e;->h:Lc/c/b/a/c/e$e;

    .line 12
    sget-object v7, Lc/c/b/a/c/e$e;->d:Lc/c/b/a/c/e$e;

    if-ne v4, v7, :cond_3

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v1

    add-float/2addr v1, v2

    goto/16 :goto_3

    :cond_3
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lc/c/b/a/k/i;->d(F)F

    move-result v4

    add-float/2addr v4, v2

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    iget v7, v2, Lc/c/b/a/c/e;->u:F

    iget v2, v2, Lc/c/b/a/c/e;->v:F

    add-float/2addr v7, v2

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Lc/c/b/a/k/e;

    move-result-object v2

    iget-object v8, v0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 13
    iget-object v8, v8, Lc/c/b/a/c/e;->g:Lc/c/b/a/c/e$c;

    const/high16 v9, 0x41700000    # 15.0f

    if-ne v8, v1, :cond_4

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v4

    add-float/2addr v1, v9

    goto :goto_1

    :cond_4
    sub-float v1, v4, v9

    :goto_1
    add-float/2addr v7, v9

    invoke-virtual {v0, v1, v7}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->t(FF)F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    move-result v9

    invoke-virtual {v0, v1, v7}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->u(FF)F

    move-result v1

    .line 15
    invoke-static {v3, v3}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v10

    .line 16
    iget v11, v2, Lc/c/b/a/k/e;->b:F

    float-to-double v11, v11

    float-to-double v13, v9

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v15

    double-to-float v1, v11

    iput v1, v10, Lc/c/b/a/k/e;->b:F

    iget v1, v2, Lc/c/b/a/k/e;->c:F

    float-to-double v11, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v11

    double-to-float v1, v5

    iput v1, v10, Lc/c/b/a/k/e;->c:F

    .line 17
    iget v5, v10, Lc/c/b/a/k/e;->b:F

    invoke-virtual {v0, v5, v1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->t(FF)F

    move-result v1

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lc/c/b/a/k/i;->d(F)F

    move-result v5

    iget v6, v2, Lc/c/b/a/k/e;->c:F

    cmpl-float v6, v7, v6

    if-ltz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    cmpg-float v4, v8, v1

    if-gez v4, :cond_6

    sub-float/2addr v1, v8

    add-float/2addr v1, v5

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 18
    :goto_2
    sget-object v4, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v4, v2}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object v2, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v2, v10}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    .line 19
    :goto_3
    iget-object v2, v0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 20
    iget-object v2, v2, Lc/c/b/a/c/e;->g:Lc/c/b/a/c/e$c;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    const/4 v4, 0x2

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 22
    iget-object v1, v1, Lc/c/b/a/c/e;->h:Lc/c/b/a/c/e$e;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_a

    if-eq v1, v4, :cond_9

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    iget v2, v1, Lc/c/b/a/c/e;->u:F

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 24
    iget v4, v4, Lc/c/b/a/k/j;->d:F

    .line 25
    iget v1, v1, Lc/c/b/a/c/e;->s:F

    mul-float v4, v4, v1

    .line 26
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    iget v2, v1, Lc/c/b/a/c/e;->u:F

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 27
    iget v4, v4, Lc/c/b/a/k/j;->d:F

    .line 28
    iget v1, v1, Lc/c/b/a/c/e;->s:F

    mul-float v4, v4, v1

    .line 29
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_8

    :cond_b
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 30
    iget-object v1, v1, Lc/c/b/a/c/e;->h:Lc/c/b/a/c/e$e;

    .line 31
    sget-object v2, Lc/c/b/a/c/e$e;->c:Lc/c/b/a/c/e$e;

    if-eq v1, v2, :cond_c

    sget-object v2, Lc/c/b/a/c/e$e;->e:Lc/c/b/a/c/e$e;

    if-ne v1, v2, :cond_d

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredLegendOffset()F

    move-result v1

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    iget v4, v2, Lc/c/b/a/c/e;->u:F

    add-float/2addr v4, v1

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 32
    iget v1, v1, Lc/c/b/a/k/j;->d:F

    .line 33
    iget v2, v2, Lc/c/b/a/c/e;->s:F

    mul-float v1, v1, v2

    .line 34
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 35
    iget-object v2, v2, Lc/c/b/a/c/e;->h:Lc/c/b/a/c/e$e;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v4, 0x2

    if-eq v2, v4, :cond_f

    :cond_d
    :goto_4
    const/4 v1, 0x0

    :cond_e
    move v2, v1

    const/4 v1, 0x0

    :goto_5
    move v4, v2

    const/4 v2, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    move v2, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_7
    move v3, v4

    move v4, v2

    const/4 v2, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    move v2, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v5

    add-float/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v5

    add-float/2addr v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v5

    add-float/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v5

    add-float/2addr v4, v5

    move/from16 v17, v3

    move v3, v1

    move/from16 v1, v17

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_a
    iget v5, v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:F

    invoke-static {v5}, Lc/c/b/a/k/i;->d(F)F

    move-result v5

    instance-of v6, v0, Lcom/github/mikephil/charting/charts/RadarChart;

    if-eqz v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lc/c/b/a/c/i;

    move-result-object v6

    .line 37
    iget-boolean v7, v6, Lc/c/b/a/c/b;->a:Z

    if-eqz v7, :cond_12

    .line 38
    iget-boolean v7, v6, Lc/c/b/a/c/a;->t:Z

    if-eqz v7, :cond_12

    .line 39
    iget v6, v6, Lc/c/b/a/c/i;->C:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraTopOffset()F

    move-result v6

    add-float/2addr v6, v2

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraRightOffset()F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraBottomOffset()F

    move-result v3

    add-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraLeftOffset()F

    move-result v4

    add-float/2addr v4, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRequiredBaseOffset()F

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v5, v0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-virtual {v5, v1, v4, v2, v3}, Lc/c/b/a/k/j;->n(FFFF)V

    iget-boolean v5, v0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz v5, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offsetLeft: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetTop: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetRight: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", offsetBottom: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MPAndroidChart"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method public getDiameter()F
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 1
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 2
    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraLeftOffset()F

    move-result v2

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraTopOffset()F

    move-result v2

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraRightOffset()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getExtraBottomOffset()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getMaxVisibleCount()I
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    invoke-virtual {v0}, Lc/c/b/a/d/l;->e()I

    move-result v0

    return v0
.end method

.method public getMinOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:F

    return v0
.end method

.method public abstract getRadius()F
.end method

.method public getRawRotationAngle()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->J:F

    return v0
.end method

.method public abstract getRequiredBaseOffset()F
.end method

.method public abstract getRequiredLegendOffset()F
.end method

.method public getRotationAngle()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->I:F

    return v0
.end method

.method public getYChartMax()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getYChartMin()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()V
    .locals 1

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->n()V

    new-instance v0, Lc/c/b/a/h/f;

    invoke-direct {v0, p0}, Lc/c/b/a/h/f;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->p:Lc/c/b/a/h/b;

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->s()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->s:Lc/c/b/a/j/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    invoke-virtual {v0, v1}, Lc/c/b/a/j/i;->a(Lc/c/b/a/d/l;)V

    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->f()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->p:Lc/c/b/a/h/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public setMinOffset(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->L:F

    return-void
.end method

.method public setRotationAngle(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->J:F

    invoke-static {p1}, Lc/c/b/a/k/i;->f(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->I:F

    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->K:Z

    return-void
.end method

.method public t(FF)F
    .locals 5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lc/c/b/a/k/e;

    move-result-object v0

    iget v1, v0, Lc/c/b/a/k/e;->b:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    sub-float/2addr p1, v1

    goto :goto_0

    :cond_0
    sub-float p1, v1, p1

    :goto_0
    iget v1, v0, Lc/c/b/a/k/e;->c:F

    cmpl-float v2, p2, v1

    if-lez v2, :cond_1

    sub-float/2addr p2, v1

    goto :goto_1

    :cond_1
    sub-float p2, v1, p2

    :goto_1
    float-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double p1, p2

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 1
    sget-object p2, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {p2, v0}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    return p1
.end method

.method public u(FF)F
    .locals 7

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenterOffsets()Lc/c/b/a/k/e;

    move-result-object v0

    iget v1, v0, Lc/c/b/a/k/e;->b:F

    sub-float v1, p1, v1

    float-to-double v1, v1

    iget v3, v0, Lc/c/b/a/k/e;->c:F

    sub-float/2addr p2, v3

    float-to-double v3, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v3, v3

    add-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float p2, v1

    iget v1, v0, Lc/c/b/a/k/e;->b:F

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    sub-float p2, v2, p2

    :cond_0
    const/high16 p1, 0x42b40000    # 90.0f

    add-float/2addr p2, p1

    cmpl-float p1, p2, v2

    if-lez p1, :cond_1

    sub-float/2addr p2, v2

    .line 1
    :cond_1
    sget-object p1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, v0}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    return p2
.end method

.method public abstract v(F)I
.end method
