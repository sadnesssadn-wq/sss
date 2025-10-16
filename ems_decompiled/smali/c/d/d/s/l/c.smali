.class public final Lc/d/d/s/l/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/d/s/l/a;


# direct methods
.method public constructor <init>(Lc/d/d/s/l/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    return-void
.end method


# virtual methods
.method public a([II)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Lc/d/d/s/l/b;

    iget-object v4, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    invoke-direct {v3, v4, v1}, Lc/d/d/s/l/b;-><init>(Lc/d/d/s/l/a;[I)V

    new-array v4, v2, [I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    if-ge v7, v2, :cond_1

    iget-object v9, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    .line 1
    iget v10, v9, Lc/d/d/s/l/a;->g:I

    add-int/2addr v10, v7

    .line 2
    iget-object v9, v9, Lc/d/d/s/l/a;->a:[I

    aget v9, v9, v10

    .line 3
    invoke-virtual {v3, v9}, Lc/d/d/s/l/b;->b(I)I

    move-result v9

    add-int/lit8 v10, v2, -0x1

    sub-int/2addr v10, v7

    aput v9, v4, v10

    if-eqz v9, :cond_0

    const/4 v8, 0x0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_2

    return-void

    :cond_2
    new-instance v3, Lc/d/d/s/l/b;

    iget-object v7, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    invoke-direct {v3, v7, v4}, Lc/d/d/s/l/b;-><init>(Lc/d/d/s/l/a;[I)V

    iget-object v4, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    invoke-virtual {v4, v2, v6}, Lc/d/d/s/l/a;->a(II)Lc/d/d/s/l/b;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Lc/d/d/s/l/b;->d()I

    move-result v7

    invoke-virtual {v3}, Lc/d/d/s/l/b;->d()I

    move-result v8

    if-ge v7, v8, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_1
    iget-object v7, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    .line 5
    iget-object v8, v7, Lc/d/d/s/l/a;->c:Lc/d/d/s/l/b;

    .line 6
    iget-object v7, v7, Lc/d/d/s/l/a;->d:Lc/d/d/s/l/b;

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    move-object/from16 v20, v8

    move-object v8, v7

    move-object/from16 v7, v20

    .line 7
    :goto_2
    invoke-virtual {v3}, Lc/d/d/s/l/b;->d()I

    move-result v9

    const/4 v10, 0x2

    div-int/lit8 v11, v2, 0x2

    if-lt v9, v11, :cond_f

    invoke-virtual {v3}, Lc/d/d/s/l/b;->e()Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    .line 8
    iget-object v9, v9, Lc/d/d/s/l/a;->c:Lc/d/d/s/l/b;

    .line 9
    invoke-virtual {v3}, Lc/d/d/s/l/b;->d()I

    move-result v10

    invoke-virtual {v3, v10}, Lc/d/d/s/l/b;->c(I)I

    move-result v10

    iget-object v11, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    invoke-virtual {v11, v10}, Lc/d/d/s/l/a;->b(I)I

    move-result v10

    :goto_3
    invoke-virtual {v4}, Lc/d/d/s/l/b;->d()I

    move-result v11

    invoke-virtual {v3}, Lc/d/d/s/l/b;->d()I

    move-result v12

    if-lt v11, v12, :cond_7

    invoke-virtual {v4}, Lc/d/d/s/l/b;->e()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v4}, Lc/d/d/s/l/b;->d()I

    move-result v11

    invoke-virtual {v3}, Lc/d/d/s/l/b;->d()I

    move-result v12

    sub-int/2addr v11, v12

    iget-object v12, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    invoke-virtual {v4}, Lc/d/d/s/l/b;->d()I

    move-result v13

    invoke-virtual {v4, v13}, Lc/d/d/s/l/b;->c(I)I

    move-result v13

    invoke-virtual {v12, v13, v10}, Lc/d/d/s/l/a;->c(II)I

    move-result v12

    iget-object v13, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    invoke-virtual {v13, v11, v12}, Lc/d/d/s/l/a;->a(II)Lc/d/d/s/l/b;

    move-result-object v13

    invoke-virtual {v9, v13}, Lc/d/d/s/l/b;->a(Lc/d/d/s/l/b;)Lc/d/d/s/l/b;

    move-result-object v9

    if-ltz v11, :cond_6

    if-nez v12, :cond_4

    .line 10
    iget-object v11, v3, Lc/d/d/s/l/b;->a:Lc/d/d/s/l/a;

    .line 11
    iget-object v11, v11, Lc/d/d/s/l/a;->c:Lc/d/d/s/l/b;

    goto :goto_5

    .line 12
    :cond_4
    iget-object v13, v3, Lc/d/d/s/l/b;->b:[I

    array-length v13, v13

    add-int/2addr v11, v13

    new-array v11, v11, [I

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_5

    iget-object v15, v3, Lc/d/d/s/l/b;->a:Lc/d/d/s/l/a;

    iget-object v6, v3, Lc/d/d/s/l/b;->b:[I

    aget v6, v6, v14

    invoke-virtual {v15, v6, v12}, Lc/d/d/s/l/a;->c(II)I

    move-result v6

    aput v6, v11, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    new-instance v6, Lc/d/d/s/l/b;

    iget-object v12, v3, Lc/d/d/s/l/b;->a:Lc/d/d/s/l/a;

    invoke-direct {v6, v12, v11}, Lc/d/d/s/l/b;-><init>(Lc/d/d/s/l/a;[I)V

    move-object v11, v6

    .line 13
    :goto_5
    invoke-virtual {v4, v11}, Lc/d/d/s/l/b;->a(Lc/d/d/s/l/b;)Lc/d/d/s/l/b;

    move-result-object v4

    const/4 v6, 0x1

    goto :goto_3

    .line 14
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 15
    :cond_7
    iget-object v6, v9, Lc/d/d/s/l/b;->a:Lc/d/d/s/l/a;

    iget-object v10, v8, Lc/d/d/s/l/b;->a:Lc/d/d/s/l/a;

    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v9}, Lc/d/d/s/l/b;->e()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v8}, Lc/d/d/s/l/b;->e()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_8

    :cond_8
    iget-object v6, v9, Lc/d/d/s/l/b;->b:[I

    array-length v10, v6

    iget-object v11, v8, Lc/d/d/s/l/b;->b:[I

    array-length v12, v11

    add-int v13, v10, v12

    add-int/lit8 v13, v13, -0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v10, :cond_a

    aget v15, v6, v14

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v12, :cond_9

    add-int v16, v14, v5

    aget v17, v13, v16

    iget-object v2, v9, Lc/d/d/s/l/b;->a:Lc/d/d/s/l/a;

    move-object/from16 v18, v6

    aget v6, v11, v5

    invoke-virtual {v2, v15, v6}, Lc/d/d/s/l/a;->c(II)I

    move-result v2

    xor-int v2, v17, v2

    aput v2, v13, v16

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p2

    move-object/from16 v6, v18

    goto :goto_7

    :cond_9
    move-object/from16 v18, v6

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, p2

    goto :goto_6

    :cond_a
    new-instance v2, Lc/d/d/s/l/b;

    iget-object v5, v9, Lc/d/d/s/l/b;->a:Lc/d/d/s/l/a;

    invoke-direct {v2, v5, v13}, Lc/d/d/s/l/b;-><init>(Lc/d/d/s/l/a;[I)V

    goto :goto_9

    :cond_b
    :goto_8
    iget-object v2, v9, Lc/d/d/s/l/b;->a:Lc/d/d/s/l/a;

    .line 16
    iget-object v2, v2, Lc/d/d/s/l/a;->c:Lc/d/d/s/l/b;

    .line 17
    :goto_9
    invoke-virtual {v2, v7}, Lc/d/d/s/l/b;->a(Lc/d/d/s/l/b;)Lc/d/d/s/l/b;

    move-result-object v2

    invoke-virtual {v4}, Lc/d/d/s/l/b;->d()I

    move-result v5

    invoke-virtual {v3}, Lc/d/d/s/l/b;->d()I

    move-result v6

    if-ge v5, v6, :cond_c

    move-object v7, v8

    const/4 v6, 0x1

    move-object v8, v2

    move/from16 v2, p2

    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    goto/16 :goto_2

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Division algorithm failed to reduce polynomial?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_e
    new-instance v1, Lc/d/d/s/l/d;

    const-string v2, "r_{i-1} was zero"

    invoke-direct {v1, v2}, Lc/d/d/s/l/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lc/d/d/s/l/b;->c(I)I

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v5, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    invoke-virtual {v5, v4}, Lc/d/d/s/l/a;->b(I)I

    move-result v4

    invoke-virtual {v8, v4}, Lc/d/d/s/l/b;->f(I)Lc/d/d/s/l/b;

    move-result-object v5

    invoke-virtual {v3, v4}, Lc/d/d/s/l/b;->f(I)Lc/d/d/s/l/b;

    move-result-object v3

    new-array v4, v10, [Lc/d/d/s/l/b;

    aput-object v5, v4, v2

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 20
    aget-object v3, v4, v2

    aget-object v4, v4, v5

    .line 21
    invoke-virtual {v3}, Lc/d/d/s/l/b;->d()I

    move-result v6

    if-ne v6, v5, :cond_10

    new-array v6, v5, [I

    invoke-virtual {v3, v5}, Lc/d/d/s/l/b;->c(I)I

    move-result v3

    aput v3, v6, v2

    goto :goto_b

    :cond_10
    new-array v5, v6, [I

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_a
    iget-object v9, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    .line 22
    iget v9, v9, Lc/d/d/s/l/a;->e:I

    if-ge v7, v9, :cond_12

    if-ge v8, v6, :cond_12

    .line 23
    invoke-virtual {v3, v7}, Lc/d/d/s/l/b;->b(I)I

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    invoke-virtual {v9, v7}, Lc/d/d/s/l/a;->b(I)I

    move-result v9

    aput v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_12
    if-ne v8, v6, :cond_1b

    move-object v6, v5

    .line 24
    :goto_b
    array-length v3, v6

    new-array v5, v3, [I

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v3, :cond_17

    iget-object v8, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    aget v9, v6, v7

    invoke-virtual {v8, v9}, Lc/d/d/s/l/a;->b(I)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v3, :cond_15

    if-eq v7, v10, :cond_14

    iget-object v11, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    aget v12, v6, v10

    invoke-virtual {v11, v12, v8}, Lc/d/d/s/l/a;->c(II)I

    move-result v11

    and-int/lit8 v12, v11, 0x1

    if-nez v12, :cond_13

    or-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_13
    and-int/lit8 v11, v11, -0x2

    :goto_e
    iget-object v12, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    invoke-virtual {v12, v9, v11}, Lc/d/d/s/l/a;->c(II)I

    move-result v9

    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_15
    iget-object v10, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    invoke-virtual {v4, v8}, Lc/d/d/s/l/b;->b(I)I

    move-result v11

    iget-object v12, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    invoke-virtual {v12, v9}, Lc/d/d/s/l/a;->b(I)I

    move-result v9

    invoke-virtual {v10, v11, v9}, Lc/d/d/s/l/a;->c(II)I

    move-result v9

    aput v9, v5, v7

    iget-object v9, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    .line 25
    iget v10, v9, Lc/d/d/s/l/a;->g:I

    if-eqz v10, :cond_16

    .line 26
    aget v10, v5, v7

    invoke-virtual {v9, v10, v8}, Lc/d/d/s/l/a;->c(II)I

    move-result v8

    aput v8, v5, v7

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 27
    :cond_17
    :goto_f
    array-length v3, v6

    if-ge v2, v3, :cond_1a

    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v7, v0, Lc/d/d/s/l/c;->a:Lc/d/d/s/l/a;

    aget v8, v6, v2

    .line 28
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_19

    iget-object v7, v7, Lc/d/d/s/l/a;->b:[I

    aget v7, v7, v8

    sub-int/2addr v3, v7

    if-ltz v3, :cond_18

    .line 29
    aget v7, v1, v3

    aget v8, v5, v2

    xor-int/2addr v7, v8

    aput v7, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_18
    new-instance v1, Lc/d/d/s/l/d;

    const-string v2, "Bad error location"

    invoke-direct {v1, v2}, Lc/d/d/s/l/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1a
    return-void

    .line 31
    :cond_1b
    new-instance v1, Lc/d/d/s/l/d;

    const-string v2, "Error locator degree does not match number of roots"

    invoke-direct {v1, v2}, Lc/d/d/s/l/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_1c
    new-instance v1, Lc/d/d/s/l/d;

    const-string v2, "sigmaTilde(0) was zero"

    invoke-direct {v1, v2}, Lc/d/d/s/l/d;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :goto_10
    throw v1

    :goto_11
    goto :goto_10
.end method
