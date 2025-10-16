.class public final Lc/d/a/b/i/e/r2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/reflect/Field;

.field public D:Ljava/lang/Object;

.field public E:Ljava/lang/Object;

.field public F:Ljava/lang/Object;

.field public final a:Lc/d/a/b/i/e/s2;

.field public final b:[Ljava/lang/Object;

.field public c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:[I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lc/d/a/b/i/e/r2;->q:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lc/d/a/b/i/e/r2;->r:I

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/b/i/e/r2;->s:I

    iput v0, p0, Lc/d/a/b/i/e/r2;->t:I

    iput v0, p0, Lc/d/a/b/i/e/r2;->u:I

    iput v0, p0, Lc/d/a/b/i/e/r2;->v:I

    iput v0, p0, Lc/d/a/b/i/e/r2;->w:I

    iput-object p1, p0, Lc/d/a/b/i/e/r2;->c:Ljava/lang/Class;

    new-instance p1, Lc/d/a/b/i/e/s2;

    invoke-direct {p1, p2}, Lc/d/a/b/i/e/s2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc/d/a/b/i/e/r2;->a:Lc/d/a/b/i/e/s2;

    iput-object p3, p0, Lc/d/a/b/i/e/r2;->b:[Ljava/lang/Object;

    invoke-virtual {p1}, Lc/d/a/b/i/e/s2;->a()I

    move-result p2

    iput p2, p0, Lc/d/a/b/i/e/r2;->d:I

    invoke-virtual {p1}, Lc/d/a/b/i/e/s2;->a()I

    move-result p2

    iput p2, p0, Lc/d/a/b/i/e/r2;->e:I

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iput v0, p0, Lc/d/a/b/i/e/r2;->f:I

    iput v0, p0, Lc/d/a/b/i/e/r2;->g:I

    iput v0, p0, Lc/d/a/b/i/e/r2;->h:I

    iput v0, p0, Lc/d/a/b/i/e/r2;->i:I

    iput v0, p0, Lc/d/a/b/i/e/r2;->j:I

    iput v0, p0, Lc/d/a/b/i/e/r2;->l:I

    iput v0, p0, Lc/d/a/b/i/e/r2;->k:I

    iput v0, p0, Lc/d/a/b/i/e/r2;->m:I

    iput-object p3, p0, Lc/d/a/b/i/e/r2;->n:[I

    return-void

    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/i/e/s2;->a()I

    move-result p2

    iput p2, p0, Lc/d/a/b/i/e/r2;->f:I

    invoke-virtual {p1}, Lc/d/a/b/i/e/s2;->a()I

    move-result v0

    iput v0, p0, Lc/d/a/b/i/e/r2;->g:I

    invoke-virtual {p1}, Lc/d/a/b/i/e/s2;->a()I

    move-result v1

    iput v1, p0, Lc/d/a/b/i/e/r2;->h:I

    invoke-virtual {p1}, Lc/d/a/b/i/e/s2;->a()I

    move-result v1

    iput v1, p0, Lc/d/a/b/i/e/r2;->i:I

    invoke-virtual {p1}, Lc/d/a/b/i/e/s2;->a()I

    move-result v1

    iput v1, p0, Lc/d/a/b/i/e/r2;->l:I

    invoke-virtual {p1}, Lc/d/a/b/i/e/s2;->a()I

    move-result v1

    iput v1, p0, Lc/d/a/b/i/e/r2;->k:I

    invoke-virtual {p1}, Lc/d/a/b/i/e/s2;->a()I

    move-result v1

    iput v1, p0, Lc/d/a/b/i/e/r2;->j:I

    invoke-virtual {p1}, Lc/d/a/b/i/e/s2;->a()I

    move-result v1

    iput v1, p0, Lc/d/a/b/i/e/r2;->m:I

    invoke-virtual {p1}, Lc/d/a/b/i/e/s2;->a()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-array p3, p1, [I

    :goto_0
    iput-object p3, p0, Lc/d/a/b/i/e/r2;->n:[I

    shl-int/lit8 p1, p2, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lc/d/a/b/i/e/r2;->o:I

    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-static {v3, p0, v0}, Lc/a/a/a/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/d/a/b/i/e/r2;->a:Lc/d/a/b/i/e/s2;

    .line 1
    iget v2, v1, Lc/d/a/b/i/e/s2;->b:I

    iget-object v1, v1, Lc/d/a/b/i/e/s2;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return v3

    .line 2
    :cond_1
    iget-object v1, v0, Lc/d/a/b/i/e/r2;->a:Lc/d/a/b/i/e/s2;

    invoke-virtual {v1}, Lc/d/a/b/i/e/s2;->a()I

    move-result v1

    iput v1, v0, Lc/d/a/b/i/e/r2;->x:I

    iget-object v1, v0, Lc/d/a/b/i/e/r2;->a:Lc/d/a/b/i/e/s2;

    invoke-virtual {v1}, Lc/d/a/b/i/e/s2;->a()I

    move-result v1

    iput v1, v0, Lc/d/a/b/i/e/r2;->y:I

    and-int/lit16 v2, v1, 0xff

    iput v2, v0, Lc/d/a/b/i/e/r2;->z:I

    iget v5, v0, Lc/d/a/b/i/e/r2;->x:I

    iget v6, v0, Lc/d/a/b/i/e/r2;->q:I

    if-ge v5, v6, :cond_2

    iput v5, v0, Lc/d/a/b/i/e/r2;->q:I

    :cond_2
    iget v6, v0, Lc/d/a/b/i/e/r2;->r:I

    if-le v5, v6, :cond_3

    iput v5, v0, Lc/d/a/b/i/e/r2;->r:I

    :cond_3
    sget-object v6, Lc/d/a/b/i/e/t0;->b0:Lc/d/a/b/i/e/t0;

    .line 3
    iget v7, v6, Lc/d/a/b/i/e/t0;->c:I

    if-ne v2, v7, :cond_4

    .line 4
    iget v8, v0, Lc/d/a/b/i/e/r2;->s:I

    add-int/2addr v8, v4

    iput v8, v0, Lc/d/a/b/i/e/r2;->s:I

    goto :goto_1

    :cond_4
    sget-object v8, Lc/d/a/b/i/e/t0;->v:Lc/d/a/b/i/e/t0;

    .line 5
    iget v8, v8, Lc/d/a/b/i/e/t0;->c:I

    if-lt v2, v8, :cond_5

    .line 6
    sget-object v8, Lc/d/a/b/i/e/t0;->a0:Lc/d/a/b/i/e/t0;

    .line 7
    iget v8, v8, Lc/d/a/b/i/e/t0;->c:I

    if-gt v2, v8, :cond_5

    .line 8
    iget v8, v0, Lc/d/a/b/i/e/r2;->t:I

    add-int/2addr v8, v4

    iput v8, v0, Lc/d/a/b/i/e/r2;->t:I

    :cond_5
    :goto_1
    iget v8, v0, Lc/d/a/b/i/e/r2;->w:I

    add-int/2addr v8, v4

    iput v8, v0, Lc/d/a/b/i/e/r2;->w:I

    iget v9, v0, Lc/d/a/b/i/e/r2;->q:I

    .line 9
    sget-object v10, Lc/d/a/b/i/e/v2;->a:Ljava/lang/Class;

    const/16 v10, 0x28

    if-ge v5, v10, :cond_6

    goto :goto_2

    :cond_6
    int-to-long v10, v5

    int-to-long v12, v9

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    const-wide/16 v12, 0x2

    int-to-long v14, v8

    mul-long v12, v12, v14

    const-wide/16 v16, 0x3

    add-long v12, v12, v16

    add-long v14, v14, v16

    const-wide/16 v18, 0x9

    add-long v10, v10, v18

    mul-long v14, v14, v16

    add-long/2addr v14, v12

    cmp-long v8, v10, v14

    if-gtz v8, :cond_7

    :goto_2
    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_8

    add-int/lit8 v8, v5, 0x1

    .line 10
    iput v8, v0, Lc/d/a/b/i/e/r2;->v:I

    sub-int/2addr v8, v9

    goto :goto_4

    :cond_8
    iget v8, v0, Lc/d/a/b/i/e/r2;->u:I

    add-int/2addr v8, v4

    :goto_4
    iput v8, v0, Lc/d/a/b/i/e/r2;->u:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_a

    iget-object v1, v0, Lc/d/a/b/i/e/r2;->n:[I

    iget v8, v0, Lc/d/a/b/i/e/r2;->p:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lc/d/a/b/i/e/r2;->p:I

    aput v5, v1, v8

    :cond_a
    const/4 v1, 0x0

    iput-object v1, v0, Lc/d/a/b/i/e/r2;->D:Ljava/lang/Object;

    iput-object v1, v0, Lc/d/a/b/i/e/r2;->E:Ljava/lang/Object;

    iput-object v1, v0, Lc/d/a/b/i/e/r2;->F:Ljava/lang/Object;

    if-le v2, v7, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_d

    iget-object v1, v0, Lc/d/a/b/i/e/r2;->a:Lc/d/a/b/i/e/s2;

    invoke-virtual {v1}, Lc/d/a/b/i/e/s2;->a()I

    move-result v1

    iput v1, v0, Lc/d/a/b/i/e/r2;->A:I

    iget v1, v0, Lc/d/a/b/i/e/r2;->z:I

    sget-object v2, Lc/d/a/b/i/e/t0;->m:Lc/d/a/b/i/e/t0;

    .line 11
    iget v2, v2, Lc/d/a/b/i/e/t0;->c:I

    add-int/lit8 v2, v2, 0x33

    if-eq v1, v2, :cond_14

    .line 12
    sget-object v2, Lc/d/a/b/i/e/t0;->u:Lc/d/a/b/i/e/t0;

    .line 13
    iget v2, v2, Lc/d/a/b/i/e/t0;->c:I

    add-int/lit8 v2, v2, 0x33

    if-ne v1, v2, :cond_c

    goto/16 :goto_9

    .line 14
    :cond_c
    sget-object v2, Lc/d/a/b/i/e/t0;->p:Lc/d/a/b/i/e/t0;

    .line 15
    iget v2, v2, Lc/d/a/b/i/e/t0;->c:I

    add-int/lit8 v2, v2, 0x33

    if-ne v1, v2, :cond_16

    .line 16
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/i/e/r2;->d()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_8

    :cond_d
    iget-object v1, v0, Lc/d/a/b/i/e/r2;->c:Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/i/e/r2;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lc/d/a/b/i/e/r2;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, v0, Lc/d/a/b/i/e/r2;->C:Ljava/lang/reflect/Field;

    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/i/e/r2;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lc/d/a/b/i/e/r2;->a:Lc/d/a/b/i/e/s2;

    invoke-virtual {v1}, Lc/d/a/b/i/e/s2;->a()I

    move-result v1

    iput v1, v0, Lc/d/a/b/i/e/r2;->B:I

    :cond_e
    iget v1, v0, Lc/d/a/b/i/e/r2;->z:I

    sget-object v2, Lc/d/a/b/i/e/t0;->m:Lc/d/a/b/i/e/t0;

    .line 17
    iget v2, v2, Lc/d/a/b/i/e/t0;->c:I

    if-eq v1, v2, :cond_15

    .line 18
    sget-object v2, Lc/d/a/b/i/e/t0;->u:Lc/d/a/b/i/e/t0;

    .line 19
    iget v2, v2, Lc/d/a/b/i/e/t0;->c:I

    if-ne v1, v2, :cond_f

    goto :goto_a

    .line 20
    :cond_f
    sget-object v2, Lc/d/a/b/i/e/t0;->E:Lc/d/a/b/i/e/t0;

    .line 21
    iget v2, v2, Lc/d/a/b/i/e/t0;->c:I

    if-eq v1, v2, :cond_14

    .line 22
    sget-object v2, Lc/d/a/b/i/e/t0;->a0:Lc/d/a/b/i/e/t0;

    .line 23
    iget v2, v2, Lc/d/a/b/i/e/t0;->c:I

    if-ne v1, v2, :cond_10

    goto :goto_9

    .line 24
    :cond_10
    sget-object v2, Lc/d/a/b/i/e/t0;->p:Lc/d/a/b/i/e/t0;

    .line 25
    iget v2, v2, Lc/d/a/b/i/e/t0;->c:I

    if-eq v1, v2, :cond_13

    .line 26
    sget-object v2, Lc/d/a/b/i/e/t0;->H:Lc/d/a/b/i/e/t0;

    .line 27
    iget v2, v2, Lc/d/a/b/i/e/t0;->c:I

    if-eq v1, v2, :cond_13

    .line 28
    sget-object v2, Lc/d/a/b/i/e/t0;->V:Lc/d/a/b/i/e/t0;

    .line 29
    iget v2, v2, Lc/d/a/b/i/e/t0;->c:I

    if-ne v1, v2, :cond_11

    goto :goto_7

    :cond_11
    iget v2, v6, Lc/d/a/b/i/e/t0;->c:I

    if-ne v1, v2, :cond_16

    .line 30
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/i/e/r2;->c()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lc/d/a/b/i/e/r2;->F:Ljava/lang/Object;

    iget v1, v0, Lc/d/a/b/i/e/r2;->y:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_12

    const/4 v3, 0x1

    :cond_12
    if-eqz v3, :cond_16

    goto :goto_8

    :cond_13
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/i/e/r2;->d()Z

    move-result v1

    if-eqz v1, :cond_16

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/i/e/r2;->c()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lc/d/a/b/i/e/r2;->E:Ljava/lang/Object;

    goto :goto_c

    :cond_14
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lc/d/a/b/i/e/r2;->c()Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    :cond_15
    :goto_a
    iget-object v1, v0, Lc/d/a/b/i/e/r2;->C:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    :goto_b
    iput-object v1, v0, Lc/d/a/b/i/e/r2;->D:Ljava/lang/Object;

    :cond_16
    :goto_c
    return v4
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc/d/a/b/i/e/r2;->b:[Ljava/lang/Object;

    iget v1, p0, Lc/d/a/b/i/e/r2;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/d/a/b/i/e/r2;->o:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lc/d/a/b/i/e/r2;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/e/r2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc/d/a/b/i/e/r2;->z:I

    sget-object v1, Lc/d/a/b/i/e/t0;->u:Lc/d/a/b/i/e/t0;

    .line 1
    iget v1, v1, Lc/d/a/b/i/e/t0;->c:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
