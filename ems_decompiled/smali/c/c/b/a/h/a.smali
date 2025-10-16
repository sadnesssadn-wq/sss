.class public Lc/c/b/a/h/a;
.super Lc/c/b/a/h/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/h/b<",
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "+",
        "Lc/c/b/a/d/d<",
        "+",
        "Lc/c/b/a/g/b/b<",
        "+",
        "Lc/c/b/a/d/o;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field public h:Landroid/graphics/Matrix;

.field public i:Landroid/graphics/Matrix;

.field public j:Lc/c/b/a/k/e;

.field public k:Lc/c/b/a/k/e;

.field public l:F

.field public m:F

.field public n:F

.field public o:Lc/c/b/a/g/b/e;

.field public p:Landroid/view/VelocityTracker;

.field public q:J

.field public r:Lc/c/b/a/k/e;

.field public s:Lc/c/b/a/k/e;

.field public t:F

.field public u:F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
            "+",
            "Lc/c/b/a/d/d<",
            "+",
            "Lc/c/b/a/g/b/b<",
            "+",
            "Lc/c/b/a/d/o;",
            ">;>;>;",
            "Landroid/graphics/Matrix;",
            "F)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lc/c/b/a/h/b;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lc/c/b/a/h/a;->i:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v0

    iput-object v0, p0, Lc/c/b/a/h/a;->j:Lc/c/b/a/k/e;

    invoke-static {p1, p1}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v0

    iput-object v0, p0, Lc/c/b/a/h/a;->k:Lc/c/b/a/k/e;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc/c/b/a/h/a;->l:F

    iput v0, p0, Lc/c/b/a/h/a;->m:F

    iput v0, p0, Lc/c/b/a/h/a;->n:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/c/b/a/h/a;->q:J

    invoke-static {p1, p1}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v0

    iput-object v0, p0, Lc/c/b/a/h/a;->r:Lc/c/b/a/k/e;

    invoke-static {p1, p1}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object p1

    iput-object p1, p0, Lc/c/b/a/h/a;->s:Lc/c/b/a/k/e;

    iput-object p2, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    invoke-static {p3}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lc/c/b/a/h/a;->t:F

    const/high16 p1, 0x40600000    # 3.5f

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lc/c/b/a/h/a;->u:F

    return-void
.end method

