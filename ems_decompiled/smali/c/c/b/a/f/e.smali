.class public Lc/c/b/a/f/e;
.super Lc/c/b/a/f/a;
.source ""


# direct methods
.method public constructor <init>(Lc/c/b/a/g/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c/b/a/f/a;-><init>(Lc/c/b/a/g/a/a;)V

    return-void
.end method


# virtual methods
.method public a(FF)Lc/c/b/a/f/d;
    .locals 5

    iget-object v0, p0, Lc/c/b/a/f/b;->a:Lc/c/b/a/g/a/b;

    check-cast v0, Lc/c/b/a/g/a/a;

    invoke-interface {v0}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lc/c/b/a/f/b;->a:Lc/c/b/a/g/a/b;

    sget-object v2, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    invoke-interface {v1, v2}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lc/c/b/a/k/g;->c(FF)Lc/c/b/a/k/d;

    move-result-object v1

    .line 2
    iget-wide v2, v1, Lc/c/b/a/k/d;->c:D

    double-to-float v2, v2

    invoke-virtual {p0, v2, p2, p1}, Lc/c/b/a/f/b;->e(FFF)Lc/c/b/a/f/d;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 3
    :cond_0
    iget v2, p1, Lc/c/b/a/f/d;->f:I

    .line 4
    invoke-virtual {v0, v2}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v0

    check-cast v0, Lc/c/b/a/g/b/a;

    invoke-interface {v0}, Lc/c/b/a/g/b/a;->i0()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v1, Lc/c/b/a/k/d;->c:D

    double-to-float v2, v2

    iget-wide v3, v1, Lc/c/b/a/k/d;->b:D

    double-to-float v1, v3

    .line 5
    invoke-interface {v0, v2, v1}, Lc/c/b/a/g/b/e;->L(FF)Lc/c/b/a/d/o;

    move-result-object v0

    check-cast v0, Lc/c/b/a/d/c;

    if-nez v0, :cond_1

    move-object p1, p2

    :cond_1
    return-object p1

    .line 6
    :cond_2
    sget-object p2, Lc/c/b/a/k/d;->d:Lc/c/b/a/k/f;

    invoke-virtual {p2, v1}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    return-object p1
.end method

.method public b(Lc/c/b/a/g/b/e;IFLc/c/b/a/d/n$a;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/b/a/g/b/e;",
            "IF",
            "Lc/c/b/a/d/n$a;",
            ")",
            "Ljava/util/List<",
            "Lc/c/b/a/f/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p3}, Lc/c/b/a/g/b/e;->S(F)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-interface {p1, p3, v2, p4}, Lc/c/b/a/g/b/e;->u(FFLc/c/b/a/d/n$a;)Lc/c/b/a/d/o;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lc/c/b/a/d/o;->b()F

    move-result p3

    invoke-interface {p1, p3}, Lc/c/b/a/g/b/e;->S(F)Ljava/util/List;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lc/c/b/a/d/o;

    iget-object v1, p0, Lc/c/b/a/f/b;->a:Lc/c/b/a/g/a/b;

    check-cast v1, Lc/c/b/a/g/a/a;

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v2

    invoke-interface {v1, v2}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v1

    invoke-virtual {p4}, Lc/c/b/a/d/g;->a()F

    move-result v2

    invoke-virtual {p4}, Lc/c/b/a/d/o;->b()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lc/c/b/a/k/g;->a(FF)Lc/c/b/a/k/d;

    move-result-object v1

    new-instance v9, Lc/c/b/a/f/d;

    invoke-virtual {p4}, Lc/c/b/a/d/o;->b()F

    move-result v3

    invoke-virtual {p4}, Lc/c/b/a/d/g;->a()F

    move-result v4

    iget-wide v5, v1, Lc/c/b/a/k/d;->b:D

    double-to-float v5, v5

    iget-wide v1, v1, Lc/c/b/a/k/d;->c:D

    double-to-float v6, v1

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v8

    move-object v2, v9

    move v7, p2

    invoke-direct/range {v2 .. v8}, Lc/c/b/a/f/d;-><init>(FFFFILc/c/b/a/c/j$a;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public d(FFFF)F
    .locals 0

    sub-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1
.end method
