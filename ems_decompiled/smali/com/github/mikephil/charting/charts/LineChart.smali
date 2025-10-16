.class public Lcom/github/mikephil/charting/charts/LineChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source ""

# interfaces
.implements Lc/c/b/a/g/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "Lc/c/b/a/d/p;",
        ">;",
        "Lc/c/b/a/g/a/g;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getLineData()Lc/c/b/a/d/p;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v0, Lc/c/b/a/d/p;

    return-object v0
.end method

.method public n()V
    .locals 3

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n()V

    new-instance v0, Lc/c/b/a/j/j;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-direct {v0, p0, v1, v2}, Lc/c/b/a/j/j;-><init>(Lc/c/b/a/g/a/g;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lc/c/b/a/j/j;

    if-eqz v1, :cond_2

    check-cast v0, Lc/c/b/a/j/j;

    .line 1
    iget-object v1, v0, Lc/c/b/a/j/j;->k:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Lc/c/b/a/j/j;->k:Landroid/graphics/Canvas;

    :cond_0
    iget-object v1, v0, Lc/c/b/a/j/j;->j:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v1, v0, Lc/c/b/a/j/j;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v2, v0, Lc/c/b/a/j/j;->j:Ljava/lang/ref/WeakReference;

    .line 2
    :cond_2
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->onDetachedFromWindow()V

    return-void
.end method