.method public static f(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public b(FF)Lc/c/b/a/k/e;
    .locals 2

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lc/c/b/a/k/j;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v1

    .line 2
    invoke-virtual {p0}, Lc/c/b/a/h/a;->c()Z

    iget-object v1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {v0}, Lc/c/b/a/k/j;->k()F

    move-result p2

    sub-float/2addr v1, p2

    neg-float p2, v1

    invoke-static {p1, p2}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lc/c/b/a/h/a;->o:Lc/c/b/a/g/b/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 1
    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    iget-object v0, p0, Lc/c/b/a/h/a;->o:Lc/c/b/a/g/b/e;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-interface {v0}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->b(Lc/c/b/a/c/j$a;)Z

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Landroid/view/MotionEvent;FF)V
    .locals 2

    sget-object v0, Lc/c/b/a/h/b$a;->d:Lc/c/b/a/h/b$a;

    iput-object v0, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    iget-object v0, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lc/c/b/a/h/a;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object v0

    invoke-virtual {p0}, Lc/c/b/a/h/a;->c()Z

    iget-object v1, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lc/c/b/a/h/c;->d(Landroid/view/MotionEvent;FF)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/h/a;->i:Landroid/graphics/Matrix;

    iget-object v1, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lc/c/b/a/h/a;->j:Lc/c/b/a/k/e;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lc/c/b/a/k/e;->b:F

    iget-object v0, p0, Lc/c/b/a/h/a;->j:Lc/c/b/a/k/e;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lc/c/b/a/k/e;->c:F

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1
    invoke-virtual {v0, v1, p1}, Lcom/github/mikephil/charting/charts/Chart;->j(FF)Lc/c/b/a/f/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v0, Lc/c/b/a/d/d;

    .line 2
    iget p1, p1, Lc/c/b/a/f/d;->f:I

    .line 3
    invoke-virtual {v0, p1}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object p1

    check-cast p1, Lc/c/b/a/g/b/b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-object p1, p0, Lc/c/b/a/h/a;->o:Lc/c/b/a/g/b/e;

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/h/a;->s:Lc/c/b/a/k/e;

    const/4 v1, 0x0

    iput v1, v0, Lc/c/b/a/k/e;->b:F

    iput v1, v0, Lc/c/b/a/k/e;->c:F

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8

    sget-object v0, Lc/c/b/a/h/b$a;->j:Lc/c/b/a/h/b$a;

    iput-object v0, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/c/b/a/h/c;->b(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    move-object v1, v0

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 1
    iget-boolean v1, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->L:Z

    if-eqz v1, :cond_4

    .line 2
    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v0

    check-cast v0, Lc/c/b/a/d/d;

    invoke-virtual {v0}, Lc/c/b/a/d/l;->e()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc/c/b/a/h/a;->b(FF)Lc/c/b/a/k/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    move-object v2, v1

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    move-object v3, v1

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 3
    iget-boolean v3, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Z

    const v4, 0x3fb33333    # 1.4f

    if-eqz v3, :cond_1

    const v3, 0x3fb33333    # 1.4f

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 4
    :goto_0
    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 5
    iget-boolean v1, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 6
    :goto_1
    iget v1, v0, Lc/c/b/a/k/e;->b:F

    iget v5, v0, Lc/c/b/a/k/e;->c:F

    .line 7
    iget-object v6, v2, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    neg-float v5, v5

    iget-object v7, v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m0:Landroid/graphics/Matrix;

    .line 8
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget-object v6, v6, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v7, v3, v4, v1, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 9
    iget-object v1, v2, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    iget-object v3, v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;->m0:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lc/c/b/a/k/j;->m(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f()V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 10
    iget-object v1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 11
    iget-boolean v1, v1, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz v1, :cond_3

    const-string v1, "Double-Tap, Zooming In, x: "

    .line 12
    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lc/c/b/a/k/e;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lc/c/b/a/k/e;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BarlineChartTouch"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_3
    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v0}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    .line 14
    :cond_4
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    sget-object v0, Lc/c/b/a/h/b$a;->l:Lc/c/b/a/h/b$a;

    iput-object v0, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lc/c/b/a/h/c;->e(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    sget-object v0, Lc/c/b/a/h/b$a;->k:Lc/c/b/a/h/b$a;

    iput-object v0, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/c/b/a/h/c;->h(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    sget-object v0, Lc/c/b/a/h/b$a;->i:Lc/c/b/a/h/b$a;

    iput-object v0, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/c/b/a/h/c;->f(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

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

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/charts/Chart;->j(FF)Lc/c/b/a/f/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/b/a/h/b;->a(Lc/c/b/a/f/d;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    sget-object p1, Lc/c/b/a/h/b$a;->d:Lc/c/b/a/h/b$a;

    iget-object v0, p0, Lc/c/b/a/h/a;->p:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lc/c/b/a/h/a;->p:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lc/c/b/a/h/a;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lc/c/b/a/h/a;->p:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lc/c/b/a/h/a;->p:Landroid/view/VelocityTracker;

    :cond_1
    iget v0, p0, Lc/c/b/a/h/b;->d:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/c/b/a/h/b;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 1
    iget-boolean v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_4

    iget-boolean v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_5

    .line 2
    iget-boolean v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Z

    if-nez v3, :cond_5

    .line 3
    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Z

    if-nez v0, :cond_5

    return v5

    .line 4
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_38

    const/16 v3, 0x3e8

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eq v0, v5, :cond_31

    const/4 v1, 0x0

    if-eq v0, v8, :cond_10

    if-eq v0, v2, :cond_f

    if-eq v0, v6, :cond_a

    const/4 p1, 0x6

    if-eq v0, p1, :cond_6

    goto/16 :goto_18

    :cond_6
    iget-object p1, p0, Lc/c/b/a/h/a;->p:Landroid/view/VelocityTracker;

    .line 5
    sget v0, Lc/c/b/a/k/i;->c:I

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    :goto_2
    if-ge v4, v7, :cond_9

    if-ne v4, v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    mul-float v9, v9, v3

    invoke-virtual {p1, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v8

    mul-float v8, v8, v2

    add-float/2addr v8, v9

    cmpg-float v8, v8, v1

    if-gez v8, :cond_8

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6
    :cond_9
    :goto_4
    iput v6, p0, Lc/c/b/a/h/b;->d:I

    goto/16 :goto_18

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-lt p1, v8, :cond_3a

    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->g()V

    invoke-virtual {p0, p2}, Lc/c/b/a/h/a;->e(Landroid/view/MotionEvent;)V

    .line 7
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 8
    iput p1, p0, Lc/c/b/a/h/a;->l:F

    .line 9
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 10
    iput p1, p0, Lc/c/b/a/h/a;->m:F

    invoke-static {p2}, Lc/c/b/a/h/a;->f(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lc/c/b/a/h/a;->n:F

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_e

    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 11
    iget-boolean v0, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->K:Z

    if-eqz v0, :cond_b

    .line 12
    iput v7, p0, Lc/c/b/a/h/b;->d:I

    goto :goto_6

    .line 13
    :cond_b
    iget-boolean v0, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Z

    .line 14
    iget-boolean p1, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Z

    if-eq v0, p1, :cond_c

    if-eqz v0, :cond_d

    goto :goto_5

    .line 15
    :cond_c
    iget p1, p0, Lc/c/b/a/h/a;->l:F

    iget v0, p0, Lc/c/b/a/h/a;->m:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_d

    :goto_5
    const/4 v2, 0x2

    :cond_d
    iput v2, p0, Lc/c/b/a/h/b;->d:I

    :cond_e
    :goto_6
    iget-object p1, p0, Lc/c/b/a/h/a;->k:Lc/c/b/a/k/e;

    .line 16
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iput v1, p1, Lc/c/b/a/k/e;->b:F

    div-float/2addr p2, v0

    iput p2, p1, Lc/c/b/a/k/e;->c:F

    goto/16 :goto_18

    .line 17
    :cond_f
    iput v4, p0, Lc/c/b/a/h/b;->d:I

    .line 18
    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object p1

    if-eqz p1, :cond_3a

    goto/16 :goto_17

    .line 19
    :cond_10
    iget v0, p0, Lc/c/b/a/h/b;->d:I

    if-ne v0, v5, :cond_13

    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->g()V

    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 20
    iget-boolean p1, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Z

    if-eqz p1, :cond_11

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lc/c/b/a/h/a;->j:Lc/c/b/a/k/e;

    iget v0, v0, Lc/c/b/a/k/e;->b:F

    sub-float/2addr p1, v0

    goto :goto_7

    :cond_11
    const/4 p1, 0x0

    :goto_7
    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 22
    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Z

    if-eqz v0, :cond_12

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lc/c/b/a/h/a;->j:Lc/c/b/a/k/e;

    iget v1, v1, Lc/c/b/a/k/e;->c:F

    sub-float v1, v0, v1

    :cond_12
    invoke-virtual {p0, p2, p1, v1}, Lc/c/b/a/h/a;->d(Landroid/view/MotionEvent;FF)V

    goto/16 :goto_18

    :cond_13
    if-eq v0, v8, :cond_1e

    if-eq v0, v2, :cond_1e

    if-ne v0, v7, :cond_14

    goto/16 :goto_c

    :cond_14
    if-nez v0, :cond_3a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lc/c/b/a/h/a;->j:Lc/c/b/a/k/e;

    iget v2, v2, Lc/c/b/a/k/e;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v6, p0, Lc/c/b/a/h/a;->j:Lc/c/b/a/k/e;

    iget v6, v6, Lc/c/b/a/k/e;->c:F

    sub-float/2addr v0, v2

    sub-float/2addr v3, v6

    mul-float v0, v0, v0

    mul-float v3, v3, v3

    add-float/2addr v3, v0

    float-to-double v2, v3

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 25
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lc/c/b/a/h/a;->t:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3a

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 26
    iget-boolean v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Z

    if-nez v2, :cond_16

    iget-boolean v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Z

    if-eqz v2, :cond_15

    goto :goto_8

    :cond_15
    const/4 v2, 0x0

    goto :goto_9

    :cond_16
    :goto_8
    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_3a

    .line 27
    iget-object v0, v0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 28
    invoke-virtual {v0}, Lc/c/b/a/k/j;->b()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lc/c/b/a/k/j;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_a

    :cond_17
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_19

    .line 29
    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 30
    iget-object v0, v0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 31
    iget v2, v0, Lc/c/b/a/k/j;->m:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_18

    iget v0, v0, Lc/c/b/a/k/j;->n:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_1a

    :cond_19
    const/4 v4, 0x1

    :cond_1a
    if-eqz v4, :cond_1d

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lc/c/b/a/h/a;->j:Lc/c/b/a/k/e;

    iget v1, v1, Lc/c/b/a/k/e;->b:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v1, p0, Lc/c/b/a/h/a;->j:Lc/c/b/a/k/e;

    iget v1, v1, Lc/c/b/a/k/e;->c:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 33
    iget-boolean v2, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->N:Z

    if-nez v2, :cond_1b

    cmpl-float v2, p2, v0

    if-ltz v2, :cond_3a

    .line 34
    :cond_1b
    iget-boolean v1, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->O:Z

    if-nez v1, :cond_1c

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_3a

    .line 35
    :cond_1c
    iput-object p1, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    iput v5, p0, Lc/c/b/a/h/b;->d:I

    goto/16 :goto_18

    :cond_1d
    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 36
    iget-boolean v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->M:Z

    if-eqz v1, :cond_3a

    .line 37
    iput-object p1, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    if-eqz v1, :cond_3a

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;->j(FF)Lc/c/b/a/f/d;

    move-result-object p1

    if-eqz p1, :cond_3a

    iget-object p2, p0, Lc/c/b/a/h/b;->e:Lc/c/b/a/f/d;

    invoke-virtual {p1, p2}, Lc/c/b/a/f/d;->a(Lc/c/b/a/f/d;)Z

    move-result p2

    if-nez p2, :cond_3a

    iput-object p1, p0, Lc/c/b/a/h/b;->e:Lc/c/b/a/f/d;

    iget-object p2, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p2, p1, v5}, Lcom/github/mikephil/charting/charts/Chart;->l(Lc/c/b/a/f/d;Z)V

    goto/16 :goto_18

    .line 39
    :cond_1e
    :goto_c
    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->g()V

    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 40
    iget-boolean v0, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Z

    if-nez v0, :cond_1f

    .line 41
    iget-boolean p1, p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Z

    if-eqz p1, :cond_3a

    .line 42
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-lt p1, v8, :cond_3a

    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object p1

    invoke-static {p2}, Lc/c/b/a/h/a;->f(Landroid/view/MotionEvent;)F

    move-result v0

    iget v1, p0, Lc/c/b/a/h/a;->u:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3a

    iget-object v1, p0, Lc/c/b/a/h/a;->k:Lc/c/b/a/k/e;

    iget v3, v1, Lc/c/b/a/k/e;->b:F

    iget v1, v1, Lc/c/b/a/k/e;->c:F

    invoke-virtual {p0, v3, v1}, Lc/c/b/a/h/a;->b(FF)Lc/c/b/a/k/e;

    move-result-object v1

    iget-object v3, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lc/c/b/a/k/j;

    move-result-object v3

    iget v6, p0, Lc/c/b/a/h/b;->d:I

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_28

    sget-object v2, Lc/c/b/a/h/b$a;->g:Lc/c/b/a/h/b$a;

    iput-object v2, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    iget v2, p0, Lc/c/b/a/h/a;->n:F

    div-float/2addr v0, v2

    cmpg-float v2, v0, v9

    if-gez v2, :cond_20

    const/4 v2, 0x1

    goto :goto_d

    :cond_20
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_21

    .line 43
    iget v6, v3, Lc/c/b/a/k/j;->i:F

    iget v7, v3, Lc/c/b/a/k/j;->g:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_22

    goto :goto_e

    .line 44
    :cond_21
    iget v6, v3, Lc/c/b/a/k/j;->i:F

    iget v7, v3, Lc/c/b/a/k/j;->h:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_22

    :goto_e
    const/4 v6, 0x1

    goto :goto_f

    :cond_22
    const/4 v6, 0x0

    :goto_f
    if-eqz v2, :cond_23

    .line 45
    iget v2, v3, Lc/c/b/a/k/j;->j:F

    iget v3, v3, Lc/c/b/a/k/j;->e:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_24

    goto :goto_10

    .line 46
    :cond_23
    iget v2, v3, Lc/c/b/a/k/j;->j:F

    iget v3, v3, Lc/c/b/a/k/j;->f:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_24

    :goto_10
    const/4 v4, 0x1

    .line 47
    :cond_24
    iget-object v2, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 48
    iget-boolean v3, v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Z

    if-eqz v3, :cond_25

    move v3, v0

    goto :goto_11

    :cond_25
    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    :goto_11
    iget-boolean v2, v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Z

    if-eqz v2, :cond_26

    move v9, v0

    :cond_26
    if-nez v4, :cond_27

    if-eqz v6, :cond_30

    .line 50
    :cond_27
    iget-object v0, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lc/c/b/a/h/a;->i:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    iget v2, v1, Lc/c/b/a/k/e;->b:F

    iget v4, v1, Lc/c/b/a/k/e;->c:F

    invoke-virtual {v0, v3, v9, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz p1, :cond_30

    invoke-interface {p1, p2, v3, v9}, Lc/c/b/a/h/c;->c(Landroid/view/MotionEvent;FF)V

    goto/16 :goto_16

    :cond_28
    if-ne v6, v8, :cond_2c

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 51
    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->P:Z

    if-eqz v0, :cond_2c

    .line 52
    sget-object v0, Lc/c/b/a/h/b$a;->e:Lc/c/b/a/h/b$a;

    iput-object v0, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    .line 53
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 54
    iget v2, p0, Lc/c/b/a/h/a;->l:F

    div-float/2addr v0, v2

    cmpg-float v2, v0, v9

    if-gez v2, :cond_29

    const/4 v2, 0x1

    goto :goto_12

    :cond_29
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_2a

    .line 55
    iget v2, v3, Lc/c/b/a/k/j;->i:F

    iget v3, v3, Lc/c/b/a/k/j;->g:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2b

    goto :goto_13

    .line 56
    :cond_2a
    iget v2, v3, Lc/c/b/a/k/j;->i:F

    iget v3, v3, Lc/c/b/a/k/j;->h:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2b

    :goto_13
    const/4 v4, 0x1

    :cond_2b
    if-eqz v4, :cond_30

    .line 57
    iget-object v2, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    iget-object v3, p0, Lc/c/b/a/h/a;->i:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    iget v3, v1, Lc/c/b/a/k/e;->b:F

    iget v4, v1, Lc/c/b/a/k/e;->c:F

    invoke-virtual {v2, v0, v9, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz p1, :cond_30

    invoke-interface {p1, p2, v0, v9}, Lc/c/b/a/h/c;->c(Landroid/view/MotionEvent;FF)V

    goto :goto_16

    :cond_2c
    if-ne v6, v2, :cond_30

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 58
    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->Q:Z

    if-eqz v0, :cond_30

    .line 59
    sget-object v0, Lc/c/b/a/h/b$a;->f:Lc/c/b/a/h/b$a;

    iput-object v0, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    .line 60
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 61
    iget v2, p0, Lc/c/b/a/h/a;->m:F

    div-float/2addr v0, v2

    cmpg-float v2, v0, v9

    if-gez v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_14

    :cond_2d
    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_2e

    .line 62
    iget v2, v3, Lc/c/b/a/k/j;->j:F

    iget v3, v3, Lc/c/b/a/k/j;->e:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2f

    goto :goto_15

    .line 63
    :cond_2e
    iget v2, v3, Lc/c/b/a/k/j;->j:F

    iget v3, v3, Lc/c/b/a/k/j;->f:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2f

    :goto_15
    const/4 v4, 0x1

    :cond_2f
    if-eqz v4, :cond_30

    .line 64
    iget-object v2, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    iget-object v3, p0, Lc/c/b/a/h/a;->i:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    iget v3, v1, Lc/c/b/a/k/e;->b:F

    iget v4, v1, Lc/c/b/a/k/e;->c:F

    invoke-virtual {v2, v9, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz p1, :cond_30

    invoke-interface {p1, p2, v9, v0}, Lc/c/b/a/h/c;->c(Landroid/view/MotionEvent;FF)V

    .line 65
    :cond_30
    :goto_16
    sget-object p1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, v1}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    goto/16 :goto_18

    .line 66
    :cond_31
    iget-object p1, p0, Lc/c/b/a/h/a;->p:Landroid/view/VelocityTracker;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 67
    sget v9, Lc/c/b/a/k/i;->c:I

    int-to-float v9, v9

    .line 68
    invoke-virtual {p1, v3, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 69
    sget v9, Lc/c/b/a/k/i;->b:I

    int-to-float v9, v9

    cmpl-float v0, v0, v9

    if-gtz v0, :cond_32

    .line 70
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 71
    sget v9, Lc/c/b/a/k/i;->b:I

    int-to-float v9, v9

    cmpl-float v0, v0, v9

    if-lez v0, :cond_33

    .line 72
    :cond_32
    iget v0, p0, Lc/c/b/a/h/b;->d:I

    if-ne v0, v5, :cond_33

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 73
    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/Chart;->f:Z

    if-eqz v0, :cond_33

    .line 74
    invoke-virtual {p0}, Lc/c/b/a/h/a;->g()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lc/c/b/a/h/a;->q:J

    iget-object v0, p0, Lc/c/b/a/h/a;->r:Lc/c/b/a/k/e;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, v0, Lc/c/b/a/k/e;->b:F

    iget-object v0, p0, Lc/c/b/a/h/a;->r:Lc/c/b/a/k/e;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iput v9, v0, Lc/c/b/a/k/e;->c:F

    iget-object v0, p0, Lc/c/b/a/h/a;->s:Lc/c/b/a/k/e;

    iput p1, v0, Lc/c/b/a/k/e;->b:F

    iput v3, v0, Lc/c/b/a/k/e;->c:F

    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 76
    :cond_33
    iget p1, p0, Lc/c/b/a/h/b;->d:I

    if-eq p1, v8, :cond_34

    if-eq p1, v2, :cond_34

    if-eq p1, v7, :cond_34

    if-ne p1, v6, :cond_35

    :cond_34
    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->f()V

    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_35
    iput v4, p0, Lc/c/b/a/h/b;->d:I

    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    .line 77
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_36

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 78
    :cond_36
    iget-object p1, p0, Lc/c/b/a/h/a;->p:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lc/c/b/a/h/a;->p:Landroid/view/VelocityTracker;

    .line 79
    :cond_37
    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object p1

    if-eqz p1, :cond_3a

    :goto_17
    iget-object v0, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    invoke-interface {p1, p2, v0}, Lc/c/b/a/h/c;->g(Landroid/view/MotionEvent;Lc/c/b/a/h/b$a;)V

    goto :goto_18

    .line 80
    :cond_38
    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getOnChartGestureListener()Lc/c/b/a/h/c;

    move-result-object p1

    if-eqz p1, :cond_39

    iget-object v0, p0, Lc/c/b/a/h/b;->c:Lc/c/b/a/h/b$a;

    invoke-interface {p1, p2, v0}, Lc/c/b/a/h/c;->a(Landroid/view/MotionEvent;Lc/c/b/a/h/b$a;)V

    .line 81
    :cond_39
    invoke-virtual {p0}, Lc/c/b/a/h/a;->g()V

    invoke-virtual {p0, p2}, Lc/c/b/a/h/a;->e(Landroid/view/MotionEvent;)V

    :cond_3a
    :goto_18
    iget-object p1, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/Chart;->getViewPortHandler()Lc/c/b/a/k/j;

    move-result-object p1

    iget-object p2, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    iget-object v0, p0, Lc/c/b/a/h/b;->g:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {p1, p2, v0, v5}, Lc/c/b/a/k/j;->m(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    iput-object p2, p0, Lc/c/b/a/h/a;->h:Landroid/graphics/Matrix;

    return v5
.end method
