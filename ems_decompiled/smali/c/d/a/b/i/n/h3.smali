.class public final Lc/d/a/b/i/n/h3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/s3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/d/a/b/i/n/s3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/d/a/b/i/n/c3;

.field public final b:Lc/d/a/b/i/n/e4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/n/e4<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lc/d/a/b/i/n/h1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/n/h1<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/a/b/i/n/e4;Lc/d/a/b/i/n/h1;Lc/d/a/b/i/n/c3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/i/n/e4<",
            "**>;",
            "Lc/d/a/b/i/n/h1<",
            "*>;",
            "Lc/d/a/b/i/n/c3;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/n/h3;->b:Lc/d/a/b/i/n/e4;

    invoke-virtual {p2, p3}, Lc/d/a/b/i/n/h1;->e(Lc/d/a/b/i/n/c3;)Z

    move-result p1

    iput-boolean p1, p0, Lc/d/a/b/i/n/h3;->c:Z

    iput-object p2, p0, Lc/d/a/b/i/n/h3;->d:Lc/d/a/b/i/n/h1;

    iput-object p3, p0, Lc/d/a/b/i/n/h3;->a:Lc/d/a/b/i/n/c3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->d:Lc/d/a/b/i/n/h1;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/n/h1;->b(Ljava/lang/Object;)Lc/d/a/b/i/n/l1;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/b/i/n/l1;->m()Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->b:Lc/d/a/b/i/n/e4;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/n/e4;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/i/n/h3;->b:Lc/d/a/b/i/n/e4;

    invoke-virtual {v1, p2}, Lc/d/a/b/i/n/e4;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lc/d/a/b/i/n/h3;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->d:Lc/d/a/b/i/n/h1;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/n/h1;->b(Ljava/lang/Object;)Lc/d/a/b/i/n/l1;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->d:Lc/d/a/b/i/n/h1;

    invoke-virtual {v0, p2}, Lc/d/a/b/i/n/h1;->b(Ljava/lang/Object;)Lc/d/a/b/i/n/l1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/d/a/b/i/n/l1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->b:Lc/d/a/b/i/n/e4;

    .line 1
    sget-object v1, Lc/d/a/b/i/n/t3;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/n/e4;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2}, Lc/d/a/b/i/n/e4;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/i/n/e4;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc/d/a/b/i/n/e4;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lc/d/a/b/i/n/h3;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->d:Lc/d/a/b/i/n/h1;

    invoke-static {v0, p1, p2}, Lc/d/a/b/i/n/t3;->i(Lc/d/a/b/i/n/h1;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;Lc/d/a/b/i/n/a5;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/d/a/b/i/n/a5;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->d:Lc/d/a/b/i/n/h1;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/n/h1;->b(Ljava/lang/Object;)Lc/d/a/b/i/n/l1;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/i/n/l1;->k()Ljava/util/Iterator;

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

    check-cast v2, Lc/d/a/b/i/n/n1;

    invoke-interface {v2}, Lc/d/a/b/i/n/n1;->zzc()Lc/d/a/b/i/n/y4;

    move-result-object v3

    sget-object v4, Lc/d/a/b/i/n/y4;->l:Lc/d/a/b/i/n/y4;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lc/d/a/b/i/n/n1;->zzd()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lc/d/a/b/i/n/n1;->h()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lc/d/a/b/i/n/i2;

    invoke-interface {v2}, Lc/d/a/b/i/n/n1;->zza()I

    move-result v2

    if-eqz v3, :cond_0

    check-cast v1, Lc/d/a/b/i/n/i2;

    .line 1
    iget-object v1, v1, Lc/d/a/b/i/n/i2;->c:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/i/n/g2;

    .line 2
    invoke-virtual {v1}, Lc/d/a/b/i/n/k2;->c()Lc/d/a/b/i/n/t0;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    move-object v3, p2

    check-cast v3, Lc/d/a/b/i/n/c1;

    invoke-virtual {v3, v2, v1}, Lc/d/a/b/i/n/c1;->c(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lc/d/a/b/i/n/h3;->b:Lc/d/a/b/i/n/e4;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/n/e4;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/n/e4;->f(Ljava/lang/Object;Lc/d/a/b/i/n/a5;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;[BIILc/d/a/b/i/n/p0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lc/d/a/b/i/n/p0;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lc/d/a/b/i/n/t1;

    iget-object v1, v0, Lc/d/a/b/i/n/t1;->zzb:Lc/d/a/b/i/n/h4;

    sget-object v2, Lc/d/a/b/i/n/h4;->f:Lc/d/a/b/i/n/h4;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lc/d/a/b/i/n/h4;->c()Lc/d/a/b/i/n/h4;

    move-result-object v1

    iput-object v1, v0, Lc/d/a/b/i/n/t1;->zzb:Lc/d/a/b/i/n/h4;

    :cond_0
    check-cast p1, Lc/d/a/b/i/n/t1$c;

    invoke-virtual {p1}, Lc/d/a/b/i/n/t1$c;->p()Lc/d/a/b/i/n/l1;

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    if-ge p3, p4, :cond_a

    invoke-static {p2, p3, p5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->p1([BILc/d/a/b/i/n/p0;)I

    move-result v4

    iget v2, p5, Lc/d/a/b/i/n/p0;->a:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_3

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_2

    iget-object p3, p0, Lc/d/a/b/i/n/h3;->d:Lc/d/a/b/i/n/h1;

    iget-object v0, p5, Lc/d/a/b/i/n/p0;->d:Lc/d/a/b/i/n/f1;

    iget-object v3, p0, Lc/d/a/b/i/n/h3;->a:Lc/d/a/b/i/n/c3;

    ushr-int/lit8 v5, v2, 0x3

    invoke-virtual {p3, v0, v3, v5}, Lc/d/a/b/i/n/h1;->c(Lc/d/a/b/i/n/f1;Lc/d/a/b/i/n/c3;I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lc/d/a/b/i/n/t1$d;

    if-nez v0, :cond_1

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f1(I[BIILc/d/a/b/i/n/h4;Lc/d/a/b/i/n/p0;)I

    move-result p3

    goto :goto_0

    .line 1
    :cond_1
    sget-object p2, Lc/d/a/b/i/n/o3;->c:Lc/d/a/b/i/n/o3;

    .line 2
    throw p1

    :cond_2
    invoke-static {v2, p2, v4, p4, p5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->d1(I[BIILc/d/a/b/i/n/p0;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v2, p1

    :goto_1
    if-ge v4, p4, :cond_8

    invoke-static {p2, v4, p5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->p1([BILc/d/a/b/i/n/p0;)I

    move-result v4

    iget v5, p5, Lc/d/a/b/i/n/p0;->a:I

    ushr-int/lit8 v6, v5, 0x3

    and-int/lit8 v7, v5, 0x7

    if-eq v6, v3, :cond_6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    if-ne v7, v3, :cond_7

    invoke-static {p2, v4, p5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->b2([BILc/d/a/b/i/n/p0;)I

    move-result v4

    iget-object v2, p5, Lc/d/a/b/i/n/p0;->c:Ljava/lang/Object;

    check-cast v2, Lc/d/a/b/i/n/t0;

    goto :goto_1

    .line 3
    :cond_5
    sget-object p2, Lc/d/a/b/i/n/o3;->c:Lc/d/a/b/i/n/o3;

    .line 4
    throw p1

    :cond_6
    if-nez v7, :cond_7

    invoke-static {p2, v4, p5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->p1([BILc/d/a/b/i/n/p0;)I

    move-result v4

    iget p3, p5, Lc/d/a/b/i/n/p0;->a:I

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->d:Lc/d/a/b/i/n/h1;

    iget-object v5, p5, Lc/d/a/b/i/n/p0;->d:Lc/d/a/b/i/n/f1;

    iget-object v6, p0, Lc/d/a/b/i/n/h3;->a:Lc/d/a/b/i/n/c3;

    invoke-virtual {v0, v5, v6, p3}, Lc/d/a/b/i/n/h1;->c(Lc/d/a/b/i/n/f1;Lc/d/a/b/i/n/c3;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/n/t1$d;

    goto :goto_1

    :cond_7
    :goto_2
    const/16 v6, 0xc

    if-eq v5, v6, :cond_8

    invoke-static {v5, p2, v4, p4, p5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->d1(I[BIILc/d/a/b/i/n/p0;)I

    move-result v4

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    invoke-virtual {v1, p3, v2}, Lc/d/a/b/i/n/h4;->a(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lc/d/a/b/i/n/b2;->d()Lc/d/a/b/i/n/b2;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->b:Lc/d/a/b/i/n/e4;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/n/e4;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lc/d/a/b/i/n/h3;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/d/a/b/i/n/h3;->d:Lc/d/a/b/i/n/h1;

    invoke-virtual {v1, p1}, Lc/d/a/b/i/n/h1;->b(Ljava/lang/Object;)Lc/d/a/b/i/n/l1;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lc/d/a/b/i/n/l1;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->a:Lc/d/a/b/i/n/c3;

    invoke-interface {v0}, Lc/d/a/b/i/n/c3;->e()Lc/d/a/b/i/n/f3;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/n/t1$b;

    invoke-virtual {v0}, Lc/d/a/b/i/n/t1$b;->l()Lc/d/a/b/i/n/c3;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->b:Lc/d/a/b/i/n/e4;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/n/e4;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/b/i/n/e4;->i(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    iget-boolean v2, p0, Lc/d/a/b/i/n/h3;->c:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc/d/a/b/i/n/h3;->d:Lc/d/a/b/i/n/h1;

    invoke-virtual {v2, p1}, Lc/d/a/b/i/n/h1;->b(Ljava/lang/Object;)Lc/d/a/b/i/n/l1;

    move-result-object p1

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p1, Lc/d/a/b/i/n/l1;->a:Lc/d/a/b/i/n/w3;

    invoke-virtual {v3}, Lc/d/a/b/i/n/w3;->e()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p1, Lc/d/a/b/i/n/l1;->a:Lc/d/a/b/i/n/w3;

    invoke-virtual {v3, v1}, Lc/d/a/b/i/n/w3;->d(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lc/d/a/b/i/n/l1;->j(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lc/d/a/b/i/n/l1;->a:Lc/d/a/b/i/n/w3;

    invoke-virtual {p1}, Lc/d/a/b/i/n/w3;->g()Ljava/lang/Iterable;

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

    invoke-static {v1}, Lc/d/a/b/i/n/l1;->j(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->b:Lc/d/a/b/i/n/e4;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/n/e4;->h(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/d/a/b/i/n/h3;->d:Lc/d/a/b/i/n/h1;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/n/h1;->g(Ljava/lang/Object;)V

    return-void
.end method
