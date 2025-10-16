.class public Lc/c/b/a/f/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/a/f/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc/c/b/a/g/a/b;",
        ">",
        "Ljava/lang/Object;",
        "Lc/c/b/a/f/f;"
    }
.end annotation


# instance fields
.field public a:Lc/c/b/a/g/a/b;
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
.method public constructor <init>(Lc/c/b/a/g/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/b/a/f/b;->b:Ljava/util/List;

    iput-object p1, p0, Lc/c/b/a/f/b;->a:Lc/c/b/a/g/a/b;

    return-void
.end method


# virtual methods
.method public a(FF)Lc/c/b/a/f/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/b/a/f/b;->a:Lc/c/b/a/g/a/b;

    sget-object v1, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    invoke-interface {v0, v1}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/c/b/a/k/g;->c(FF)Lc/c/b/a/k/d;

    move-result-object v0

    .line 2
    iget-wide v1, v0, Lc/c/b/a/k/d;->b:D

    double-to-float v1, v1

    .line 3
    sget-object v2, Lc/c/b/a/k/d;->d:Lc/c/b/a/k/f;

    invoke-virtual {v2, v0}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    .line 4
    invoke-virtual {p0, v1, p1, p2}, Lc/c/b/a/f/b;->e(FFF)Lc/c/b/a/f/d;

    move-result-object p1

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

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v2

    invoke-interface {v1, v2}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v1

    invoke-virtual {p4}, Lc/c/b/a/d/o;->b()F

    move-result v2

    invoke-virtual {p4}, Lc/c/b/a/d/g;->a()F

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

.method public c()Lc/c/b/a/d/d;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/f/b;->a:Lc/c/b/a/g/a/b;

    invoke-interface {v0}, Lc/c/b/a/g/a/b;->getData()Lc/c/b/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public d(FFFF)F
    .locals 2

    sub-float/2addr p1, p3

    float-to-double v0, p1

    sub-float/2addr p2, p4

    float-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public e(FFF)Lc/c/b/a/f/d;
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lc/c/b/a/f/b;->f(FFF)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    invoke-virtual {p0, p1, p3, v0}, Lc/c/b/a/f/b;->g(Ljava/util/List;FLc/c/b/a/c/j$a;)F

    move-result v2

    sget-object v3, Lc/c/b/a/c/j$a;->d:Lc/c/b/a/c/j$a;

    invoke-virtual {p0, p1, p3, v3}, Lc/c/b/a/f/b;->g(Ljava/util/List;FLc/c/b/a/c/j$a;)F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    iget-object v2, p0, Lc/c/b/a/f/b;->a:Lc/c/b/a/g/a/b;

    invoke-interface {v2}, Lc/c/b/a/g/a/e;->getMaxHighlightDistance()F

    move-result v2

    const/4 v3, 0x0

    .line 1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/b/a/f/d;

    .line 2
    iget-object v5, v4, Lc/c/b/a/f/d;->h:Lc/c/b/a/c/j$a;

    if-ne v5, v0, :cond_2

    .line 3
    iget v5, v4, Lc/c/b/a/f/d;->c:F

    .line 4
    iget v6, v4, Lc/c/b/a/f/d;->d:F

    .line 5
    invoke-virtual {p0, p2, p3, v5, v6}, Lc/c/b/a/f/b;->d(FFFF)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_2

    move-object v1, v4

    move v2, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public f(FFF)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/List<",
            "Lc/c/b/a/f/d;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, Lc/c/b/a/f/b;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lc/c/b/a/f/b;->c()Lc/c/b/a/d/d;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lc/c/b/a/f/b;->b:Ljava/util/List;

    return-object p1

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p2}, Lc/c/b/a/d/l;->d()I

    move-result v0

    :goto_0
    if-ge p3, v0, :cond_2

    invoke-virtual {p2, p3}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v1

    invoke-interface {v1}, Lc/c/b/a/g/b/e;->D0()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lc/c/b/a/f/b;->b:Ljava/util/List;

    sget-object v3, Lc/c/b/a/d/n$a;->e:Lc/c/b/a/d/n$a;

    invoke-virtual {p0, v1, p3, p1, v3}, Lc/c/b/a/f/b;->b(Lc/c/b/a/g/b/e;IFLc/c/b/a/d/n$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lc/c/b/a/f/b;->b:Ljava/util/List;

    return-object p1
.end method

.method public g(Ljava/util/List;FLc/c/b/a/c/j$a;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/b/a/f/d;",
            ">;F",
            "Lc/c/b/a/c/j$a;",
            ")F"
        }
    .end annotation

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/a/f/d;

    .line 1
    iget-object v3, v2, Lc/c/b/a/f/d;->h:Lc/c/b/a/c/j$a;

    if-ne v3, p3, :cond_0

    .line 2
    iget v2, v2, Lc/c/b/a/f/d;->d:F

    sub-float/2addr v2, p2

    .line 3
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
