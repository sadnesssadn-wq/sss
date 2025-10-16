.class public Lc/c/b/a/f/g;
.super Lc/c/b/a/f/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/f/h<",
        "Lcom/github/mikephil/charting/charts/PieChart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c/b/a/f/h;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    return-void
.end method


# virtual methods
.method public b(IFF)Lc/c/b/a/f/d;
    .locals 10

    iget-object v0, p0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v0

    check-cast v0, Lc/c/b/a/d/s;

    invoke-virtual {v0}, Lc/c/b/a/d/s;->o()Lc/c/b/a/g/b/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v1

    new-instance v9, Lc/c/b/a/f/d;

    int-to-float v3, p1

    invoke-virtual {v1}, Lc/c/b/a/d/g;->a()F

    move-result v4

    invoke-interface {v0}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v8

    const/4 v7, 0x0

    move-object v2, v9

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v8}, Lc/c/b/a/f/d;-><init>(FFFFILc/c/b/a/c/j$a;)V

    return-object v9
.end method
