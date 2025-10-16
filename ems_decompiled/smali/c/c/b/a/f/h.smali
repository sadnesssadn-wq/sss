.class public abstract Lc/c/b/a/f/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/a/f/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase;",
        ">",
        "Ljava/lang/Object;",
        "Lc/c/b/a/f/f;"
    }
.end annotation


# instance fields
.field public a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/a/f/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/b/a/f/h;->b:Ljava/util/List;

    iput-object p1, p0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    return-void
.end method


# virtual methods
.method public a(FF)Lc/c/b/a/f/d;
    .locals 4

    iget-object v0, p0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->t(FF)F

    move-result v0

    iget-object v1, p0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->getRadius()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->u(FF)F

    move-result v0

    iget-object v1, p0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    instance-of v3, v1, Lcom/github/mikephil/charting/charts/PieChart;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getAnimator()Lc/c/b/a/a/a;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->v(F)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lc/c/b/a/f/h;->a:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lc/c/b/a/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/b/a/d/l;->g()Lc/c/b/a/g/b/e;

    move-result-object v1

    invoke-interface {v1}, Lc/c/b/a/g/b/e;->y0()I

    move-result v1

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p1, p2}, Lc/c/b/a/f/h;->b(IFF)Lc/c/b/a/f/d;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v2
.end method

.method public abstract b(IFF)Lc/c/b/a/f/d;
.end method
