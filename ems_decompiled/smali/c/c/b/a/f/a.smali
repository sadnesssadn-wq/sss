.class public Lc/c/b/a/f/a;
.super Lc/c/b/a/f/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/f/b<",
        "Lc/c/b/a/g/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/c/b/a/g/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c/b/a/f/b;-><init>(Lc/c/b/a/g/a/b;)V

    return-void
.end method


# virtual methods
.method public a(FF)Lc/c/b/a/f/d;
    .locals 5

    invoke-super {p0, p1, p2}, Lc/c/b/a/f/b;->a(FF)Lc/c/b/a/f/d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    iget-object v2, p0, Lc/c/b/a/f/b;->a:Lc/c/b/a/g/a/b;

    sget-object v3, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    invoke-interface {v2, v3}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lc/c/b/a/k/g;->c(FF)Lc/c/b/a/k/d;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lc/c/b/a/f/b;->a:Lc/c/b/a/g/a/b;

    check-cast p2, Lc/c/b/a/g/a/a;

    invoke-interface {p2}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object p2

    .line 3
    iget v2, v0, Lc/c/b/a/f/d;->f:I

    .line 4
    invoke-virtual {p2, v2}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object p2

    check-cast p2, Lc/c/b/a/g/b/a;

    invoke-interface {p2}, Lc/c/b/a/g/b/a;->i0()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p1, Lc/c/b/a/k/d;->b:D

    double-to-float v2, v2

    iget-wide v3, p1, Lc/c/b/a/k/d;->c:D

    double-to-float p1, v3

    .line 5
    invoke-interface {p2, v2, p1}, Lc/c/b/a/g/b/e;->L(FF)Lc/c/b/a/d/o;

    move-result-object p1

    check-cast p1, Lc/c/b/a/d/c;

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0

    .line 6
    :cond_2
    sget-object p2, Lc/c/b/a/k/d;->d:Lc/c/b/a/k/f;

    invoke-virtual {p2, p1}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    return-object v0
.end method

.method public c()Lc/c/b/a/d/d;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/f/b;->a:Lc/c/b/a/g/a/b;

    check-cast v0, Lc/c/b/a/g/a/a;

    invoke-interface {v0}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v0

    return-object v0
.end method

.method public d(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method
