.class public Lcom/github/mikephil/charting/charts/BarChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source ""

# interfaces
.implements Lc/c/b/a/g/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "Lc/c/b/a/d/a;",
        ">;",
        "Lc/c/b/a/g/a/a;"
    }
.end annotation


# instance fields
.field public q0:Z

.field public r0:Z

.field public s0:Z

.field public t0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->q0:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarChart;->r0:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->s0:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->t0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->q0:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarChart;->r0:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->s0:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->t0:Z

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->s0:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->r0:Z

    return v0
.end method

.method public getBarData()Lc/c/b/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v0, Lc/c/b/a/d/a;

    return-object v0
.end method

.method public j(FF)Lc/c/b/a/f/d;
    .locals 8

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

    if-eqz p1, :cond_2

    .line 1
    iget-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarChart;->q0:Z

    if-nez p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p2, Lc/c/b/a/f/d;

    .line 3
    iget v1, p1, Lc/c/b/a/f/d;->a:F

    .line 4
    iget v2, p1, Lc/c/b/a/f/d;->b:F

    .line 5
    iget v3, p1, Lc/c/b/a/f/d;->c:F

    .line 6
    iget v4, p1, Lc/c/b/a/f/d;->d:F

    .line 7
    iget v5, p1, Lc/c/b/a/f/d;->f:I

    const/4 v6, -0x1

    .line 8
    iget-object v7, p1, Lc/c/b/a/f/d;->h:Lc/c/b/a/c/j$a;

    move-object v0, p2

    .line 9
    invoke-direct/range {v0 .. v7}, Lc/c/b/a/f/d;-><init>(FFFFIILc/c/b/a/c/j$a;)V

    return-object p2

    :cond_2
    :goto_0
    return-object p1
.end method

.method public n()V
    .locals 3

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n()V

    new-instance v0, Lc/c/b/a/j/b;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-direct {v0, p0, v1, v2}, Lc/c/b/a/j/b;-><init>(Lc/c/b/a/g/a/a;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    new-instance v0, Lc/c/b/a/f/a;

    invoke-direct {v0, p0}, Lc/c/b/a/f/a;-><init>(Lc/c/b/a/g/a/a;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setHighlighter(Lc/c/b/a/f/b;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lc/c/b/a/c/i;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1
    iput v1, v0, Lc/c/b/a/c/a;->w:F

    .line 2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lc/c/b/a/c/i;

    move-result-object v0

    .line 3
    iput v1, v0, Lc/c/b/a/c/a;->x:F

    return-void
.end method

.method public s()V
    .locals 5

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarChart;->t0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    move-object v2, v1

    check-cast v2, Lc/c/b/a/d/a;

    .line 1
    iget v2, v2, Lc/c/b/a/d/l;->d:F

    .line 2
    move-object v3, v1

    check-cast v3, Lc/c/b/a/d/a;

    .line 3
    iget v3, v3, Lc/c/b/a/d/a;->j:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 4
    move-object v3, v1

    check-cast v3, Lc/c/b/a/d/a;

    .line 5
    iget v3, v3, Lc/c/b/a/d/l;->c:F

    .line 6
    check-cast v1, Lc/c/b/a/d/a;

    .line 7
    iget v1, v1, Lc/c/b/a/d/a;->j:F

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->k:Lc/c/b/a/c/i;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    move-object v2, v1

    check-cast v2, Lc/c/b/a/d/a;

    .line 9
    iget v2, v2, Lc/c/b/a/d/l;->d:F

    .line 10
    check-cast v1, Lc/c/b/a/d/a;

    .line 11
    iget v1, v1, Lc/c/b/a/d/l;->c:F

    .line 12
    :goto_0
    invoke-virtual {v0, v2, v1}, Lc/c/b/a/c/a;->b(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->c0:Lc/c/b/a/c/j;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v1, Lc/c/b/a/d/a;

    sget-object v2, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    invoke-virtual {v1, v2}, Lc/c/b/a/d/l;->i(Lc/c/b/a/c/j$a;)F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v3, Lc/c/b/a/d/a;

    invoke-virtual {v3, v2}, Lc/c/b/a/d/l;->h(Lc/c/b/a/c/j$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc/c/b/a/c/j;->b(FF)V

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->d0:Lc/c/b/a/c/j;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v1, Lc/c/b/a/d/a;

    sget-object v2, Lc/c/b/a/c/j$a;->d:Lc/c/b/a/c/j$a;

    invoke-virtual {v1, v2}, Lc/c/b/a/d/l;->i(Lc/c/b/a/c/j$a;)F

    move-result v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v3, Lc/c/b/a/d/a;

    invoke-virtual {v3, v2}, Lc/c/b/a/d/l;->h(Lc/c/b/a/c/j$a;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc/c/b/a/c/j;->b(FF)V

    return-void
.end method

.method public setDrawBarShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->s0:Z

    return-void
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->r0:Z

    return-void
.end method

.method public setFitBars(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->t0:Z

    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->q0:Z

    return-void
.end method
