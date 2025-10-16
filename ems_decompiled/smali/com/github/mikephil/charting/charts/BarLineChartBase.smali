.class public abstract Lcom/github/mikephil/charting/charts/BarLineChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source ""

# interfaces
.implements Lc/c/b/a/g/a/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc/c/b/a/d/d<",
        "+",
        "Lc/c/b/a/g/b/b<",
        "+",
        "Lc/c/b/a/d/o;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart<",
        "TT;>;",
        "Lc/c/b/a/g/a/b;"
    }
.end annotation


# instance fields
.field public I:I

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Landroid/graphics/Paint;

.field public S:Landroid/graphics/Paint;

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:F

.field public a0:Z

.field public b0:Lc/c/b/a/h/e;

.field public c0:Lc/c/b/a/c/j;

.field public d0:Lc/c/b/a/c/j;

.field public e0:Lc/c/b/a/j/t;

.field public f0:Lc/c/b/a/j/t;

.field public g0:Lc/c/b/a/k/g;

.field public h0:Lc/c/b/a/k/g;

.field public i0:Lc/c/b/a/j/q;

.field public j0:J

.field public k0:J

.field public l0:Landroid/graphics/RectF;

.field public m0:Landroid/graphics/Matrix;

.field public n0:Lc/c/b/a/k/d;

.field public o0:Lc/c/b/a/k/d;

