.class public Lcom/github/mikephil/charting/charts/CandleStickChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source ""

# interfaces
.implements Lc/c/b/a/g/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "Lc/c/b/a/d/j;",
        ">;",
        "Lc/c/b/a/g/a/d;"
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
.method public getCandleData()Lc/c/b/a/d/j;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->d:Lc/c/b/a/d/l;

    check-cast v0, Lc/c/b/a/d/j;

    return-object v0
.end method

.method public n()V
    .locals 3

    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->n()V

    new-instance v0, Lc/c/b/a/j/e;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/Chart;->w:Lc/c/b/a/a/a;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/Chart;->v:Lc/c/b/a/k/j;

    invoke-direct {v0, p0, v1, v2}, Lc/c/b/a/j/e;-><init>(Lc/c/b/a/g/a/d;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/Chart;->t:Lc/c/b/a/j/g;

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
