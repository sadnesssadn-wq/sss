.class public abstract Lcom/github/mikephil/charting/charts/Chart;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Lc/c/b/a/g/a/e;


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
        "Landroid/view/ViewGroup;",
        "Lc/c/b/a/g/a/e;"
    }
.end annotation


# instance fields
.field public A:F

.field public B:Z

.field public C:[Lc/c/b/a/f/d;

.field public D:F

.field public E:Z

.field public F:Lc/c/b/a/c/d;

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public H:Z

.field public c:Z

.field public d:Lc/c/b/a/d/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:F

.field public h:Lc/c/b/a/e/c;

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Paint;

.field public k:Lc/c/b/a/c/i;

.field public l:Z

.field public m:Lc/c/b/a/c/c;

.field public n:Lc/c/b/a/c/e;

.field public o:Lc/c/b/a/h/d;

.field public p:Lc/c/b/a/h/b;

.field public q:Ljava/lang/String;

.field public r:Lc/c/b/a/h/c;

.field public s:Lc/c/b/a/j/i;

.field public t:Lc/c/b/a/j/g;

.field public u:Lc/c/b/a/f/f;

.field public v:Lc/c/b/a/k/j;

.field public w:Lc/c/b/a/a/a;

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->e:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->f:Z

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    new-instance v0, Lc/c/b/a/e/c;

    invoke-direct {v0, p1}, Lc/c/b/a/e/c;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->h:Lc/c/b/a/e/c;

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->l:Z

    const-string v0, "No chart data available."

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->q:Ljava/lang/String;

    new-instance v0, Lc/c/b/a/k/j;

    invoke-direct {v0}, Lc/c/b/a/k/j;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->x:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->y:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->z:F

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->A:F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->B:Z

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:F

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Z

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->n()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->e:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->f:Z

    const p3, 0x3f666666    # 0.9f

    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    new-instance p3, Lc/c/b/a/e/c;

    invoke-direct {p3, p1}, Lc/c/b/a/e/c;-><init>(I)V

    iput-object p3, p0, Lcom/github/mikephil/charting/charts/Chart;->h:Lc/c/b/a/e/c;

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->l:Z

    const-string p3, "No chart data available."

    iput-object p3, p0, Lcom/github/mikephil/charting/charts/Chart;->q:Ljava/lang/String;

    new-instance p3, Lc/c/b/a/k/j;

    invoke-direct {p3}, Lc/c/b/a/k/j;-><init>()V

    iput-object p3, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    const/4 p3, 0x0

    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->x:F

    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->y:F

    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->z:F

    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->A:F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->B:Z

    iput p3, p0, Lcom/github/mikephil/charting/charts/Chart;->D:F

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Z

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->n()V

    return-void
.end method


# virtual methods
.method public e(ILc/c/b/a/a/b$d;)V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 2
    fill-array-data v1, :array_0

    const-string v2, "phaseY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p1

    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    iget-object p1, v0, Lc/c/b/a/a/a;->a:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public abstract f()V
.end method

.method public g()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public getAnimator()Lc/c/b/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    return-object v0
.end method

.method public getCenter()Lc/c/b/a/k/e;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v0

    return-object v0
.end method

.method public getCenterOfView()Lc/c/b/a/k/e;
    .locals 1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Lc/c/b/a/k/e;

    move-result-object v0

    return-object v0
.end method

.method public getCenterOffsets()Lc/c/b/a/k/e;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 1
    iget-object v1, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-static {v1, v0}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v0

    return-object v0
.end method

.method public getChartBitmap()Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getContentRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    .line 1
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getData()Lc/c/b/a/d/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    return-object v0
.end method

.method public getDefaultValueFormatter()Lc/c/b/a/e/e;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->h:Lc/c/b/a/e/c;

    return-object v0
.end method

.method public getDescription()Lc/c/b/a/c/c;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->m:Lc/c/b/a/c/c;

    return-object v0
.end method

.method public getDragDecelerationFrictionCoef()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    return v0
.end method

.method public getExtraBottomOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->z:F

    return v0
.end method

.method public getExtraLeftOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->A:F

    return v0
.end method

.method public getExtraRightOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->y:F

    return v0
.end method

.method public getExtraTopOffset()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->x:F

    return v0
.end method

.method public getHighlighted()[Lc/c/b/a/f/d;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    return-object v0
.end method

.method public getHighlighter()Lc/c/b/a/f/f;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->u:Lc/c/b/a/f/f;

    return-object v0
.end method

.method public getJobs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLegend()Lc/c/b/a/c/e;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    return-object v0
.end method

.method public getLegendRenderer()Lc/c/b/a/j/i;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->s:Lc/c/b/a/j/i;

    return-object v0
.end method

.method public getMarker()Lc/c/b/a/c/d;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lc/c/b/a/c/d;

    return-object v0
.end method

.method public getMarkerView()Lc/c/b/a/c/d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getMarker()Lc/c/b/a/c/d;

    move-result-object v0

    return-object v0
.end method

.method public getMaxHighlightDistance()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:F

    return v0
.end method

.method public abstract synthetic getMaxVisibleCount()I
.end method

.method public getOnChartGestureListener()Lc/c/b/a/h/c;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->r:Lc/c/b/a/h/c;

    return-object v0
.end method

.method public getOnTouchListener()Lc/c/b/a/h/b;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->p:Lc/c/b/a/h/b;

    return-object v0
.end method

.method public getRenderer()Lc/c/b/a/j/g;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    return-object v0
.end method

.method public getViewPortHandler()Lc/c/b/a/k/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    return-object v0
.end method

.method public getXAxis()Lc/c/b/a/c/i;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    return-object v0
.end method

.method public getXChartMax()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v0, v0, Lc/c/b/a/c/a;->z:F

    return v0
.end method

.method public getXChartMin()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v0, v0, Lc/c/b/a/c/a;->A:F

    return v0
.end method

.method public getXRange()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget v0, v0, Lc/c/b/a/c/a;->B:F

    return v0
.end method

.method public abstract synthetic getYChartMax()F
.end method

.method public abstract synthetic getYChartMin()F
.end method

.method public getYMax()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    .line 1
    iget v0, v0, Lc/c/b/a/d/l;->a:F

    return v0
.end method

.method public getYMin()F
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    .line 1
    iget v0, v0, Lc/c/b/a/d/l;->b:F

    return v0
.end method

.method public h(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->m:Lc/c/b/a/c/c;

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v1, v0, Lc/c/b/a/c/b;->a:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->m:Lc/c/b/a/c/c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->m:Lc/c/b/a/c/c;

    .line 3
    iget v1, v1, Lc/c/b/a/c/b;->d:F

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->m:Lc/c/b/a/c/c;

    .line 5
    iget v1, v1, Lc/c/b/a/c/b;->e:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->m:Lc/c/b/a/c/c;

    .line 7
    iget-object v1, v1, Lc/c/b/a/c/c;->g:Landroid/graphics/Paint$Align;

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-virtual {v1}, Lc/c/b/a/k/j;->l()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->m:Lc/c/b/a/c/c;

    .line 9
    iget v1, v1, Lc/c/b/a/c/b;->b:F

    sub-float/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-virtual {v2}, Lc/c/b/a/k/j;->k()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->m:Lc/c/b/a/c/c;

    .line 11
    iget v3, v2, Lc/c/b/a/c/b;->c:F

    sub-float/2addr v1, v3

    .line 12
    iget-object v2, v2, Lc/c/b/a/c/c;->f:Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public i(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lc/c/b/a/c/d;

    if-eqz v0, :cond_5

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Z

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    .line 3
    iget v4, v2, Lc/c/b/a/f/d;->f:I

    .line 4
    invoke-virtual {v3, v4}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lc/c/b/a/d/l;->f(Lc/c/b/a/f/d;)Lc/c/b/a/d/o;

    move-result-object v4

    invoke-interface {v3, v4}, Lc/c/b/a/g/b/e;->D(Lc/c/b/a/d/o;)I

    move-result v5

    if-eqz v4, :cond_4

    int-to-float v5, v5

    invoke-interface {v3}, Lc/c/b/a/g/b/e;->y0()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v3, v3, v6

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/charts/Chart;->k(Lc/c/b/a/f/d;)[F

    move-result-object v3

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    aget v6, v3, v0

    const/4 v7, 0x1

    aget v8, v3, v7

    .line 5
    invoke-virtual {v5, v6}, Lc/c/b/a/k/j;->h(F)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v8}, Lc/c/b/a/k/j;->i(F)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lc/c/b/a/c/d;

    invoke-interface {v5, v4, v2}, Lc/c/b/a/c/d;->a(Lc/c/b/a/d/o;Lc/c/b/a/f/d;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lc/c/b/a/c/d;

    aget v4, v3, v0

    aget v3, v3, v7

    check-cast v2, Lc/c/b/a/c/h;

    invoke-virtual {v2, p1, v4, v3}, Lc/c/b/a/c/h;->b(Landroid/graphics/Canvas;FF)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public j(FF)Lc/c/b/a/f/d;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    if-nez v0, :cond_0

    const-string p1, "MPAndroidChart"

    const-string p2, "Can\'t select by touch. No data set."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getHighlighter()Lc/c/b/a/f/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc/c/b/a/f/f;->a(FF)Lc/c/b/a/f/d;

    move-result-object p1

    return-object p1
.end method

.method public k(Lc/c/b/a/f/d;)[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    iget v1, p1, Lc/c/b/a/f/d;->i:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    iget p1, p1, Lc/c/b/a/f/d;->j:F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method

.method public l(Lc/c/b/a/f/d;Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "Highlighted: "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lc/c/b/a/f/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MPAndroidChart"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    invoke-virtual {v1, p1}, Lc/c/b/a/d/l;->f(Lc/c/b/a/f/d;)Lc/c/b/a/d/o;

    move-result-object v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    move-object p1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lc/c/b/a/f/d;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    :goto_0
    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setLastHighlighted([Lc/c/b/a/f/d;)V

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->o:Lc/c/b/a/h/d;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->r()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->o:Lc/c/b/a/h/d;

    invoke-interface {p1}, Lc/c/b/a/h/d;->g()V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/Chart;->o:Lc/c/b/a/h/d;

    invoke-interface {p2, v0, p1}, Lc/c/b/a/h/d;->c(Lc/c/b/a/d/o;Lc/c/b/a/f/d;)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public m([Lc/c/b/a/f/d;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setLastHighlighted([Lc/c/b/a/f/d;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public n()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    new-instance v0, Lc/c/b/a/a/a;

    new-instance v1, Lcom/github/mikephil/charting/charts/Chart$a;

    invoke-direct {v1, p0}, Lcom/github/mikephil/charting/charts/Chart$a;-><init>(Lcom/github/mikephil/charting/charts/Chart;)V

    invoke-direct {v0, v1}, Lc/c/b/a/a/a;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1
    sget-object v1, Lc/c/b/a/k/i;->a:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    sput v0, Lc/c/b/a/k/i;->b:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    sput v0, Lc/c/b/a/k/i;->c:I

    const-string v0, "MPChartLib-Utils"

    const-string v1, "Utils.init(...) PROVIDED CONTEXT OBJECT IS NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    sput v2, Lc/c/b/a/k/i;->b:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    sput v1, Lc/c/b/a/k/i;->c:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lc/c/b/a/k/i;->a:Landroid/util/DisplayMetrics;

    :goto_0
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 2
    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/Chart;->D:F

    new-instance v0, Lc/c/b/a/c/c;

    invoke-direct {v0}, Lc/c/b/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->m:Lc/c/b/a/c/c;

    new-instance v0, Lc/c/b/a/c/e;

    invoke-direct {v0}, Lc/c/b/a/c/e;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->n:Lc/c/b/a/c/e;

    new-instance v1, Lc/c/b/a/j/i;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-direct {v1, v2, v0}, Lc/c/b/a/j/i;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/e;)V

    iput-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->s:Lc/c/b/a/j/i;

    new-instance v0, Lc/c/b/a/c/i;

    invoke-direct {v0}, Lc/c/b/a/c/i;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->i:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Landroid/graphics/Paint;

    const/16 v1, 0xf7

    const/16 v2, 0xbd

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    const-string v1, "Chart.init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public abstract o()V
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/github/mikephil/charting/charts/Chart;->q(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getCenter()Lc/c/b/a/k/e;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->q:Ljava/lang/String;

    iget v2, v0, Lc/c/b/a/k/e;->b:F

    iget v0, v0, Lc/c/b/a/k/e;->c:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->B:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->f()V

    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/Chart;->B:Z

    :cond_2
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 7

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    const-string v1, "MPAndroidChart"

    if-eqz v0, :cond_0

    const-string v0, "OnSizeChanged()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, ", height: "

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    const/16 v2, 0x2710

    if-ge p1, v2, :cond_2

    if-ge p2, v2, :cond_2

    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting chart dimens, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    int-to-float v1, p1

    int-to-float v2, p2

    .line 1
    iget-object v3, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 2
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 3
    invoke-virtual {v0}, Lc/c/b/a/k/j;->l()F

    move-result v5

    invoke-virtual {v0}, Lc/c/b/a/k/j;->k()F

    move-result v6

    iput v2, v0, Lc/c/b/a/k/j;->d:F

    iput v1, v0, Lc/c/b/a/k/j;->c:F

    invoke-virtual {v0, v4, v3, v5, v6}, Lc/c/b/a/k/j;->n(FFFF)V

    goto :goto_0

    .line 4
    :cond_2
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*Avoiding* setting chart dimens! width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->o()V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    return-void
.end method

.method public p(FFFF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setExtraLeftOffset(F)V

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/Chart;->setExtraTopOffset(F)V

    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/Chart;->setExtraRightOffset(F)V

    invoke-virtual {p0, p4}, Lcom/github/mikephil/charting/charts/Chart;->setExtraBottomOffset(F)V

    return-void
.end method

.method public final q(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/Chart;->q(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    return-void
.end method

.method public r()Z
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public setData(Lc/c/b/a/d/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->B:Z

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v1, p1, Lc/c/b/a/d/l;->b:F

    .line 2
    iget v2, p1, Lc/c/b/a/d/l;->a:F

    const/4 v3, 0x2

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lc/c/b/a/d/l;->e()I

    move-result p1

    if-ge p1, v3, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_1
    float-to-double v1, p1

    .line 4
    invoke-static {v1, v2}, Lc/c/b/a/k/i;->j(D)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 v0, p1, 0x2

    .line 5
    :goto_2
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->h:Lc/c/b/a/e/c;

    invoke-virtual {p1, v0}, Lc/c/b/a/e/c;->d(I)V

    .line 6
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    .line 7
    iget-object p1, p1, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/b/a/g/b/e;

    invoke-interface {v0}, Lc/c/b/a/g/b/e;->h()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lc/c/b/a/g/b/e;->x0()Lc/c/b/a/e/e;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->h:Lc/c/b/a/e/c;

    if-ne v1, v2, :cond_4

    :cond_5
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->h:Lc/c/b/a/e/c;

    invoke-interface {v0, v1}, Lc/c/b/a/g/b/e;->t(Lc/c/b/a/e/e;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->o()V

    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    if-eqz p1, :cond_7

    const-string p1, "MPAndroidChart"

    const-string v0, "Data is set."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public setDescription(Lc/c/b/a/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->m:Lc/c/b/a/c/c;

    return-void
.end method

.method public setDragDecelerationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->f:Z

    return-void
.end method

.method public setDragDecelerationFrictionCoef(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const p1, 0x3f7fbe77    # 0.999f

    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->g:F

    return-void
.end method

.method public setDrawMarkerViews(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setDrawMarkers(Z)V

    return-void
.end method

.method public setDrawMarkers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Z

    return-void
.end method

.method public setExtraBottomOffset(F)V
    .locals 0

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->z:F

    return-void
.end method

.method public setExtraLeftOffset(F)V
    .locals 0

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->A:F

    return-void
.end method

.method public setExtraRightOffset(F)V
    .locals 0

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->y:F

    return-void
.end method

.method public setExtraTopOffset(F)V
    .locals 0

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->x:F

    return-void
.end method

.method public setHardwareAccelerationEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setHighlightPerTapEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->e:Z

    return-void
.end method

.method public setHighlighter(Lc/c/b/a/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->u:Lc/c/b/a/f/f;

    return-void
.end method

.method public setLastHighlighted([Lc/c/b/a/f/d;)V
    .locals 2

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->p:Lc/c/b/a/h/b;

    aget-object p1, p1, v0

    .line 1
    iput-object p1, v1, Lc/c/b/a/h/b;->e:Lc/c/b/a/f/d;

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->p:Lc/c/b/a/h/b;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lc/c/b/a/h/b;->e:Lc/c/b/a/f/d;

    :goto_1
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->c:Z

    return-void
.end method

.method public setMarker(Lc/c/b/a/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lc/c/b/a/c/d;

    return-void
.end method

.method public setMarkerView(Lc/c/b/a/c/d;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lc/c/b/a/c/d;)V

    return-void
.end method

.method public setMaxHighlightDistance(F)V
    .locals 0

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/Chart;->D:F

    return-void
.end method

.method public setNoDataText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->q:Ljava/lang/String;

    return-void
.end method

.method public setNoDataTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setNoDataTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setOnChartGestureListener(Lc/c/b/a/h/c;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->r:Lc/c/b/a/h/c;

    return-void
.end method

.method public setOnChartValueSelectedListener(Lc/c/b/a/h/d;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->o:Lc/c/b/a/h/d;

    return-void
.end method

.method public setOnTouchListener(Lc/c/b/a/h/b;)V
    .locals 0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->p:Lc/c/b/a/h/b;

    return-void
.end method

.method public setRenderer(Lc/c/b/a/j/g;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->l:Z

    return-void
.end method

.method public setUnbindEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/Chart;->H:Z

    return-void
.end method