.field public p0:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->K:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->T:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->U:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->V:Z

    const/high16 p2, 0x41700000    # 15.0f

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->W:F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a0:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j0:J

    iput-wide p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k0:J

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l0:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m0:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p1, p2}, Lc/c/b/a/k/d;->b(DD)Lc/c/b/a/k/d;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n0:Lc/c/b/a/k/d;

    invoke-static {p1, p2, p1, p2}, Lc/c/b/a/k/d;->b(DD)Lc/c/b/a/k/d;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o0:Lc/c/b/a/k/d;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p0:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->K:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->T:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->U:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->V:Z

    const/high16 p2, 0x41700000    # 15.0f

    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->W:F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a0:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j0:J

    iput-wide p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k0:J

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l0:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m0:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p1, p2}, Lc/c/b/a/k/d;->b(DD)Lc/c/b/a/k/d;

    move-result-object p3

    iput-object p3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n0:Lc/c/b/a/k/d;

    invoke-static {p1, p2, p1, p2}, Lc/c/b/a/k/d;->b(DD)Lc/c/b/a/k/d;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o0:Lc/c/b/a/k/d;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p0:[F

    return-void
.end method


# virtual methods
.method public a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;
    .locals 1

    sget-object v0, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h0:Lc/c/b/a/k/g;

    return-object p1
.end method

.method public b(Lc/c/b/a/c/j$a;)Z
    .locals 1

    .line 1
    sget-object v0, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    .line 2
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 12

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->p:Lc/c/b/a/h/b;

    instance-of v1, v0, Lc/c/b/a/h/a;

    if-eqz v1, :cond_5

    check-cast v0, Lc/c/b/a/h/a;

    .line 1
    iget-object v1, v0, Lc/c/b/a/h/a;->s:Lc/c/b/a/k/e;

    iget v2, v1, Lc/c/b/a/k/e;->b:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v1, v1, Lc/c/b/a/k/e;->c:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-object v4, v0, Lc/c/b/a/h/a;->s:Lc/c/b/a/k/e;

    iget v5, v4, Lc/c/b/a/k/e;->b:F

    iget-object v6, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v6, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/Chart;->getDragDecelerationFrictionCoef()F

    move-result v6

    mul-float v6, v6, v5

    iput v6, v4, Lc/c/b/a/k/e;->b:F

    iget-object v4, v0, Lc/c/b/a/h/a;->s:Lc/c/b/a/k/e;

    iget v5, v4, Lc/c/b/a/k/e;->c:F

    iget-object v6, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v6, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/Chart;->getDragDecelerationFrictionCoef()F

    move-result v6

    mul-float v6, v6, v5

    iput v6, v4, Lc/c/b/a/k/e;->c:F

    iget-wide v4, v0, Lc/c/b/a/h/a;->q:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    iget-object v5, v0, Lc/c/b/a/h/a;->s:Lc/c/b/a/k/e;

    iget v6, v5, Lc/c/b/a/k/e;->b:F

    mul-float v6, v6, v4

    iget v5, v5, Lc/c/b/a/k/e;->c:F

    mul-float v5, v5, v4

    iget-object v4, v0, Lc/c/b/a/h/a;->r:Lc/c/b/a/k/e;

    iget v7, v4, Lc/c/b/a/k/e;->b:F

    add-float v9, v7, v6

    iput v9, v4, Lc/c/b/a/k/e;->b:F

    iget v6, v4, Lc/c/b/a/k/e;->c:F

    add-float v10, v6, v5

    iput v10, v4, Lc/c/b/a/k/e;->c:F

    const/4 v8, 0x2

    const/4 v11, 0x0

    move-wide v4, v1

    move-wide v6, v1

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    iget-object v5, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v5, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 2
    iget-boolean v6, v5, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Z

    if-eqz v6, :cond_1

    .line 3
    iget-object v6, v0, Lc/c/b/a/h/a;->r:Lc/c/b/a/k/e;

    iget v6, v6, Lc/c/b/a/k/e;->b:F

    iget-object v7, v0, Lc/c/b/a/h/a;->j:Lc/c/b/a/k/e;

    iget v7, v7, Lc/c/b/a/k/e;->b:F

    sub-float/2addr v6, v7

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 4
    :goto_0
    iget-boolean v5, v5, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Z

    if-eqz v5, :cond_2

    .line 5
    iget-object v3, v0, Lc/c/b/a/h/a;->r:Lc/c/b/a/k/e;

    iget v3, v3, Lc/c/b/a/k/e;->c:F

    iget-object v5, v0, Lc/c/b/a/h/a;->j:Lc/c/b/a/k/e;

    iget v5, v5, Lc/c/b/a/k/e;->c:F

    sub-float/2addr v3, v5

    :cond_2
    invoke-virtual {v0, v4, v6, v3}, Lc/c/b/a/h/a;->d(Landroid/view/MotionEvent;FF)V

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    iget-object v3, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lc/c/b/a/k/j;

    move-result-object v3

    iget-object v4, v0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    iget-object v5, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lc/c/b/a/k/j;->m(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    iput-object v4, v0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    iput-wide v1, v0, Lc/c/b/a/h/a;->q:J

    iget-object v1, v0, Lc/c/b/a/h/a;->s:Lc/c/b/a/k/e;

    iget v1, v1, Lc/c/b/a/k/e;->b:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v5, v1, v3

    if-gez v5, :cond_4

    iget-object v1, v0, Lc/c/b/a/h/a;->s:Lc/c/b/a/k/e;

    iget v1, v1, Lc/c/b/a/k/e;->c:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f()V

    iget-object v1, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->postInvalidate()V

    invoke-virtual {v0}, Lc/c/b/a/h/a;->g()V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, v0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    .line 6
    sget-object v1, Lc/c/b/a/k/i;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_5
    :goto_2
    return-void
.end method

.method public f()V
    .locals 9

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l0:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->t(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->l0:Landroid/graphics/RectF;

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
    invoke-virtual {v2, v5}, Lc/c/b/a/c/j;->i(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v1, v2

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
    invoke-virtual {v2, v5}, Lc/c/b/a/c/j;->i(Landroid/graphics/Paint;)F

    move-result v2

    add-float/2addr v4, v2

    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    .line 5
    iget-boolean v5, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v5, :cond_4

    .line 6
    iget-boolean v5, v2, Lc/c/b/a/c/a;->t:Z

    if-eqz v5, :cond_4

    .line 7
    iget v5, v2, Lc/c/b/a/c/i;->D:I

    int-to-float v5, v5

    .line 8
    iget v6, v2, Lc/c/b/a/c/b;->c:F

    add-float/2addr v5, v6

    .line 9
    iget-object v2, v2, Lc/c/b/a/c/i;->E:Lc/c/b/a/c/i$a;

    .line 10
    sget-object v6, Lc/c/b/a/c/i$a;->d:Lc/c/b/a/c/i$a;

    if-ne v2, v6, :cond_2

    add-float/2addr v0, v5

    goto :goto_1

    :cond_2
    sget-object v6, Lc/c/b/a/c/i$a;->c:Lc/c/b/a/c/i$a;

    if-ne v2, v6, :cond_3

    goto :goto_0

    :cond_3
    sget-object v6, Lc/c/b/a/c/i$a;->e:Lc/c/b/a/c/i$a;

    if-ne v2, v6, :cond_4

    add-float/2addr v0, v5

    :goto_0
    add-float/2addr v3, v5

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

    .line 11
    iget-object v2, v2, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 12
    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
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

    .line 14
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->u()V

    return-void
.end method

.method public getAxisLeft()Lc/c/b/a/c/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    return-object v0
.end method

.method public getAxisRight()Lc/c/b/a/c/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    return-object v0
.end method

.method public bridge synthetic getData()Lc/c/b/a/d/d;
    .locals 1

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v0

    check-cast v0, Lc/c/b/a/d/d;

    return-object v0
.end method

.method public getDrawListener()Lc/c/b/a/h/e;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b0:Lc/c/b/a/h/e;

    return-object v0
.end method

.method public getHighestVisibleX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    .line 2
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 3
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 4
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 5
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o0:Lc/c/b/a/k/d;

    invoke-virtual {v0, v2, v1, v3}, Lc/c/b/a/k/g;->d(FFLc/c/b/a/k/d;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v0, v0, Lc/c/b/a/c/a;->z:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->o0:Lc/c/b/a/k/d;

    iget-wide v2, v2, Lc/c/b/a/k/d;->b:D

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

    iget-wide v2, v2, Lc/c/b/a/k/d;->b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getMaxVisibleCount()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:I

    return v0
.end method

.method public getMinOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->W:F

    return v0
.end method

.method public getRendererLeftYAxis()Lc/c/b/a/j/t;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e0:Lc/c/b/a/j/t;

    return-object v0
.end method

.method public getRendererRightYAxis()Lc/c/b/a/j/t;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f0:Lc/c/b/a/j/t;

    return-object v0
.end method

.method public getRendererXAxis()Lc/c/b/a/j/q;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i0:Lc/c/b/a/j/q;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 1
    :cond_0
    iget v0, v0, Lc/c/b/a/k/j;->i:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 1
    :cond_0
    iget v0, v0, Lc/c/b/a/k/j;->j:F

    return v0
.end method

.method public getVisibleXRange()F
    .locals 2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getYChartMax()F
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    iget v0, v0, Lc/c/b/a/c/a;->z:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    iget v1, v1, Lc/c/b/a/c/a;->z:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getYChartMin()F
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    iget v0, v0, Lc/c/b/a/c/a;->A:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    iget v1, v1, Lc/c/b/a/c/a;->A:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public n()V
    .locals 4

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->n()V

    new-instance v0, Lc/c/b/a/c/j;

    sget-object v1, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    invoke-direct {v0, v1}, Lc/c/b/a/c/j;-><init>(Lc/c/b/a/c/j$a;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    new-instance v0, Lc/c/b/a/c/j;

    sget-object v1, Lc/c/b/a/c/j$a;->d:Lc/c/b/a/c/j$a;

    invoke-direct {v0, v1}, Lc/c/b/a/c/j;-><init>(Lc/c/b/a/c/j$a;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    new-instance v0, Lc/c/b/a/k/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-direct {v0, v1}, Lc/c/b/a/k/g;-><init>(Lc/c/b/a/k/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    new-instance v0, Lc/c/b/a/k/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-direct {v0, v1}, Lc/c/b/a/k/g;-><init>(Lc/c/b/a/k/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h0:Lc/c/b/a/k/g;

    new-instance v0, Lc/c/b/a/j/t;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    invoke-direct {v0, v1, v2, v3}, Lc/c/b/a/j/t;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/j;Lc/c/b/a/k/g;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e0:Lc/c/b/a/j/t;

    new-instance v0, Lc/c/b/a/j/t;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h0:Lc/c/b/a/k/g;

    invoke-direct {v0, v1, v2, v3}, Lc/c/b/a/j/t;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/j;Lc/c/b/a/k/g;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f0:Lc/c/b/a/j/t;

    new-instance v0, Lc/c/b/a/j/q;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    invoke-direct {v0, v1, v2, v3}, Lc/c/b/a/j/q;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/i;Lc/c/b/a/k/g;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i0:Lc/c/b/a/j/q;

    new-instance v0, Lc/c/b/a/f/b;

    invoke-direct {v0, p0}, Lc/c/b/a/f/b;-><init>(Lc/c/b/a/g/a/b;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setHighlighter(Lc/c/b/a/f/b;)V

    new-instance v0, Lc/c/b/a/h/a;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 1
    iget-object v1, v1, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    const/high16 v2, 0x40400000    # 3.0f

    .line 2
    invoke-direct {v0, p0, v1, v2}, Lc/c/b/a/h/a;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->p:Lc/c/b/a/h/b;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Landroid/graphics/Paint;

    const/16 v1, 0xf0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public o()V
    .locals 5

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    const-string v1, "MPAndroidChart"

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "Preparing... DATA NOT SET."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "Preparing..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc/c/b/a/j/g;->f()V

    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->s()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e0:Lc/c/b/a/j/t;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    iget v2, v1, Lc/c/b/a/c/a;->A:F

    iget v3, v1, Lc/c/b/a/c/a;->z:F

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lc/c/b/a/j/a;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f0:Lc/c/b/a/j/t;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    iget v3, v2, Lc/c/b/a/c/a;->A:F

    iget v4, v2, Lc/c/b/a/c/a;->z:F

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v1}, Lc/c/b/a/j/a;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i0:Lc/c/b/a/j/q;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v3, v2, Lc/c/b/a/c/a;->A:F

    iget v2, v2, Lc/c/b/a/c/a;->z:F

    invoke-virtual {v0, v3, v2, v1}, Lc/c/b/a/j/q;->a(FFZ)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->s:Lc/c/b/a/j/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    invoke-virtual {v0, v1}, Lc/c/b/a/j/i;->a(Lc/c/b/a/d/l;)V

    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->T:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 2
    iget-object v2, v2, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 3
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->U:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 4
    iget-object v2, v2, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 5
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6
    :cond_2
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Z

    if-eqz v2, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    move-result v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v4, Lc/c/b/a/d/d;

    .line 8
    iget-object v5, v4, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c/b/a/g/b/e;

    invoke-interface {v6, v2, v3}, Lc/c/b/a/g/b/e;->N(FF)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lc/c/b/a/d/l;->a()V

    .line 9
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v3, Lc/c/b/a/d/d;

    .line 10
    iget v4, v3, Lc/c/b/a/d/l;->d:F

    .line 11
    iget v3, v3, Lc/c/b/a/d/l;->c:F

    .line 12
    invoke-virtual {v2, v4, v3}, Lc/c/b/a/c/a;->b(FF)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    .line 13
    iget-boolean v3, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v3, :cond_4

    .line 14
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v3, Lc/c/b/a/d/d;

    sget-object v4, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    invoke-virtual {v3, v4}, Lc/c/b/a/d/l;->i(Lc/c/b/a/c/j$a;)F

    move-result v3

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v5, Lc/c/b/a/d/d;

    invoke-virtual {v5, v4}, Lc/c/b/a/d/l;->h(Lc/c/b/a/c/j$a;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lc/c/b/a/c/j;->b(FF)V

    :cond_4
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    .line 15
    iget-boolean v3, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v3, :cond_5

    .line 16
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v3, Lc/c/b/a/d/d;

    sget-object v4, Lc/c/b/a/c/j$a;->d:Lc/c/b/a/c/j$a;

    invoke-virtual {v3, v4}, Lc/c/b/a/d/l;->i(Lc/c/b/a/c/j$a;)F

    move-result v3

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v5, Lc/c/b/a/d/d;

    invoke-virtual {v5, v4}, Lc/c/b/a/d/l;->h(Lc/c/b/a/c/j$a;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lc/c/b/a/c/j;->b(FF)V

    :cond_5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f()V

    .line 17
    :cond_6
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    .line 18
    iget-boolean v3, v2, Lc/c/b/a/c/b;->a:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 19
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e0:Lc/c/b/a/j/t;

    iget v5, v2, Lc/c/b/a/c/a;->A:F

    iget v6, v2, Lc/c/b/a/c/a;->z:F

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v5, v6, v4}, Lc/c/b/a/j/a;->a(FFZ)V

    :cond_7
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    .line 20
    iget-boolean v3, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v3, :cond_8

    .line 21
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f0:Lc/c/b/a/j/t;

    iget v5, v2, Lc/c/b/a/c/a;->A:F

    iget v6, v2, Lc/c/b/a/c/a;->z:F

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v5, v6, v4}, Lc/c/b/a/j/a;->a(FFZ)V

    :cond_8
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    .line 22
    iget-boolean v3, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v3, :cond_9

    .line 23
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i0:Lc/c/b/a/j/q;

    iget v5, v2, Lc/c/b/a/c/a;->A:F

    iget v2, v2, Lc/c/b/a/c/a;->z:F

    invoke-virtual {v3, v5, v2, v4}, Lc/c/b/a/j/q;->a(FFZ)V

    :cond_9
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i0:Lc/c/b/a/j/q;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/q;->i(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e0:Lc/c/b/a/j/t;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/t;->h(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f0:Lc/c/b/a/j/t;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/t;->h(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    .line 24
    iget-boolean v2, v2, Lc/c/b/a/c/a;->v:Z

    if-eqz v2, :cond_a

    .line 25
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i0:Lc/c/b/a/j/q;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/q;->j(Landroid/graphics/Canvas;)V

    :cond_a
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    .line 26
    iget-boolean v2, v2, Lc/c/b/a/c/a;->v:Z

    if-eqz v2, :cond_b

    .line 27
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e0:Lc/c/b/a/j/t;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/t;->i(Landroid/graphics/Canvas;)V

    :cond_b
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    .line 28
    iget-boolean v2, v2, Lc/c/b/a/c/a;->v:Z

    if-eqz v2, :cond_c

    .line 29
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f0:Lc/c/b/a/j/t;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/t;->i(Landroid/graphics/Canvas;)V

    :cond_c
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    .line 30
    iget-boolean v3, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v3, :cond_d

    .line 31
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    .line 32
    iget-boolean v3, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v3, :cond_e

    .line 33
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    .line 34
    iget-boolean v3, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v3, :cond_f

    .line 35
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 36
    iget-object v3, v3, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 37
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    invoke-virtual {v3, p1}, Lc/c/b/a/j/g;->b(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    .line 38
    iget-boolean v3, v3, Lc/c/b/a/c/a;->v:Z

    if-nez v3, :cond_10

    .line 39
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i0:Lc/c/b/a/j/q;

    invoke-virtual {v3, p1}, Lc/c/b/a/j/q;->j(Landroid/graphics/Canvas;)V

    :cond_10
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    .line 40
    iget-boolean v3, v3, Lc/c/b/a/c/a;->v:Z

    if-nez v3, :cond_11

    .line 41
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e0:Lc/c/b/a/j/t;

    invoke-virtual {v3, p1}, Lc/c/b/a/j/t;->i(Landroid/graphics/Canvas;)V

    :cond_11
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    .line 42
    iget-boolean v3, v3, Lc/c/b/a/c/a;->v:Z

    if-nez v3, :cond_12

    .line 43
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f0:Lc/c/b/a/j/t;

    invoke-virtual {v3, p1}, Lc/c/b/a/j/t;->i(Landroid/graphics/Canvas;)V

    :cond_12
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->r()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    invoke-virtual {v3, p1, v4}, Lc/c/b/a/j/g;->d(Landroid/graphics/Canvas;[Lc/c/b/a/f/d;)V

    :cond_13
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/g;->c(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    .line 44
    iget-boolean v3, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v3, :cond_14

    .line 45
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i0:Lc/c/b/a/j/q;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/q;->k(Landroid/graphics/Canvas;)V

    :cond_14
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    .line 46
    iget-boolean v3, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v3, :cond_15

    .line 47
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e0:Lc/c/b/a/j/t;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/t;->j(Landroid/graphics/Canvas;)V

    :cond_15
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    .line 48
    iget-boolean v3, v2, Lc/c/b/a/c/b;->a:Z

    if-eqz v3, :cond_16

    .line 49
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f0:Lc/c/b/a/j/t;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/t;->j(Landroid/graphics/Canvas;)V

    :cond_16
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i0:Lc/c/b/a/j/q;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/q;->h(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e0:Lc/c/b/a/j/t;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/t;->g(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f0:Lc/c/b/a/j/t;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/t;->g(Landroid/graphics/Canvas;)V

    .line 50
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->V:Z

    if-eqz v2, :cond_17

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 52
    iget-object v3, v3, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 53
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    invoke-virtual {v3, p1}, Lc/c/b/a/j/g;->e(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :cond_17
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/g;->e(Landroid/graphics/Canvas;)V

    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->s:Lc/c/b/a/j/i;

    invoke-virtual {v2, p1}, Lc/c/b/a/j/i;->c(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->h(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->i(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz p1, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j0:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->j0:J

    iget-wide v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k0:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k0:J

    div-long/2addr v0, v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawtime: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms, average: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, cycles: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->k0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MPAndroidChart"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p0:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a0:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 1
    iget-object v2, v2, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    .line 2
    aput v4, v0, v3

    .line 3
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 4
    aput v2, v0, v1

    .line 5
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    .line 6
    invoke-virtual {v2, v0}, Lc/c/b/a/k/g;->f([F)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/charts/Chart;->onSizeChanged(IIII)V

    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a0:Z

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    .line 8
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p0:[F

    invoke-virtual {p1, p2}, Lc/c/b/a/k/g;->g([F)V

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->p0:[F

    .line 9
    iget-object p3, p1, Lc/c/b/a/k/j;->o:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    iget-object p4, p1, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {p3, p4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    aget p4, p2, v3

    .line 10
    iget-object v0, p1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p4, v2

    .line 11
    aget p2, p2, v1

    .line 12
    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    neg-float p4, p4

    neg-float p2, p2

    .line 13
    invoke-virtual {p3, p4, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1, p3, p0, v1}, Lc/c/b/a/k/j;->m(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 15
    iget-object p2, p1, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    .line 16
    invoke-virtual {p1, p2, p0, v1}, Lc/c/b/a/k/j;->m(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->p:Lc/c/b/a/h/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->l:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public s()V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    move-object v2, v1

    check-cast v2, Lc/c/b/a/d/d;

    .line 1
    iget v2, v2, Lc/c/b/a/d/l;->d:F

    .line 2
    check-cast v1, Lc/c/b/a/d/d;

    .line 3
    iget v1, v1, Lc/c/b/a/d/l;->c:F

    .line 4
    invoke-virtual {v0, v2, v1}, Lc/c/b/a/c/a;->b(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v1, Lc/c/b/a/d/d;

    sget-object v2, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    invoke-virtual {v1, v2}, Lc/c/b/a/d/l;->i(Lc/c/b/a/c/j$a;)F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v3, Lc/c/b/a/d/d;

    invoke-virtual {v3, v2}, Lc/c/b/a/d/l;->h(Lc/c/b/a/c/j$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc/c/b/a/c/j;->b(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v1, Lc/c/b/a/d/d;

    sget-object v2, Lc/c/b/a/c/j$a;->d:Lc/c/b/a/c/j$a;

    invoke-virtual {v1, v2}, Lc/c/b/a/d/l;->i(Lc/c/b/a/c/j$a;)F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v3, Lc/c/b/a/d/d;

    invoke-virtual {v3, v2}, Lc/c/b/a/d/l;->h(Lc/c/b/a/c/j$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc/c/b/a/c/j;->b(FF)V

    return-void
.end method

.method public setAutoScaleMinMaxEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->J:Z

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->S:Landroid/graphics/Paint;

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setClipValuesToContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->V:Z

    return-void
.end method

.method public setDoubleTapToZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Z

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Z

    return-void
.end method

.method public setDragOffsetX(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, v0, Lc/c/b/a/k/j;->m:F

    return-void
.end method

.method public setDragOffsetY(F)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, v0, Lc/c/b/a/k/j;->n:F

    return-void
.end method

.method public setDragXEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Z

    return-void
.end method

.method public setDragYEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Z

    return-void
.end method

.method public setDrawBorders(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->U:Z

    return-void
.end method

.method public setDrawGridBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->T:Z

    return-void
.end method

.method public setGridBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->R:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setHighlightPerDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Z

    return-void
.end method

.method public setKeepPositionOnRotation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->a0:Z

    return-void
.end method

.method public setMaxVisibleValueCount(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->I:I

    return-void
.end method

.method public setMinOffset(F)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->W:F

    return-void
.end method

.method public setOnDrawListener(Lc/c/b/a/h/e;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b0:Lc/c/b/a/h/e;

    return-void
.end method

.method public setPinchZoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->K:Z

    return-void
.end method

.method public setRendererLeftYAxis(Lc/c/b/a/j/t;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->e0:Lc/c/b/a/j/t;

    return-void
.end method

.method public setRendererRightYAxis(Lc/c/b/a/j/t;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f0:Lc/c/b/a/j/t;

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Z

    return-void
.end method

.method public setScaleXEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Z

    return-void
.end method

.method public setScaleYEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Z

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
    iput v0, p1, Lc/c/b/a/k/j;->g:F

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
    iput v0, p1, Lc/c/b/a/k/j;->h:F

    iget-object v0, p1, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    iget-object v1, p1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Lc/c/b/a/k/j;->j(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public setXAxisRenderer(Lc/c/b/a/j/q;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->i0:Lc/c/b/a/j/q;

    return-void
.end method

.method public t(Landroid/graphics/RectF;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    if-eqz v0, :cond_7

    .line 1
    iget-boolean v1, v0, Lc/c/b/a/c/b;->a:Z

    if-eqz v1, :cond_7

    .line 2
    iget-boolean v1, v0, Lc/c/b/a/c/e;->j:Z

    if-nez v1, :cond_7

    .line 3
    iget-object v0, v0, Lc/c/b/a/c/e;->i:Lc/c/b/a/c/e$d;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 5
    iget-object v0, v0, Lc/c/b/a/c/e;->g:Lc/c/b/a/c/e$c;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    iget v2, v1, Lc/c/b/a/c/e;->t:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 7
    iget v3, v3, Lc/c/b/a/k/j;->c:F

    .line 8
    iget v1, v1, Lc/c/b/a/c/e;->s:F

    mul-float v3, v3, v1

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 10
    iget v2, v2, Lc/c/b/a/c/b;->b:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 11
    iput v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 12
    iget-object v0, v0, Lc/c/b/a/c/e;->h:Lc/c/b/a/c/e$e;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    iget v2, v1, Lc/c/b/a/c/e;->t:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 14
    iget v3, v3, Lc/c/b/a/k/j;->c:F

    .line 15
    iget v1, v1, Lc/c/b/a/c/e;->s:F

    mul-float v3, v3, v1

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 17
    iget v2, v2, Lc/c/b/a/c/b;->b:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 18
    iput v1, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 19
    iget-object v0, v0, Lc/c/b/a/c/e;->h:Lc/c/b/a/c/e$e;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    iget v2, v1, Lc/c/b/a/c/e;->u:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 21
    iget v3, v3, Lc/c/b/a/k/j;->d:F

    .line 22
    iget v1, v1, Lc/c/b/a/c/e;->s:F

    mul-float v3, v3, v1

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 24
    iget v2, v2, Lc/c/b/a/c/b;->c:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 25
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    iget v2, v1, Lc/c/b/a/c/e;->u:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 26
    iget v3, v3, Lc/c/b/a/k/j;->d:F

    .line 27
    iget v1, v1, Lc/c/b/a/c/e;->s:F

    mul-float v3, v3, v1

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    .line 29
    iget v2, v2, Lc/c/b/a/c/b;->c:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 30
    iput v1, p1, Landroid/graphics/RectF;->top:F

    :cond_7
    :goto_0
    return-void
.end method

.method public u()V
    .locals 5

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "Preparing Value-Px Matrix, xmin: "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v1, v1, Lc/c/b/a/c/a;->A:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xmax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v1, v1, Lc/c/b/a/c/a;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xdelta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v1, v1, Lc/c/b/a/c/a;->B:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPAndroidChart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->h0:Lc/c/b/a/k/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v2, v1, Lc/c/b/a/c/a;->A:F

    iget v1, v1, Lc/c/b/a/c/a;->B:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    iget v4, v3, Lc/c/b/a/c/a;->B:F

    iget v3, v3, Lc/c/b/a/c/a;->A:F

    invoke-virtual {v0, v2, v1, v4, v3}, Lc/c/b/a/k/g;->i(FFFF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->g0:Lc/c/b/a/k/g;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v2, v1, Lc/c/b/a/c/a;->A:F

    iget v1, v1, Lc/c/b/a/c/a;->B:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    iget v4, v3, Lc/c/b/a/c/a;->B:F

    iget v3, v3, Lc/c/b/a/c/a;->A:F

    invoke-virtual {v0, v2, v1, v4, v3}, Lc/c/b/a/k/g;->i(FFFF)V

    return-void
.end method
