.class public Lc/c/b/a/h/f;
.super Lc/c/b/a/h/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/b/a/h/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/h/b<",
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public h:Lc/c/b/a/k/e;

.field public i:F

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/c/b/a/h/f$a;",
            ">;"
        }
    .end annotation
.end field

.field public k:J

.field public l:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/PieRadarChartBase<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lc/c/b/a/h/b;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v0

    iput-object v0, p0, Lc/c/b/a/h/f;->h:Lc/c/b/a/k/e;

    iput p1, p0, Lc/c/b/a/h/f;->i:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/b/a/h/f;->j:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/c/b/a/h/f;->k:J

    iput p1, p0, Lc/c/b/a/h/f;->l:F

    return-void
.end method


# virtual methods
.method public final b(FF)V
    .locals 7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lc/c/b/a/h/f;->j:Ljava/util/ArrayList;

    new-instance v3, Lc/c/b/a/h/f$a;

    iget-object v4, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v4, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->u(FF)F

    move-result p1

    invoke-direct {v3, p0, v0, v1, p1}, Lc/c/b/a/h/f$a;-><init>(Lc/c/b/a/h/f;JF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/c/b/a/h/f;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p1, -0x2

    if-lez p2, :cond_0

    iget-object p2, p0, Lc/c/b/a/h/f;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/b/a/h/f$a;

    iget-wide v3, p2, Lc/c/b/a/h/f$a;->a:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x3e8

    cmp-long p2, v3, v5

    if-lez p2, :cond_0

    iget-object p2, p0, Lc/c/b/a/h/f;->j:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    sget-object v0, Lc/c/b/a/h/b$a;->k:Lc/c/b/a/h/b$a;

    iput-object v0, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/c/b/a/h/c;->h(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-object v0, Lc/c/b/a/h/b$a;->i:Lc/c/b/a/h/b$a;

    iput-object v0, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/c/b/a/h/c;->f(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    .line 1
    iget-boolean v1, v0, Lcom/github/mikephil/charting/charts/Chart;->e:Z

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/github/mikephil/charting/charts/Chart;->j(FF)Lc/c/b/a/f/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/b/a/h/b;->a(Lc/c/b/a/f/d;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lc/c/b/a/h/b;->f:Landroid/view/GestureDetector;

    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    .line 1
    iget-boolean v2, v2, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->K:Z

    if-eqz v2, :cond_14

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_11

    if-eq v5, v3, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v5, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v5, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    .line 3
    iget-boolean v5, v5, Lcom/github/mikephil/charting/charts/Chart;->f:Z

    if-eqz v5, :cond_2

    .line 4
    invoke-virtual {v0, v2, v4}, Lc/c/b/a/h/f;->b(FF)V

    :cond_2
    iget v5, v0, Lc/c/b/a/h/b;->d:I

    const/4 v6, 0x6

    if-nez v5, :cond_3

    iget-object v5, v0, Lc/c/b/a/h/f;->h:Lc/c/b/a/k/e;

    iget v7, v5, Lc/c/b/a/k/e;->b:F

    iget v5, v5, Lc/c/b/a/k/e;->c:F

    sub-float v7, v2, v7

    sub-float v5, v4, v5

    mul-float v7, v7, v7

    mul-float v5, v5, v5

    add-float/2addr v5, v7

    float-to-double v7, v5

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v5, v7

    const/high16 v7, 0x41000000    # 8.0f

    .line 6
    invoke-static {v7}, Lc/c/b/a/k/i;->d(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    sget-object v2, Lc/c/b/a/h/b$a;->h:Lc/c/b/a/h/b$a;

    iput-object v2, v0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    iput v6, v0, Lc/c/b/a/h/b;->d:I

    iget-object v2, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->g()V

    goto :goto_0

    :cond_3
    iget v5, v0, Lc/c/b/a/h/b;->d:I

    if-ne v5, v6, :cond_4

    .line 7
    iget-object v5, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v5, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v5, v2, v4}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->u(FF)F

    move-result v2

    iget v4, v0, Lc/c/b/a/h/f;->i:F

    sub-float/2addr v2, v4

    invoke-virtual {v5, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationAngle(F)V

    .line 8
    iget-object v2, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 9
    :cond_4
    :goto_0
    iget-object v2, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object v2

    if-eqz v2, :cond_14

    goto/16 :goto_6

    .line 10
    :cond_5
    iget-object v5, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v5, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    .line 11
    iget-boolean v5, v5, Lcom/github/mikephil/charting/charts/Chart;->f:Z

    const/4 v7, 0x0

    if-eqz v5, :cond_f

    .line 12
    iput v6, v0, Lc/c/b/a/h/f;->l:F

    .line 13
    invoke-virtual {v0, v2, v4}, Lc/c/b/a/h/f;->b(FF)V

    .line 14
    iget-object v2, v0, Lc/c/b/a/h/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_6
    iget-object v2, v0, Lc/c/b/a/h/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/a/h/f$a;

    iget-object v4, v0, Lc/c/b/a/h/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/b/a/h/f$a;

    iget-object v5, v0, Lc/c/b/a/h/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    move-object v8, v2

    :goto_1
    if-ltz v5, :cond_8

    iget-object v8, v0, Lc/c/b/a/h/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/c/b/a/h/f$a;

    iget v9, v8, Lc/c/b/a/h/f$a;->b:F

    iget v10, v4, Lc/c/b/a/h/f$a;->b:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_8
    :goto_2
    iget-wide v9, v4, Lc/c/b/a/h/f$a;->a:J

    iget-wide v11, v2, Lc/c/b/a/h/f$a;->a:J

    sub-long/2addr v9, v11

    long-to-float v5, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v5, v9

    cmpl-float v9, v5, v6

    if-nez v9, :cond_9

    const v5, 0x3dcccccd    # 0.1f

    :cond_9
    iget v9, v4, Lc/c/b/a/h/f$a;->b:F

    iget v8, v8, Lc/c/b/a/h/f$a;->b:F

    cmpl-float v10, v9, v8

    if-ltz v10, :cond_a

    const/4 v10, 0x1

    goto :goto_3

    :cond_a
    const/4 v10, 0x0

    :goto_3
    sub-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v11, 0x4070e00000000000L    # 270.0

    cmpl-double v13, v8, v11

    if-lez v13, :cond_b

    xor-int/lit8 v10, v10, 0x1

    :cond_b
    iget v8, v4, Lc/c/b/a/h/f$a;->b:F

    iget v9, v2, Lc/c/b/a/h/f$a;->b:F

    sub-float v11, v8, v9

    float-to-double v11, v11

    const-wide v13, 0x4076800000000000L    # 360.0

    const-wide v15, 0x4066800000000000L    # 180.0

    cmpl-double v17, v11, v15

    if-lez v17, :cond_c

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v13

    double-to-float v8, v8

    iput v8, v2, Lc/c/b/a/h/f$a;->b:F

    goto :goto_4

    :cond_c
    sub-float/2addr v9, v8

    float-to-double v11, v9

    cmpl-double v9, v11, v15

    if-lez v9, :cond_d

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v13

    double-to-float v8, v8

    iput v8, v4, Lc/c/b/a/h/f$a;->b:F

    :cond_d
    :goto_4
    iget v4, v4, Lc/c/b/a/h/f$a;->b:F

    iget v2, v2, Lc/c/b/a/h/f$a;->b:F

    sub-float/2addr v4, v2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    if-nez v10, :cond_e

    neg-float v2, v2

    .line 15
    :cond_e
    :goto_5
    iput v2, v0, Lc/c/b/a/h/f;->l:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_f

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lc/c/b/a/h/f;->k:J

    iget-object v2, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    .line 16
    sget-object v4, Lc/c/b/a/k/i;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v2}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 17
    :cond_f
    iget-object v2, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    .line 18
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-interface {v2, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 19
    :cond_10
    iput v7, v0, Lc/c/b/a/h/b;->d:I

    .line 20
    iget-object v2, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object v2

    if-eqz v2, :cond_14

    :goto_6
    iget-object v4, v0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    invoke-interface {v2, v1, v4}, Lc/c/b/a/h/c;->g(Landroid/view/MotionEvent;Lc/c/b/a/h/b$a;)V

    goto :goto_7

    .line 21
    :cond_11
    iget-object v5, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-object v7, v0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    invoke-interface {v5, v1, v7}, Lc/c/b/a/h/c;->a(Landroid/view/MotionEvent;Lc/c/b/a/h/b$a;)V

    .line 22
    :cond_12
    iput v6, v0, Lc/c/b/a/h/f;->l:F

    .line 23
    iget-object v1, v0, Lc/c/b/a/h/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 24
    iget-object v1, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    .line 25
    iget-boolean v1, v1, Lcom/github/mikephil/charting/charts/Chart;->f:Z

    if-eqz v1, :cond_13

    .line 26
    invoke-virtual {v0, v2, v4}, Lc/c/b/a/h/f;->b(FF)V

    .line 27
    :cond_13
    iget-object v1, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v1, v2, v4}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->u(FF)F

    move-result v1

    iget-object v5, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v5, Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRawRotationAngle()F

    move-result v5

    sub-float/2addr v1, v5

    iput v1, v0, Lc/c/b/a/h/f;->i:F

    .line 28
    iget-object v1, v0, Lc/c/b/a/h/f;->h:Lc/c/b/a/k/e;

    iput v2, v1, Lc/c/b/a/k/e;->b:F

    iput v4, v1, Lc/c/b/a/k/e;->c:F

    :cond_14
    :goto_7
    return v3
.end method
