.class public Lc/c/b/a/e/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/b/a/g/b/f;Lc/c/b/a/g/a/g;)F
    .locals 4

    invoke-interface {p2}, Lc/c/b/a/g/a/e;->getYChartMax()F

    move-result v0

    invoke-interface {p2}, Lc/c/b/a/g/a/e;->getYChartMin()F

    move-result v1

    invoke-interface {p2}, Lc/c/b/a/g/a/g;->getLineData()Lc/c/b/a/d/p;

    move-result-object p2

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->x()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->f0()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v2, p2, Lc/c/b/a/d/l;->a:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v0, 0x0

    .line 2
    :cond_1
    iget p2, p2, Lc/c/b/a/d/l;->b:F

    cmpg-float p2, p2, v3

    if-gez p2, :cond_2

    const/4 v1, 0x0

    .line 3
    :cond_2
    invoke-interface {p1}, Lc/c/b/a/g/b/e;->f0()F

    move-result p1

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    return v3
.end method
