.class public final Lc/d/a/b/i/e/g2;
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


# static fields
.field public static final q:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Lc/d/a/b/i/e/d2;

.field public final g:Z

.field public final h:Z

.field public final i:[I

.field public final j:[I

.field public final k:[I

.field public final l:Lc/d/a/b/i/e/j2;

.field public final m:Lc/d/a/b/i/e/o1;

.field public final n:Lc/d/a/b/i/e/g3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/e/g3<",
            "**>;"
        }
    .end annotation
.end field

.field public final o:Lc/d/a/b/i/e/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/e/l0<",
            "*>;"
        }
    .end annotation
.end field

.field public final p:Lc/d/a/b/i/e/y1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc/d/a/b/i/e/m3;->j()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lc/d/a/b/i/e/g2;->q:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IIILc/d/a/b/i/e/d2;Z[I[I[ILc/d/a/b/i/e/j2;Lc/d/a/b/i/e/o1;Lc/d/a/b/i/e/g3;Lc/d/a/b/i/e/l0;Lc/d/a/b/i/e/y1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "III",
            "Lc/d/a/b/i/e/d2;",
            "ZZ[I[I[I",
            "Lc/d/a/b/i/e/j2;",
            "Lc/d/a/b/i/e/o1;",
            "Lc/d/a/b/i/e/g3<",
            "**>;",
            "Lc/d/a/b/i/e/l0<",
            "*>;",
            "Lc/d/a/b/i/e/y1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/e/g2;->a:[I

    iput-object p2, p0, Lc/d/a/b/i/e/g2;->b:[Ljava/lang/Object;

    iput p3, p0, Lc/d/a/b/i/e/g2;->c:I

    iput p4, p0, Lc/d/a/b/i/e/g2;->d:I

    iput p5, p0, Lc/d/a/b/i/e/g2;->e:I

    instance-of p1, p6, Lc/d/a/b/i/e/y0;

    iput-boolean p7, p0, Lc/d/a/b/i/e/g2;->h:Z

    if-eqz p14, :cond_0

    invoke-virtual {p14, p6}, Lc/d/a/b/i/e/l0;->f(Lc/d/a/b/i/e/d2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lc/d/a/b/i/e/g2;->g:Z

    iput-object p8, p0, Lc/d/a/b/i/e/g2;->i:[I

    iput-object p9, p0, Lc/d/a/b/i/e/g2;->j:[I

    iput-object p10, p0, Lc/d/a/b/i/e/g2;->k:[I

    iput-object p11, p0, Lc/d/a/b/i/e/g2;->l:Lc/d/a/b/i/e/j2;

    iput-object p12, p0, Lc/d/a/b/i/e/g2;->m:Lc/d/a/b/i/e/o1;

    iput-object p13, p0, Lc/d/a/b/i/e/g2;->n:Lc/d/a/b/i/e/g3;

    iput-object p14, p0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    iput-object p6, p0, Lc/d/a/b/i/e/g2;->f:Lc/d/a/b/i/e/d2;

    iput-object p15, p0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    return-void
.end method

.method public static I(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static J(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static K(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static L(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static M(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static N(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static O(Ljava/lang/Object;)Lc/d/a/b/i/e/h3;
    .locals 2

    check-cast p0, Lc/d/a/b/i/e/y0;

    iget-object v0, p0, Lc/d/a/b/i/e/y0;->zzjp:Lc/d/a/b/i/e/h3;

    sget-object v1, Lc/d/a/b/i/e/h3;->f:Lc/d/a/b/i/e/h3;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lc/d/a/b/i/e/h3;->e()Lc/d/a/b/i/e/h3;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/i/e/y0;->zzjp:Lc/d/a/b/i/e/h3;

    :cond_0
    return-object v0
.end method

.method public static i(Lc/d/a/b/i/e/t2;I[BIILc/d/a/b/i/e/d1;Lc/d/a/b/i/e/u;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/i/e/t2<",
            "*>;I[BII",
            "Lc/d/a/b/i/e/d1<",
            "*>;",
            "Lc/d/a/b/i/e/u;",
            ")I"
        }
    .end annotation

    invoke-static {p0, p2, p3, p4, p6}, Lc/d/a/b/i/e/g2;->k(Lc/d/a/b/i/e/t2;[BIILc/d/a/b/i/e/u;)I

    move-result p3

    :goto_0
    iget-object v0, p6, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_0

    invoke-static {p2, p3, p6}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v0

    iget v1, p6, Lc/d/a/b/i/e/u;->a:I

    if-ne p1, v1, :cond_0

    invoke-static {p0, p2, v0, p4, p6}, Lc/d/a/b/i/e/g2;->k(Lc/d/a/b/i/e/t2;[BIILc/d/a/b/i/e/u;)I

    move-result p3

    goto :goto_0

    :cond_0
    return p3
.end method

.method public static j(Lc/d/a/b/i/e/t2;[BIIILc/d/a/b/i/e/u;)I
    .locals 8

    check-cast p0, Lc/d/a/b/i/e/g2;

    .line 1
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->l:Lc/d/a/b/i/e/j2;

    iget-object v1, p0, Lc/d/a/b/i/e/g2;->f:Lc/d/a/b/i/e/d2;

    invoke-interface {v0, v1}, Lc/d/a/b/i/e/j2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lc/d/a/b/i/e/g2;->o(Ljava/lang/Object;[BIIILc/d/a/b/i/e/u;)I

    move-result p1

    invoke-virtual {p0, v7}, Lc/d/a/b/i/e/g2;->zzc(Ljava/lang/Object;)V

    iput-object v7, p5, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    return p1
.end method

.method public static k(Lc/d/a/b/i/e/t2;[BIILc/d/a/b/i/e/u;)I
    .locals 6

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    invoke-static {p2, p1, v0, p4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->g1(I[BILc/d/a/b/i/e/u;)I

    move-result v0

    iget p2, p4, Lc/d/a/b/i/e/u;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    invoke-interface {p0}, Lc/d/a/b/i/e/t2;->f()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lc/d/a/b/i/e/t2;->c(Ljava/lang/Object;[BIILc/d/a/b/i/e/u;)V

    invoke-interface {p0, p3}, Lc/d/a/b/i/e/t2;->zzc(Ljava/lang/Object;)V

    iput-object p3, p4, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    return p2

    :cond_1
    invoke-static {}, Lc/d/a/b/i/e/e1;->a()Lc/d/a/b/i/e/e1;

    move-result-object p0

    throw p0
.end method

.method public static p(Lc/d/a/b/i/e/b2;Lc/d/a/b/i/e/j2;Lc/d/a/b/i/e/o1;Lc/d/a/b/i/e/g3;Lc/d/a/b/i/e/l0;Lc/d/a/b/i/e/y1;)Lc/d/a/b/i/e/g2;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lc/d/a/b/i/e/b2;",
            "Lc/d/a/b/i/e/j2;",
            "Lc/d/a/b/i/e/o1;",
            "Lc/d/a/b/i/e/g3<",
            "**>;",
            "Lc/d/a/b/i/e/l0<",
            "*>;",
            "Lc/d/a/b/i/e/y1;",
            ")",
            "Lc/d/a/b/i/e/g2<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    instance-of v1, v0, Lc/d/a/b/i/e/q2;

    if-eqz v1, :cond_1a

    check-cast v0, Lc/d/a/b/i/e/q2;

    .line 1
    iget-object v1, v0, Lc/d/a/b/i/e/q2;->b:Lc/d/a/b/i/e/r2;

    .line 2
    iget v2, v1, Lc/d/a/b/i/e/r2;->d:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    if-ne v2, v4, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 3
    :goto_1
    iget v2, v1, Lc/d/a/b/i/e/r2;->e:I

    if-nez v2, :cond_2

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_2

    .line 4
    :cond_2
    iget v2, v1, Lc/d/a/b/i/e/r2;->h:I

    .line 5
    iget v6, v1, Lc/d/a/b/i/e/r2;->i:I

    .line 6
    iget v7, v1, Lc/d/a/b/i/e/r2;->l:I

    move v9, v2

    move v10, v6

    :goto_2
    shl-int/lit8 v2, v7, 0x2

    .line 7
    new-array v2, v2, [I

    shl-int/lit8 v6, v7, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    .line 8
    iget v6, v1, Lc/d/a/b/i/e/r2;->j:I

    const/4 v7, 0x0

    if-lez v6, :cond_3

    .line 9
    new-array v6, v6, [I

    move-object v15, v6

    goto :goto_3

    :cond_3
    move-object v15, v7

    .line 10
    :goto_3
    iget v6, v1, Lc/d/a/b/i/e/r2;->m:I

    if-lez v6, :cond_4

    .line 11
    new-array v6, v6, [I

    move-object/from16 v16, v6

    goto :goto_4

    :cond_4
    move-object/from16 v16, v7

    :goto_4
    invoke-virtual {v1}, Lc/d/a/b/i/e/r2;->a()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 12
    iget v6, v1, Lc/d/a/b/i/e/r2;->x:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 13
    :goto_5
    iget-object v14, v0, Lc/d/a/b/i/e/q2;->b:Lc/d/a/b/i/e/r2;

    .line 14
    iget v14, v14, Lc/d/a/b/i/e/r2;->k:I

    if-ge v6, v14, :cond_6

    sub-int v14, v6, v9

    shl-int/2addr v14, v4

    if-ge v7, v14, :cond_6

    const/4 v14, 0x0

    :goto_6
    const/4 v4, 0x4

    if-ge v14, v4, :cond_5

    add-int v4, v7, v14

    const/16 v17, -0x1

    .line 15
    aput v17, v2, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_5
    move/from16 v19, v13

    const/4 v5, 0x1

    goto/16 :goto_13

    .line 16
    :cond_6
    iget v4, v1, Lc/d/a/b/i/e/r2;->z:I

    sget-object v6, Lc/d/a/b/i/e/t0;->b0:Lc/d/a/b/i/e/t0;

    .line 17
    iget v6, v6, Lc/d/a/b/i/e/t0;->c:I

    if-le v4, v6, :cond_7

    const/4 v4, 0x1

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_a

    .line 18
    iget v4, v1, Lc/d/a/b/i/e/r2;->A:I

    shl-int/2addr v4, v3

    iget-object v6, v1, Lc/d/a/b/i/e/r2;->b:[Ljava/lang/Object;

    aget-object v6, v6, v4

    instance-of v14, v6, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_8

    check-cast v6, Ljava/lang/reflect/Field;

    goto :goto_8

    :cond_8
    iget-object v14, v1, Lc/d/a/b/i/e/r2;->c:Ljava/lang/Class;

    check-cast v6, Ljava/lang/String;

    invoke-static {v14, v6}, Lc/d/a/b/i/e/r2;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iget-object v14, v1, Lc/d/a/b/i/e/r2;->b:[Ljava/lang/Object;

    aput-object v6, v14, v4

    .line 19
    :goto_8
    invoke-static {v6}, Lc/d/a/b/i/e/m3;->b(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v6, v5

    .line 20
    iget v5, v1, Lc/d/a/b/i/e/r2;->A:I

    shl-int/2addr v5, v3

    add-int/2addr v5, v3

    iget-object v14, v1, Lc/d/a/b/i/e/r2;->b:[Ljava/lang/Object;

    aget-object v14, v14, v5

    instance-of v4, v14, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_9

    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_9

    :cond_9
    iget-object v4, v1, Lc/d/a/b/i/e/r2;->c:Ljava/lang/Class;

    check-cast v14, Ljava/lang/String;

    invoke-static {v4, v14}, Lc/d/a/b/i/e/r2;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    iget-object v4, v1, Lc/d/a/b/i/e/r2;->b:[Ljava/lang/Object;

    aput-object v14, v4, v5

    .line 21
    :goto_9
    invoke-static {v14}, Lc/d/a/b/i/e/m3;->b(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    const/4 v4, 0x0

    goto :goto_b

    .line 22
    :cond_a
    iget-object v4, v1, Lc/d/a/b/i/e/r2;->C:Ljava/lang/reflect/Field;

    .line 23
    invoke-static {v4}, Lc/d/a/b/i/e/m3;->b(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v6, v4

    invoke-virtual {v1}, Lc/d/a/b/i/e/r2;->e()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 24
    iget v4, v1, Lc/d/a/b/i/e/r2;->f:I

    shl-int/2addr v4, v3

    iget v5, v1, Lc/d/a/b/i/e/r2;->B:I

    div-int/lit8 v5, v5, 0x20

    add-int/2addr v5, v4

    iget-object v4, v1, Lc/d/a/b/i/e/r2;->b:[Ljava/lang/Object;

    aget-object v4, v4, v5

    instance-of v14, v4, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_b

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_a

    :cond_b
    iget-object v14, v1, Lc/d/a/b/i/e/r2;->c:Ljava/lang/Class;

    check-cast v4, Ljava/lang/String;

    invoke-static {v14, v4}, Lc/d/a/b/i/e/r2;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iget-object v14, v1, Lc/d/a/b/i/e/r2;->b:[Ljava/lang/Object;

    aput-object v4, v14, v5

    .line 25
    :goto_a
    invoke-static {v4}, Lc/d/a/b/i/e/m3;->b(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    .line 26
    iget v4, v1, Lc/d/a/b/i/e/r2;->B:I

    rem-int/lit8 v4, v4, 0x20

    goto :goto_b

    :cond_c
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 27
    :goto_b
    iget v14, v1, Lc/d/a/b/i/e/r2;->x:I

    .line 28
    aput v14, v2, v7

    add-int/lit8 v14, v7, 0x1

    .line 29
    iget v3, v1, Lc/d/a/b/i/e/r2;->y:I

    move/from16 v19, v13

    and-int/lit16 v13, v3, 0x200

    if-eqz v13, :cond_d

    const/4 v13, 0x1

    goto :goto_c

    :cond_d
    const/4 v13, 0x0

    :goto_c
    if-eqz v13, :cond_e

    const/high16 v13, 0x20000000

    goto :goto_d

    :cond_e
    const/4 v13, 0x0

    :goto_d
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    goto :goto_e

    :cond_f
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_10

    const/high16 v3, 0x10000000

    goto :goto_f

    :cond_10
    const/4 v3, 0x0

    :goto_f
    or-int/2addr v3, v13

    .line 30
    iget v13, v1, Lc/d/a/b/i/e/r2;->z:I

    shl-int/lit8 v20, v13, 0x14

    or-int v3, v3, v20

    or-int/2addr v3, v6

    .line 31
    aput v3, v2, v14

    add-int/lit8 v3, v7, 0x2

    shl-int/lit8 v4, v4, 0x14

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 32
    iget-object v3, v1, Lc/d/a/b/i/e/r2;->F:Ljava/lang/Object;

    if-eqz v3, :cond_13

    .line 33
    div-int/lit8 v4, v7, 0x4

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    aput-object v3, v8, v4

    .line 34
    iget-object v3, v1, Lc/d/a/b/i/e/r2;->D:Ljava/lang/Object;

    if-eqz v3, :cond_11

    add-int/lit8 v4, v4, 0x1

    .line 35
    aput-object v3, v8, v4

    goto :goto_10

    .line 36
    :cond_11
    iget-object v3, v1, Lc/d/a/b/i/e/r2;->E:Ljava/lang/Object;

    if-eqz v3, :cond_12

    add-int/lit8 v4, v4, 0x1

    .line 37
    aput-object v3, v8, v4

    :cond_12
    :goto_10
    const/4 v5, 0x1

    goto :goto_11

    .line 38
    :cond_13
    iget-object v3, v1, Lc/d/a/b/i/e/r2;->D:Ljava/lang/Object;

    if-eqz v3, :cond_14

    .line 39
    div-int/lit8 v4, v7, 0x4

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    add-int/2addr v4, v5

    aput-object v3, v8, v4

    goto :goto_11

    :cond_14
    const/4 v5, 0x1

    .line 40
    iget-object v3, v1, Lc/d/a/b/i/e/r2;->E:Ljava/lang/Object;

    if-eqz v3, :cond_15

    .line 41
    div-int/lit8 v4, v7, 0x4

    shl-int/2addr v4, v5

    add-int/2addr v4, v5

    aput-object v3, v8, v4

    :cond_15
    :goto_11
    const/16 v3, 0x32

    if-ne v13, v3, :cond_16

    add-int/lit8 v3, v11, 0x1

    aput v7, v15, v11

    move v11, v3

    goto :goto_12

    :cond_16
    const/16 v3, 0x12

    if-lt v13, v3, :cond_17

    const/16 v3, 0x31

    if-gt v13, v3, :cond_17

    add-int/lit8 v3, v12, 0x1

    aget v4, v2, v14

    const v6, 0xfffff

    and-int/2addr v4, v6

    aput v4, v16, v12

    move v12, v3

    :cond_17
    :goto_12
    invoke-virtual {v1}, Lc/d/a/b/i/e/r2;->a()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 42
    iget v3, v1, Lc/d/a/b/i/e/r2;->x:I

    move v6, v3

    :goto_13
    add-int/lit8 v7, v7, 0x4

    move/from16 v13, v19

    const/4 v3, 0x1

    const/4 v4, 0x2

    goto/16 :goto_5

    :cond_18
    move/from16 v19, v13

    .line 43
    :cond_19
    new-instance v1, Lc/d/a/b/i/e/g2;

    .line 44
    iget-object v3, v0, Lc/d/a/b/i/e/q2;->b:Lc/d/a/b/i/e/r2;

    .line 45
    iget v11, v3, Lc/d/a/b/i/e/r2;->k:I

    .line 46
    iget-object v12, v0, Lc/d/a/b/i/e/q2;->a:Lc/d/a/b/i/e/d2;

    .line 47
    iget-object v14, v3, Lc/d/a/b/i/e/r2;->n:[I

    move-object v6, v1

    move-object v7, v2

    move/from16 v13, v19

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    .line 48
    invoke-direct/range {v6 .. v21}, Lc/d/a/b/i/e/g2;-><init>([I[Ljava/lang/Object;IIILc/d/a/b/i/e/d2;Z[I[I[ILc/d/a/b/i/e/j2;Lc/d/a/b/i/e/o1;Lc/d/a/b/i/e/g3;Lc/d/a/b/i/e/l0;Lc/d/a/b/i/e/y1;)V

    return-object v1

    :cond_1a
    check-cast v0, Lc/d/a/b/i/e/e3;

    .line 49
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    goto :goto_15

    :goto_14
    throw v0

    :goto_15
    goto :goto_14
.end method

.method public static q(ILjava/lang/Object;Lc/d/a/b/i/e/a4;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lc/d/a/b/i/e/h0;

    .line 1
    iget-object p2, p2, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {p2, p0, p1}, Lc/d/a/b/i/e/f0;->i(ILjava/lang/String;)V

    return-void

    .line 2
    :cond_0
    check-cast p1, Lc/d/a/b/i/e/y;

    check-cast p2, Lc/d/a/b/i/e/h0;

    .line 3
    iget-object p2, p2, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {p2, p0, p1}, Lc/d/a/b/i/e/f0;->f(ILc/d/a/b/i/e/y;)V

    return-void
.end method

.method public static r(Lc/d/a/b/i/e/g3;Ljava/lang/Object;Lc/d/a/b/i/e/a4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/d/a/b/i/e/g3<",
            "TUT;TUB;>;TT;",
            "Lc/d/a/b/i/e/a4;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lc/d/a/b/i/e/g3;->b(Ljava/lang/Object;Lc/d/a/b/i/e/a4;)V

    return-void
.end method


# virtual methods
.method public final A(I)I
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public final B(I)I
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public final C(I)I
    .locals 6

    iget v0, p0, Lc/d/a/b/i/e/g2;->c:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_4

    iget v2, p0, Lc/d/a/b/i/e/g2;->e:I

    if-ge p1, v2, :cond_1

    sub-int v0, p1, v0

    shl-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    iget v3, p0, Lc/d/a/b/i/e/g2;->d:I

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v2, v0, :cond_4

    add-int v3, v0, v2

    ushr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v4, v3, 0x2

    iget-object v5, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v5, v5, v4

    if-ne p1, v5, :cond_2

    return v4

    :cond_2
    if-ge p1, v5, :cond_3

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final D(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lc/d/a/b/i/e/g2;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->a:[I

    add-int/lit8 p2, p2, 0x2

    aget p2, v0, p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 2
    invoke-static {p1, v1, v2}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 3
    sget-object v0, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v0, p1, v1, v2, p2}, Lc/d/a/b/i/e/m3$d;->e(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final E(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->a:[I

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    sget-object p3, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {p3, p1, v0, v1, p2}, Lc/d/a/b/i/e/m3$d;->e(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final F(Ljava/lang/Object;Lc/d/a/b/i/e/a4;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/d/a/b/i/e/a4;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lc/d/a/b/i/e/g2;->g:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v3, v1}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object v3

    invoke-virtual {v3}, Lc/d/a/b/i/e/p0;->a()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lc/d/a/b/i/e/p0;->c()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    iget-object v7, v0, Lc/d/a/b/i/e/g2;->a:[I

    array-length v7, v7

    sget-object v8, Lc/d/a/b/i/e/g2;->q:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v7, :cond_7

    invoke-virtual {v0, v10}, Lc/d/a/b/i/e/g2;->A(I)I

    move-result v12

    iget-object v13, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v14, v13, v10

    const/high16 v15, 0xff00000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0x14

    iget-boolean v4, v0, Lc/d/a/b/i/e/g2;->h:Z

    const v16, 0xfffff

    if-nez v4, :cond_2

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    add-int/lit8 v4, v10, 0x2

    aget v4, v13, v4

    and-int v13, v4, v16

    move/from16 v17, v10

    if-eq v13, v6, :cond_1

    int-to-long v9, v13

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v13

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_2

    :cond_2
    move/from16 v17, v10

    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    iget-object v9, v0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v9, v5}, Lc/d/a/b/i/e/l0;->a(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    iget-object v9, v0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v9, v2, v5}, Lc/d/a/b/i/e/l0;->c(Lc/d/a/b/i/e/a4;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    and-int v9, v12, v16

    int-to-long v9, v9

    move/from16 v12, v17

    packed-switch v15, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v9

    move-object v10, v2

    check-cast v10, Lc/d/a/b/i/e/h0;

    invoke-virtual {v10, v14, v4, v9}, Lc/d/a/b/i/e/h0;->f(ILjava/lang/Object;Lc/d/a/b/i/e/t2;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v4, v2

    check-cast v4, Lc/d/a/b/i/e/h0;

    invoke-virtual {v4, v14, v9, v10}, Lc/d/a/b/i/e/h0;->e(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/h0;->g(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v4, v2

    check-cast v4, Lc/d/a/b/i/e/h0;

    .line 1
    iget-object v4, v4, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v4, v14, v9, v10}, Lc/d/a/b/i/e/f0;->B(IJ)V

    goto :goto_3

    .line 2
    :pswitch_4
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 3
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->I(II)V

    goto :goto_3

    .line 4
    :pswitch_5
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 5
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->A(II)V

    goto :goto_3

    .line 6
    :pswitch_6
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 7
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->D(II)V

    goto/16 :goto_3

    .line 8
    :pswitch_7
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/i/e/y;

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 9
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->f(ILc/d/a/b/i/e/y;)V

    goto/16 :goto_3

    .line 10
    :pswitch_8
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v9

    move-object v10, v2

    check-cast v10, Lc/d/a/b/i/e/h0;

    invoke-virtual {v10, v14, v4, v9}, Lc/d/a/b/i/e/h0;->d(ILjava/lang/Object;Lc/d/a/b/i/e/t2;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lc/d/a/b/i/e/g2;->q(ILjava/lang/Object;Lc/d/a/b/i/e/a4;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->N(Ljava/lang/Object;J)Z

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 11
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->s(IZ)V

    goto/16 :goto_3

    .line 12
    :pswitch_b
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 13
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->I(II)V

    goto/16 :goto_3

    .line 14
    :pswitch_c
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v4, v2

    check-cast v4, Lc/d/a/b/i/e/h0;

    .line 15
    iget-object v4, v4, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v4, v14, v9, v10}, Lc/d/a/b/i/e/f0;->B(IJ)V

    goto/16 :goto_3

    .line 16
    :pswitch_d
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 17
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->A(II)V

    goto/16 :goto_3

    .line 18
    :pswitch_e
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v4, v2

    check-cast v4, Lc/d/a/b/i/e/h0;

    .line 19
    iget-object v4, v4, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v4, v14, v9, v10}, Lc/d/a/b/i/e/f0;->e(IJ)V

    goto/16 :goto_3

    .line 20
    :pswitch_f
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v4, v2

    check-cast v4, Lc/d/a/b/i/e/h0;

    .line 21
    iget-object v4, v4, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v4, v14, v9, v10}, Lc/d/a/b/i/e/f0;->e(IJ)V

    goto/16 :goto_3

    .line 22
    :pswitch_10
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->K(Ljava/lang/Object;J)F

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/h0;->b(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v1, v14, v12}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/g2;->J(Ljava/lang/Object;J)D

    move-result-wide v9

    move-object v4, v2

    check-cast v4, Lc/d/a/b/i/e/h0;

    invoke-virtual {v4, v14, v9, v10}, Lc/d/a/b/i/e/h0;->a(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v14, v4, v12}, Lc/d/a/b/i/e/g2;->s(Lc/d/a/b/i/e/a4;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v0, v12}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v10

    invoke-static {v4, v9, v2, v10}, Lc/d/a/b/i/e/v2;->h(ILjava/util/List;Lc/d/a/b/i/e/a4;Lc/d/a/b/i/e/t2;)V

    goto/16 :goto_3

    :pswitch_14
    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x1

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->v(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->E(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->z(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->G(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->H(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->D(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->I(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->F(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->x(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->B(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->s(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->n(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->i(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v13, 0x1

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->d(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_3

    :pswitch_22
    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->v(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v13, 0x0

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->E(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v13, 0x0

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->z(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v13, 0x0

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->G(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v13, 0x0

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->H(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v13, 0x0

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->D(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_28
    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2}, Lc/d/a/b/i/e/v2;->g(ILjava/util/List;Lc/d/a/b/i/e/a4;)V

    goto/16 :goto_3

    :pswitch_29
    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v0, v12}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v10

    invoke-static {v4, v9, v2, v10}, Lc/d/a/b/i/e/v2;->c(ILjava/util/List;Lc/d/a/b/i/e/a4;Lc/d/a/b/i/e/t2;)V

    goto/16 :goto_3

    :pswitch_2a
    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2}, Lc/d/a/b/i/e/v2;->b(ILjava/util/List;Lc/d/a/b/i/e/a4;)V

    goto/16 :goto_3

    :pswitch_2b
    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->I(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->F(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->x(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->B(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->s(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->n(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->i(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v12

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v13}, Lc/d/a/b/i/e/v2;->d(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v9

    move-object v10, v2

    check-cast v10, Lc/d/a/b/i/e/h0;

    invoke-virtual {v10, v14, v4, v9}, Lc/d/a/b/i/e/h0;->f(ILjava/lang/Object;Lc/d/a/b/i/e/t2;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v4, v2

    check-cast v4, Lc/d/a/b/i/e/h0;

    invoke-virtual {v4, v14, v9, v10}, Lc/d/a/b/i/e/h0;->e(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/h0;->g(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v4, v2

    check-cast v4, Lc/d/a/b/i/e/h0;

    .line 23
    iget-object v4, v4, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v4, v14, v9, v10}, Lc/d/a/b/i/e/f0;->B(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 24
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 25
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->I(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 26
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 27
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->A(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 28
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 29
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->D(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 30
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/i/e/y;

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 31
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->f(ILc/d/a/b/i/e/y;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 32
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v9

    move-object v10, v2

    check-cast v10, Lc/d/a/b/i/e/h0;

    invoke-virtual {v10, v14, v4, v9}, Lc/d/a/b/i/e/h0;->d(ILjava/lang/Object;Lc/d/a/b/i/e/t2;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lc/d/a/b/i/e/g2;->q(ILjava/lang/Object;Lc/d/a/b/i/e/a4;)V

    goto/16 :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/m3;->q(Ljava/lang/Object;J)Z

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 33
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->s(IZ)V

    goto/16 :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 34
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 35
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->I(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 36
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v4, v2

    check-cast v4, Lc/d/a/b/i/e/h0;

    .line 37
    iget-object v4, v4, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v4, v14, v9, v10}, Lc/d/a/b/i/e/f0;->B(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 38
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    .line 39
    iget-object v9, v9, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/f0;->A(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 40
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v4, v2

    check-cast v4, Lc/d/a/b/i/e/h0;

    .line 41
    iget-object v4, v4, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v4, v14, v9, v10}, Lc/d/a/b/i/e/f0;->e(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 42
    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    move-object v4, v2

    check-cast v4, Lc/d/a/b/i/e/h0;

    .line 43
    iget-object v4, v4, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v4, v14, v9, v10}, Lc/d/a/b/i/e/f0;->e(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    .line 44
    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/m3;->r(Ljava/lang/Object;J)F

    move-result v4

    move-object v9, v2

    check-cast v9, Lc/d/a/b/i/e/h0;

    invoke-virtual {v9, v14, v4}, Lc/d/a/b/i/e/h0;->b(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_6

    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/m3;->s(Ljava/lang/Object;J)D

    move-result-wide v9

    move-object v4, v2

    check-cast v4, Lc/d/a/b/i/e/h0;

    invoke-virtual {v4, v14, v9, v10}, Lc/d/a/b/i/e/h0;->a(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v12, 0x4

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    iget-object v4, v0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v4, v2, v5}, Lc/d/a/b/i/e/l0;->c(Lc/d/a/b/i/e/a4;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    iget-object v3, v0, Lc/d/a/b/i/e/g2;->n:Lc/d/a/b/i/e/g3;

    invoke-static {v3, v1, v2}, Lc/d/a/b/i/e/g2;->r(Lc/d/a/b/i/e/g3;Ljava/lang/Object;Lc/d/a/b/i/e/a4;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final G(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->a:[I

    add-int/lit8 v1, p3, 0x1

    aget v1, v0, v1

    .line 2
    aget v0, v0, p3

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p2, v0, p3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v1, v2}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v1, v2}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v3, p2}, Lc/d/a/b/i/e/a1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lc/d/a/b/i/e/m3;->f(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p3}, Lc/d/a/b/i/e/g2;->E(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v1, v2, p2}, Lc/d/a/b/i/e/m3;->f(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p3}, Lc/d/a/b/i/e/g2;->E(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method public final H(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;Lc/d/a/b/i/e/a4;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/d/a/b/i/e/a4;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lc/d/a/b/i/e/g2;->h:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lc/d/a/b/i/e/g2;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/i/e/p0;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lc/d/a/b/i/e/p0;->c()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lc/d/a/b/i/e/g2;->a:[I

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    invoke-virtual {p0, v5}, Lc/d/a/b/i/e/g2;->A(I)I

    move-result v6

    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    :goto_2
    if-eqz v2, :cond_2

    iget-object v8, p0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v8, v2}, Lc/d/a/b/i/e/l0;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_2

    iget-object v8, p0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v8, p2, v2}, Lc/d/a/b/i/e/l0;->c(Lc/d/a/b/i/e/a4;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_2

    :cond_2
    const/high16 v8, 0xff00000

    and-int/2addr v8, v6

    ushr-int/lit8 v8, v8, 0x14

    const/4 v9, 0x1

    const v10, 0xfffff

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v8

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v8

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_7

    :pswitch_5
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_8

    :pswitch_6
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_9

    :pswitch_7
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_a

    :pswitch_8
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_b

    :pswitch_9
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_c

    :pswitch_a
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->N(Ljava/lang/Object;J)Z

    move-result v6

    goto/16 :goto_d

    :pswitch_b
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_e

    :pswitch_c
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v8

    goto/16 :goto_f

    :pswitch_d
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v6

    goto/16 :goto_10

    :pswitch_e
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v8

    goto/16 :goto_11

    :pswitch_f
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v8

    goto/16 :goto_12

    :pswitch_10
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->K(Ljava/lang/Object;J)F

    move-result v6

    goto/16 :goto_13

    :pswitch_11
    invoke-virtual {p0, p1, v7, v5}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/g2;->J(Ljava/lang/Object;J)D

    move-result-wide v8

    goto/16 :goto_14

    :pswitch_12
    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p2, v7, v6, v5}, Lc/d/a/b/i/e/g2;->s(Lc/d/a/b/i/e/a4;ILjava/lang/Object;I)V

    goto/16 :goto_15

    :pswitch_13
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v5}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Lc/d/a/b/i/e/v2;->h(ILjava/util/List;Lc/d/a/b/i/e/a4;Lc/d/a/b/i/e/t2;)V

    goto/16 :goto_15

    :pswitch_14
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->v(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_15
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->E(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_16
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->z(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_17
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->G(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_18
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->H(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_19
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->D(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_1a
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->I(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_1b
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->F(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_1c
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->x(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_1d
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->B(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_1e
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->s(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_1f
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->n(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_20
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->i(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_21
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v10, v6

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lc/d/a/b/i/e/v2;->d(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_22
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->v(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_23
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->E(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_24
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->z(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_25
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->G(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_26
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->H(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_27
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->D(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_28
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Lc/d/a/b/i/e/v2;->g(ILjava/util/List;Lc/d/a/b/i/e/a4;)V

    goto/16 :goto_15

    :pswitch_29
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v5}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Lc/d/a/b/i/e/v2;->c(ILjava/util/List;Lc/d/a/b/i/e/a4;Lc/d/a/b/i/e/t2;)V

    goto/16 :goto_15

    :pswitch_2a
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Lc/d/a/b/i/e/v2;->b(ILjava/util/List;Lc/d/a/b/i/e/a4;)V

    goto/16 :goto_15

    :pswitch_2b
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->I(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_2c
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->F(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_2d
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->x(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_2e
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->B(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_2f
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->s(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_30
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->n(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_31
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->i(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_32
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v7, v7, v5

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lc/d/a/b/i/e/v2;->d(ILjava/util/List;Lc/d/a/b/i/e/a4;Z)V

    goto/16 :goto_15

    :pswitch_33
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_3
    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lc/d/a/b/i/e/h0;

    invoke-virtual {v9, v7, v6, v8}, Lc/d/a/b/i/e/h0;->f(ILjava/lang/Object;Lc/d/a/b/i/e/t2;)V

    goto/16 :goto_15

    :pswitch_34
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v8

    :goto_4
    move-object v6, p2

    check-cast v6, Lc/d/a/b/i/e/h0;

    invoke-virtual {v6, v7, v8, v9}, Lc/d/a/b/i/e/h0;->e(IJ)V

    goto/16 :goto_15

    :pswitch_35
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v6

    :goto_5
    move-object v8, p2

    check-cast v8, Lc/d/a/b/i/e/h0;

    invoke-virtual {v8, v7, v6}, Lc/d/a/b/i/e/h0;->g(II)V

    goto/16 :goto_15

    :pswitch_36
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v8

    :goto_6
    move-object v6, p2

    check-cast v6, Lc/d/a/b/i/e/h0;

    .line 1
    iget-object v6, v6, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v6, v7, v8, v9}, Lc/d/a/b/i/e/f0;->B(IJ)V

    goto/16 :goto_15

    .line 2
    :pswitch_37
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v6

    :goto_7
    move-object v8, p2

    check-cast v8, Lc/d/a/b/i/e/h0;

    .line 3
    iget-object v8, v8, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v8, v7, v6}, Lc/d/a/b/i/e/f0;->I(II)V

    goto/16 :goto_15

    .line 4
    :pswitch_38
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v6

    :goto_8
    move-object v8, p2

    check-cast v8, Lc/d/a/b/i/e/h0;

    .line 5
    iget-object v8, v8, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v8, v7, v6}, Lc/d/a/b/i/e/f0;->A(II)V

    goto/16 :goto_15

    .line 6
    :pswitch_39
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v6

    :goto_9
    move-object v8, p2

    check-cast v8, Lc/d/a/b/i/e/h0;

    .line 7
    iget-object v8, v8, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v8, v7, v6}, Lc/d/a/b/i/e/f0;->D(II)V

    goto/16 :goto_15

    .line 8
    :pswitch_3a
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_a
    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/d/a/b/i/e/y;

    move-object v8, p2

    check-cast v8, Lc/d/a/b/i/e/h0;

    .line 9
    iget-object v8, v8, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v8, v7, v6}, Lc/d/a/b/i/e/f0;->f(ILc/d/a/b/i/e/y;)V

    goto/16 :goto_15

    .line 10
    :pswitch_3b
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_b
    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v8

    move-object v9, p2

    check-cast v9, Lc/d/a/b/i/e/h0;

    invoke-virtual {v9, v7, v6, v8}, Lc/d/a/b/i/e/h0;->d(ILjava/lang/Object;Lc/d/a/b/i/e/t2;)V

    goto/16 :goto_15

    :pswitch_3c
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_c
    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Lc/d/a/b/i/e/g2;->q(ILjava/lang/Object;Lc/d/a/b/i/e/a4;)V

    goto/16 :goto_15

    :pswitch_3d
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->q(Ljava/lang/Object;J)Z

    move-result v6

    :goto_d
    move-object v8, p2

    check-cast v8, Lc/d/a/b/i/e/h0;

    .line 11
    iget-object v8, v8, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v8, v7, v6}, Lc/d/a/b/i/e/f0;->s(IZ)V

    goto/16 :goto_15

    .line 12
    :pswitch_3e
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v6

    :goto_e
    move-object v8, p2

    check-cast v8, Lc/d/a/b/i/e/h0;

    .line 13
    iget-object v8, v8, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v8, v7, v6}, Lc/d/a/b/i/e/f0;->I(II)V

    goto/16 :goto_15

    .line 14
    :pswitch_3f
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v8

    :goto_f
    move-object v6, p2

    check-cast v6, Lc/d/a/b/i/e/h0;

    .line 15
    iget-object v6, v6, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v6, v7, v8, v9}, Lc/d/a/b/i/e/f0;->B(IJ)V

    goto :goto_15

    .line 16
    :pswitch_40
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v6

    :goto_10
    move-object v8, p2

    check-cast v8, Lc/d/a/b/i/e/h0;

    .line 17
    iget-object v8, v8, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v8, v7, v6}, Lc/d/a/b/i/e/f0;->A(II)V

    goto :goto_15

    .line 18
    :pswitch_41
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v8

    :goto_11
    move-object v6, p2

    check-cast v6, Lc/d/a/b/i/e/h0;

    .line 19
    iget-object v6, v6, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v6, v7, v8, v9}, Lc/d/a/b/i/e/f0;->e(IJ)V

    goto :goto_15

    .line 20
    :pswitch_42
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v8

    :goto_12
    move-object v6, p2

    check-cast v6, Lc/d/a/b/i/e/h0;

    .line 21
    iget-object v6, v6, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    invoke-virtual {v6, v7, v8, v9}, Lc/d/a/b/i/e/f0;->e(IJ)V

    goto :goto_15

    .line 22
    :pswitch_43
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->r(Ljava/lang/Object;J)F

    move-result v6

    :goto_13
    move-object v8, p2

    check-cast v8, Lc/d/a/b/i/e/h0;

    invoke-virtual {v8, v7, v6}, Lc/d/a/b/i/e/h0;->b(IF)V

    goto :goto_15

    :pswitch_44
    invoke-virtual {p0, p1, v5}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    and-int/2addr v6, v10

    int-to-long v8, v6

    invoke-static {p1, v8, v9}, Lc/d/a/b/i/e/m3;->s(Ljava/lang/Object;J)D

    move-result-wide v8

    :goto_14
    move-object v6, p2

    check-cast v6, Lc/d/a/b/i/e/h0;

    invoke-virtual {v6, v7, v8, v9}, Lc/d/a/b/i/e/h0;->a(ID)V

    :cond_3
    :goto_15
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_1

    :cond_4
    :goto_16
    if-eqz v2, :cond_6

    iget-object v3, p0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v3, p2, v2}, Lc/d/a/b/i/e/l0;->c(Lc/d/a/b/i/e/a4;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_16

    :cond_5
    move-object v2, v1

    goto :goto_16

    :cond_6
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->n:Lc/d/a/b/i/e/g3;

    invoke-static {v0, p1, p2}, Lc/d/a/b/i/e/g2;->r(Lc/d/a/b/i/e/g3;Ljava/lang/Object;Lc/d/a/b/i/e/a4;)V

    return-void

    :cond_7
    invoke-virtual {p0, p1, p2}, Lc/d/a/b/i/e/g2;->F(Ljava/lang/Object;Lc/d/a/b/i/e/a4;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc/d/a/b/i/e/g2;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lc/d/a/b/i/e/g2;->A(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0, p2, v4, v0}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1, p2, v0}, Lc/d/a/b/i/e/g2;->G(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p0, p2, v4, v0}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    invoke-static {p2, v2, v3}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lc/d/a/b/i/e/m3;->f(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v4, v0}, Lc/d/a/b/i/e/g2;->E(Ljava/lang/Object;II)V

    goto/16 :goto_6

    :pswitch_3
    iget-object v1, p0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    .line 1
    sget-object v4, Lc/d/a/b/i/e/v2;->a:Ljava/lang/Class;

    invoke-static {p1, v2, v3}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v2, v3}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lc/d/a/b/i/e/y1;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lc/d/a/b/i/e/m3;->f(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :pswitch_4
    iget-object v1, p0, Lc/d/a/b/i/e/g2;->m:Lc/d/a/b/i/e/o1;

    invoke-virtual {v1, p1, p2, v2, v3}, Lc/d/a/b/i/e/o1;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v0}, Lc/d/a/b/i/e/g2;->t(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_6

    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    invoke-static {p2, v2, v3}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lc/d/a/b/i/e/m3;->f(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_e
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lc/d/a/b/i/e/m3;->q(Ljava/lang/Object;J)Z

    move-result v1

    .line 3
    sget-object v4, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v4, p1, v2, v3, v1}, Lc/d/a/b/i/e/m3$d;->g(Ljava/lang/Object;JZ)V

    goto :goto_5

    .line 4
    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :pswitch_10
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_11
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_3
    invoke-static {p2, v2, v3}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v1

    .line 5
    sget-object v4, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v4, p1, v2, v3, v1}, Lc/d/a/b/i/e/m3$d;->e(Ljava/lang/Object;JI)V

    goto :goto_5

    .line 6
    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_4
    invoke-static {p2, v2, v3}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lc/d/a/b/i/e/m3;->e(Ljava/lang/Object;JJ)V

    goto :goto_5

    :pswitch_14
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lc/d/a/b/i/e/m3;->r(Ljava/lang/Object;J)F

    move-result v1

    .line 7
    sget-object v4, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v4, p1, v2, v3, v1}, Lc/d/a/b/i/e/m3$d;->d(Ljava/lang/Object;JF)V

    goto :goto_5

    .line 8
    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lc/d/a/b/i/e/m3;->s(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lc/d/a/b/i/e/m3;->d(Ljava/lang/Object;JD)V

    :goto_5
    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/e/g2;->D(Ljava/lang/Object;I)V

    :cond_0
    :goto_6
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lc/d/a/b/i/e/g2;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->n:Lc/d/a/b/i/e/g3;

    .line 9
    sget-object v1, Lc/d/a/b/i/e/v2;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/i/e/g3;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc/d/a/b/i/e/g3;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    iget-boolean v0, p0, Lc/d/a/b/i/e/g2;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-static {v0, p1, p2}, Lc/d/a/b/i/e/v2;->e(Lc/d/a/b/i/e/l0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;[BIILc/d/a/b/i/e/u;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lc/d/a/b/i/e/u;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lc/d/a/b/i/e/g2;->h:Z

    if-eqz v0, :cond_f

    sget-object v9, Lc/d/a/b/i/e/g2;->q:Lsun/misc/Unsafe;

    move/from16 v0, p3

    :goto_0
    if-ge v0, v13, :cond_d

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v1, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->g1(I[BILc/d/a/b/i/e/u;)I

    move-result v0

    iget v1, v11, Lc/d/a/b/i/e/u;->a:I

    move v10, v0

    move/from16 v16, v1

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v10, v1

    :goto_1
    ushr-int/lit8 v6, v16, 0x3

    and-int/lit8 v7, v16, 0x7

    invoke-virtual {v15, v6}, Lc/d/a/b/i/e/g2;->C(I)I

    move-result v8

    if-ltz v8, :cond_b

    iget-object v0, v15, Lc/d/a/b/i/e/g2;->a:[I

    add-int/lit8 v1, v8, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v4, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v2, v0

    const/16 v0, 0x11

    const/4 v1, 0x2

    if-gt v4, v0, :cond_4

    const/4 v0, 0x5

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    if-nez v7, :cond_b

    invoke-static {v12, v10, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v0

    iget-wide v4, v11, Lc/d/a/b/i/e/u;->b:J

    invoke-static {v4, v5}, Lc/d/a/b/i/e/e0;->a(J)J

    move-result-wide v4

    goto/16 :goto_7

    :pswitch_1
    if-nez v7, :cond_b

    invoke-static {v12, v10, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v0

    iget v1, v11, Lc/d/a/b/i/e/u;->a:I

    invoke-static {v1}, Lc/d/a/b/i/e/e0;->b(I)I

    move-result v1

    goto/16 :goto_6

    :pswitch_2
    if-nez v7, :cond_b

    goto/16 :goto_5

    :pswitch_3
    if-ne v7, v1, :cond_b

    invoke-static {v12, v10, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->a2([BILc/d/a/b/i/e/u;)I

    move-result v0

    goto :goto_2

    :pswitch_4
    if-ne v7, v1, :cond_b

    invoke-virtual {v15, v8}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v0

    invoke-static {v0, v12, v10, v13, v11}, Lc/d/a/b/i/e/g2;->k(Lc/d/a/b/i/e/t2;[BIILc/d/a/b/i/e/u;)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, v11, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    invoke-static {v1, v4}, Lc/d/a/b/i/e/a1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :pswitch_5
    if-ne v7, v1, :cond_b

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_2

    invoke-static {v12, v10, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->T1([BILc/d/a/b/i/e/u;)I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-static {v12, v10, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->X1([BILc/d/a/b/i/e/u;)I

    move-result v0

    :goto_2
    iget-object v1, v11, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    :goto_3
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    if-nez v7, :cond_b

    invoke-static {v12, v10, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v0

    iget-wide v4, v11, Lc/d/a/b/i/e/u;->b:J

    const-wide/16 v7, 0x0

    cmp-long v1, v4, v7

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    .line 1
    :goto_4
    sget-object v1, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v1, v14, v2, v3, v6}, Lc/d/a/b/i/e/m3$d;->g(Ljava/lang/Object;JZ)V

    goto/16 :goto_0

    :pswitch_7
    if-ne v7, v0, :cond_b

    .line 2
    invoke-static {v12, v10}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S1([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_8
    if-ne v7, v6, :cond_b

    invoke-static {v12, v10}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z1([BI)J

    move-result-wide v4

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_9

    :pswitch_9
    if-nez v7, :cond_b

    :goto_5
    invoke-static {v12, v10, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v0

    iget v1, v11, Lc/d/a/b/i/e/u;->a:I

    :goto_6
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_0

    :pswitch_a
    if-nez v7, :cond_b

    invoke-static {v12, v10, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v0

    iget-wide v4, v11, Lc/d/a/b/i/e/u;->b:J

    :goto_7
    move v6, v0

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v0, v6

    goto/16 :goto_0

    :pswitch_b
    if-ne v7, v0, :cond_b

    .line 3
    invoke-static {v12, v10}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S1([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 4
    sget-object v1, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v1, v14, v2, v3, v0}, Lc/d/a/b/i/e/m3$d;->d(Ljava/lang/Object;JF)V

    :goto_8
    add-int/lit8 v0, v10, 0x4

    goto/16 :goto_0

    :pswitch_c
    if-ne v7, v6, :cond_b

    .line 5
    invoke-static {v12, v10}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z1([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 6
    invoke-static {v14, v2, v3, v0, v1}, Lc/d/a/b/i/e/m3;->d(Ljava/lang/Object;JD)V

    :goto_9
    add-int/lit8 v0, v10, 0x8

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x1b

    if-ne v4, v0, :cond_7

    if-ne v7, v1, :cond_b

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/d1;

    invoke-interface {v0}, Lc/d/a/b/i/e/d1;->d()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0xa

    goto :goto_a

    :cond_5
    shl-int/lit8 v1, v1, 0x1

    :goto_a
    invoke-interface {v0, v1}, Lc/d/a/b/i/e/d1;->c(I)Lc/d/a/b/i/e/d1;

    move-result-object v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_6
    move-object v5, v0

    invoke-virtual {v15, v8}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lc/d/a/b/i/e/g2;->i(Lc/d/a/b/i/e/t2;I[BIILc/d/a/b/i/e/d1;Lc/d/a/b/i/e/u;)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x31

    if-gt v4, v0, :cond_8

    int-to-long v0, v5

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v19, v2

    move-object/from16 v2, p2

    move v3, v10

    move v5, v4

    move/from16 v4, p4

    move/from16 p3, v5

    move/from16 v5, v16

    move-object/from16 v21, v9

    move v15, v10

    move-wide/from16 v9, v17

    move/from16 v11, p3

    move-wide/from16 v12, v19

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lc/d/a/b/i/e/g2;->m(Ljava/lang/Object;[BIIIIIIJIJLc/d/a/b/i/e/u;)I

    move-result v0

    if-ne v0, v15, :cond_c

    goto :goto_b

    :cond_8
    move-wide/from16 v19, v2

    move/from16 p3, v4

    move-object/from16 v21, v9

    move v15, v10

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_a

    if-eq v7, v1, :cond_9

    goto :goto_d

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v5, v8

    move-wide/from16 v6, v19

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lc/d/a/b/i/e/g2;->n(Ljava/lang/Object;[BIIIJLc/d/a/b/i/e/u;)I

    const/4 v0, 0x0

    throw v0

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v10, v5

    move/from16 v5, v16

    move v12, v8

    move v8, v10

    move-wide/from16 v10, v19

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lc/d/a/b/i/e/g2;->l(Ljava/lang/Object;[BIIIIIIIJILc/d/a/b/i/e/u;)I

    move-result v0

    if-ne v0, v15, :cond_c

    :goto_b
    move v2, v0

    goto :goto_e

    :cond_b
    :goto_c
    move-object/from16 v21, v9

    move v15, v10

    :goto_d
    move v2, v15

    .line 7
    :goto_e
    invoke-static/range {p1 .. p1}, Lc/d/a/b/i/e/g2;->O(Ljava/lang/Object;)Lc/d/a/b/i/e/h3;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->c1(I[BIILc/d/a/b/i/e/h3;Lc/d/a/b/i/e/u;)I

    move-result v0

    :cond_c
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v21

    goto/16 :goto_0

    :cond_d
    move v4, v13

    if-ne v0, v4, :cond_e

    return-void

    .line 8
    :cond_e
    invoke-static {}, Lc/d/a/b/i/e/e1;->c()Lc/d/a/b/i/e/e1;

    move-result-object v0

    throw v0

    :cond_f
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lc/d/a/b/i/e/g2;->o(Ljava/lang/Object;[BIIILc/d/a/b/i/e/u;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-boolean v0, p0, Lc/d/a/b/i/e/g2;->h:Z

    const v1, 0xfffff

    const/high16 v2, 0xff00000

    if-eqz v0, :cond_5

    sget-object v0, Lc/d/a/b/i/e/g2;->q:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lc/d/a/b/i/e/g2;->a:[I

    array-length v5, v5

    if-ge v3, v5, :cond_4

    invoke-virtual {p0, v3}, Lc/d/a/b/i/e/g2;->A(I)I

    move-result v5

    and-int v6, v5, v2

    ushr-int/lit8 v6, v6, 0x14

    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v8, v7, v3

    and-int/2addr v5, v1

    int-to-long v9, v5

    sget-object v5, Lc/d/a/b/i/e/t0;->M:Lc/d/a/b/i/e/t0;

    .line 1
    iget v5, v5, Lc/d/a/b/i/e/t0;->c:I

    if-lt v6, v5, :cond_0

    .line 2
    sget-object v5, Lc/d/a/b/i/e/t0;->Z:Lc/d/a/b/i/e/t0;

    .line 3
    iget v5, v5, Lc/d/a/b/i/e/t0;->c:I

    if-gt v6, v5, :cond_0

    add-int/lit8 v5, v3, 0x2

    .line 4
    aget v5, v7, v5

    :cond_0
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v5

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_5

    :pswitch_4
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v5

    goto/16 :goto_7

    :pswitch_6
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v5

    goto/16 :goto_8

    :pswitch_7
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_9

    :pswitch_8
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_a

    :pswitch_9
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lc/d/a/b/i/e/y;

    if-eqz v6, :cond_2

    goto/16 :goto_b

    :pswitch_a
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_c

    :pswitch_b
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_d

    :pswitch_c
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_e

    :pswitch_d
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v5

    goto/16 :goto_f

    :pswitch_e
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_10

    :pswitch_f
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_11

    :pswitch_10
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_12

    :pswitch_11
    invoke-virtual {p0, p1, v8, v3}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_13

    :pswitch_12
    iget-object v5, p0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3}, Lc/d/a/b/i/e/g2;->y(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v8, v6, v7}, Lc/d/a/b/i/e/y1;->e(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_13
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v3}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lc/d/a/b/i/e/v2;->p(ILjava/util/List;Lc/d/a/b/i/e/t2;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_14
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->m(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->y(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->C(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->A(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->q(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->w(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 5
    sget-object v6, Lc/d/a/b/i/e/v2;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_1

    .line 6
    :pswitch_1b
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->A(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_1

    :pswitch_1c
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->C(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_1

    :pswitch_1d
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->u(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_1

    :pswitch_1e
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_1

    :pswitch_1f
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->a(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_1

    :pswitch_20
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->A(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_1

    :pswitch_21
    invoke-virtual {v0, p1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lc/d/a/b/i/e/v2;->C(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    :goto_1
    invoke-static {v8}, Lc/d/a/b/i/e/f0;->X(I)I

    move-result v6

    invoke-static {v5}, Lc/d/a/b/i/e/f0;->Z(I)I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v7, v5

    add-int/2addr v7, v4

    move v4, v7

    goto/16 :goto_15

    :pswitch_22
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lc/d/a/b/i/e/v2;->L(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_23
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lc/d/a/b/i/e/v2;->P(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_24
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lc/d/a/b/i/e/v2;->M(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_25
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lc/d/a/b/i/e/v2;->O(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_26
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lc/d/a/b/i/e/v2;->o(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_27
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v3}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lc/d/a/b/i/e/v2;->l(ILjava/util/List;Lc/d/a/b/i/e/t2;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_28
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lc/d/a/b/i/e/v2;->k(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_29
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 7
    sget-object v6, Lc/d/a/b/i/e/v2;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto/16 :goto_14

    :cond_1
    invoke-static {v8}, Lc/d/a/b/i/e/f0;->v(I)I

    move-result v6

    mul-int v5, v5, v6

    goto/16 :goto_14

    .line 8
    :pswitch_2a
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lc/d/a/b/i/e/v2;->N(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_2b
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lc/d/a/b/i/e/v2;->K(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_2c
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lc/d/a/b/i/e/v2;->J(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_2d
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lc/d/a/b/i/e/v2;->Q(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_2e
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/g2;->I(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v8, v5}, Lc/d/a/b/i/e/v2;->R(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_2f
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/b/i/e/d2;

    invoke-virtual {p0, v3}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lc/d/a/b/i/e/f0;->y(ILc/d/a/b/i/e/d2;Lc/d/a/b/i/e/t2;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_30
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v5

    :goto_3
    invoke-static {v8, v5, v6}, Lc/d/a/b/i/e/f0;->G(IJ)I

    move-result v5

    goto/16 :goto_14

    :pswitch_31
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v5

    :goto_4
    invoke-static {v8, v5}, Lc/d/a/b/i/e/f0;->P(II)I

    move-result v5

    goto/16 :goto_14

    :pswitch_32
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_5
    invoke-static {v8}, Lc/d/a/b/i/e/f0;->M(I)I

    move-result v5

    goto/16 :goto_14

    :pswitch_33
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_6
    invoke-static {v8}, Lc/d/a/b/i/e/f0;->S(I)I

    move-result v5

    goto/16 :goto_14

    :pswitch_34
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v5

    :goto_7
    invoke-static {v8, v5}, Lc/d/a/b/i/e/f0;->T(II)I

    move-result v5

    goto/16 :goto_14

    :pswitch_35
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v5

    :goto_8
    invoke-static {v8, v5}, Lc/d/a/b/i/e/f0;->N(II)I

    move-result v5

    goto/16 :goto_14

    :pswitch_36
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_9
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    goto :goto_b

    :pswitch_37
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_a
    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lc/d/a/b/i/e/v2;->j(ILjava/lang/Object;Lc/d/a/b/i/e/t2;)I

    move-result v5

    goto/16 :goto_14

    :pswitch_38
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lc/d/a/b/i/e/y;

    if-eqz v6, :cond_2

    :goto_b
    check-cast v5, Lc/d/a/b/i/e/y;

    invoke-static {v8, v5}, Lc/d/a/b/i/e/f0;->w(ILc/d/a/b/i/e/y;)I

    move-result v5

    goto/16 :goto_14

    :cond_2
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lc/d/a/b/i/e/f0;->m(ILjava/lang/String;)I

    move-result v5

    goto :goto_14

    :pswitch_39
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_c
    invoke-static {v8}, Lc/d/a/b/i/e/f0;->v(I)I

    move-result v5

    goto :goto_14

    :pswitch_3a
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_d
    invoke-static {v8}, Lc/d/a/b/i/e/f0;->Q(I)I

    move-result v5

    goto :goto_14

    :pswitch_3b
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_e
    invoke-static {v8}, Lc/d/a/b/i/e/f0;->J(I)I

    move-result v5

    goto :goto_14

    :pswitch_3c
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v5

    :goto_f
    invoke-static {v8, v5}, Lc/d/a/b/i/e/f0;->K(II)I

    move-result v5

    goto :goto_14

    :pswitch_3d
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v5

    :goto_10
    invoke-static {v8, v5, v6}, Lc/d/a/b/i/e/f0;->F(IJ)I

    move-result v5

    goto :goto_14

    :pswitch_3e
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, v9, v10}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v5

    :goto_11
    invoke-static {v8, v5, v6}, Lc/d/a/b/i/e/f0;->C(IJ)I

    move-result v5

    goto :goto_14

    :pswitch_3f
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_12
    invoke-static {v8}, Lc/d/a/b/i/e/f0;->l(I)I

    move-result v5

    goto :goto_14

    :pswitch_40
    invoke-virtual {p0, p1, v3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_13
    invoke-static {v8}, Lc/d/a/b/i/e/f0;->u(I)I

    move-result v5

    :goto_14
    add-int/2addr v4, v5

    :cond_3
    :goto_15
    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->n:Lc/d/a/b/i/e/g3;

    .line 9
    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->h(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v4

    return p1

    .line 10
    :cond_5
    sget-object v0, Lc/d/a/b/i/e/g2;->q:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_16
    iget-object v7, p0, Lc/d/a/b/i/e/g2;->a:[I

    array-length v7, v7

    if-ge v4, v7, :cond_b

    invoke-virtual {p0, v4}, Lc/d/a/b/i/e/g2;->A(I)I

    move-result v7

    iget-object v8, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v9, v8, v4

    and-int/2addr v2, v7

    ushr-int/lit8 v2, v2, 0x14

    const/16 v10, 0x11

    if-gt v2, v10, :cond_6

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v1

    ushr-int/lit8 v8, v8, 0x14

    const/4 v11, 0x1

    shl-int v8, v11, v8

    if-eq v10, v3, :cond_7

    int-to-long v11, v10

    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v6, v3

    move v3, v10

    goto :goto_17

    :cond_6
    const/4 v8, 0x0

    :cond_7
    :goto_17
    and-int/2addr v7, v1

    int-to-long v10, v7

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_2c

    :pswitch_41
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_19

    :pswitch_42
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v7

    goto/16 :goto_1a

    :pswitch_43
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1b

    :pswitch_44
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_1c

    :pswitch_45
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_1d

    :pswitch_46
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1e

    :pswitch_47
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1f

    :pswitch_48
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_20

    :pswitch_49
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_21

    :pswitch_4a
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Lc/d/a/b/i/e/y;

    if-eqz v7, :cond_9

    goto/16 :goto_22

    :pswitch_4b
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_23

    :pswitch_4c
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_24

    :pswitch_4d
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_25

    :pswitch_4e
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_26

    :pswitch_4f
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v7

    goto/16 :goto_27

    :pswitch_50
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p1, v10, v11}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v7

    goto/16 :goto_28

    :pswitch_51
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_29

    :pswitch_52
    invoke-virtual {p0, p1, v9, v4}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_2a

    :pswitch_53
    iget-object v2, p0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v4}, Lc/d/a/b/i/e/g2;->y(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v9, v7, v8}, Lc/d/a/b/i/e/y1;->e(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_54
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v4}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v7

    invoke-static {v9, v2, v7}, Lc/d/a/b/i/e/v2;->p(ILjava/util/List;Lc/d/a/b/i/e/t2;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_55
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->m(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    goto/16 :goto_18

    :pswitch_56
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->y(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    goto/16 :goto_18

    :pswitch_57
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->C(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    goto/16 :goto_18

    :pswitch_58
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->A(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    goto/16 :goto_18

    :pswitch_59
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->q(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    goto/16 :goto_18

    :pswitch_5a
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->w(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    goto/16 :goto_18

    :pswitch_5b
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 11
    sget-object v7, Lc/d/a/b/i/e/v2;->a:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_18

    .line 12
    :pswitch_5c
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->A(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_18

    :pswitch_5d
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->C(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_18

    :pswitch_5e
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->u(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_18

    :pswitch_5f
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->f(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_18

    :pswitch_60
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->a(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_18

    :pswitch_61
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->A(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    goto :goto_18

    :pswitch_62
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/v2;->C(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_a

    :goto_18
    invoke-static {v9}, Lc/d/a/b/i/e/f0;->X(I)I

    move-result v7

    invoke-static {v2}, Lc/d/a/b/i/e/f0;->Z(I)I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v5

    move v5, v8

    goto/16 :goto_2c

    :pswitch_63
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/v2;->L(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_64
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/v2;->P(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_65
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/v2;->M(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_66
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/v2;->O(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_67
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/v2;->o(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_68
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v4}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v7

    invoke-static {v9, v2, v7}, Lc/d/a/b/i/e/v2;->l(ILjava/util/List;Lc/d/a/b/i/e/t2;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_69
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/v2;->k(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_6a
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 13
    sget-object v7, Lc/d/a/b/i/e/v2;->a:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_2b

    :cond_8
    invoke-static {v9}, Lc/d/a/b/i/e/f0;->v(I)I

    move-result v7

    mul-int v2, v2, v7

    goto/16 :goto_2b

    .line 14
    :pswitch_6b
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/v2;->N(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_6c
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/v2;->K(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_6d
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/v2;->J(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_6e
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/v2;->Q(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_6f
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/v2;->R(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_70
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    :goto_19
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/i/e/d2;

    invoke-virtual {p0, v4}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v7

    invoke-static {v9, v2, v7}, Lc/d/a/b/i/e/f0;->y(ILc/d/a/b/i/e/d2;Lc/d/a/b/i/e/t2;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_71
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    :goto_1a
    invoke-static {v9, v7, v8}, Lc/d/a/b/i/e/f0;->G(IJ)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_72
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_1b
    invoke-static {v9, v2}, Lc/d/a/b/i/e/f0;->P(II)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_73
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    :goto_1c
    invoke-static {v9}, Lc/d/a/b/i/e/f0;->M(I)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_74
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    :goto_1d
    invoke-static {v9}, Lc/d/a/b/i/e/f0;->S(I)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_75
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_1e
    invoke-static {v9, v2}, Lc/d/a/b/i/e/f0;->T(II)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_76
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_1f
    invoke-static {v9, v2}, Lc/d/a/b/i/e/f0;->N(II)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_77
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    :goto_20
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_22

    :pswitch_78
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    :goto_21
    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v4}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v7

    invoke-static {v9, v2, v7}, Lc/d/a/b/i/e/v2;->j(ILjava/lang/Object;Lc/d/a/b/i/e/t2;)I

    move-result v2

    goto/16 :goto_2b

    :pswitch_79
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Lc/d/a/b/i/e/y;

    if-eqz v7, :cond_9

    :goto_22
    check-cast v2, Lc/d/a/b/i/e/y;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/f0;->w(ILc/d/a/b/i/e/y;)I

    move-result v2

    goto :goto_2b

    :cond_9
    check-cast v2, Ljava/lang/String;

    invoke-static {v9, v2}, Lc/d/a/b/i/e/f0;->m(ILjava/lang/String;)I

    move-result v2

    goto :goto_2b

    :pswitch_7a
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    :goto_23
    invoke-static {v9}, Lc/d/a/b/i/e/f0;->v(I)I

    move-result v2

    goto :goto_2b

    :pswitch_7b
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    :goto_24
    invoke-static {v9}, Lc/d/a/b/i/e/f0;->Q(I)I

    move-result v2

    goto :goto_2b

    :pswitch_7c
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    :goto_25
    invoke-static {v9}, Lc/d/a/b/i/e/f0;->J(I)I

    move-result v2

    goto :goto_2b

    :pswitch_7d
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_26
    invoke-static {v9, v2}, Lc/d/a/b/i/e/f0;->K(II)I

    move-result v2

    goto :goto_2b

    :pswitch_7e
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    :goto_27
    invoke-static {v9, v7, v8}, Lc/d/a/b/i/e/f0;->F(IJ)I

    move-result v2

    goto :goto_2b

    :pswitch_7f
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    invoke-virtual {v0, p1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    :goto_28
    invoke-static {v9, v7, v8}, Lc/d/a/b/i/e/f0;->C(IJ)I

    move-result v2

    goto :goto_2b

    :pswitch_80
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    :goto_29
    invoke-static {v9}, Lc/d/a/b/i/e/f0;->l(I)I

    move-result v2

    goto :goto_2b

    :pswitch_81
    and-int v2, v6, v8

    if-eqz v2, :cond_a

    :goto_2a
    invoke-static {v9}, Lc/d/a/b/i/e/f0;->u(I)I

    move-result v2

    :goto_2b
    add-int/2addr v5, v2

    :cond_a
    :goto_2c
    add-int/lit8 v4, v4, 0x4

    const/high16 v2, 0xff00000

    goto/16 :goto_16

    :cond_b
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->n:Lc/d/a/b/i/e/g3;

    .line 15
    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/b/i/e/g3;->h(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v5

    .line 16
    iget-boolean v1, p0, Lc/d/a/b/i/e/g2;->g:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v1, p1}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    :goto_2d
    iget-object v3, p1, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v3}, Lc/d/a/b/i/e/w2;->e()I

    move-result v3

    if-ge v1, v3, :cond_c

    iget-object v3, p1, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v3, v1}, Lc/d/a/b/i/e/w2;->c(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/i/e/s0;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lc/d/a/b/i/e/p0;->g(Lc/d/a/b/i/e/s0;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_c
    iget-object p1, p1, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {p1}, Lc/d/a/b/i/e/w2;->f()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/i/e/s0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lc/d/a/b/i/e/p0;->g(Lc/d/a/b/i/e/s0;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_2e

    :cond_d
    add-int/2addr v0, v2

    :cond_e
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2e
        :pswitch_2d
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_2d
        :pswitch_2e
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6f
        :pswitch_6e
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_6e
        :pswitch_6f
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lc/d/a/b/i/e/g2;->A(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v2}, Lc/d/a/b/i/e/g2;->B(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {p2, v4, v5}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lc/d/a/b/i/e/v2;->t(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_1
    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lc/d/a/b/i/e/v2;->t(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lc/d/a/b/i/e/v2;->t(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lc/d/a/b/i/e/v2;->t(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lc/d/a/b/i/e/v2;->t(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lc/d/a/b/i/e/v2;->t(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->q(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->q(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v2}, Lc/d/a/b/i/e/g2;->H(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    const/4 v3, 0x0

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->n:Lc/d/a/b/i/e/g3;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lc/d/a/b/i/e/g2;->n:Lc/d/a/b/i/e/g3;

    invoke-virtual {v2, p2}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lc/d/a/b/i/e/g2;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v0, p2}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/d/a/b/i/e/p0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->l:Lc/d/a/b/i/e/j2;

    iget-object v1, p0, Lc/d/a/b/i/e/g2;->f:Lc/d/a/b/i/e/d2;

    invoke-interface {v0, v1}, Lc/d/a/b/i/e/j2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lc/d/a/b/i/e/g2;->i:[I

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    array-length v4, v2

    if-nez v4, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v4, -0x1

    array-length v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v5, :cond_d

    aget v9, v2, v7

    invoke-virtual {v0, v9}, Lc/d/a/b/i/e/g2;->C(I)I

    move-result v10

    invoke-virtual {v0, v10}, Lc/d/a/b/i/e/g2;->A(I)I

    move-result v11

    iget-boolean v12, v0, Lc/d/a/b/i/e/g2;->h:Z

    const v13, 0xfffff

    if-nez v12, :cond_2

    iget-object v12, v0, Lc/d/a/b/i/e/g2;->a:[I

    add-int/lit8 v14, v10, 0x2

    aget v12, v12, v14

    and-int v14, v12, v13

    ushr-int/lit8 v12, v12, 0x14

    shl-int v12, v3, v12

    if-eq v14, v4, :cond_1

    sget-object v4, Lc/d/a/b/i/e/g2;->q:Lsun/misc/Unsafe;

    move v15, v7

    int-to-long v6, v14

    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v4, v14

    goto :goto_1

    :cond_1
    move v15, v7

    goto :goto_1

    :cond_2
    move v15, v7

    const/4 v12, 0x0

    :goto_1
    const/high16 v6, 0x10000000

    and-int/2addr v6, v11

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    invoke-virtual {v0, v1, v10, v8, v12}, Lc/d/a/b/i/e/g2;->w(Ljava/lang/Object;III)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    return v6

    :cond_4
    const/high16 v6, 0xff00000

    and-int/2addr v6, v11

    ushr-int/lit8 v6, v6, 0x14

    const/16 v7, 0x9

    if-eq v6, v7, :cond_b

    const/16 v7, 0x11

    if-eq v6, v7, :cond_b

    const/16 v7, 0x1b

    if-eq v6, v7, :cond_8

    const/16 v7, 0x3c

    if-eq v6, v7, :cond_7

    const/16 v7, 0x44

    if-eq v6, v7, :cond_7

    const/16 v7, 0x31

    if-eq v6, v7, :cond_8

    const/16 v7, 0x32

    if-eq v6, v7, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v6, v0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    and-int v7, v11, v13

    int-to-long v11, v7

    invoke-static {v1, v11, v12}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lc/d/a/b/i/e/y1;->g(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v10}, Lc/d/a/b/i/e/g2;->y(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    invoke-interface {v2, v1}, Lc/d/a/b/i/e/y1;->h(Ljava/lang/Object;)Lc/d/a/b/i/e/w1;

    const/4 v1, 0x0

    throw v1

    :cond_7
    invoke-virtual {v0, v1, v9, v10}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v0, v10}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v6

    and-int v7, v11, v13

    int-to-long v9, v7

    .line 1
    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lc/d/a/b/i/e/t2;->g(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v6, 0x0

    return v6

    :cond_8
    and-int v6, v11, v13

    int-to-long v6, v6

    .line 2
    invoke-static {v1, v6, v7}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v0, v10}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v7

    const/4 v9, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lc/d/a/b/i/e/t2;->g(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_a
    const/4 v6, 0x1

    :goto_4
    if-nez v6, :cond_c

    const/4 v6, 0x0

    return v6

    :cond_b
    invoke-virtual {v0, v1, v10, v8, v12}, Lc/d/a/b/i/e/g2;->w(Ljava/lang/Object;III)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v0, v10}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v6

    and-int v7, v11, v13

    int-to-long v9, v7

    .line 3
    invoke-static {v1, v9, v10}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lc/d/a/b/i/e/t2;->g(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v6, 0x0

    return v6

    :cond_c
    :goto_5
    add-int/lit8 v7, v15, 0x1

    goto/16 :goto_0

    .line 4
    :cond_d
    iget-boolean v2, v0, Lc/d/a/b/i/e/g2;->g:Z

    if-eqz v2, :cond_e

    iget-object v2, v0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v2, v1}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object v1

    invoke-virtual {v1}, Lc/d/a/b/i/e/p0;->b()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    :goto_6
    return v3
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lc/d/a/b/i/e/g2;->A(I)I

    move-result v3

    iget-object v4, p0, Lc/d/a/b/i/e/g2;->a:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    goto/16 :goto_5

    :pswitch_9
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_7

    :pswitch_a
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/g2;->N(Ljava/lang/Object;J)Z

    move-result v3

    goto/16 :goto_8

    :pswitch_b
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :pswitch_d
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/g2;->L(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_c

    :pswitch_e
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    :pswitch_f
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_3
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/g2;->M(Ljava/lang/Object;J)J

    move-result-wide v3

    goto/16 :goto_b

    :pswitch_10
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/g2;->K(Ljava/lang/Object;J)F

    move-result v3

    goto :goto_9

    :pswitch_11
    invoke-virtual {p0, p1, v4, v1}, Lc/d/a/b/i/e/g2;->v(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/g2;->J(Ljava/lang/Object;J)D

    move-result-wide v3

    goto :goto_a

    :pswitch_12
    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_6

    :goto_4
    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    :goto_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_c

    :pswitch_14
    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_d

    :goto_7
    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_c

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/m3;->q(Ljava/lang/Object;J)Z

    move-result v3

    :goto_8
    invoke-static {v3}, Lc/d/a/b/i/e/a1;->b(Z)I

    move-result v3

    goto :goto_c

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_c

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide v3

    goto :goto_b

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/m3;->r(Ljava/lang/Object;J)F

    move-result v3

    :goto_9
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_c

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lc/d/a/b/i/e/m3;->s(Ljava/lang/Object;J)D

    move-result-wide v3

    :goto_a
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    :goto_b
    invoke-static {v3, v4}, Lc/d/a/b/i/e/a1;->c(J)I

    move-result v3

    :goto_c
    add-int/2addr v3, v2

    move v2, v3

    :cond_1
    :goto_d
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->n:Lc/d/a/b/i/e/g3;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    iget-boolean v1, p0, Lc/d/a/b/i/e/g2;->g:Z

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v1, p1}, Lc/d/a/b/i/e/l0;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/p0;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/b/i/e/p0;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Ljava/lang/Object;[BIIIIIIIJILc/d/a/b/i/e/u;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lc/d/a/b/i/e/u;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lc/d/a/b/i/e/g2;->q:Lsun/misc/Unsafe;

    iget-object v7, v0, Lc/d/a/b/i/e/g2;->a:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v15, 0x2

    const/4 v7, 0x1

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_b

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v6}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lc/d/a/b/i/e/g2;->j(Lc/d/a/b/i/e/t2;[BIIILc/d/a/b/i/e/u;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    iget-object v3, v11, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    if-nez v15, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-static {v15, v3}, Lc/d/a/b/i/e/a1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_8

    :pswitch_1
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v2

    iget-wide v3, v11, Lc/d/a/b/i/e/u;->b:J

    invoke-static {v3, v4}, Lc/d/a/b/i/e/e0;->a(J)J

    move-result-wide v3

    goto/16 :goto_7

    :pswitch_2
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v2

    iget v3, v11, Lc/d/a/b/i/e/u;->a:I

    invoke-static {v3}, Lc/d/a/b/i/e/e0;->b(I)I

    move-result v3

    goto/16 :goto_6

    :pswitch_3
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v3

    iget v4, v11, Lc/d/a/b/i/e/u;->a:I

    .line 1
    iget-object v5, v0, Lc/d/a/b/i/e/g2;->b:[Ljava/lang/Object;

    div-int/lit8 v6, v6, 0x4

    shl-int/2addr v6, v7

    add-int/2addr v6, v7

    aget-object v5, v5, v6

    check-cast v5, Lc/d/a/b/i/e/c1;

    if-eqz v5, :cond_3

    .line 2
    invoke-interface {v5, v4}, Lc/d/a/b/i/e/c1;->b(I)Lc/d/a/b/i/e/b1;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lc/d/a/b/i/e/g2;->O(Ljava/lang/Object;)Lc/d/a/b/i/e/h3;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lc/d/a/b/i/e/h3;->b(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_d

    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_b

    :pswitch_4
    if-ne v5, v15, :cond_b

    invoke-static {v3, v4, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v2

    iget v4, v11, Lc/d/a/b/i/e/u;->a:I

    if-nez v4, :cond_4

    sget-object v3, Lc/d/a/b/i/e/y;->d:Lc/d/a/b/i/e/y;

    goto/16 :goto_8

    :cond_4
    invoke-static {v3, v2, v4}, Lc/d/a/b/i/e/y;->n([BII)Lc/d/a/b/i/e/y;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :pswitch_5
    if-ne v5, v15, :cond_b

    invoke-virtual {v0, v6}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v2

    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lc/d/a/b/i/e/g2;->k(Lc/d/a/b/i/e/t2;[BIILc/d/a/b/i/e/u;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_5

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    :goto_2
    iget-object v3, v11, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    if-nez v15, :cond_6

    goto/16 :goto_8

    :cond_6
    invoke-static {v15, v3}, Lc/d/a/b/i/e/a1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_8

    :pswitch_6
    if-ne v5, v15, :cond_b

    invoke-static {v3, v4, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v2

    iget v4, v11, Lc/d/a/b/i/e/u;->a:I

    if-nez v4, :cond_7

    const-string v3, ""

    goto :goto_8

    :cond_7
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_9

    add-int v5, v2, v4

    invoke-static {v3, v2, v5}, Lc/d/a/b/i/e/o3;->e([BII)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {}, Lc/d/a/b/i/e/e1;->d()Lc/d/a/b/i/e/e1;

    move-result-object v1

    throw v1

    :cond_9
    :goto_3
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lc/d/a/b/i/e/a1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    add-int/2addr v2, v4

    goto/16 :goto_b

    :pswitch_7
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v2

    iget-wide v3, v11, Lc/d/a/b/i/e/u;->b:J

    const-wide/16 v5, 0x0

    cmp-long v11, v3, v5

    if-eqz v11, :cond_a

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    :goto_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_8

    :pswitch_8
    const/4 v2, 0x5

    if-ne v5, v2, :cond_b

    invoke-static/range {p2 .. p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S1([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :pswitch_9
    if-ne v5, v7, :cond_b

    invoke-static/range {p2 .. p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z1([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_a

    :pswitch_a
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v2

    iget v3, v11, Lc/d/a/b/i/e/u;->a:I

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :pswitch_b
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v2

    iget-wide v3, v11, Lc/d/a/b/i/e/u;->b:J

    :goto_7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_8
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_c
    const/4 v2, 0x5

    if-ne v5, v2, :cond_b

    .line 3
    invoke-static/range {p2 .. p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S1([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_9
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_b

    :pswitch_d
    if-ne v5, v7, :cond_b

    .line 5
    invoke-static/range {p2 .. p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z1([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_a
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    :goto_b
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_d

    :cond_b
    :goto_c
    move v2, v4

    :goto_d
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Ljava/lang/Object;[BIIIIIIJIJLc/d/a/b/i/e/u;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lc/d/a/b/i/e/u;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v6, p7

    move/from16 v9, p8

    move-wide/from16 v10, p12

    move-object/from16 v7, p14

    sget-object v12, Lc/d/a/b/i/e/g2;->q:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc/d/a/b/i/e/d1;

    invoke-interface {v13}, Lc/d/a/b/i/e/d1;->d()Z

    move-result v14

    const/4 v15, 0x1

    if-nez v14, :cond_1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_0

    const/16 v14, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v14, v15

    :goto_0
    invoke-interface {v13, v14}, Lc/d/a/b/i/e/d1;->c(I)Lc/d/a/b/i/e/d1;

    move-result-object v13

    invoke-virtual {v12, v1, v10, v11, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v10, 0x5

    const/4 v11, 0x2

    const-wide/16 v16, 0x0

    const/4 v12, 0x0

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_22

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_32

    invoke-virtual {v0, v9}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lc/d/a/b/i/e/g2;->j(Lc/d/a/b/i/e/t2;[BIIILc/d/a/b/i/e/u;)I

    move-result v4

    :goto_1
    iget-object v8, v7, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v4, v5, :cond_32

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v8

    iget v9, v7, Lc/d/a/b/i/e/u;->a:I

    if-ne v2, v9, :cond_32

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lc/d/a/b/i/e/g2;->j(Lc/d/a/b/i/e/t2;[BIIILc/d/a/b/i/e/u;)I

    move-result v4

    goto :goto_1

    :pswitch_1
    if-ne v6, v11, :cond_4

    check-cast v13, Lc/d/a/b/i/e/s1;

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v2, v7, Lc/d/a/b/i/e/u;->a:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget-wide v4, v7, Lc/d/a/b/i/e/u;->b:J

    invoke-static {v4, v5}, Lc/d/a/b/i/e/e0;->a(J)J

    move-result-wide v4

    .line 1
    iget v6, v13, Lc/d/a/b/i/e/s1;->e:I

    invoke-virtual {v13, v6, v4, v5}, Lc/d/a/b/i/e/s1;->n(IJ)V

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_23

    .line 2
    :cond_3
    invoke-static {}, Lc/d/a/b/i/e/e1;->a()Lc/d/a/b/i/e/e1;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_32

    check-cast v13, Lc/d/a/b/i/e/s1;

    :goto_3
    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget-wide v8, v7, Lc/d/a/b/i/e/u;->b:J

    invoke-static {v8, v9}, Lc/d/a/b/i/e/e0;->a(J)J

    move-result-wide v8

    .line 3
    iget v4, v13, Lc/d/a/b/i/e/s1;->e:I

    invoke-virtual {v13, v4, v8, v9}, Lc/d/a/b/i/e/s1;->n(IJ)V

    if-ge v1, v5, :cond_33

    .line 4
    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-ne v2, v6, :cond_33

    goto :goto_3

    :pswitch_2
    if-ne v6, v11, :cond_7

    check-cast v13, Lc/d/a/b/i/e/z0;

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v2, v7, Lc/d/a/b/i/e/u;->a:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_5

    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v4, v7, Lc/d/a/b/i/e/u;->a:I

    invoke-static {v4}, Lc/d/a/b/i/e/e0;->b(I)I

    move-result v4

    .line 5
    iget v5, v13, Lc/d/a/b/i/e/z0;->e:I

    invoke-virtual {v13, v5, v4}, Lc/d/a/b/i/e/z0;->n(II)V

    goto :goto_4

    :cond_5
    if-ne v1, v2, :cond_6

    goto/16 :goto_23

    .line 6
    :cond_6
    invoke-static {}, Lc/d/a/b/i/e/e1;->a()Lc/d/a/b/i/e/e1;

    move-result-object v1

    throw v1

    :cond_7
    if-nez v6, :cond_32

    check-cast v13, Lc/d/a/b/i/e/z0;

    :goto_5
    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v4, v7, Lc/d/a/b/i/e/u;->a:I

    invoke-static {v4}, Lc/d/a/b/i/e/e0;->b(I)I

    move-result v4

    .line 7
    iget v6, v13, Lc/d/a/b/i/e/z0;->e:I

    invoke-virtual {v13, v6, v4}, Lc/d/a/b/i/e/z0;->n(II)V

    if-ge v1, v5, :cond_33

    .line 8
    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-ne v2, v6, :cond_33

    goto :goto_5

    :pswitch_3
    if-ne v6, v11, :cond_8

    invoke-static {v3, v4, v13, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->o1([BILc/d/a/b/i/e/d1;Lc/d/a/b/i/e/u;)I

    move-result v2

    goto :goto_6

    :cond_8
    if-nez v6, :cond_32

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v13

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->b1(I[BIILc/d/a/b/i/e/d1;Lc/d/a/b/i/e/u;)I

    move-result v2

    :goto_6
    check-cast v1, Lc/d/a/b/i/e/y0;

    iget-object v3, v1, Lc/d/a/b/i/e/y0;->zzjp:Lc/d/a/b/i/e/h3;

    sget-object v4, Lc/d/a/b/i/e/h3;->f:Lc/d/a/b/i/e/h3;

    if-ne v3, v4, :cond_9

    const/4 v3, 0x0

    .line 9
    :cond_9
    iget-object v4, v0, Lc/d/a/b/i/e/g2;->b:[Ljava/lang/Object;

    div-int/lit8 v5, v9, 0x4

    shl-int/2addr v5, v15

    add-int/2addr v5, v15

    aget-object v4, v4, v5

    check-cast v4, Lc/d/a/b/i/e/c1;

    .line 10
    iget-object v5, v0, Lc/d/a/b/i/e/g2;->n:Lc/d/a/b/i/e/g3;

    .line 11
    sget-object v6, Lc/d/a/b/i/e/v2;->a:Ljava/lang/Class;

    if-nez v4, :cond_a

    goto :goto_a

    :cond_a
    instance-of v6, v13, Ljava/util/RandomAccess;

    if-eqz v6, :cond_f

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_7
    if-ge v12, v6, :cond_e

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v4, v9}, Lc/d/a/b/i/e/c1;->b(I)Lc/d/a/b/i/e/b1;

    move-result-object v10

    if-eqz v10, :cond_c

    if-eq v12, v7, :cond_b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v13, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    if-nez v3, :cond_d

    .line 12
    invoke-virtual {v5}, Lc/d/a/b/i/e/g3;->e()Ljava/lang/Object;

    move-result-object v3

    :cond_d
    int-to-long v9, v9

    invoke-virtual {v5, v3, v8, v9, v10}, Lc/d/a/b/i/e/g3;->a(Ljava/lang/Object;IJ)V

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_e
    if-eq v7, v6, :cond_12

    .line 13
    invoke-interface {v13, v7, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_a

    :cond_f
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v4, v7}, Lc/d/a/b/i/e/c1;->b(I)Lc/d/a/b/i/e/b1;

    move-result-object v9

    if-nez v9, :cond_10

    if-nez v3, :cond_11

    .line 14
    invoke-virtual {v5}, Lc/d/a/b/i/e/g3;->e()Ljava/lang/Object;

    move-result-object v3

    :cond_11
    int-to-long v9, v7

    invoke-virtual {v5, v3, v8, v9, v10}, Lc/d/a/b/i/e/g3;->a(Ljava/lang/Object;IJ)V

    .line 15
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 16
    :cond_12
    :goto_a
    check-cast v3, Lc/d/a/b/i/e/h3;

    if-eqz v3, :cond_13

    iput-object v3, v1, Lc/d/a/b/i/e/y0;->zzjp:Lc/d/a/b/i/e/h3;

    :cond_13
    move v1, v2

    goto/16 :goto_23

    :pswitch_4
    if-ne v6, v11, :cond_32

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v4, v7, Lc/d/a/b/i/e/u;->a:I

    if-nez v4, :cond_14

    goto :goto_c

    :cond_14
    invoke-static {v3, v1, v4}, Lc/d/a/b/i/e/y;->n([BII)Lc/d/a/b/i/e/y;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    :goto_b
    if-ge v1, v5, :cond_33

    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-ne v2, v6, :cond_33

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v4, v7, Lc/d/a/b/i/e/u;->a:I

    if-nez v4, :cond_14

    :goto_c
    sget-object v4, Lc/d/a/b/i/e/y;->d:Lc/d/a/b/i/e/y;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :pswitch_5
    if-ne v6, v11, :cond_32

    invoke-virtual {v0, v9}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v13

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lc/d/a/b/i/e/g2;->i(Lc/d/a/b/i/e/t2;I[BIILc/d/a/b/i/e/d1;Lc/d/a/b/i/e/u;)I

    move-result v1

    goto/16 :goto_23

    :pswitch_6
    if-ne v6, v11, :cond_32

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v16

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    if-nez v6, :cond_17

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-nez v6, :cond_15

    goto :goto_f

    :cond_15
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lc/d/a/b/i/e/a1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_d
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    :goto_e
    if-ge v4, v5, :cond_32

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v6

    iget v8, v7, Lc/d/a/b/i/e/u;->a:I

    if-ne v2, v8, :cond_32

    invoke-static {v3, v6, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-nez v6, :cond_16

    :goto_f
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_16
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lc/d/a/b/i/e/a1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_d

    :cond_17
    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-nez v6, :cond_18

    :goto_10
    move v8, v4

    goto :goto_13

    :cond_18
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lc/d/a/b/i/e/o3;->e([BII)Z

    move-result v9

    if-eqz v9, :cond_1c

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lc/d/a/b/i/e/a1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_11
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    if-ge v8, v5, :cond_1b

    invoke-static {v3, v8, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-ne v2, v6, :cond_1b

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-nez v6, :cond_19

    goto :goto_10

    :goto_13
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_19
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lc/d/a/b/i/e/o3;->e([BII)Z

    move-result v9

    if-eqz v9, :cond_1a

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lc/d/a/b/i/e/a1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_11

    :cond_1a
    invoke-static {}, Lc/d/a/b/i/e/e1;->d()Lc/d/a/b/i/e/e1;

    move-result-object v1

    throw v1

    :cond_1b
    move v4, v8

    goto/16 :goto_22

    :cond_1c
    invoke-static {}, Lc/d/a/b/i/e/e1;->d()Lc/d/a/b/i/e/e1;

    move-result-object v1

    throw v1

    :pswitch_7
    if-ne v6, v11, :cond_20

    check-cast v13, Lc/d/a/b/i/e/v;

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v2, v7, Lc/d/a/b/i/e/u;->a:I

    add-int/2addr v2, v1

    :goto_14
    if-ge v1, v2, :cond_1e

    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget-wide v4, v7, Lc/d/a/b/i/e/u;->b:J

    cmp-long v6, v4, v16

    if-eqz v6, :cond_1d

    const/4 v4, 0x1

    goto :goto_15

    :cond_1d
    const/4 v4, 0x0

    .line 17
    :goto_15
    iget v5, v13, Lc/d/a/b/i/e/v;->e:I

    invoke-virtual {v13, v5, v4}, Lc/d/a/b/i/e/v;->k(IZ)V

    goto :goto_14

    :cond_1e
    if-ne v1, v2, :cond_1f

    goto/16 :goto_23

    .line 18
    :cond_1f
    invoke-static {}, Lc/d/a/b/i/e/e1;->a()Lc/d/a/b/i/e/e1;

    move-result-object v1

    throw v1

    :cond_20
    if-nez v6, :cond_32

    check-cast v13, Lc/d/a/b/i/e/v;

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget-wide v8, v7, Lc/d/a/b/i/e/u;->b:J

    cmp-long v4, v8, v16

    if-eqz v4, :cond_21

    goto :goto_17

    :cond_21
    const/4 v4, 0x0

    .line 19
    :goto_16
    iget v6, v13, Lc/d/a/b/i/e/v;->e:I

    invoke-virtual {v13, v6, v4}, Lc/d/a/b/i/e/v;->k(IZ)V

    if-ge v1, v5, :cond_33

    .line 20
    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-ne v2, v6, :cond_33

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget-wide v8, v7, Lc/d/a/b/i/e/u;->b:J

    cmp-long v4, v8, v16

    if-eqz v4, :cond_21

    :goto_17
    const/4 v4, 0x1

    goto :goto_16

    :pswitch_8
    if-ne v6, v11, :cond_24

    check-cast v13, Lc/d/a/b/i/e/z0;

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v2, v7, Lc/d/a/b/i/e/u;->a:I

    add-int/2addr v2, v1

    :goto_18
    if-ge v1, v2, :cond_22

    invoke-static {v3, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S1([BI)I

    move-result v4

    .line 21
    iget v5, v13, Lc/d/a/b/i/e/z0;->e:I

    invoke-virtual {v13, v5, v4}, Lc/d/a/b/i/e/z0;->n(II)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_18

    :cond_22
    if-ne v1, v2, :cond_23

    goto/16 :goto_23

    .line 22
    :cond_23
    invoke-static {}, Lc/d/a/b/i/e/e1;->a()Lc/d/a/b/i/e/e1;

    move-result-object v1

    throw v1

    :cond_24
    if-ne v6, v10, :cond_32

    check-cast v13, Lc/d/a/b/i/e/z0;

    invoke-static/range {p2 .. p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S1([BI)I

    move-result v1

    .line 23
    :goto_19
    iget v6, v13, Lc/d/a/b/i/e/z0;->e:I

    invoke-virtual {v13, v6, v1}, Lc/d/a/b/i/e/z0;->n(II)V

    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_33

    .line 24
    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-ne v2, v6, :cond_33

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S1([BI)I

    move-result v1

    goto :goto_19

    :pswitch_9
    if-ne v6, v11, :cond_27

    check-cast v13, Lc/d/a/b/i/e/s1;

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v2, v7, Lc/d/a/b/i/e/u;->a:I

    add-int/2addr v2, v1

    :goto_1a
    if-ge v1, v2, :cond_25

    invoke-static {v3, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z1([BI)J

    move-result-wide v4

    .line 25
    iget v6, v13, Lc/d/a/b/i/e/s1;->e:I

    invoke-virtual {v13, v6, v4, v5}, Lc/d/a/b/i/e/s1;->n(IJ)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1a

    :cond_25
    if-ne v1, v2, :cond_26

    goto/16 :goto_23

    .line 26
    :cond_26
    invoke-static {}, Lc/d/a/b/i/e/e1;->a()Lc/d/a/b/i/e/e1;

    move-result-object v1

    throw v1

    :cond_27
    if-ne v6, v15, :cond_32

    check-cast v13, Lc/d/a/b/i/e/s1;

    invoke-static/range {p2 .. p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z1([BI)J

    move-result-wide v8

    .line 27
    :goto_1b
    iget v1, v13, Lc/d/a/b/i/e/s1;->e:I

    invoke-virtual {v13, v1, v8, v9}, Lc/d/a/b/i/e/s1;->n(IJ)V

    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_33

    .line 28
    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-ne v2, v6, :cond_33

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z1([BI)J

    move-result-wide v8

    goto :goto_1b

    :pswitch_a
    if-ne v6, v11, :cond_28

    invoke-static {v3, v4, v13, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->o1([BILc/d/a/b/i/e/d1;Lc/d/a/b/i/e/u;)I

    move-result v1

    goto/16 :goto_23

    :cond_28
    if-nez v6, :cond_32

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v13

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->b1(I[BIILc/d/a/b/i/e/d1;Lc/d/a/b/i/e/u;)I

    move-result v1

    goto/16 :goto_23

    :pswitch_b
    if-ne v6, v11, :cond_2b

    check-cast v13, Lc/d/a/b/i/e/s1;

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v2, v7, Lc/d/a/b/i/e/u;->a:I

    add-int/2addr v2, v1

    :goto_1c
    if-ge v1, v2, :cond_29

    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget-wide v4, v7, Lc/d/a/b/i/e/u;->b:J

    .line 29
    iget v6, v13, Lc/d/a/b/i/e/s1;->e:I

    invoke-virtual {v13, v6, v4, v5}, Lc/d/a/b/i/e/s1;->n(IJ)V

    goto :goto_1c

    :cond_29
    if-ne v1, v2, :cond_2a

    goto/16 :goto_23

    .line 30
    :cond_2a
    invoke-static {}, Lc/d/a/b/i/e/e1;->a()Lc/d/a/b/i/e/e1;

    move-result-object v1

    throw v1

    :cond_2b
    if-nez v6, :cond_32

    check-cast v13, Lc/d/a/b/i/e/s1;

    :goto_1d
    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget-wide v8, v7, Lc/d/a/b/i/e/u;->b:J

    .line 31
    iget v4, v13, Lc/d/a/b/i/e/s1;->e:I

    invoke-virtual {v13, v4, v8, v9}, Lc/d/a/b/i/e/s1;->n(IJ)V

    if-ge v1, v5, :cond_33

    .line 32
    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-ne v2, v6, :cond_33

    goto :goto_1d

    :pswitch_c
    if-ne v6, v11, :cond_2e

    check-cast v13, Lc/d/a/b/i/e/w0;

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v2, v7, Lc/d/a/b/i/e/u;->a:I

    add-int/2addr v2, v1

    :goto_1e
    if-ge v1, v2, :cond_2c

    .line 33
    invoke-static {v3, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S1([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 34
    iget v5, v13, Lc/d/a/b/i/e/w0;->e:I

    invoke-virtual {v13, v5, v4}, Lc/d/a/b/i/e/w0;->k(IF)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_1e

    :cond_2c
    if-ne v1, v2, :cond_2d

    goto/16 :goto_23

    .line 35
    :cond_2d
    invoke-static {}, Lc/d/a/b/i/e/e1;->a()Lc/d/a/b/i/e/e1;

    move-result-object v1

    throw v1

    :cond_2e
    if-ne v6, v10, :cond_32

    check-cast v13, Lc/d/a/b/i/e/w0;

    .line 36
    invoke-static/range {p2 .. p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S1([BI)I

    move-result v1

    :goto_1f
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 37
    iget v6, v13, Lc/d/a/b/i/e/w0;->e:I

    invoke-virtual {v13, v6, v1}, Lc/d/a/b/i/e/w0;->k(IF)V

    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_33

    .line 38
    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-ne v2, v6, :cond_33

    .line 39
    invoke-static {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S1([BI)I

    move-result v1

    goto :goto_1f

    :pswitch_d
    if-ne v6, v11, :cond_31

    .line 40
    check-cast v13, Lc/d/a/b/i/e/i0;

    invoke-static {v3, v4, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v2, v7, Lc/d/a/b/i/e/u;->a:I

    add-int/2addr v2, v1

    :goto_20
    if-ge v1, v2, :cond_2f

    .line 41
    invoke-static {v3, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z1([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 42
    iget v6, v13, Lc/d/a/b/i/e/i0;->e:I

    invoke-virtual {v13, v6, v4, v5}, Lc/d/a/b/i/e/i0;->k(ID)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_20

    :cond_2f
    if-ne v1, v2, :cond_30

    goto :goto_23

    .line 43
    :cond_30
    invoke-static {}, Lc/d/a/b/i/e/e1;->a()Lc/d/a/b/i/e/e1;

    move-result-object v1

    throw v1

    :cond_31
    if-ne v6, v15, :cond_32

    check-cast v13, Lc/d/a/b/i/e/i0;

    .line 44
    invoke-static/range {p2 .. p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z1([BI)J

    move-result-wide v8

    :goto_21
    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 45
    iget v1, v13, Lc/d/a/b/i/e/i0;->e:I

    invoke-virtual {v13, v1, v8, v9}, Lc/d/a/b/i/e/i0;->k(ID)V

    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_33

    .line 46
    invoke-static {v3, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v4

    iget v6, v7, Lc/d/a/b/i/e/u;->a:I

    if-ne v2, v6, :cond_33

    .line 47
    invoke-static {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z1([BI)J

    move-result-wide v8

    goto :goto_21

    :cond_32
    :goto_22
    move v1, v4

    :cond_33
    :goto_23
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Ljava/lang/Object;[BIIIJLc/d/a/b/i/e/u;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIIJ",
            "Lc/d/a/b/i/e/u;",
            ")I"
        }
    .end annotation

    sget-object v0, Lc/d/a/b/i/e/g2;->q:Lsun/misc/Unsafe;

    .line 1
    iget-object v1, p0, Lc/d/a/b/i/e/g2;->b:[Ljava/lang/Object;

    div-int/lit8 p5, p5, 0x4

    shl-int/lit8 p5, p5, 0x1

    aget-object p5, v1, p5

    .line 2
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    invoke-interface {v2, v1}, Lc/d/a/b/i/e/y1;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    invoke-interface {v2, p5}, Lc/d/a/b/i/e/y1;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    invoke-interface {v3, v2, v1}, Lc/d/a/b/i/e/y1;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    :cond_0
    iget-object p1, p0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    invoke-interface {p1, p5}, Lc/d/a/b/i/e/y1;->h(Ljava/lang/Object;)Lc/d/a/b/i/e/w1;

    iget-object p1, p0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    invoke-interface {p1, v1}, Lc/d/a/b/i/e/y1;->i(Ljava/lang/Object;)Ljava/util/Map;

    invoke-static {p2, p3, p8}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result p1

    iget p2, p8, Lc/d/a/b/i/e/u;->a:I

    if-ltz p2, :cond_2

    sub-int/2addr p4, p1

    if-le p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    invoke-static {}, Lc/d/a/b/i/e/e1;->a()Lc/d/a/b/i/e/e1;

    move-result-object p1

    throw p1
.end method

.method public final o(Ljava/lang/Object;[BIIILc/d/a/b/i/e/u;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lc/d/a/b/i/e/u;",
            ")I"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lc/d/a/b/i/e/g2;->q:Lsun/misc/Unsafe;

    const/4 v8, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_0
    const v17, 0xfffff

    const/16 v18, 0x0

    if-ge v0, v13, :cond_1a

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v1, v9}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->g1(I[BILc/d/a/b/i/e/u;)I

    move-result v0

    iget v1, v9, Lc/d/a/b/i/e/u;->a:I

    move v2, v0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    move v2, v1

    :goto_1
    ushr-int/lit8 v3, v4, 0x3

    and-int/lit8 v1, v4, 0x7

    invoke-virtual {v15, v3}, Lc/d/a/b/i/e/g2;->C(I)I

    move-result v0

    if-eq v0, v8, :cond_17

    iget-object v8, v15, Lc/d/a/b/i/e/g2;->a:[I

    add-int/lit8 v19, v0, 0x1

    aget v5, v8, v19

    const/high16 v19, 0xff00000

    and-int v19, v5, v19

    ushr-int/lit8 v11, v19, 0x14

    move/from16 v19, v4

    and-int v4, v5, v17

    int-to-long v12, v4

    const/16 v4, 0x11

    move/from16 v20, v5

    const/4 v5, 0x2

    if-gt v11, v4, :cond_e

    add-int/lit8 v4, v0, 0x2

    aget v4, v8, v4

    ushr-int/lit8 v8, v4, 0x14

    const/16 v21, 0x1

    shl-int v8, v21, v8

    and-int v4, v4, v17

    move-wide/from16 v21, v12

    if-eq v4, v6, :cond_2

    const/4 v12, -0x1

    if-eq v6, v12, :cond_1

    int-to-long v12, v6

    invoke-virtual {v10, v14, v12, v13, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1
    int-to-long v6, v4

    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    move v6, v4

    :cond_2
    const/4 v4, 0x5

    packed-switch v11, :pswitch_data_0

    move-object/from16 v13, p2

    move/from16 v11, p4

    move/from16 v12, v19

    const/4 v4, 0x1

    move/from16 v19, v6

    goto/16 :goto_13

    :pswitch_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    shl-int/lit8 v1, v3, 0x3

    or-int/lit8 v4, v1, 0x4

    invoke-virtual {v15, v0}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v12, v19

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lc/d/a/b/i/e/g2;->j(Lc/d/a/b/i/e/t2;[BIIILc/d/a/b/i/e/u;)I

    move-result v0

    and-int v1, v7, v8

    if-nez v1, :cond_3

    iget-object v1, v9, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    move-wide/from16 v3, v21

    goto :goto_2

    :cond_3
    move-wide/from16 v3, v21

    invoke-virtual {v10, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lc/d/a/b/i/e/a1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int/2addr v7, v8

    move/from16 v13, p4

    move/from16 v11, p5

    move v1, v12

    const/4 v8, -0x1

    move-object/from16 v12, p2

    goto/16 :goto_0

    :cond_4
    move/from16 v12, v19

    move-object/from16 v13, p2

    goto/16 :goto_7

    :pswitch_1
    move/from16 v12, v19

    move-wide/from16 v3, v21

    move-object/from16 v13, p2

    if-nez v1, :cond_8

    invoke-static {v13, v2, v9}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v11

    iget-wide v0, v9, Lc/d/a/b/i/e/u;->b:J

    invoke-static {v0, v1}, Lc/d/a/b/i/e/e0;->a(J)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v7, v8

    move v7, v0

    move/from16 v19, v6

    move v0, v11

    move/from16 v11, p4

    goto/16 :goto_12

    :pswitch_2
    move-object/from16 v13, p2

    move/from16 v12, v19

    move-wide/from16 v3, v21

    if-nez v1, :cond_8

    invoke-static {v13, v2, v9}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v0

    iget v1, v9, Lc/d/a/b/i/e/u;->a:I

    invoke-static {v1}, Lc/d/a/b/i/e/e0;->b(I)I

    move-result v1

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4

    :pswitch_3
    move-object/from16 v13, p2

    move/from16 v12, v19

    move-wide/from16 v3, v21

    if-nez v1, :cond_8

    invoke-static {v13, v2, v9}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v1

    iget v2, v9, Lc/d/a/b/i/e/u;->a:I

    invoke-virtual {v15, v0}, Lc/d/a/b/i/e/g2;->z(I)Lc/d/a/b/i/e/c1;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Lc/d/a/b/i/e/c1;->b(I)Lc/d/a/b/i/e/b1;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-static/range {p1 .. p1}, Lc/d/a/b/i/e/g2;->O(Ljava/lang/Object;)Lc/d/a/b/i/e/h3;

    move-result-object v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lc/d/a/b/i/e/h3;->b(ILjava/lang/Object;)V

    goto :goto_5

    :cond_6
    :goto_3
    invoke-virtual {v10, v14, v3, v4, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int/2addr v7, v8

    goto :goto_5

    :pswitch_4
    move-object/from16 v13, p2

    move/from16 v12, v19

    move-wide/from16 v3, v21

    if-ne v1, v5, :cond_8

    invoke-static {v13, v2, v9}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->a2([BILc/d/a/b/i/e/u;)I

    move-result v0

    iget-object v1, v9, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_4
    or-int v1, v7, v8

    move v7, v1

    move v1, v0

    :goto_5
    move v0, v1

    goto/16 :goto_15

    :pswitch_5
    move-object/from16 v13, p2

    move/from16 v12, v19

    move-wide/from16 v3, v21

    if-ne v1, v5, :cond_8

    invoke-virtual {v15, v0}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v0

    move/from16 v11, p4

    invoke-static {v0, v13, v2, v11, v9}, Lc/d/a/b/i/e/g2;->k(Lc/d/a/b/i/e/t2;[BIILc/d/a/b/i/e/u;)I

    move-result v0

    and-int v1, v7, v8

    if-nez v1, :cond_7

    :goto_6
    iget-object v1, v9, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    goto :goto_8

    :cond_7
    invoke-virtual {v10, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lc/d/a/b/i/e/u;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lc/d/a/b/i/e/a1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    :cond_8
    :goto_7
    move/from16 v11, p4

    goto :goto_b

    :pswitch_6
    move-object/from16 v13, p2

    move/from16 v11, p4

    move/from16 v12, v19

    move-wide/from16 v3, v21

    if-ne v1, v5, :cond_b

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_9

    invoke-static {v13, v2, v9}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->T1([BILc/d/a/b/i/e/u;)I

    move-result v0

    goto :goto_6

    :cond_9
    invoke-static {v13, v2, v9}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->X1([BILc/d/a/b/i/e/u;)I

    move-result v0

    goto :goto_6

    :goto_8
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_7
    move-object/from16 v13, p2

    move/from16 v11, p4

    move/from16 v12, v19

    move-wide/from16 v3, v21

    if-nez v1, :cond_b

    invoke-static {v13, v2, v9}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v0

    iget-wide v1, v9, Lc/d/a/b/i/e/u;->b:J

    const-wide/16 v17, 0x0

    cmp-long v5, v1, v17

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    .line 1
    :goto_9
    sget-object v1, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v1, v14, v3, v4, v5}, Lc/d/a/b/i/e/m3$d;->g(Ljava/lang/Object;JZ)V

    :goto_a
    or-int v1, v7, v8

    move/from16 v19, v6

    goto/16 :goto_10

    :cond_b
    :goto_b
    move/from16 v19, v6

    goto/16 :goto_d

    :pswitch_8
    move-object/from16 v13, p2

    move/from16 v11, p4

    move/from16 v12, v19

    move/from16 v19, v6

    move-wide/from16 v5, v21

    if-ne v1, v4, :cond_c

    .line 2
    invoke-static {v13, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S1([BI)I

    move-result v0

    invoke-virtual {v10, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_9
    move-object/from16 v13, p2

    move/from16 v11, p4

    move/from16 v12, v19

    const/4 v0, 0x1

    move/from16 v19, v6

    move-wide/from16 v5, v21

    if-ne v1, v0, :cond_c

    invoke-static {v13, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z1([BI)J

    move-result-wide v17

    move-object v0, v10

    move-object/from16 v1, p1

    move v4, v2

    move-wide v2, v5

    move v6, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v2, v6, 0x8

    goto/16 :goto_e

    :pswitch_a
    move-object/from16 v13, p2

    move/from16 v11, p4

    move/from16 v12, v19

    move/from16 v19, v6

    move-wide/from16 v5, v21

    if-nez v1, :cond_c

    invoke-static {v13, v2, v9}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n1([BILc/d/a/b/i/e/u;)I

    move-result v0

    iget v1, v9, Lc/d/a/b/i/e/u;->a:I

    invoke-virtual {v10, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_f

    :pswitch_b
    move-object/from16 v13, p2

    move/from16 v11, p4

    move/from16 v12, v19

    move/from16 v19, v6

    move-wide/from16 v5, v21

    if-nez v1, :cond_c

    invoke-static {v13, v2, v9}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N1([BILc/d/a/b/i/e/u;)I

    move-result v17

    iget-wide v2, v9, Lc/d/a/b/i/e/u;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v20, v2

    move-wide v2, v5

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v7, v8

    goto :goto_11

    :pswitch_c
    move-object/from16 v13, p2

    move/from16 v11, p4

    move/from16 v12, v19

    move/from16 v19, v6

    move-wide/from16 v5, v21

    if-ne v1, v4, :cond_c

    .line 3
    invoke-static {v13, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S1([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 4
    sget-object v1, Lc/d/a/b/i/e/m3;->f:Lc/d/a/b/i/e/m3$d;

    invoke-virtual {v1, v14, v5, v6, v0}, Lc/d/a/b/i/e/m3$d;->d(Ljava/lang/Object;JF)V

    :goto_c
    add-int/lit8 v2, v2, 0x4

    goto :goto_e

    :cond_c
    :goto_d
    const/4 v4, 0x1

    goto :goto_13

    :pswitch_d
    move-object/from16 v13, p2

    move/from16 v11, p4

    move/from16 v12, v19

    const/4 v4, 0x1

    move/from16 v19, v6

    move-wide/from16 v5, v21

    if-ne v1, v4, :cond_d

    .line 5
    invoke-static {v13, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z1([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 6
    invoke-static {v14, v5, v6, v0, v1}, Lc/d/a/b/i/e/m3;->d(Ljava/lang/Object;JD)V

    add-int/lit8 v2, v2, 0x8

    :goto_e
    move v0, v2

    :goto_f
    or-int v1, v7, v8

    :goto_10
    move/from16 v17, v0

    move v0, v1

    :goto_11
    move v7, v0

    move/from16 v0, v17

    :goto_12
    move v1, v12

    move-object v12, v13

    move/from16 v6, v19

    const/4 v8, -0x1

    move v13, v11

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_d
    :goto_13
    move/from16 v8, p5

    move-object/from16 v27, v10

    move v9, v12

    move/from16 v6, v19

    const/16 v25, 0x1

    goto/16 :goto_1a

    :cond_e
    const/4 v8, 0x2

    move-wide/from16 v28, v12

    move-object/from16 v13, p2

    move/from16 v12, v19

    move/from16 v19, v6

    move-wide/from16 v5, v28

    const/16 v4, 0x1b

    if-ne v11, v4, :cond_12

    if-ne v1, v8, :cond_11

    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/i/e/d1;

    invoke-interface {v1}, Lc/d/a/b/i/e/d1;->d()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_f

    const/16 v3, 0xa

    goto :goto_14

    :cond_f
    shl-int/lit8 v3, v3, 0x1

    :goto_14
    invoke-interface {v1, v3}, Lc/d/a/b/i/e/d1;->c(I)Lc/d/a/b/i/e/d1;

    move-result-object v1

    invoke-virtual {v10, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_10
    move-object v5, v1

    invoke-virtual {v15, v0}, Lc/d/a/b/i/e/g2;->x(I)Lc/d/a/b/i/e/t2;

    move-result-object v0

    move v1, v12

    move v4, v2

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lc/d/a/b/i/e/g2;->i(Lc/d/a/b/i/e/t2;I[BIILc/d/a/b/i/e/d1;Lc/d/a/b/i/e/u;)I

    move-result v0

    move/from16 v6, v19

    :goto_15
    move/from16 v11, p5

    move v1, v12

    move-object v12, v13

    const/4 v8, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_11
    move v15, v2

    move/from16 v26, v7

    move-object/from16 v27, v10

    move/from16 p3, v12

    goto/16 :goto_17

    :cond_12
    move v4, v2

    const/16 v2, 0x31

    if-gt v11, v2, :cond_13

    move/from16 v2, v20

    move-object/from16 v20, v10

    int-to-long v9, v2

    move/from16 v21, v0

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v22, v3

    move v3, v4

    move v15, v4

    const/16 v23, 0x1

    move/from16 v4, p4

    move-wide/from16 v23, v5

    const/16 v25, 0x1

    move v5, v12

    move/from16 v6, v22

    move/from16 v26, v7

    move v7, v8

    move/from16 v8, v21

    move-object/from16 v27, v20

    move/from16 p3, v12

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lc/d/a/b/i/e/g2;->m(Ljava/lang/Object;[BIIIIIIJIJLc/d/a/b/i/e/u;)I

    move-result v0

    if-ne v0, v15, :cond_16

    goto :goto_16

    :cond_13
    move/from16 v21, v0

    move/from16 v22, v3

    move v15, v4

    move-wide/from16 v23, v5

    move/from16 v26, v7

    move-object/from16 v27, v10

    move/from16 p3, v12

    move/from16 v2, v20

    const/16 v25, 0x1

    move v7, v1

    const/16 v0, 0x32

    if-ne v11, v0, :cond_15

    if-eq v7, v8, :cond_14

    goto/16 :goto_18

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v21

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lc/d/a/b/i/e/g2;->n(Ljava/lang/Object;[BIIIJLc/d/a/b/i/e/u;)I

    throw v18

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v2

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, p3

    move/from16 v6, v22

    move v9, v11

    move-wide/from16 v10, v23

    move/from16 v12, v21

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lc/d/a/b/i/e/g2;->l(Ljava/lang/Object;[BIIIIIIIJILc/d/a/b/i/e/u;)I

    move-result v0

    if-ne v0, v15, :cond_16

    :goto_16
    move v2, v0

    goto :goto_19

    :cond_16
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v6, v19

    move/from16 v7, v26

    move-object/from16 v10, v27

    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_17
    move v15, v2

    move/from16 p3, v4

    move/from16 v19, v6

    move/from16 v26, v7

    move-object/from16 v27, v10

    :goto_17
    const/16 v25, 0x1

    :goto_18
    move v2, v15

    :goto_19
    move/from16 v9, p3

    move/from16 v8, p5

    move/from16 v6, v19

    move/from16 v7, v26

    :goto_1a
    if-ne v9, v8, :cond_19

    if-nez v8, :cond_18

    goto :goto_1b

    :cond_18
    move v0, v2

    move v1, v9

    goto :goto_1c

    .line 7
    :cond_19
    :goto_1b
    invoke-static/range {p1 .. p1}, Lc/d/a/b/i/e/g2;->O(Ljava/lang/Object;)Lc/d/a/b/i/e/h3;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->c1(I[BIILc/d/a/b/i/e/h3;Lc/d/a/b/i/e/u;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v11, v8

    move v1, v9

    move-object/from16 v10, v27

    const/4 v8, -0x1

    move-object/from16 v9, p6

    goto/16 :goto_0

    :cond_1a
    move/from16 v19, v6

    move/from16 v26, v7

    move-object/from16 v27, v10

    move v8, v11

    const/16 v25, 0x1

    :goto_1c
    const/4 v2, -0x1

    if-eq v6, v2, :cond_1b

    int-to-long v2, v6

    move-object/from16 v4, p1

    move-object/from16 v5, v27

    .line 8
    invoke-virtual {v5, v4, v2, v3, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1d

    :cond_1b
    move-object/from16 v4, p1

    :goto_1d
    move-object/from16 v2, p0

    iget-object v3, v2, Lc/d/a/b/i/e/g2;->j:[I

    if-eqz v3, :cond_20

    array-length v5, v3

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v5, :cond_20

    aget v7, v3, v6

    iget-object v9, v2, Lc/d/a/b/i/e/g2;->n:Lc/d/a/b/i/e/g3;

    iget-object v10, v2, Lc/d/a/b/i/e/g2;->a:[I

    aget v10, v10, v7

    invoke-virtual {v2, v7}, Lc/d/a/b/i/e/g2;->A(I)I

    move-result v10

    and-int v10, v10, v17

    int-to-long v10, v10

    invoke-static {v4, v10, v11}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {v2, v7}, Lc/d/a/b/i/e/g2;->z(I)Lc/d/a/b/i/e/c1;

    move-result-object v11

    if-nez v11, :cond_1d

    goto :goto_20

    :cond_1d
    iget-object v12, v2, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    invoke-interface {v12, v10}, Lc/d/a/b/i/e/y1;->i(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    .line 9
    iget-object v12, v2, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    .line 10
    iget-object v13, v2, Lc/d/a/b/i/e/g2;->b:[Ljava/lang/Object;

    div-int/lit8 v7, v7, 0x4

    shl-int/lit8 v7, v7, 0x1

    aget-object v7, v13, v7

    .line 11
    invoke-interface {v12, v7}, Lc/d/a/b/i/e/y1;->h(Ljava/lang/Object;)Lc/d/a/b/i/e/w1;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Lc/d/a/b/i/e/c1;->b(I)Lc/d/a/b/i/e/b1;

    move-result-object v12

    if-eqz v12, :cond_1e

    goto :goto_1f

    :cond_1e
    invoke-virtual {v9}, Lc/d/a/b/i/e/g3;->e()Ljava/lang/Object;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 12
    throw v18

    :cond_1f
    :goto_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_20
    if-nez v8, :cond_22

    move/from16 v3, p4

    if-ne v0, v3, :cond_21

    goto :goto_21

    .line 13
    :cond_21
    invoke-static {}, Lc/d/a/b/i/e/e1;->c()Lc/d/a/b/i/e/e1;

    move-result-object v0

    throw v0

    :cond_22
    move/from16 v3, p4

    if-gt v0, v3, :cond_23

    if-ne v1, v8, :cond_23

    :goto_21
    return v0

    :cond_23
    invoke-static {}, Lc/d/a/b/i/e/e1;->c()Lc/d/a/b/i/e/e1;

    move-result-object v0

    goto :goto_23

    :goto_22
    throw v0

    :goto_23
    goto :goto_22

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Lc/d/a/b/i/e/a4;ILjava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/d/a/b/i/e/a4;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    .line 1
    iget-object v1, p0, Lc/d/a/b/i/e/g2;->b:[Ljava/lang/Object;

    div-int/lit8 p4, p4, 0x4

    shl-int/lit8 p4, p4, 0x1

    aget-object p4, v1, p4

    .line 2
    invoke-interface {v0, p4}, Lc/d/a/b/i/e/y1;->h(Ljava/lang/Object;)Lc/d/a/b/i/e/w1;

    iget-object p4, p0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    invoke-interface {p4, p3}, Lc/d/a/b/i/e/y1;->g(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    check-cast p1, Lc/d/a/b/i/e/h0;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    iget-object p1, p1, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p4}, Lc/d/a/b/i/e/f0;->p(II)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final t(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->a:[I

    add-int/lit8 v1, p3, 0x1

    aget v0, v0, v1

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 2
    invoke-virtual {p0, p2, p3}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v2, p2}, Lc/d/a/b/i/e/a1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lc/d/a/b/i/e/m3;->f(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lc/d/a/b/i/e/g2;->D(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v0, v1, p2}, Lc/d/a/b/i/e/m3;->f(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lc/d/a/b/i/e/g2;->D(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method public final u(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lc/d/a/b/i/e/g2;->h:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 1
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->a:[I

    add-int/2addr p2, v3

    aget p2, v0, p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    :pswitch_1
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2

    :pswitch_2
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    :pswitch_3
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    :pswitch_4
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v2

    :pswitch_5
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    :pswitch_6
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    return v2

    :pswitch_7
    sget-object p2, Lc/d/a/b/i/e/y;->d:Lc/d/a/b/i/e/y;

    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/d/a/b/i/e/y;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    :pswitch_8
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    :pswitch_9
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    :cond_a
    instance-of p2, p1, Lc/d/a/b/i/e/y;

    if-eqz p2, :cond_c

    sget-object p2, Lc/d/a/b/i/e/y;->d:Lc/d/a/b/i/e/y;

    invoke-virtual {p2, p1}, Lc/d/a/b/i/e/y;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v2

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->q(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    :pswitch_c
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_e

    return v3

    :cond_e
    return v2

    :pswitch_d
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v3

    :cond_f
    return v2

    :pswitch_e
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_10

    return v3

    :cond_10
    return v2

    :pswitch_f
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->p(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_11

    return v3

    :cond_11
    return v2

    :pswitch_10
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->r(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v3

    :cond_12
    return v2

    :pswitch_11
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->s(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_13

    return v3

    :cond_13
    return v2

    .line 3
    :cond_14
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->a:[I

    add-int/lit8 p2, p2, 0x2

    aget p2, v0, p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 4
    invoke-static {p1, v4, v5}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_15

    return v3

    :cond_15
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->a:[I

    add-int/lit8 p3, p3, 0x2

    aget p3, v0, p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lc/d/a/b/i/e/m3;->o(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final w(Ljava/lang/Object;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lc/d/a/b/i/e/g2;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lc/d/a/b/i/e/g2;->u(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p3, p4

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final x(I)Lc/d/a/b/i/e/t2;
    .locals 3

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Lc/d/a/b/i/e/t2;

    if-eqz v1, :cond_0

    return-object v1

    .line 1
    :cond_0
    sget-object v1, Lc/d/a/b/i/e/o2;->c:Lc/d/a/b/i/e/o2;

    add-int/lit8 v2, p1, 0x1

    .line 2
    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lc/d/a/b/i/e/o2;->a(Ljava/lang/Class;)Lc/d/a/b/i/e/t2;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/i/e/g2;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public final y(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final z(I)Lc/d/a/b/i/e/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc/d/a/b/i/e/c1<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lc/d/a/b/i/e/c1;

    return-object p1
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->j:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    invoke-virtual {p0, v4}, Lc/d/a/b/i/e/g2;->A(I)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lc/d/a/b/i/e/g2;->p:Lc/d/a/b/i/e/y1;

    invoke-interface {v7, v6}, Lc/d/a/b/i/e/y1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lc/d/a/b/i/e/m3;->f(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->k:[I

    if-eqz v0, :cond_2

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    iget-object v4, p0, Lc/d/a/b/i/e/g2;->m:Lc/d/a/b/i/e/o1;

    int-to-long v5, v3

    invoke-virtual {v4, p1, v5, v6}, Lc/d/a/b/i/e/o1;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lc/d/a/b/i/e/g2;->n:Lc/d/a/b/i/e/g3;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/g3;->c(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lc/d/a/b/i/e/g2;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/d/a/b/i/e/g2;->o:Lc/d/a/b/i/e/l0;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/l0;->e(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
