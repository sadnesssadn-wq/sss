.class public Lc/c/b/a/j/m;
.super Lc/c/b/a/j/g;
.source ""


# instance fields
.field public f:Lcom/github/mikephil/charting/charts/PieChart;

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/Paint;

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/text/TextPaint;

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/text/StaticLayout;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/graphics/RectF;

.field public o:[Landroid/graphics/RectF;

.field public p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public q:Landroid/graphics/Canvas;

.field public r:Landroid/graphics/Path;

.field public s:Landroid/graphics/RectF;

.field public t:Landroid/graphics/Path;

.field public u:Landroid/graphics/Path;

.field public v:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lc/c/b/a/j/g;-><init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/m;->n:Landroid/graphics/RectF;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x0

    aput-object p3, p2, v0

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x1

    aput-object p3, p2, v0

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x2

    aput-object p3, p2, v1

    iput-object p2, p0, Lc/c/b/a/j/m;->o:[Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/m;->s:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/m;->t:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/m;->u:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/m;->v:Landroid/graphics/RectF;

    iput-object p1, p0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/m;->g:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lc/c/b/a/j/m;->g:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/m;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lc/c/b/a/j/m;->h:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lc/c/b/a/j/m;->h:Landroid/graphics/Paint;

    const/16 p3, 0x69

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/m;->j:Landroid/text/TextPaint;

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lc/c/b/a/j/m;->j:Landroid/text/TextPaint;

    const/high16 p3, 0x41400000    # 12.0f

    invoke-static {p3}, Lc/c/b/a/k/i;->d(F)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    const/high16 p3, 0x41500000    # 13.0f

    invoke-static {p3}, Lc/c/b/a/k/i;->d(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/m;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lc/c/b/a/j/m;->k:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lc/c/b/a/j/m;->k:Landroid/graphics/Paint;

    invoke-static {p3}, Lc/c/b/a/k/i;->d(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/m;->i:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 35

    move-object/from16 v8, p0

    iget-object v0, v8, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget v1, v0, Lc/c/b/a/k/j;->c:F

    float-to-int v1, v1

    .line 2
    iget v0, v0, Lc/c/b/a/k/j;->d:F

    float-to-int v0, v0

    .line 3
    iget-object v2, v8, Lc/c/b/a/j/m;->p:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v0, :cond_2

    :cond_1
    if-lez v1, :cond_22

    if-lez v0, :cond_22

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v8, Lc/c/b/a/j/m;->p:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, v8, Lc/c/b/a/j/m;->q:Landroid/graphics/Canvas;

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v0

    check-cast v0, Lc/c/b/a/d/s;

    .line 4
    iget-object v0, v0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lc/c/b/a/g/b/i;

    invoke-interface {v11}, Lc/c/b/a/g/b/e;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v11}, Lc/c/b/a/g/b/e;->y0()I

    move-result v0

    if-lez v0, :cond_21

    .line 6
    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v12

    iget-object v0, v8, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v8, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v13

    invoke-interface {v11}, Lc/c/b/a/g/b/e;->y0()I

    move-result v14

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v15

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lc/c/b/a/k/e;

    move-result-object v7

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    .line 7
    iget-boolean v1, v0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Z

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 8
    iget-boolean v1, v0, Lcom/github/mikephil/charting/charts/PieChart;->R:Z

    if-nez v1, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    const/high16 v1, 0x42c80000    # 100.0f

    const/16 v17, 0x0

    if-eqz v16, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v0

    div-float/2addr v0, v1

    mul-float v0, v0, v6

    move v4, v0

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v0

    mul-float v0, v0, v6

    div-float/2addr v0, v1

    sub-float v0, v6, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v19, v0, v18

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    if-eqz v16, :cond_5

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    .line 10
    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/PieChart;->T:Z

    if-eqz v0, :cond_5

    const/16 v20, 0x1

    goto :goto_4

    :cond_5
    const/16 v20, 0x0

    :goto_4
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v0, v14, :cond_7

    .line 11
    invoke-interface {v11, v0}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v1

    check-cast v1, Lc/c/b/a/d/u;

    .line 12
    iget v1, v1, Lc/c/b/a/d/g;->c:F

    .line 13
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v21, Lc/c/b/a/k/i;->d:F

    cmpl-float v1, v1, v21

    if-lez v1, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    if-gt v2, v5, :cond_8

    const/16 v21, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {v8, v11}, Lc/c/b/a/j/m;->i(Lc/c/b/a/g/b/i;)F

    move-result v0

    move/from16 v21, v0

    :goto_6
    const/4 v1, 0x0

    const/16 v22, 0x0

    :goto_7
    if-ge v1, v14, :cond_20

    aget v23, v15, v1

    invoke-interface {v11, v1}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/b/a/d/g;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v24, Lc/c/b/a/k/i;->d:F

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v24

    if-gtz v0, :cond_9

    goto :goto_b

    :cond_9
    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    .line 14
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->r()Z

    move-result v24

    if-nez v24, :cond_a

    goto :goto_9

    :cond_a
    :goto_8
    iget-object v5, v0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    move-object/from16 v26, v0

    array-length v0, v5

    if-ge v9, v0, :cond_c

    aget-object v0, v5, v9

    .line 15
    iget v0, v0, Lc/c/b/a/f/d;->a:F

    float-to-int v0, v0

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v26

    goto :goto_8

    :cond_c
    :goto_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_d

    if-nez v20, :cond_d

    :goto_b
    mul-float v23, v23, v25

    add-float v23, v23, v22

    move/from16 v31, v1

    move/from16 v24, v6

    move-object v9, v7

    move-object/from16 v27, v10

    move-object/from16 v29, v11

    move/from16 v34, v12

    move-object/from16 v30, v13

    move/from16 v32, v14

    move-object/from16 v33, v15

    move/from16 v22, v23

    const/4 v14, 0x1

    move v15, v2

    move-object v13, v3

    move v12, v4

    goto/16 :goto_18

    :cond_d
    const/high16 v9, 0x43340000    # 180.0f

    cmpl-float v0, v21, v17

    if-lez v0, :cond_e

    cmpg-float v0, v23, v9

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_c

    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_c
    iget-object v5, v8, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v11, v1}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    const v9, 0x3c8efa35

    const/4 v5, 0x1

    if-ne v2, v5, :cond_f

    const/16 v24, 0x0

    goto :goto_d

    :cond_f
    mul-float v24, v6, v9

    div-float v24, v21, v24

    :goto_d
    div-float v27, v24, v18

    add-float v27, v27, v22

    mul-float v27, v27, v25

    add-float v9, v27, v12

    sub-float v24, v23, v24

    mul-float v24, v24, v25

    cmpg-float v27, v24, v17

    if-gez v27, :cond_10

    move-object/from16 v27, v10

    const/4 v10, 0x0

    goto :goto_e

    :cond_10
    move-object/from16 v27, v10

    move/from16 v10, v24

    :goto_e
    iget-object v5, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    if-eqz v20, :cond_11

    iget v5, v7, Lc/c/b/a/k/e;->b:F

    sub-float v29, v6, v19

    move/from16 v30, v1

    const v28, 0x3c8efa35

    mul-float v1, v9, v28

    move/from16 v31, v2

    float-to-double v1, v1

    move/from16 v32, v14

    move-object/from16 v33, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float v14, v14, v29

    add-float/2addr v14, v5

    iget v5, v7, Lc/c/b/a/k/e;->c:F

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v29, v29, v1

    add-float v29, v29, v5

    sub-float v1, v14, v19

    sub-float v2, v29, v19

    add-float v14, v14, v19

    add-float v5, v29, v19

    invoke-virtual {v3, v1, v2, v14, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_f

    :cond_11
    move/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v14

    move-object/from16 v33, v15

    :goto_f
    iget v1, v7, Lc/c/b/a/k/e;->b:F

    const v2, 0x3c8efa35

    mul-float v5, v9, v2

    float-to-double v14, v5

    move-object/from16 v29, v11

    move/from16 v34, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v2, v11

    mul-float v2, v2, v6

    add-float v5, v2, v1

    iget v1, v7, Lc/c/b/a/k/e;->c:F

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v2, v11

    mul-float v2, v2, v6

    add-float v11, v2, v1

    const/high16 v12, 0x43b40000    # 360.0f

    cmpl-float v1, v10, v12

    if-ltz v1, :cond_12

    rem-float v1, v10, v12

    sget v2, Lc/c/b/a/k/i;->d:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_12

    iget-object v1, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget v2, v7, Lc/c/b/a/k/e;->b:F

    iget v14, v7, Lc/c/b/a/k/e;->c:F

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v14, v6, v15}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_10

    :cond_12
    if-eqz v20, :cond_13

    iget-object v1, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    const/high16 v2, 0x43340000    # 180.0f

    add-float v14, v9, v2

    const/high16 v2, -0x3ccc0000    # -180.0f

    invoke-virtual {v1, v3, v14, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_13
    iget-object v1, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    invoke-virtual {v1, v13, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_10
    iget-object v1, v8, Lc/c/b/a/j/m;->s:Landroid/graphics/RectF;

    iget v2, v7, Lc/c/b/a/k/e;->b:F

    sub-float v14, v2, v4

    iget v15, v7, Lc/c/b/a/k/e;->c:F

    sub-float v12, v15, v4

    add-float/2addr v2, v4

    add-float/2addr v15, v4

    invoke-virtual {v1, v14, v12, v2, v15}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v16, :cond_1d

    cmpl-float v1, v4, v17

    if-gtz v1, :cond_15

    if-eqz v0, :cond_14

    goto :goto_11

    :cond_14
    move v12, v4

    move/from16 v24, v6

    move/from16 v15, v31

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v14, 0x1

    move/from16 v31, v30

    move-object/from16 v30, v13

    move-object v13, v3

    goto/16 :goto_16

    :cond_15
    :goto_11
    if-eqz v0, :cond_17

    mul-float v12, v23, v25

    move-object/from16 v0, p0

    move/from16 v14, v30

    move-object v1, v7

    move/from16 v15, v31

    move v2, v6

    move-object/from16 v30, v13

    move-object v13, v3

    move v3, v12

    move v12, v4

    move v4, v5

    move/from16 v31, v14

    const/4 v14, 0x1

    move v5, v11

    move/from16 v24, v6

    move v6, v9

    move-object v9, v7

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lc/c/b/a/j/m;->h(Lc/c/b/a/k/e;FFFFFF)F

    move-result v0

    cmpg-float v1, v0, v17

    if-gez v1, :cond_16

    neg-float v0, v0

    :cond_16
    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_12

    :cond_17
    move v12, v4

    move/from16 v24, v6

    move-object v9, v7

    move/from16 v15, v31

    const/4 v14, 0x1

    move/from16 v31, v30

    move-object/from16 v30, v13

    move-object v13, v3

    :goto_12
    if-eq v15, v14, :cond_19

    cmpl-float v0, v4, v17

    if-nez v0, :cond_18

    goto :goto_13

    :cond_18
    const v0, 0x3c8efa35

    mul-float v1, v4, v0

    div-float v0, v21, v1

    goto :goto_14

    :cond_19
    :goto_13
    const/4 v0, 0x0

    :goto_14
    div-float v1, v0, v18

    add-float v1, v1, v22

    mul-float v1, v1, v25

    add-float v1, v1, v34

    sub-float v0, v23, v0

    mul-float v0, v0, v25

    cmpg-float v2, v0, v17

    if-gez v2, :cond_1a

    const/4 v0, 0x0

    :cond_1a
    add-float/2addr v1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v3, v10, v2

    if-ltz v3, :cond_1b

    rem-float/2addr v10, v2

    sget v2, Lc/c/b/a/k/i;->d:F

    cmpg-float v2, v10, v2

    if-gtz v2, :cond_1b

    iget-object v0, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget v1, v9, Lc/c/b/a/k/e;->b:F

    iget v2, v9, Lc/c/b/a/k/e;->c:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_17

    :cond_1b
    if-eqz v20, :cond_1c

    iget v2, v9, Lc/c/b/a/k/e;->b:F

    sub-float v6, v24, v19

    const v3, 0x3c8efa35

    mul-float v3, v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v5, v10

    mul-float v5, v5, v6

    add-float/2addr v5, v2

    iget v2, v9, Lc/c/b/a/k/e;->c:F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v6, v6, v3

    add-float/2addr v6, v2

    sub-float v2, v5, v19

    sub-float v3, v6, v19

    add-float v5, v5, v19

    add-float v6, v6, v19

    invoke-virtual {v13, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v13, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_15

    :cond_1c
    iget-object v2, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget v3, v9, Lc/c/b/a/k/e;->b:F

    const v5, 0x3c8efa35

    mul-float v5, v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v7, v10

    mul-float v7, v7, v4

    add-float/2addr v7, v3

    iget v3, v9, Lc/c/b/a/k/e;->c:F

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v4, v4, v5

    add-float/2addr v4, v3

    invoke-virtual {v2, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_15
    iget-object v2, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget-object v3, v8, Lc/c/b/a/j/m;->s:Landroid/graphics/RectF;

    neg-float v0, v0

    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_17

    :cond_1d
    move v12, v4

    move/from16 v24, v6

    move/from16 v15, v31

    const/4 v14, 0x1

    move/from16 v31, v30

    move-object/from16 v30, v13

    move-object v13, v3

    const/high16 v1, 0x43b40000    # 360.0f

    :goto_16
    rem-float v1, v10, v1

    sget v2, Lc/c/b/a/k/i;->d:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1f

    if-eqz v0, :cond_1e

    div-float v0, v10, v18

    add-float v26, v0, v9

    mul-float v3, v23, v25

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v24

    move v4, v5

    move v5, v11

    move v6, v9

    move-object v9, v7

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lc/c/b/a/j/m;->h(Lc/c/b/a/k/e;FFFFFF)F

    move-result v0

    iget v1, v9, Lc/c/b/a/k/e;->b:F

    const v2, 0x3c8efa35

    mul-float v2, v2, v26

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v0

    add-float/2addr v4, v1

    iget v1, v9, Lc/c/b/a/k/e;->c:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    iget-object v1, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_17

    :cond_1e
    move-object v9, v7

    iget-object v0, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget v1, v9, Lc/c/b/a/k/e;->b:F

    iget v2, v9, Lc/c/b/a/k/e;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_17

    :cond_1f
    move-object v9, v7

    :goto_17
    iget-object v0, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, v8, Lc/c/b/a/j/m;->q:Landroid/graphics/Canvas;

    iget-object v1, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget-object v2, v8, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    mul-float v23, v23, v25

    add-float v23, v23, v22

    move/from16 v22, v23

    :goto_18
    add-int/lit8 v1, v31, 0x1

    move-object v7, v9

    move v4, v12

    move-object v3, v13

    move v2, v15

    move/from16 v6, v24

    move-object/from16 v10, v27

    move-object/from16 v11, v29

    move-object/from16 v13, v30

    move/from16 v14, v32

    move-object/from16 v15, v33

    move/from16 v12, v34

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto/16 :goto_7

    :cond_20
    move-object v9, v7

    move-object/from16 v27, v10

    .line 17
    sget-object v0, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v0, v9}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    goto :goto_19

    :cond_21
    move-object/from16 v27, v10

    :goto_19
    move-object/from16 v10, v27

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_22
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    .line 2
    iget-boolean v3, v2, Lcom/github/mikephil/charting/charts/PieChart;->Q:Z

    const/high16 v4, 0x42c80000    # 100.0f

    if-eqz v3, :cond_2

    .line 3
    iget-object v3, v0, Lc/c/b/a/j/m;->q:Landroid/graphics/Canvas;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v2

    iget-object v3, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v3

    div-float/2addr v3, v4

    mul-float v3, v3, v2

    iget-object v5, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lc/c/b/a/k/e;

    move-result-object v5

    iget-object v6, v0, Lc/c/b/a/j/m;->g:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, v0, Lc/c/b/a/j/m;->q:Landroid/graphics/Canvas;

    iget v7, v5, Lc/c/b/a/k/e;->b:F

    iget v8, v5, Lc/c/b/a/k/e;->c:F

    iget-object v9, v0, Lc/c/b/a/j/m;->g:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v8, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v6, v0, Lc/c/b/a/j/m;->h:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v6

    iget-object v7, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    iget-object v6, v0, Lc/c/b/a/j/m;->h:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    iget-object v7, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v7

    div-float/2addr v7, v4

    mul-float v7, v7, v2

    iget-object v2, v0, Lc/c/b/a/j/m;->h:Landroid/graphics/Paint;

    int-to-float v8, v6

    iget-object v9, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v8, v8, v9

    iget-object v10, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lc/c/b/a/j/m;->t:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lc/c/b/a/j/m;->t:Landroid/graphics/Path;

    iget v8, v5, Lc/c/b/a/k/e;->b:F

    iget v9, v5, Lc/c/b/a/k/e;->c:F

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v8, v9, v7, v10}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lc/c/b/a/j/m;->t:Landroid/graphics/Path;

    iget v7, v5, Lc/c/b/a/k/e;->b:F

    iget v8, v5, Lc/c/b/a/k/e;->c:F

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v7, v8, v3, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lc/c/b/a/j/m;->q:Landroid/graphics/Canvas;

    iget-object v3, v0, Lc/c/b/a/j/m;->t:Landroid/graphics/Path;

    iget-object v7, v0, Lc/c/b/a/j/m;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lc/c/b/a/j/m;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    :cond_1
    sget-object v2, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v2, v5}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    .line 5
    :cond_2
    iget-object v2, v0, Lc/c/b/a/j/m;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 6
    iget-object v2, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterText()Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v2, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    .line 7
    iget-boolean v3, v2, Lcom/github/mikephil/charting/charts/PieChart;->b0:Z

    if-eqz v3, :cond_7

    if-eqz v6, :cond_7

    .line 8
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lc/c/b/a/k/e;

    move-result-object v2

    iget-object v3, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextOffset()Lc/c/b/a/k/e;

    move-result-object v3

    iget v5, v2, Lc/c/b/a/k/e;->b:F

    iget v7, v3, Lc/c/b/a/k/e;->b:F

    add-float/2addr v5, v7

    iget v7, v2, Lc/c/b/a/k/e;->c:F

    iget v8, v3, Lc/c/b/a/k/e;->c:F

    add-float/2addr v7, v8

    iget-object v8, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    .line 9
    iget-boolean v9, v8, Lcom/github/mikephil/charting/charts/PieChart;->Q:Z

    if-eqz v9, :cond_3

    .line 10
    iget-boolean v9, v8, Lcom/github/mikephil/charting/charts/PieChart;->R:Z

    if-nez v9, :cond_3

    .line 11
    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v8

    iget-object v9, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v9

    div-float/2addr v9, v4

    mul-float v9, v9, v8

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v9

    :goto_0
    iget-object v8, v0, Lc/c/b/a/j/m;->o:[Landroid/graphics/RectF;

    const/4 v10, 0x0

    aget-object v15, v8, v10

    sub-float v10, v5, v9

    iput v10, v15, Landroid/graphics/RectF;->left:F

    sub-float v10, v7, v9

    iput v10, v15, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v9

    iput v5, v15, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v9

    iput v7, v15, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x1

    aget-object v14, v8, v5

    invoke-virtual {v14, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v5, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextRadiusPercent()F

    move-result v5

    div-float/2addr v5, v4

    float-to-double v7, v5

    const-wide/16 v9, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-double v11, v7, v9

    if-lez v11, :cond_4

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float v8, v8, v5

    sub-float/2addr v7, v8

    div-float/2addr v7, v4

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float v9, v9, v5

    sub-float/2addr v8, v9

    div-float/2addr v8, v4

    invoke-virtual {v14, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    :cond_4
    iget-object v5, v0, Lc/c/b/a/j/m;->m:Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lc/c/b/a/j/m;->n:Landroid/graphics/RectF;

    invoke-virtual {v14, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    move-object v4, v14

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v5, v0, Lc/c/b/a/j/m;->n:Landroid/graphics/RectF;

    invoke-virtual {v5, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iput-object v6, v0, Lc/c/b/a/j/m;->m:Ljava/lang/CharSequence;

    iget-object v5, v0, Lc/c/b/a/j/m;->n:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    new-instance v13, Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iget-object v9, v0, Lc/c/b/a/j/m;->j:Landroid/text/TextPaint;

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v10, v4

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object v5, v13

    move-object/from16 v17, v13

    move v13, v4

    move-object v4, v14

    move/from16 v14, v16

    invoke-direct/range {v5 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v5, v17

    iput-object v5, v0, Lc/c/b/a/j/m;->l:Landroid/text/StaticLayout;

    :goto_2
    iget-object v5, v0, Lc/c/b/a/j/m;->l:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, v0, Lc/c/b/a/j/m;->u:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v15, v7}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v7

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v0, Lc/c/b/a/j/m;->l:Landroid/text/StaticLayout;

    invoke-virtual {v4, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 12
    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v2}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v3}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    :cond_7
    return-void
.end method

.method public d(Landroid/graphics/Canvas;[Lc/c/b/a/f/d;)V
    .locals 31

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    .line 1
    iget-boolean v1, v0, Lcom/github/mikephil/charting/charts/PieChart;->Q:Z

    if-eqz v1, :cond_0

    .line 2
    iget-boolean v1, v0, Lcom/github/mikephil/charting/charts/PieChart;->R:Z

    if-nez v1, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    .line 3
    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/PieChart;->T:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, v8, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v8, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v13

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v14

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v15

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lc/c/b/a/k/e;

    move-result-object v7

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v16

    const/4 v6, 0x0

    if-eqz v12, :cond_2

    iget-object v0, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float v0, v0, v16

    move v5, v0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-object v4, v8, Lc/c/b/a/j/m;->v:Landroid/graphics/RectF;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v3, 0x0

    :goto_2
    array-length v0, v9

    if-ge v3, v0, :cond_1c

    aget-object v0, v9, v3

    .line 5
    iget v0, v0, Lc/c/b/a/f/d;->a:F

    float-to-int v0, v0

    .line 6
    array-length v1, v14

    if-lt v0, v1, :cond_4

    :cond_3
    :goto_3
    move v10, v3

    move-object/from16 v20, v4

    move v4, v12

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    const/16 v17, 0x0

    move v15, v5

    move-object v14, v7

    goto/16 :goto_12

    :cond_4
    iget-object v1, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v1

    check-cast v1, Lc/c/b/a/d/s;

    aget-object v2, v9, v3

    .line 7
    iget v2, v2, Lc/c/b/a/f/d;->f:I

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lc/c/b/a/d/s;->o()Lc/c/b/a/g/b/i;

    move-result-object v1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_3

    .line 9
    invoke-interface {v1}, Lc/c/b/a/g/b/e;->D0()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Lc/c/b/a/g/b/e;->y0()I

    move-result v2

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v2, :cond_8

    invoke-interface {v1, v10}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v18

    move-object/from16 v11, v18

    check-cast v11, Lc/c/b/a/d/u;

    .line 10
    iget v11, v11, Lc/c/b/a/d/g;->c:F

    .line 11
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sget v18, Lc/c/b/a/k/i;->d:F

    cmpl-float v11, v11, v18

    if-lez v11, :cond_7

    add-int/lit8 v6, v6, 0x1

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_8
    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v0, :cond_9

    const/4 v2, 0x1

    const/4 v11, 0x0

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v0, -0x1

    aget v2, v15, v2

    mul-float v2, v2, v10

    move v11, v2

    const/4 v2, 0x1

    :goto_6
    if-gt v6, v2, :cond_a

    const/16 v18, 0x0

    goto :goto_7

    :cond_a
    invoke-interface {v1}, Lc/c/b/a/g/b/i;->o()F

    move-result v2

    move/from16 v18, v2

    :goto_7
    aget v19, v14, v0

    invoke-interface {v1}, Lc/c/b/a/g/b/i;->a0()F

    move-result v2

    add-float v10, v16, v2

    move/from16 v20, v3

    iget-object v3, v8, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    neg-float v2, v2

    invoke-virtual {v4, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v2, 0x0

    cmpl-float v3, v18, v2

    if-lez v3, :cond_b

    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, v19, v2

    if-gtz v2, :cond_b

    const/16 v21, 0x1

    goto :goto_8

    :cond_b
    const/16 v21, 0x0

    :goto_8
    iget-object v2, v8, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v1, v0}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v22, 0x3c8efa35

    const/4 v0, 0x1

    if-ne v6, v0, :cond_c

    const/4 v2, 0x0

    goto :goto_9

    :cond_c
    mul-float v1, v16, v22

    div-float v2, v18, v1

    :goto_9
    if-ne v6, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_a

    :cond_d
    mul-float v0, v10, v22

    div-float v0, v18, v0

    :goto_a
    const/high16 v23, 0x40000000    # 2.0f

    div-float v1, v2, v23

    add-float/2addr v1, v11

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v1, v1, v3

    add-float v24, v1, v13

    sub-float v1, v19, v2

    mul-float v2, v1, v3

    const/16 v17, 0x0

    cmpg-float v1, v2, v17

    if-gez v1, :cond_e

    const/16 v25, 0x0

    goto :goto_b

    :cond_e
    move/from16 v25, v2

    :goto_b
    div-float v1, v0, v23

    add-float/2addr v1, v11

    mul-float v1, v1, v3

    add-float/2addr v1, v13

    sub-float v0, v19, v0

    mul-float v2, v0, v3

    cmpg-float v0, v2, v17

    if-gez v0, :cond_f

    const/4 v2, 0x0

    :cond_f
    iget-object v0, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/high16 v26, 0x43b40000    # 360.0f

    cmpl-float v0, v25, v26

    if-ltz v0, :cond_10

    rem-float v0, v25, v26

    sget v3, Lc/c/b/a/k/i;->d:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_10

    iget-object v0, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget v1, v7, Lc/c/b/a/k/e;->b:F

    iget v2, v7, Lc/c/b/a/k/e;->c:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    goto :goto_c

    :cond_10
    iget-object v0, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget v3, v7, Lc/c/b/a/k/e;->b:F

    move/from16 v27, v5

    mul-float v5, v1, v22

    move/from16 v28, v6

    float-to-double v5, v5

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float v14, v14, v10

    add-float/2addr v14, v3

    iget v3, v7, Lc/c/b/a/k/e;->c:F

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v10, v10, v5

    add-float/2addr v10, v3

    invoke-virtual {v0, v14, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_c
    if-eqz v21, :cond_11

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v3, v19, v0

    iget v0, v7, Lc/c/b/a/k/e;->b:F

    mul-float v1, v24, v22

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v16

    add-float/2addr v5, v0

    iget v0, v7, Lc/c/b/a/k/e;->c:F

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v16

    add-float v6, v1, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v16

    move/from16 v10, v20

    move-object v14, v4

    move v4, v5

    move/from16 v15, v27

    move v5, v6

    move/from16 v9, v28

    move/from16 v6, v24

    move-object/from16 v20, v14

    move-object v14, v7

    move/from16 v7, v25

    invoke-virtual/range {v0 .. v7}, Lc/c/b/a/j/m;->h(Lc/c/b/a/k/e;FFFFFF)F

    move-result v6

    goto :goto_d

    :cond_11
    move-object v14, v7

    move/from16 v10, v20

    move/from16 v15, v27

    move/from16 v9, v28

    move-object/from16 v20, v4

    const/4 v6, 0x0

    :goto_d
    iget-object v0, v8, Lc/c/b/a/j/m;->s:Landroid/graphics/RectF;

    iget v1, v14, Lc/c/b/a/k/e;->b:F

    sub-float v2, v1, v15

    iget v3, v14, Lc/c/b/a/k/e;->c:F

    sub-float v4, v3, v15

    add-float/2addr v1, v15

    add-float/2addr v3, v15

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v12, :cond_19

    cmpl-float v0, v15, v17

    if-gtz v0, :cond_12

    if-eqz v21, :cond_19

    :cond_12
    if-eqz v21, :cond_14

    cmpg-float v0, v6, v17

    if-gez v0, :cond_13

    neg-float v6, v6

    :cond_13
    invoke-static {v15, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_e

    :cond_14
    move v5, v15

    :goto_e
    const/4 v0, 0x1

    if-eq v9, v0, :cond_16

    cmpl-float v1, v5, v17

    if-nez v1, :cond_15

    goto :goto_f

    :cond_15
    mul-float v1, v5, v22

    div-float v6, v18, v1

    goto :goto_10

    :cond_16
    :goto_f
    const/4 v6, 0x0

    :goto_10
    div-float v1, v6, v23

    add-float/2addr v1, v11

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    add-float/2addr v1, v13

    sub-float v19, v19, v6

    mul-float v6, v19, v2

    cmpg-float v2, v6, v17

    if-gez v2, :cond_17

    const/4 v6, 0x0

    :cond_17
    add-float/2addr v1, v6

    cmpl-float v2, v25, v26

    if-ltz v2, :cond_18

    rem-float v25, v25, v26

    sget v2, Lc/c/b/a/k/i;->d:F

    cmpg-float v2, v25, v2

    if-gtz v2, :cond_18

    iget-object v1, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget v2, v14, Lc/c/b/a/k/e;->b:F

    iget v3, v14, Lc/c/b/a/k/e;->c:F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move v4, v12

    goto :goto_11

    :cond_18
    iget-object v2, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget v3, v14, Lc/c/b/a/k/e;->b:F

    mul-float v4, v1, v22

    move v7, v1

    float-to-double v0, v4

    move v4, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v9, v11

    mul-float v9, v9, v5

    add-float/2addr v9, v3

    iget v3, v14, Lc/c/b/a/k/e;->c:F

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v5, v5, v0

    add-float/2addr v5, v3

    invoke-virtual {v2, v9, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget-object v1, v8, Lc/c/b/a/j/m;->s:Landroid/graphics/RectF;

    neg-float v2, v6

    invoke-virtual {v0, v1, v7, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_11

    :cond_19
    move v4, v12

    rem-float v0, v25, v26

    sget v1, Lc/c/b/a/k/i;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    if-eqz v21, :cond_1a

    div-float v25, v25, v23

    add-float v25, v25, v24

    iget v0, v14, Lc/c/b/a/k/e;->b:F

    mul-float v1, v25, v22

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v3, v11

    mul-float v3, v3, v6

    add-float/2addr v3, v0

    iget v0, v14, Lc/c/b/a/k/e;->c:F

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v6, v6, v1

    add-float/2addr v6, v0

    iget-object v0, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_11

    :cond_1a
    iget-object v0, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget v1, v14, Lc/c/b/a/k/e;->b:F

    iget v2, v14, Lc/c/b/a/k/e;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1b
    :goto_11
    iget-object v0, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, v8, Lc/c/b/a/j/m;->q:Landroid/graphics/Canvas;

    iget-object v1, v8, Lc/c/b/a/j/m;->r:Landroid/graphics/Path;

    iget-object v2, v8, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_12
    add-int/lit8 v3, v10, 0x1

    move-object/from16 v9, p2

    move v12, v4

    move-object v7, v14

    move v5, v15

    move-object/from16 v4, v20

    move-object/from16 v14, v29

    move-object/from16 v15, v30

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_1c
    move-object v14, v7

    .line 12
    sget-object v0, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v0, v14}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    sget-object v8, Lc/c/b/a/d/t$a;->c:Lc/c/b/a/d/t$a;

    sget-object v9, Lc/c/b/a/d/t$a;->d:Lc/c/b/a/d/t$a;

    iget-object v1, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lc/c/b/a/k/e;

    move-result-object v10

    iget-object v1, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v11

    iget-object v1, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRotationAngle()F

    move-result v1

    iget-object v2, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v12

    iget-object v2, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v13

    iget-object v2, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v2

    mul-float v2, v2, v11

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sub-float v2, v11, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget-object v5, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v5

    div-float v14, v5, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float v3, v11, v3

    const v5, 0x40666666    # 3.6f

    mul-float v3, v3, v5

    iget-object v5, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    .line 1
    iget-boolean v6, v5, Lcom/github/mikephil/charting/charts/PieChart;->Q:Z

    if-eqz v6, :cond_1

    mul-float v3, v11, v14

    sub-float v3, v11, v3

    div-float/2addr v3, v4

    .line 2
    iget-boolean v4, v5, Lcom/github/mikephil/charting/charts/PieChart;->R:Z

    if-nez v4, :cond_0

    .line 3
    iget-boolean v4, v5, Lcom/github/mikephil/charting/charts/PieChart;->T:Z

    if-eqz v4, :cond_0

    move v6, v3

    float-to-double v3, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v2, v2, v1

    float-to-double v1, v2

    const-wide v15, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v17, v6

    float-to-double v6, v11

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v15

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-float v1, v1

    goto :goto_0

    :cond_0
    move/from16 v17, v3

    :goto_0
    move v7, v1

    move/from16 v3, v17

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    sub-float v15, v11, v3

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lc/c/b/a/d/s;

    .line 5
    iget-object v5, v6, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 6
    invoke-virtual {v6}, Lc/c/b/a/d/s;->p()F

    move-result v16

    iget-object v1, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    .line 7
    iget-boolean v4, v1, Lcom/github/mikephil/charting/charts/PieChart;->N:Z

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v17

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1c

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/a/g/b/i;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->j0()Z

    move-result v18

    if-nez v18, :cond_2

    if-nez v4, :cond_2

    move/from16 v22, v3

    move/from16 v44, v4

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    move/from16 v30, v7

    move-object/from16 v43, v8

    move-object/from16 v25, v9

    move/from16 v27, v11

    move-object/from16 v31, v12

    move-object/from16 v34, v13

    move/from16 v26, v14

    move-object/from16 v9, p1

    move-object v12, v10

    goto/16 :goto_11

    :cond_2
    move-object/from16 v19, v6

    invoke-interface {v2}, Lc/c/b/a/g/b/i;->d()Lc/c/b/a/d/t$a;

    move-result-object v6

    move-object/from16 v20, v5

    invoke-interface {v2}, Lc/c/b/a/g/b/i;->z()Lc/c/b/a/d/t$a;

    move-result-object v5

    invoke-virtual {v0, v2}, Lc/c/b/a/j/g;->a(Lc/c/b/a/g/b/e;)V

    move/from16 v21, v1

    iget-object v1, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    move/from16 v22, v3

    const-string v3, "Q"

    invoke-static {v1, v3}, Lc/c/b/a/k/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lc/c/b/a/k/i;->d(F)F

    move-result v3

    add-float v23, v3, v1

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->x0()Lc/c/b/a/e/e;

    move-result-object v3

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v1

    move-object/from16 v24, v10

    iget-object v10, v0, Lc/c/b/a/j/m;->i:Landroid/graphics/Paint;

    move/from16 v25, v11

    invoke-interface {v2}, Lc/c/b/a/g/b/i;->N0()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, v0, Lc/c/b/a/j/m;->i:Landroid/graphics/Paint;

    invoke-interface {v2}, Lc/c/b/a/g/b/i;->a()F

    move-result v11

    invoke-static {v11}, Lc/c/b/a/k/i;->d(F)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v2}, Lc/c/b/a/j/m;->i(Lc/c/b/a/g/b/i;)F

    move-result v10

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->z0()Lc/c/b/a/k/e;

    move-result-object v11

    invoke-static {v11}, Lc/c/b/a/k/e;->c(Lc/c/b/a/k/e;)Lc/c/b/a/k/e;

    move-result-object v11

    move/from16 v26, v14

    iget v14, v11, Lc/c/b/a/k/e;->b:F

    invoke-static {v14}, Lc/c/b/a/k/i;->d(F)F

    move-result v14

    iput v14, v11, Lc/c/b/a/k/e;->b:F

    iget v14, v11, Lc/c/b/a/k/e;->c:F

    invoke-static {v14}, Lc/c/b/a/k/i;->d(F)F

    move-result v14

    iput v14, v11, Lc/c/b/a/k/e;->c:F

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v1, :cond_1b

    invoke-interface {v2, v14}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v27

    move-object/from16 v28, v11

    move-object/from16 v11, v27

    check-cast v11, Lc/c/b/a/d/u;

    const/high16 v27, 0x3f800000    # 1.0f

    if-nez v21, :cond_3

    const/16 v29, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v29, v21, -0x1

    aget v29, v13, v29

    mul-float v29, v29, v27

    :goto_4
    aget v30, v12, v21

    const v31, 0x3c8efa35

    mul-float v32, v15, v31

    div-float v32, v10, v32

    const/high16 v33, 0x40000000    # 2.0f

    div-float v32, v32, v33

    sub-float v30, v30, v32

    div-float v30, v30, v33

    add-float v30, v30, v29

    mul-float v30, v30, v27

    move/from16 v29, v1

    add-float v1, v30, v7

    move/from16 v30, v7

    iget-object v7, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    .line 9
    iget-boolean v7, v7, Lcom/github/mikephil/charting/charts/PieChart;->S:Z

    if-eqz v7, :cond_4

    .line 10
    iget v7, v11, Lc/c/b/a/d/g;->c:F

    div-float v7, v7, v16

    const/high16 v32, 0x42c80000    # 100.0f

    mul-float v7, v7, v32

    goto :goto_5

    :cond_4
    iget v7, v11, Lc/c/b/a/d/g;->c:F

    .line 11
    :goto_5
    invoke-virtual {v3, v7, v11}, Lc/c/b/a/e/e;->c(FLc/c/b/a/d/u;)Ljava/lang/String;

    move-result-object v7

    move/from16 v32, v10

    .line 12
    iget-object v10, v11, Lc/c/b/a/d/u;->g:Ljava/lang/String;

    move-object/from16 v33, v3

    mul-float v3, v1, v31

    move-object/from16 v31, v12

    move-object/from16 v34, v13

    float-to-double v12, v3

    move-object/from16 v36, v10

    move-object/from16 v35, v11

    .line 13
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    move/from16 v37, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v10, v10

    if-eqz v4, :cond_5

    if-ne v6, v9, :cond_5

    const/4 v3, 0x1

    const/4 v11, 0x1

    goto :goto_6

    :cond_5
    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_6
    if-eqz v18, :cond_6

    if-ne v5, v9, :cond_6

    const/4 v3, 0x1

    const/16 v38, 0x1

    goto :goto_7

    :cond_6
    const/4 v3, 0x0

    const/16 v38, 0x0

    :goto_7
    if-eqz v4, :cond_7

    if-ne v6, v8, :cond_7

    const/4 v3, 0x1

    const/16 v39, 0x1

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    const/16 v39, 0x0

    :goto_8
    if-eqz v18, :cond_8

    if-ne v5, v8, :cond_8

    const/4 v3, 0x1

    const/16 v40, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    const/16 v40, 0x0

    :goto_9
    if-nez v11, :cond_a

    if-eqz v38, :cond_9

    goto :goto_a

    :cond_9
    move/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v43, v8

    move/from16 v42, v10

    move-object/from16 v12, v24

    move/from16 v27, v25

    move-object v10, v2

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v2, v36

    move-object/from16 v9, p1

    goto/16 :goto_e

    :cond_a
    :goto_a
    invoke-interface {v2}, Lc/c/b/a/g/b/i;->b()F

    move-result v3

    invoke-interface {v2}, Lc/c/b/a/g/b/i;->M()F

    move-result v41

    invoke-interface {v2}, Lc/c/b/a/g/b/i;->h0()F

    move-result v42

    const/high16 v43, 0x42c80000    # 100.0f

    move/from16 v44, v4

    div-float v4, v42, v43

    move-object/from16 v42, v5

    iget-object v5, v0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    .line 14
    iget-boolean v5, v5, Lcom/github/mikephil/charting/charts/PieChart;->Q:Z

    if-eqz v5, :cond_b

    mul-float v5, v25, v26

    move-object/from16 v43, v8

    move/from16 v8, v25

    invoke-static {v8, v5, v4, v5}, Lc/a/a/a/a;->a(FFFF)F

    move-result v4

    goto :goto_b

    :cond_b
    move-object/from16 v43, v8

    move/from16 v8, v25

    mul-float v4, v4, v8

    .line 15
    :goto_b
    invoke-interface {v2}, Lc/c/b/a/g/b/i;->E()Z

    move-result v5

    mul-float v41, v41, v15

    if-eqz v5, :cond_c

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    double-to-float v5, v12

    mul-float v41, v41, v5

    :cond_c
    mul-float v5, v4, v37

    move-object/from16 v12, v24

    iget v13, v12, Lc/c/b/a/k/e;->b:F

    add-float/2addr v5, v13

    mul-float v4, v4, v10

    move-object/from16 v24, v6

    iget v6, v12, Lc/c/b/a/k/e;->c:F

    add-float/2addr v4, v6

    add-float v3, v3, v27

    mul-float v3, v3, v15

    mul-float v25, v3, v37

    add-float v13, v25, v13

    mul-float v3, v3, v10

    add-float/2addr v6, v3

    move/from16 v27, v8

    move-object/from16 v25, v9

    float-to-double v8, v1

    const-wide v45, 0x4076800000000000L    # 360.0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    rem-double v8, v8, v45

    const-wide v45, 0x4056800000000000L    # 90.0

    cmpl-double v1, v8, v45

    if-ltz v1, :cond_e

    const-wide v45, 0x4070e00000000000L    # 270.0

    cmpg-double v1, v8, v45

    if-gtz v1, :cond_e

    sub-float v1, v13, v41

    iget-object v3, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v11, :cond_d

    iget-object v3, v0, Lc/c/b/a/j/m;->k:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_d
    sub-float v3, v1, v17

    move/from16 v41, v1

    goto :goto_c

    :cond_e
    add-float v41, v13, v41

    iget-object v1, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v11, :cond_f

    iget-object v1, v0, Lc/c/b/a/j/m;->k:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_f
    add-float v3, v41, v17

    :goto_c
    move v8, v3

    invoke-interface {v2}, Lc/c/b/a/g/b/i;->N0()I

    move-result v1

    const v3, 0x112233

    if-eq v1, v3, :cond_11

    invoke-interface {v2}, Lc/c/b/a/g/b/i;->T()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lc/c/b/a/j/m;->i:Landroid/graphics/Paint;

    invoke-interface {v2, v14}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_10
    iget-object v9, v0, Lc/c/b/a/j/m;->i:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v3, v2

    move v2, v5

    move-object v5, v3

    move v3, v4

    move v4, v13

    move-object/from16 v45, v42

    move/from16 v42, v10

    move-object v10, v5

    move v5, v6

    move/from16 v46, v6

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lc/c/b/a/j/m;->i:Landroid/graphics/Paint;

    move v2, v13

    move/from16 v3, v46

    move/from16 v4, v41

    move/from16 v5, v46

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_11
    move/from16 v46, v6

    move-object/from16 v45, v42

    move/from16 v42, v10

    move-object v10, v2

    :goto_d
    if-eqz v11, :cond_13

    if-eqz v38, :cond_13

    invoke-interface {v10, v14}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v1

    .line 16
    iget-object v2, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v3, v46

    invoke-virtual {v9, v7, v8, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 17
    invoke-virtual/range {v19 .. v19}, Lc/c/b/a/d/l;->e()I

    move-result v1

    if-ge v14, v1, :cond_12

    if-eqz v36, :cond_12

    add-float v6, v3, v23

    .line 18
    iget-object v1, v0, Lc/c/b/a/j/m;->k:Landroid/graphics/Paint;

    move-object/from16 v2, v36

    invoke-virtual {v9, v2, v8, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_e

    :cond_12
    move-object/from16 v2, v36

    goto :goto_e

    :cond_13
    move-object/from16 v9, p1

    move-object/from16 v2, v36

    move/from16 v3, v46

    if-eqz v11, :cond_14

    .line 19
    invoke-virtual/range {v19 .. v19}, Lc/c/b/a/d/l;->e()I

    move-result v1

    if-ge v14, v1, :cond_15

    if-eqz v2, :cond_15

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v23, v1

    add-float/2addr v1, v3

    .line 20
    iget-object v3, v0, Lc/c/b/a/j/m;->k:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v8, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_e

    :cond_14
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v38, :cond_15

    div-float v1, v23, v1

    add-float/2addr v1, v3

    .line 21
    invoke-interface {v10, v14}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v3

    .line 22
    iget-object v4, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v9, v7, v8, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_15
    :goto_e
    if-nez v39, :cond_16

    if-eqz v40, :cond_19

    :cond_16
    mul-float v1, v15, v37

    .line 23
    iget v3, v12, Lc/c/b/a/k/e;->b:F

    add-float/2addr v1, v3

    mul-float v3, v15, v42

    iget v4, v12, Lc/c/b/a/k/e;->c:F

    add-float/2addr v3, v4

    iget-object v4, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v39, :cond_17

    if-eqz v40, :cond_17

    invoke-interface {v10, v14}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v4

    .line 24
    iget-object v5, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v9, v7, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 25
    invoke-virtual/range {v19 .. v19}, Lc/c/b/a/d/l;->e()I

    move-result v4

    if-ge v14, v4, :cond_19

    if-eqz v2, :cond_19

    add-float v3, v3, v23

    .line 26
    iget-object v4, v0, Lc/c/b/a/j/m;->k:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_f

    :cond_17
    if-eqz v39, :cond_18

    .line 27
    invoke-virtual/range {v19 .. v19}, Lc/c/b/a/d/l;->e()I

    move-result v4

    if-ge v14, v4, :cond_19

    if-eqz v2, :cond_19

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v23, v4

    add-float/2addr v4, v3

    .line 28
    iget-object v3, v0, Lc/c/b/a/j/m;->k:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v1, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_f

    :cond_18
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v40, :cond_19

    div-float v2, v23, v2

    add-float/2addr v2, v3

    .line 29
    invoke-interface {v10, v14}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v3

    .line 30
    iget-object v4, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v9, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_19
    :goto_f
    move-object/from16 v1, v35

    .line 31
    iget-object v2, v1, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1a

    .line 32
    invoke-interface {v10}, Lc/c/b/a/g/b/e;->Q()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 33
    iget-object v2, v1, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    move-object/from16 v7, v28

    .line 34
    iget v1, v7, Lc/c/b/a/k/e;->c:F

    add-float/2addr v1, v15

    mul-float v3, v37, v1

    iget v4, v12, Lc/c/b/a/k/e;->b:F

    add-float/2addr v3, v4

    mul-float v1, v1, v42

    iget v4, v12, Lc/c/b/a/k/e;->c:F

    add-float/2addr v1, v4

    iget v4, v7, Lc/c/b/a/k/e;->b:F

    add-float/2addr v1, v4

    float-to-int v3, v3

    float-to-int v4, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lc/c/b/a/k/i;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_10

    :cond_1a
    move-object/from16 v7, v28

    :goto_10
    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object v11, v7

    move-object v2, v10

    move-object/from16 v6, v24

    move-object/from16 v9, v25

    move/from16 v25, v27

    move/from16 v1, v29

    move/from16 v7, v30

    move/from16 v10, v32

    move-object/from16 v3, v33

    move-object/from16 v13, v34

    move-object/from16 v8, v43

    move/from16 v4, v44

    move-object/from16 v5, v45

    move-object/from16 v24, v12

    move-object/from16 v12, v31

    goto/16 :goto_3

    :cond_1b
    move/from16 v44, v4

    move/from16 v30, v7

    move-object/from16 v43, v8

    move-object v7, v11

    move-object/from16 v31, v12

    move-object/from16 v34, v13

    move-object/from16 v12, v24

    move/from16 v27, v25

    move-object/from16 v25, v9

    move-object/from16 v9, p1

    .line 35
    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v7}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    move/from16 v1, v21

    :goto_11
    add-int/lit8 v3, v22, 0x1

    move-object v10, v12

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object/from16 v9, v25

    move/from16 v14, v26

    move/from16 v11, v27

    move/from16 v7, v30

    move-object/from16 v12, v31

    move-object/from16 v13, v34

    move-object/from16 v8, v43

    move/from16 v4, v44

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v9, p1

    move-object v12, v10

    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v12}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public h(Lc/c/b/a/k/e;FFFFFF)F
    .locals 15

    move-object/from16 v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p7, v1

    add-float v2, v2, p6

    iget v3, v0, Lc/c/b/a/k/e;->b:F

    add-float v4, p6, p7

    const v5, 0x3c8efa35

    mul-float v4, v4, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float v4, v4, p2

    add-float/2addr v4, v3

    iget v3, v0, Lc/c/b/a/k/e;->c:F

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, p2

    add-float/2addr v6, v3

    iget v3, v0, Lc/c/b/a/k/e;->b:F

    mul-float v2, v2, v5

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v2, v9

    mul-float v2, v2, p2

    add-float/2addr v2, v3

    iget v0, v0, Lc/c/b/a/k/e;->c:F

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v3, v7

    mul-float v3, v3, p2

    add-float/2addr v3, v0

    sub-float v0, v4, p4

    float-to-double v7, v0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    sub-float v0, v6, p5

    float-to-double v11, v0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v7, v9

    move/from16 v0, p3

    float-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v13, 0x4066800000000000L    # 180.0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v13, v11

    div-double/2addr v13, v9

    const-wide v11, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v13, v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    mul-double v11, v11, v7

    double-to-float v0, v11

    sub-float v0, p2, v0

    float-to-double v7, v0

    add-float v4, v4, p4

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-float v6, v6, p5

    div-float/2addr v6, v1

    sub-float/2addr v3, v6

    float-to-double v0, v3

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v0

    double-to-float v0, v7

    return v0
.end method

.method public i(Lc/c/b/a/g/b/i;)F
    .locals 3

    invoke-interface {p1}, Lc/c/b/a/g/b/i;->A0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lc/c/b/a/g/b/i;->o()F

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lc/c/b/a/g/b/i;->o()F

    move-result v0

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget-object v2, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v0, v1

    .line 2
    invoke-interface {p1}, Lc/c/b/a/g/b/e;->f0()F

    move-result v1

    iget-object v2, p0, Lc/c/b/a/j/m;->f:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v2

    check-cast v2, Lc/c/b/a/d/s;

    invoke-virtual {v2}, Lc/c/b/a/d/s;->p()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lc/c/b/a/g/b/i;->o()F

    move-result p1

    :goto_0
    return p1
.end method
