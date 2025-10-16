.class public Lcom/github/mikephil/charting/charts/CombinedChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source ""

# interfaces
.implements Lc/c/b/a/g/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/charts/CombinedChart$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "Lc/c/b/a/d/m;",
        ">;",
        "Lc/c/b/a/g/a/f;"
    }
.end annotation


# instance fields
.field public q0:Z

.field public r0:Z

.field public s0:Z

.field public t0:[Lcom/github/mikephil/charting/charts/CombinedChart$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->q0:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->r0:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->s0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->q0:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->r0:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->s0:Z

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->s0:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->q0:Z

    return v0
.end method

.method public getBarData()Lc/c/b/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lc/c/b/a/d/m;

    .line 1
    iget-object v0, v0, Lc/c/b/a/d/m;->k:Lc/c/b/a/d/a;

    return-object v0
.end method

.method public getBubbleData()Lc/c/b/a/d/h;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast v0, Lc/c/b/a/d/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getCandleData()Lc/c/b/a/d/j;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast v0, Lc/c/b/a/d/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getCombinedData()Lc/c/b/a/d/m;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v0, Lc/c/b/a/d/m;

    return-object v0
.end method

.method public getDrawOrder()[Lcom/github/mikephil/charting/charts/CombinedChart$a;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->t0:[Lcom/github/mikephil/charting/charts/CombinedChart$a;

    return-object v0
.end method

.method public getLineData()Lc/c/b/a/d/p;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lc/c/b/a/d/m;

    .line 1
    iget-object v0, v0, Lc/c/b/a/d/m;->j:Lc/c/b/a/d/p;

    return-object v0
.end method

.method public getScatterData()Lc/c/b/a/d/x;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast v0, Lc/c/b/a/d/m;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public i(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lc/c/b/a/c/d;

    if-eqz v0, :cond_7

    .line 1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/Chart;->E:Z

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/Chart;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->C:[Lc/c/b/a/f/d;

    array-length v3, v2

    if-ge v1, v3, :cond_7

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v3, Lc/c/b/a/d/m;

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v4, v2, Lc/c/b/a/f/d;->e:I

    .line 5
    invoke-virtual {v3}, Lc/c/b/a/d/m;->o()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lt v4, v5, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget v4, v2, Lc/c/b/a/f/d;->e:I

    .line 7
    invoke-virtual {v3}, Lc/c/b/a/d/m;->o()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/b/a/d/d;

    .line 8
    iget v4, v2, Lc/c/b/a/f/d;->f:I

    .line 9
    invoke-virtual {v3}, Lc/c/b/a/d/l;->d()I

    move-result v5

    if-lt v4, v5, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v3, v3, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 11
    iget v4, v2, Lc/c/b/a/f/d;->f:I

    .line 12
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lc/c/b/a/g/b/b;

    .line 13
    :goto_1
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v3, Lc/c/b/a/d/m;

    invoke-virtual {v3, v2}, Lc/c/b/a/d/m;->f(Lc/c/b/a/f/d;)Lc/c/b/a/d/o;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v6, v3}, Lc/c/b/a/g/b/e;->D(Lc/c/b/a/d/o;)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v6}, Lc/c/b/a/g/b/e;->y0()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 14
    iget v5, v2, Lc/c/b/a/f/d;->i:F

    aput v5, v4, v0

    .line 15
    iget v5, v2, Lc/c/b/a/f/d;->j:F

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 16
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    aget v7, v4, v0

    aget v8, v4, v6

    .line 17
    invoke-virtual {v5, v7}, Lc/c/b/a/k/j;->h(F)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5, v8}, Lc/c/b/a/k/j;->i(F)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lc/c/b/a/c/d;

    invoke-interface {v5, v3, v2}, Lc/c/b/a/c/d;->a(Lc/c/b/a/d/o;Lc/c/b/a/f/d;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->F:Lc/c/b/a/c/d;

    aget v3, v4, v0

    aget v4, v4, v6

    check-cast v2, Lc/c/b/a/c/h;

    invoke-virtual {v2, p1, v3, v4}, Lc/c/b/a/c/h;->b(Landroid/graphics/Canvas;FF)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
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
    iget-boolean p2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->r0:Z

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
    .locals 4

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/github/mikephil/charting/charts/CombinedChart$a;

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$a;->c:Lcom/github/mikephil/charting/charts/CombinedChart$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$a;->d:Lcom/github/mikephil/charting/charts/CombinedChart$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$a;->e:Lcom/github/mikephil/charting/charts/CombinedChart$a;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$a;->f:Lcom/github/mikephil/charting/charts/CombinedChart$a;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$a;->g:Lcom/github/mikephil/charting/charts/CombinedChart$a;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->t0:[Lcom/github/mikephil/charting/charts/CombinedChart$a;

    new-instance v0, Lc/c/b/a/f/c;

    invoke-direct {v0, p0, p0}, Lc/c/b/a/f/c;-><init>(Lc/c/b/a/g/a/f;Lc/c/b/a/g/a/a;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/Chart;->setHighlighter(Lc/c/b/a/f/b;)V

    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlightFullBarEnabled(Z)V

    new-instance v0, Lc/c/b/a/j/f;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-direct {v0, p0, v1, v2}, Lc/c/b/a/j/f;-><init>(Lcom/github/mikephil/charting/charts/CombinedChart;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    return-void
.end method

.method public bridge synthetic setData(Lc/c/b/a/d/l;)V
    .locals 0

    check-cast p1, Lc/c/b/a/d/m;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->setData(Lc/c/b/a/d/m;)V

    return-void
.end method

.method public setData(Lc/c/b/a/d/m;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lc/c/b/a/d/l;)V

    new-instance p1, Lc/c/b/a/f/c;

    invoke-direct {p1, p0, p0}, Lc/c/b/a/f/c;-><init>(Lc/c/b/a/g/a/f;Lc/c/b/a/g/a/a;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->setHighlighter(Lc/c/b/a/f/b;)V

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    check-cast p1, Lc/c/b/a/j/f;

    invoke-virtual {p1}, Lc/c/b/a/j/f;->h()V

    iget-object p1, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

    invoke-virtual {p1}, Lc/c/b/a/j/g;->f()V

    return-void
.end method

.method public setDrawBarShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->s0:Z

    return-void
.end method

.method public setDrawOrder([Lcom/github/mikephil/charting/charts/CombinedChart$a;)V
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->t0:[Lcom/github/mikephil/charting/charts/CombinedChart$a;

    :cond_1
    :goto_0
    return-void
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->q0:Z

    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->r0:Z

    return-void
.end method
