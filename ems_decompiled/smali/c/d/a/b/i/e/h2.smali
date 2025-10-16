.class public final Lc/d/a/b/i/e/h2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/t2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/d/a/b/i/e/t2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/d/a/b/i/e/d2;

.field public final b:Lc/d/a/b/i/e/g3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/e/g3<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lc/d/a/b/i/e/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/e/l0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/a/b/i/e/g3;Lc/d/a/b/i/e/l0;Lc/d/a/b/i/e/d2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/i/e/g3<",
            "**>;",
            "Lc/d/a/b/i/e/l0<",
            "*>;",
            "Lc/d/a/b/i/e/d2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/e/h2;->b:Lc/d/a/b/i/e/g3;

    invoke-virtual {p2, p3}, Lc/d/a/b/i/e/l0;->f(Lc/d/a/b/i/e/d2;)Z

    move-result p1

    iput-boolean p1, p0, Lc/d/a/b/i/e/h2;->c:Z

    iput-object p2, p0, Lc/d/a/b/i/e/h2;->d:Lc/d/a/b/i/e/l0;

    iput-object p3, p0, Lc/d/a/b/i/e/h2;->a:Lc/d/a/b/i/e/d2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lc/d/a/b/i/e/a4;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/d/a/b/i/e/a4;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/h2;->d:Lc/d/a/b/i/e/l0;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/i/e/p0;->c()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/i/e/s0;

    invoke-interface {v2}, Lc/d/a/b/i/e/s0;->n()Lc/d/a/b/i/e/z3;

    move-result-object v3

    sget-object v4, Lc/d/a/b/i/e/z3;->l:Lc/d/a/b/i/e/z3;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lc/d/a/b/i/e/s0;->q()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lc/d/a/b/i/e/s0;->c()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lc/d/a/b/i/e/j1;

    invoke-interface {v2}, Lc/d/a/b/i/e/s0;->zzc()I

    move-result v2

    if-eqz v3, :cond_0

    check-cast v1, Lc/d/a/b/i/e/j1;

    .line 1
    iget-object v1, v1, Lc/d/a/b/i/e/j1;->c:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/i/e/h1;

    .line 2
    invoke-virtual {v1}, Lc/d/a/b/i/e/l1;->c()Lc/d/a/b/i/e/y;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    move-object v3, p2

    check-cast v3, Lc/d/a/b/i/e/h0;

    invoke-virtual {v3, v2, v1}, Lc/d/a/b/i/e/h0;->c(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lc/d/a/b/i/e/h2;->b:Lc/d/a/b/i/e/g3;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/e/g3;->d(Ljava/lang/Object;Lc/d/a/b/i/e/a4;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/h2;->b:Lc/d/a/b/i/e/g3;

    .line 1
    sget-object v1, Lc/d/a/b/i/e/v2;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/i/e/g3;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc/d/a/b/i/e/g3;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lc/d/a/b/i/e/h2;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/i/e/h2;->d:Lc/d/a/b/i/e/l0;

    invoke-static {v0, p1, p2}, Lc/d/a/b/i/e/v2;->e(Lc/d/a/b/i/e/l0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;[BIILc/d/a/b/i/e/u;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lc/d/a/b/i/e/u;",
            ")V"
        }
    .end annotation

    check-cast p1, Lc/d/a/b/i/e/y0;

    iget-object v0, p1, Lc/d/a/b/i/e/y0;->zzjp:Lc/d/a/b/i/e/h3;

    sget-object v1, Lc/d/a/b/i/e/h3;->f:Lc/d/a/b/i/e/h3;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lc/d/a/b/i/e/h3;->e()Lc/d/a/b/i/e/h3;

    move-result-object v0

    iput-object v0, p1, Lc/d/a/b/i/e/y0;->zzjp:Lc/d/a/b/i/e/h3;

    :cond_0
    :goto_0
    if-ge p3, p4, :cond_9

    invoke-static {p2, p3, p5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v3

    iget v1, p5, Lc/d/a/b/i/e/u;->a:I

    const/16 p1, 0xb

    const/4 p3, 0x2

    if-eq v1, p1, :cond_2

    and-int/lit8 p1, v1, 0x7

    if-ne p1, p3, :cond_1

    move-object v2, p2

    move v4, p4

    move-object v5, v0

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->c1(I[BIILc/d/a/b/i/e/h3;Lc/d/a/b/i/e/u;)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {v1, p2, v3, p4, p5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->a1(I[BIILc/d/a/b/i/e/u;)I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v3, p4, :cond_6

    invoke-static {p2, v3, p5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v2

    iget v3, p5, Lc/d/a/b/i/e/u;->a:I

    ushr-int/lit8 v4, v3, 0x3

    and-int/lit8 v5, v3, 0x7

    if-eq v4, p3, :cond_4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    goto :goto_2

    :cond_3
    if-ne v5, p3, :cond_5

    invoke-static {p2, v2, p5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->a2([BILc/d/a/b/i/e/u;)I

    move-result v3

    iget-object v1, p5, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    check-cast v1, Lc/d/a/b/i/e/y;

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    invoke-static {p2, v2, p5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v3

    iget p1, p5, Lc/d/a/b/i/e/u;->a:I

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v4, 0xc

    if-eq v3, v4, :cond_7

    invoke-static {v3, p2, v2, p4, p5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->a1(I[BIILc/d/a/b/i/e/u;)I

    move-result v3

    goto :goto_1

    :cond_6
    move v2, v3

    :cond_7
    if-eqz v1, :cond_8

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p3

    invoke-virtual {v0, p1, v1}, Lc/d/a/b/i/e/h3;->b(ILjava/lang/Object;)V

    :cond_8
    move p3, v2

    goto :goto_0

    :cond_9
    if-ne p3, p4, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lc/d/a/b/i/e/e1;->c()Lc/d/a/b/i/e/e1;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/h2;->b:Lc/d/a/b/i/e/g3;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/b/i/e/g3;->j(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    iget-boolean v2, p0, Lc/d/a/b/i/e/h2;->c:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc/d/a/b/i/e/h2;->d:Lc/d/a/b/i/e/l0;

    invoke-virtual {v2, p1}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object p1

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p1, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v3}, Lc/d/a/b/i/e/w2;->e()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p1, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v3, v1}, Lc/d/a/b/i/e/w2;->c(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lc/d/a/b/i/e/p0;->k(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {p1}, Lc/d/a/b/i/e/w2;->f()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lc/d/a/b/i/e/p0;->k(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/h2;->b:Lc/d/a/b/i/e/g3;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/i/e/h2;->b:Lc/d/a/b/i/e/g3;

    invoke-virtual {v1, p2}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lc/d/a/b/i/e/h2;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/i/e/h2;->d:Lc/d/a/b/i/e/l0;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/b/i/e/h2;->d:Lc/d/a/b/i/e/l0;

    invoke-virtual {v0, p2}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/d/a/b/i/e/p0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/h2;->a:Lc/d/a/b/i/e/d2;

    invoke-interface {v0}, Lc/d/a/b/i/e/d2;->e()Lc/d/a/b/i/e/e2;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/y0$a;

    invoke-virtual {v0}, Lc/d/a/b/i/e/y0$a;->k()Lc/d/a/b/i/e/d2;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/h2;->d:Lc/d/a/b/i/e/l0;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/b/i/e/p0;->b()Z

    move-result p1

    return p1
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/h2;->b:Lc/d/a/b/i/e/g3;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lc/d/a/b/i/e/h2;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/d/a/b/i/e/h2;->d:Lc/d/a/b/i/e/l0;

    invoke-virtual {v1, p1}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lc/d/a/b/i/e/p0;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/h2;->b:Lc/d/a/b/i/e/g3;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/d/a/b/i/e/h2;->d:Lc/d/a/b/i/e/l0;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/l0;->e(Ljava/lang/Object;)V

    return-void
.end method
