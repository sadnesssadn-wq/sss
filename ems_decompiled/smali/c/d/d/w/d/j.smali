.class public final Lc/d/d/w/d/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/d/d/w/d/k/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/d/w/d/k/a;

    invoke-direct {v0}, Lc/d/d/w/d/k/a;-><init>()V

    sput-object v0, Lc/d/d/w/d/j;->a:Lc/d/d/w/d/k/a;

    return-void
.end method

.method public static a(Lc/d/d/w/d/h;)Lc/d/d/w/d/c;
    .locals 15

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lc/d/d/w/d/h;->c()Lc/d/d/w/d/a;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    move-object v5, v0

    goto/16 :goto_6

    .line 2
    :cond_1
    iget-object v5, p0, Lc/d/d/w/d/g;->a:Lc/d/d/w/d/c;

    .line 3
    iget-boolean v6, p0, Lc/d/d/w/d/h;->c:Z

    if-eqz v6, :cond_2

    .line 4
    iget-object v7, v5, Lc/d/d/w/d/c;->b:Lc/d/d/p;

    goto :goto_0

    .line 5
    :cond_2
    iget-object v7, v5, Lc/d/d/w/d/c;->d:Lc/d/d/p;

    :goto_0
    if-eqz v6, :cond_3

    .line 6
    iget-object v5, v5, Lc/d/d/w/d/c;->c:Lc/d/d/p;

    goto :goto_1

    .line 7
    :cond_3
    iget-object v5, v5, Lc/d/d/w/d/c;->e:Lc/d/d/p;

    .line 8
    :goto_1
    iget v6, v7, Lc/d/d/p;->b:F

    float-to-int v6, v6

    .line 9
    invoke-virtual {p0, v6}, Lc/d/d/w/d/g;->b(I)I

    move-result v6

    .line 10
    iget v5, v5, Lc/d/d/p;->b:F

    float-to-int v5, v5

    .line 11
    invoke-virtual {p0, v5}, Lc/d/d/w/d/g;->b(I)I

    move-result v5

    .line 12
    iget-object v7, p0, Lc/d/d/w/d/g;->b:[Lc/d/d/w/d/d;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_2
    if-ge v6, v5, :cond_8

    .line 13
    aget-object v11, v7, v6

    if-eqz v11, :cond_7

    aget-object v11, v7, v6

    invoke-virtual {v11}, Lc/d/d/w/d/d;->b()V

    .line 14
    iget v12, v11, Lc/d/d/w/d/d;->e:I

    sub-int v13, v12, v8

    if-nez v13, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    if-ne v13, v4, :cond_5

    .line 15
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 16
    iget v8, v11, Lc/d/d/w/d/d;->e:I

    goto :goto_3

    .line 17
    :cond_5
    iget v11, v1, Lc/d/d/w/d/a;->e:I

    if-lt v12, v11, :cond_6

    .line 18
    aput-object v0, v7, v6

    goto :goto_4

    :cond_6
    move v8, v12

    :goto_3
    const/4 v9, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 19
    :cond_8
    iget v1, v1, Lc/d/d/w/d/a;->e:I

    .line 20
    new-array v5, v1, [I

    .line 21
    iget-object v6, p0, Lc/d/d/w/d/g;->b:[Lc/d/d/w/d/d;

    .line 22
    array-length v7, v6

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_a

    aget-object v9, v6, v8

    if-eqz v9, :cond_9

    .line 23
    iget v9, v9, Lc/d/d/w/d/d;->e:I

    if-ge v9, v1, :cond_9

    .line 24
    aget v10, v5, v9

    add-int/2addr v10, v4

    aput v10, v5, v9

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez v5, :cond_b

    return-object v0

    .line 25
    :cond_b
    array-length v0, v5

    const/4 v1, 0x0

    const/4 v6, -0x1

    :goto_7
    if-ge v1, v0, :cond_c

    aget v7, v5, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 26
    :cond_c
    array-length v0, v5

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_8
    if-ge v1, v0, :cond_d

    aget v8, v5, v1

    sub-int v9, v6, v8

    add-int/2addr v7, v9

    if-gtz v8, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 27
    :cond_d
    iget-object v0, p0, Lc/d/d/w/d/g;->b:[Lc/d/d/w/d/d;

    const/4 v1, 0x0

    :goto_9
    if-lez v7, :cond_e

    .line 28
    aget-object v8, v0, v1

    if-nez v8, :cond_e

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    array-length v1, v5

    sub-int/2addr v1, v4

    const/4 v8, 0x0

    :goto_a
    if-ltz v1, :cond_f

    aget v9, v5, v1

    sub-int v9, v6, v9

    add-int/2addr v8, v9

    aget v9, v5, v1

    if-gtz v9, :cond_f

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_f
    array-length v1, v0

    sub-int/2addr v1, v4

    :goto_b
    if-lez v8, :cond_10

    aget-object v4, v0, v1

    if-nez v4, :cond_10

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 29
    :cond_10
    iget-object v0, p0, Lc/d/d/w/d/g;->a:Lc/d/d/w/d/c;

    .line 30
    iget-boolean p0, p0, Lc/d/d/w/d/h;->c:Z

    .line 31
    iget-object v1, v0, Lc/d/d/w/d/c;->b:Lc/d/d/p;

    iget-object v4, v0, Lc/d/d/w/d/c;->c:Lc/d/d/p;

    iget-object v5, v0, Lc/d/d/w/d/c;->d:Lc/d/d/p;

    iget-object v6, v0, Lc/d/d/w/d/c;->e:Lc/d/d/p;

    if-lez v7, :cond_14

    if-eqz p0, :cond_11

    move-object v9, v1

    goto :goto_c

    :cond_11
    move-object v9, v5

    .line 32
    :goto_c
    iget v10, v9, Lc/d/d/p;->b:F

    float-to-int v10, v10

    sub-int/2addr v10, v7

    if-gez v10, :cond_12

    goto :goto_d

    :cond_12
    move v3, v10

    .line 33
    :goto_d
    new-instance v7, Lc/d/d/p;

    .line 34
    iget v9, v9, Lc/d/d/p;->a:F

    int-to-float v3, v3

    .line 35
    invoke-direct {v7, v9, v3}, Lc/d/d/p;-><init>(FF)V

    if-eqz p0, :cond_13

    move-object v1, v7

    goto :goto_e

    :cond_13
    move-object v11, v1

    move-object v13, v7

    goto :goto_f

    :cond_14
    :goto_e
    move-object v11, v1

    move-object v13, v5

    :goto_f
    if-lez v8, :cond_18

    if-eqz p0, :cond_15

    move-object v1, v4

    goto :goto_10

    :cond_15
    move-object v1, v6

    .line 36
    :goto_10
    iget v3, v1, Lc/d/d/p;->b:F

    float-to-int v3, v3

    add-int/2addr v3, v8

    .line 37
    iget-object v5, v0, Lc/d/d/w/d/c;->a:Lc/d/d/s/b;

    .line 38
    iget v5, v5, Lc/d/d/s/b;->d:I

    if-lt v3, v5, :cond_16

    add-int/lit8 v3, v5, -0x1

    .line 39
    :cond_16
    new-instance v2, Lc/d/d/p;

    .line 40
    iget v1, v1, Lc/d/d/p;->a:F

    int-to-float v3, v3

    .line 41
    invoke-direct {v2, v1, v3}, Lc/d/d/p;-><init>(FF)V

    if-eqz p0, :cond_17

    move-object v4, v2

    goto :goto_11

    :cond_17
    move-object v14, v2

    move-object v12, v4

    goto :goto_12

    :cond_18
    :goto_11
    move-object v12, v4

    move-object v14, v6

    :goto_12
    invoke-virtual {v0}, Lc/d/d/w/d/c;->a()V

    new-instance p0, Lc/d/d/w/d/c;

    iget-object v10, v0, Lc/d/d/w/d/c;->a:Lc/d/d/s/b;

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lc/d/d/w/d/c;-><init>(Lc/d/d/s/b;Lc/d/d/p;Lc/d/d/p;Lc/d/d/p;Lc/d/d/p;)V

    return-object p0
.end method

.method public static b([II[I)Lc/d/d/s/e;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    array-length v2, v0

    if-eqz v2, :cond_3a

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    shl-int v2, v3, v2

    if-eqz v1, :cond_0

    .line 1
    array-length v4, v1

    div-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_39

    :cond_0
    if-ltz v2, :cond_39

    const/16 v4, 0x200

    if-gt v2, v4, :cond_39

    sget-object v4, Lc/d/d/w/d/j;->a:Lc/d/d/w/d/k/a;

    .line 2
    new-instance v5, Lc/d/d/w/d/k/c;

    iget-object v6, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-direct {v5, v6, v0}, Lc/d/d/w/d/k/c;-><init>(Lc/d/d/w/d/k/b;[I)V

    new-array v6, v2, [I

    const/4 v7, 0x0

    move v8, v2

    const/4 v9, 0x0

    :goto_0
    if-lez v8, :cond_2

    iget-object v10, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    .line 3
    iget-object v10, v10, Lc/d/d/w/d/k/b;->a:[I

    aget v10, v10, v8

    .line 4
    invoke-virtual {v5, v10}, Lc/d/d/w/d/k/c;->b(I)I

    move-result v10

    sub-int v11, v2, v8

    aput v10, v6, v11

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    if-nez v9, :cond_3

    goto/16 :goto_b

    :cond_3
    iget-object v8, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    .line 5
    iget-object v8, v8, Lc/d/d/w/d/k/b;->d:Lc/d/d/w/d/k/c;

    if-eqz v1, :cond_4

    .line 6
    array-length v9, v1

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_4

    aget v11, v1, v10

    iget-object v12, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    array-length v13, v0

    sub-int/2addr v13, v3

    sub-int/2addr v13, v11

    .line 7
    iget-object v11, v12, Lc/d/d/w/d/k/b;->a:[I

    aget v11, v11, v13

    .line 8
    new-instance v13, Lc/d/d/w/d/k/c;

    new-array v14, v5, [I

    invoke-virtual {v12, v7, v11}, Lc/d/d/w/d/k/b;->e(II)I

    move-result v11

    aput v11, v14, v7

    aput v3, v14, v3

    invoke-direct {v13, v12, v14}, Lc/d/d/w/d/k/c;-><init>(Lc/d/d/w/d/k/b;[I)V

    invoke-virtual {v8, v13}, Lc/d/d/w/d/k/c;->g(Lc/d/d/w/d/k/c;)Lc/d/d/w/d/k/c;

    move-result-object v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    new-instance v8, Lc/d/d/w/d/k/c;

    iget-object v9, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-direct {v8, v9, v6}, Lc/d/d/w/d/k/c;-><init>(Lc/d/d/w/d/k/b;[I)V

    iget-object v6, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-virtual {v6, v2, v3}, Lc/d/d/w/d/k/b;->b(II)Lc/d/d/w/d/k/c;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Lc/d/d/w/d/k/c;->d()I

    move-result v9

    invoke-virtual {v8}, Lc/d/d/w/d/k/c;->d()I

    move-result v10

    if-ge v9, v10, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v27, v8

    move-object v8, v6

    move-object/from16 v6, v27

    :goto_2
    iget-object v9, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    .line 10
    iget-object v10, v9, Lc/d/d/w/d/k/b;->c:Lc/d/d/w/d/k/c;

    .line 11
    iget-object v9, v9, Lc/d/d/w/d/k/b;->d:Lc/d/d/w/d/k/c;

    :goto_3
    move-object/from16 v27, v8

    move-object v8, v6

    move-object/from16 v6, v27

    .line 12
    invoke-virtual {v8}, Lc/d/d/w/d/k/c;->d()I

    move-result v11

    div-int/lit8 v12, v2, 0x2

    if-lt v11, v12, :cond_b

    invoke-virtual {v8}, Lc/d/d/w/d/k/c;->e()Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    .line 13
    iget-object v11, v11, Lc/d/d/w/d/k/b;->c:Lc/d/d/w/d/k/c;

    .line 14
    invoke-virtual {v8}, Lc/d/d/w/d/k/c;->d()I

    move-result v12

    invoke-virtual {v8, v12}, Lc/d/d/w/d/k/c;->c(I)I

    move-result v12

    iget-object v13, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-virtual {v13, v12}, Lc/d/d/w/d/k/b;->c(I)I

    move-result v12

    :goto_4
    invoke-virtual {v6}, Lc/d/d/w/d/k/c;->d()I

    move-result v13

    invoke-virtual {v8}, Lc/d/d/w/d/k/c;->d()I

    move-result v14

    if-lt v13, v14, :cond_9

    invoke-virtual {v6}, Lc/d/d/w/d/k/c;->e()Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v6}, Lc/d/d/w/d/k/c;->d()I

    move-result v13

    invoke-virtual {v8}, Lc/d/d/w/d/k/c;->d()I

    move-result v14

    sub-int/2addr v13, v14

    iget-object v14, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-virtual {v6}, Lc/d/d/w/d/k/c;->d()I

    move-result v15

    invoke-virtual {v6, v15}, Lc/d/d/w/d/k/c;->c(I)I

    move-result v15

    invoke-virtual {v14, v15, v12}, Lc/d/d/w/d/k/b;->d(II)I

    move-result v14

    iget-object v15, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-virtual {v15, v13, v14}, Lc/d/d/w/d/k/b;->b(II)Lc/d/d/w/d/k/c;

    move-result-object v15

    invoke-virtual {v11, v15}, Lc/d/d/w/d/k/c;->a(Lc/d/d/w/d/k/c;)Lc/d/d/w/d/k/c;

    move-result-object v11

    if-ltz v13, :cond_8

    if-nez v14, :cond_6

    .line 15
    iget-object v13, v8, Lc/d/d/w/d/k/c;->a:Lc/d/d/w/d/k/b;

    .line 16
    iget-object v13, v13, Lc/d/d/w/d/k/b;->c:Lc/d/d/w/d/k/c;

    goto :goto_6

    .line 17
    :cond_6
    iget-object v15, v8, Lc/d/d/w/d/k/c;->b:[I

    array-length v15, v15

    add-int/2addr v13, v15

    new-array v13, v13, [I

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v15, :cond_7

    iget-object v5, v8, Lc/d/d/w/d/k/c;->a:Lc/d/d/w/d/k/b;

    iget-object v7, v8, Lc/d/d/w/d/k/c;->b:[I

    aget v7, v7, v3

    invoke-virtual {v5, v7, v14}, Lc/d/d/w/d/k/b;->d(II)I

    move-result v5

    aput v5, v13, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    new-instance v3, Lc/d/d/w/d/k/c;

    iget-object v5, v8, Lc/d/d/w/d/k/c;->a:Lc/d/d/w/d/k/b;

    invoke-direct {v3, v5, v13}, Lc/d/d/w/d/k/c;-><init>(Lc/d/d/w/d/k/b;[I)V

    move-object v13, v3

    .line 18
    :goto_6
    invoke-virtual {v6, v13}, Lc/d/d/w/d/k/c;->i(Lc/d/d/w/d/k/c;)Lc/d/d/w/d/k/c;

    move-result-object v6

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto :goto_4

    .line 19
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 20
    :cond_9
    invoke-virtual {v11, v9}, Lc/d/d/w/d/k/c;->g(Lc/d/d/w/d/k/c;)Lc/d/d/w/d/k/c;

    move-result-object v3

    invoke-virtual {v3, v10}, Lc/d/d/w/d/k/c;->i(Lc/d/d/w/d/k/c;)Lc/d/d/w/d/k/c;

    move-result-object v3

    invoke-virtual {v3}, Lc/d/d/w/d/k/c;->h()Lc/d/d/w/d/k/c;

    move-result-object v3

    move-object v10, v9

    const/4 v5, 0x2

    const/4 v7, 0x0

    move-object v9, v3

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_a
    invoke-static {}, Lc/d/d/d;->a()Lc/d/d/d;

    move-result-object v0

    throw v0

    :cond_b
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lc/d/d/w/d/k/c;->c(I)I

    move-result v5

    if-eqz v5, :cond_38

    iget-object v6, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-virtual {v6, v5}, Lc/d/d/w/d/k/b;->c(I)I

    move-result v5

    invoke-virtual {v9, v5}, Lc/d/d/w/d/k/c;->f(I)Lc/d/d/w/d/k/c;

    move-result-object v6

    invoke-virtual {v8, v5}, Lc/d/d/w/d/k/c;->f(I)Lc/d/d/w/d/k/c;

    move-result-object v5

    const/4 v7, 0x2

    new-array v8, v7, [Lc/d/d/w/d/k/c;

    aput-object v6, v8, v3

    const/4 v6, 0x1

    aput-object v5, v8, v6

    .line 21
    aget-object v5, v8, v3

    aget-object v3, v8, v6

    .line 22
    invoke-virtual {v5}, Lc/d/d/w/d/k/c;->d()I

    move-result v6

    new-array v7, v6, [I

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_7
    iget-object v10, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    .line 23
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x3a1

    if-ge v8, v10, :cond_d

    if-ge v9, v6, :cond_d

    .line 24
    invoke-virtual {v5, v8}, Lc/d/d/w/d/k/c;->b(I)I

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-virtual {v10, v8}, Lc/d/d/w/d/k/b;->c(I)I

    move-result v10

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_d
    if-ne v9, v6, :cond_37

    .line 25
    invoke-virtual {v5}, Lc/d/d/w/d/k/c;->d()I

    move-result v8

    new-array v9, v8, [I

    const/4 v10, 0x1

    :goto_8
    if-gt v10, v8, :cond_e

    sub-int v11, v8, v10

    iget-object v12, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-virtual {v5, v10}, Lc/d/d/w/d/k/c;->c(I)I

    move-result v13

    invoke-virtual {v12, v10, v13}, Lc/d/d/w/d/k/b;->d(II)I

    move-result v12

    aput v12, v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_e
    new-instance v5, Lc/d/d/w/d/k/c;

    iget-object v8, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-direct {v5, v8, v9}, Lc/d/d/w/d/k/c;-><init>(Lc/d/d/w/d/k/b;[I)V

    new-array v8, v6, [I

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v6, :cond_f

    iget-object v10, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    aget v11, v7, v9

    invoke-virtual {v10, v11}, Lc/d/d/w/d/k/b;->c(I)I

    move-result v10

    iget-object v11, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-virtual {v3, v10}, Lc/d/d/w/d/k/c;->b(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Lc/d/d/w/d/k/b;->e(II)I

    move-result v11

    iget-object v12, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-virtual {v5, v10}, Lc/d/d/w/d/k/c;->b(I)I

    move-result v10

    invoke-virtual {v12, v10}, Lc/d/d/w/d/k/b;->c(I)I

    move-result v10

    iget-object v12, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    invoke-virtual {v12, v11, v10}, Lc/d/d/w/d/k/b;->d(II)I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v6, :cond_12

    .line 26
    array-length v5, v0

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    iget-object v9, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    aget v10, v7, v3

    .line 27
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_11

    iget-object v9, v9, Lc/d/d/w/d/k/b;->b:[I

    aget v9, v9, v10

    sub-int/2addr v5, v9

    if-ltz v5, :cond_10

    .line 28
    iget-object v9, v4, Lc/d/d/w/d/k/a;->a:Lc/d/d/w/d/k/b;

    aget v10, v0, v5

    aget v11, v8, v3

    invoke-virtual {v9, v10, v11}, Lc/d/d/w/d/k/b;->e(II)I

    move-result v9

    aput v9, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_10
    invoke-static {}, Lc/d/d/d;->a()Lc/d/d/d;

    move-result-object v0

    throw v0

    .line 29
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 30
    :cond_12
    :goto_b
    array-length v3, v0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_36

    const/4 v3, 0x0

    aget v4, v0, v3

    array-length v5, v0

    if-gt v4, v5, :cond_35

    if-nez v4, :cond_14

    array-length v4, v0

    if-ge v2, v4, :cond_13

    array-length v4, v0

    sub-int/2addr v4, v2

    aput v4, v0, v3

    goto :goto_c

    :cond_13
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    .line 31
    :cond_14
    :goto_c
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    sget-object v3, Lc/d/d/w/d/e;->a:[C

    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, v0

    const/4 v6, 0x1

    shl-int/2addr v4, v6

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v4, Lc/d/d/w/d/e;->c:Ljava/nio/charset/Charset;

    aget v5, v0, v6

    new-instance v7, Lc/d/d/w/c;

    invoke-direct {v7}, Lc/d/d/w/c;-><init>()V

    const/4 v8, 0x2

    const/4 v9, 0x0

    :goto_d
    aget v10, v0, v9

    if-ge v8, v10, :cond_33

    const/16 v9, 0x391

    if-eq v5, v9, :cond_31

    const/16 v9, 0x39c

    const/16 v10, 0x384

    const/16 v12, 0x385

    const/16 v13, 0x39a

    const/16 v14, 0x39b

    const/16 v15, 0x3a0

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    move-object v14, v7

    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_26

    :pswitch_0
    const/16 v5, 0xf

    new-array v5, v5, [I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 33
    :goto_e
    aget v6, v0, v17

    if-ge v8, v6, :cond_1b

    if-nez v16, :cond_1b

    add-int/lit8 v6, v8, 0x1

    aget v8, v0, v8

    aget v11, v0, v17

    if-ne v6, v11, :cond_15

    const/16 v16, 0x1

    :cond_15
    if-ge v8, v10, :cond_16

    aput v8, v5, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    :cond_16
    if-eq v8, v10, :cond_18

    if-eq v8, v12, :cond_18

    if-eq v8, v9, :cond_18

    if-eq v8, v15, :cond_18

    if-eq v8, v14, :cond_18

    if-ne v8, v13, :cond_17

    goto :goto_10

    :cond_17
    :goto_f
    move/from16 v11, v18

    goto :goto_11

    :cond_18
    :goto_10
    add-int/lit8 v6, v6, -0x1

    move/from16 v11, v18

    const/16 v16, 0x1

    :goto_11
    rem-int/lit8 v18, v11, 0xf

    if-eqz v18, :cond_19

    const/16 v15, 0x386

    if-eq v8, v15, :cond_19

    if-eqz v16, :cond_1a

    :cond_19
    if-lez v11, :cond_1a

    invoke-static {v5, v11}, Lc/d/d/w/d/e;->a([II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    :cond_1a
    move v8, v6

    move/from16 v18, v11

    const/16 v15, 0x3a0

    const/16 v17, 0x0

    goto :goto_e

    :cond_1b
    :goto_12
    move-object v14, v7

    goto/16 :goto_25

    :pswitch_1
    const/4 v6, 0x2

    goto/16 :goto_17

    :pswitch_2
    move-object v14, v7

    goto/16 :goto_26

    :pswitch_3
    add-int/lit8 v5, v8, 0x2

    const/4 v6, 0x0

    .line 34
    aget v9, v0, v6

    if-gt v5, v9, :cond_21

    const/4 v6, 0x2

    new-array v5, v6, [I

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v6, :cond_1c

    aget v11, v0, v8

    aput v11, v5, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_1c
    invoke-static {v5, v6}, Lc/d/d/w/d/e;->a([II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v8, v5}, Lc/d/d/w/d/e;->b([IILjava/lang/StringBuilder;)I

    move-result v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    aget v5, v0, v8

    if-ne v5, v14, :cond_20

    add-int/lit8 v8, v8, 0x1

    const/16 v17, 0x0

    aget v5, v0, v17

    sub-int/2addr v5, v8

    new-array v5, v5, [I

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_14
    aget v12, v0, v17

    if-ge v8, v12, :cond_1f

    if-nez v9, :cond_1f

    add-int/lit8 v12, v8, 0x1

    aget v8, v0, v8

    if-ge v8, v10, :cond_1d

    add-int/lit8 v14, v11, 0x1

    aput v8, v5, v11

    move v8, v12

    move v11, v14

    :goto_15
    const/16 v17, 0x0

    goto :goto_14

    :cond_1d
    if-ne v8, v13, :cond_1e

    add-int/lit8 v8, v12, 0x1

    const/4 v9, 0x1

    goto :goto_15

    :cond_1e
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_1f
    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([II)[I

    goto :goto_12

    :cond_20
    aget v5, v0, v8

    if-ne v5, v13, :cond_1b

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_21
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :pswitch_4
    const/4 v6, 0x2

    add-int/lit8 v4, v8, 0x1

    .line 35
    aget v5, v0, v8

    invoke-static {v5}, Lc/d/d/s/d;->a(I)Lc/d/d/s/d;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    move-object v14, v7

    goto/16 :goto_28

    :pswitch_5
    const/4 v6, 0x2

    add-int/lit8 v5, v8, 0x2

    goto :goto_16

    :pswitch_6
    const/4 v6, 0x2

    add-int/lit8 v5, v8, 0x1

    :goto_16
    move-object v14, v7

    goto/16 :goto_27

    .line 36
    :goto_17
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-wide/16 v15, 0x384

    const-wide/16 v20, 0x0

    const/4 v6, 0x6

    if-ne v5, v12, :cond_29

    new-array v5, v6, [I

    add-int/lit8 v22, v8, 0x1

    aget v8, v0, v8

    move/from16 v23, v22

    const/16 v22, 0x0

    :goto_18
    move v13, v8

    move-wide/from16 v25, v20

    move/from16 v24, v22

    move/from16 v6, v23

    const/4 v8, 0x0

    :goto_19
    const/16 v17, 0x0

    aget v14, v0, v17

    if-ge v6, v14, :cond_26

    if-nez v24, :cond_26

    add-int/lit8 v14, v8, 0x1

    aput v13, v5, v8

    mul-long v25, v25, v15

    int-to-long v12, v13

    add-long v25, v25, v12

    add-int/lit8 v8, v6, 0x1

    aget v13, v0, v6

    if-eq v13, v10, :cond_25

    const/16 v6, 0x385

    if-eq v13, v6, :cond_25

    const/16 v6, 0x386

    if-eq v13, v6, :cond_25

    if-eq v13, v9, :cond_25

    const/16 v6, 0x3a0

    if-eq v13, v6, :cond_25

    const/16 v6, 0x39b

    if-eq v13, v6, :cond_25

    const/16 v6, 0x39a

    if-ne v13, v6, :cond_22

    goto :goto_1b

    :cond_22
    rem-int/lit8 v6, v14, 0x5

    if-nez v6, :cond_24

    if-lez v14, :cond_24

    const/4 v6, 0x0

    :goto_1a
    const/4 v12, 0x6

    if-ge v6, v12, :cond_23

    rsub-int/lit8 v12, v6, 0x5

    mul-int/lit8 v12, v12, 0x8

    shr-long v9, v25, v12

    long-to-int v10, v9

    int-to-byte v9, v10

    invoke-virtual {v11, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    const/16 v9, 0x39c

    const/16 v10, 0x384

    goto :goto_1a

    :cond_23
    move/from16 v23, v8

    move v8, v13

    move/from16 v22, v24

    const/4 v6, 0x6

    const/16 v12, 0x385

    const/16 v13, 0x39a

    const/16 v14, 0x39b

    goto :goto_18

    :cond_24
    move v6, v8

    goto :goto_1c

    :cond_25
    :goto_1b
    add-int/lit8 v8, v8, -0x1

    move v6, v8

    const/16 v24, 0x1

    :goto_1c
    move v8, v14

    const/16 v9, 0x39c

    const/16 v10, 0x384

    const/16 v12, 0x385

    goto :goto_19

    :cond_26
    const/4 v9, 0x0

    aget v10, v0, v9

    if-ne v6, v10, :cond_27

    const/16 v9, 0x384

    if-ge v13, v9, :cond_27

    add-int/lit8 v9, v8, 0x1

    aput v13, v5, v8

    goto :goto_1d

    :cond_27
    move v9, v8

    :goto_1d
    const/4 v8, 0x0

    :goto_1e
    if-ge v8, v9, :cond_28

    aget v10, v5, v8

    int-to-byte v10, v10

    invoke-virtual {v11, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_28
    move v8, v6

    goto/16 :goto_24

    :cond_29
    const/16 v6, 0x39c

    if-ne v5, v6, :cond_30

    move-wide/from16 v9, v20

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    :goto_1f
    aget v12, v0, v6

    if-ge v8, v12, :cond_30

    if-nez v17, :cond_30

    add-int/lit8 v12, v8, 0x1

    aget v8, v0, v8

    const/16 v13, 0x384

    if-ge v8, v13, :cond_2a

    add-int/lit8 v5, v5, 0x1

    mul-long v9, v9, v15

    move-object v14, v7

    int-to-long v6, v8

    add-long/2addr v9, v6

    move v8, v12

    const/16 v6, 0x39a

    const/16 v7, 0x386

    goto :goto_21

    :cond_2a
    move-object v14, v7

    if-eq v8, v13, :cond_2d

    const/16 v6, 0x385

    if-eq v8, v6, :cond_2d

    const/16 v7, 0x386

    if-eq v8, v7, :cond_2c

    const/16 v6, 0x39c

    if-eq v8, v6, :cond_2c

    const/16 v6, 0x3a0

    if-eq v8, v6, :cond_2c

    const/16 v6, 0x39b

    if-eq v8, v6, :cond_2c

    const/16 v6, 0x39a

    if-ne v8, v6, :cond_2b

    goto :goto_20

    :cond_2b
    move v8, v12

    goto :goto_21

    :cond_2c
    const/16 v6, 0x39a

    goto :goto_20

    :cond_2d
    const/16 v6, 0x39a

    const/16 v7, 0x386

    :goto_20
    add-int/lit8 v12, v12, -0x1

    move v8, v12

    const/16 v17, 0x1

    :goto_21
    rem-int/lit8 v12, v5, 0x5

    if-nez v12, :cond_2f

    if-lez v5, :cond_2f

    const/4 v5, 0x0

    const/4 v12, 0x6

    :goto_22
    if-ge v5, v12, :cond_2e

    rsub-int/lit8 v19, v5, 0x5

    mul-int/lit8 v19, v19, 0x8

    shr-long v6, v9, v19

    long-to-int v7, v6

    int-to-byte v6, v7

    invoke-virtual {v11, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x39a

    const/16 v7, 0x386

    goto :goto_22

    :cond_2e
    move-wide/from16 v9, v20

    const/4 v5, 0x0

    goto :goto_23

    :cond_2f
    const/4 v12, 0x6

    :goto_23
    move-object v7, v14

    const/4 v6, 0x0

    goto :goto_1f

    :cond_30
    :goto_24
    move-object v14, v7

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_25
    move-object v5, v4

    move v4, v8

    goto :goto_28

    .line 37
    :pswitch_7
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :goto_26
    invoke-static {v0, v8, v3}, Lc/d/d/w/d/e;->b([IILjava/lang/StringBuilder;)I

    move-result v5

    goto :goto_27

    :cond_31
    move-object v14, v7

    add-int/lit8 v5, v8, 0x1

    aget v6, v0, v8

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_27
    move/from16 v27, v5

    move-object v5, v4

    move/from16 v4, v27

    :goto_28
    array-length v6, v0

    if-ge v4, v6, :cond_32

    add-int/lit8 v8, v4, 0x1

    aget v4, v0, v4

    move-object v7, v14

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object/from16 v27, v5

    move v5, v4

    move-object/from16 v4, v27

    goto/16 :goto_d

    :cond_32
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_33
    move-object v14, v7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Lc/d/d/s/e;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3, v4, v2}, Lc/d/d/s/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v2, v14

    .line 38
    iput-object v2, v0, Lc/d/d/s/e;->f:Ljava/lang/Object;

    .line 39
    array-length v1, v1

    return-object v0

    .line 40
    :cond_34
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    .line 41
    :cond_35
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_36
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    .line 42
    :cond_37
    invoke-static {}, Lc/d/d/d;->a()Lc/d/d/d;

    move-result-object v0

    throw v0

    .line 43
    :cond_38
    invoke-static {}, Lc/d/d/d;->a()Lc/d/d/d;

    move-result-object v0

    throw v0

    .line 44
    :cond_39
    invoke-static {}, Lc/d/d/d;->a()Lc/d/d/d;

    move-result-object v0

    throw v0

    .line 45
    :cond_3a
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    goto :goto_2a

    :goto_29
    throw v0

    :goto_2a
    goto :goto_29

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static c(Lc/d/d/s/b;IIZIIII)Lc/d/d/w/d/d;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz p3, :cond_0

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x0

    move/from16 v10, p3

    move/from16 v9, p4

    const/4 v8, 0x0

    :goto_1
    const/4 v11, 0x2

    if-ge v8, v11, :cond_4

    :goto_2
    if-eqz v10, :cond_1

    if-lt v9, v1, :cond_3

    goto :goto_3

    :cond_1
    if-ge v9, v2, :cond_3

    .line 1
    :goto_3
    invoke-virtual {v0, v9, v3}, Lc/d/d/s/b;->b(II)Z

    move-result v12

    if-ne v10, v12, :cond_3

    sub-int v12, p4, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v11, :cond_2

    move/from16 v9, p4

    goto :goto_4

    :cond_2
    add-int/2addr v9, v6

    goto :goto_2

    :cond_3
    neg-int v6, v6

    xor-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    const/16 v6, 0x8

    new-array v8, v6, [I

    if-eqz p3, :cond_5

    const/4 v10, 0x1

    goto :goto_5

    :cond_5
    const/4 v10, -0x1

    :goto_5
    move/from16 v14, p3

    move v12, v9

    const/4 v13, 0x0

    :goto_6
    if-eqz p3, :cond_6

    if-ge v12, v2, :cond_8

    goto :goto_7

    :cond_6
    if-lt v12, v1, :cond_8

    :goto_7
    if-ge v13, v6, :cond_8

    .line 2
    invoke-virtual {v0, v12, v3}, Lc/d/d/s/b;->b(II)Z

    move-result v15

    if-ne v15, v14, :cond_7

    aget v15, v8, v13

    add-int/2addr v15, v5

    aput v15, v8, v13

    add-int/2addr v12, v10

    goto :goto_6

    :cond_7
    add-int/lit8 v13, v13, 0x1

    xor-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x7

    const/4 v3, 0x0

    if-eq v13, v6, :cond_b

    if-eqz p3, :cond_9

    move v1, v2

    :cond_9
    if-ne v12, v1, :cond_a

    if-ne v13, v0, :cond_a

    goto :goto_8

    :cond_a
    move-object v8, v3

    :cond_b
    :goto_8
    if-nez v8, :cond_c

    return-object v3

    .line 3
    :cond_c
    invoke-static {v8}, Lc/d/b/u/n;->t([I)I

    move-result v1

    if-eqz p3, :cond_d

    add-int v2, v9, v1

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    :goto_9
    array-length v10, v8

    div-int/2addr v10, v11

    if-ge v2, v10, :cond_e

    aget v10, v8, v2

    array-length v12, v8

    sub-int/2addr v12, v5

    sub-int/2addr v12, v2

    aget v12, v8, v12

    aput v12, v8, v2

    array-length v12, v8

    sub-int/2addr v12, v5

    sub-int/2addr v12, v2

    aput v10, v8, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    sub-int v2, v9, v1

    move/from16 v17, v9

    move v9, v2

    move/from16 v2, v17

    :goto_a
    add-int/lit8 v10, p6, -0x2

    if-gt v10, v1, :cond_f

    add-int/lit8 v10, p7, 0x2

    if-gt v1, v10, :cond_f

    const/4 v1, 0x1

    goto :goto_b

    :cond_f
    const/4 v1, 0x0

    :goto_b
    if-nez v1, :cond_10

    return-object v3

    .line 4
    :cond_10
    sget-object v1, Lc/d/d/w/d/i;->a:[[F

    .line 5
    invoke-static {v8}, Lc/d/b/u/n;->t([I)I

    move-result v1

    int-to-float v1, v1

    new-array v10, v6, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_c
    const/16 v15, 0x11

    if-ge v12, v15, :cond_12

    const/high16 v15, 0x42080000    # 34.0f

    div-float v15, v1, v15

    int-to-float v0, v12

    mul-float v0, v0, v1

    const/high16 v16, 0x41880000    # 17.0f

    div-float v0, v0, v16

    add-float/2addr v0, v15

    aget v15, v8, v13

    add-int/2addr v15, v14

    int-to-float v15, v15

    cmpg-float v0, v15, v0

    if-gtz v0, :cond_11

    aget v0, v8, v13

    add-int/2addr v14, v0

    add-int/lit8 v13, v13, 0x1

    :cond_11
    aget v0, v10, v13

    add-int/2addr v0, v5

    aput v0, v10, v13

    add-int/lit8 v12, v12, 0x1

    const/4 v0, 0x7

    goto :goto_c

    :cond_12
    const-wide/16 v0, 0x0

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v6, :cond_15

    const/4 v13, 0x0

    .line 6
    :goto_e
    aget v14, v10, v12

    if-ge v13, v14, :cond_14

    shl-long/2addr v0, v5

    rem-int/lit8 v14, v12, 0x2

    if-nez v14, :cond_13

    const/4 v14, 0x1

    goto :goto_f

    :cond_13
    const/4 v14, 0x0

    :goto_f
    int-to-long v14, v14

    or-long/2addr v0, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_15
    long-to-int v1, v0

    .line 7
    invoke-static {v1}, Lc/d/d/w/a;->a(I)I

    move-result v0

    if-ne v0, v4, :cond_16

    const/4 v1, -0x1

    :cond_16
    if-eq v1, v4, :cond_17

    goto :goto_13

    .line 8
    :cond_17
    invoke-static {v8}, Lc/d/b/u/n;->t([I)I

    move-result v0

    new-array v1, v6, [F

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v6, :cond_18

    aget v12, v8, v10

    int-to-float v12, v12

    int-to-float v13, v0

    div-float/2addr v12, v13

    aput v12, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_18
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, -0x1

    const/4 v10, 0x0

    :goto_11
    sget-object v12, Lc/d/d/w/d/i;->a:[[F

    array-length v13, v12

    if-ge v10, v13, :cond_1b

    const/4 v13, 0x0

    aget-object v12, v12, v10

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v6, :cond_19

    aget v15, v12, v14

    aget v16, v1, v14

    sub-float v15, v15, v16

    mul-float v15, v15, v15

    add-float/2addr v13, v15

    cmpl-float v15, v13, v0

    if-gez v15, :cond_19

    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_19
    cmpg-float v12, v13, v0

    if-gez v12, :cond_1a

    sget-object v0, Lc/d/d/w/a;->b:[I

    aget v8, v0, v10

    move v0, v13

    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_1b
    move v1, v8

    .line 9
    :goto_13
    invoke-static {v1}, Lc/d/d/w/a;->a(I)I

    move-result v0

    if-ne v0, v4, :cond_1c

    return-object v3

    :cond_1c
    new-instance v3, Lc/d/d/w/d/d;

    new-array v4, v6, [I

    move v6, v1

    const/4 v1, 0x7

    const/4 v8, 0x0

    :goto_14
    and-int/lit8 v10, v6, 0x1

    if-eq v10, v8, :cond_1e

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1d

    move v8, v10

    goto :goto_15

    .line 10
    :cond_1d
    aget v1, v4, v7

    aget v5, v4, v11

    sub-int/2addr v1, v5

    const/4 v5, 0x4

    aget v5, v4, v5

    add-int/2addr v1, v5

    const/4 v5, 0x6

    aget v4, v4, v5

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x9

    rem-int/lit8 v1, v1, 0x9

    .line 11
    invoke-direct {v3, v9, v2, v1, v0}, Lc/d/d/w/d/d;-><init>(IIII)V

    return-object v3

    .line 12
    :cond_1e
    :goto_15
    aget v10, v4, v1

    add-int/2addr v10, v5

    aput v10, v4, v1

    shr-int/lit8 v6, v6, 0x1

    goto :goto_14
.end method

.method public static d(Lc/d/d/s/b;Lc/d/d/w/d/c;Lc/d/d/p;ZII)Lc/d/d/w/d/h;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v10, p3

    new-instance v11, Lc/d/d/w/d/h;

    invoke-direct {v11, v0, v10}, Lc/d/d/w/d/h;-><init>(Lc/d/d/w/d/c;Z)V

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v12, v2, :cond_4

    if-nez v12, :cond_0

    const/4 v2, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    const/4 v13, -0x1

    .line 1
    :goto_1
    iget v2, v1, Lc/d/d/p;->a:F

    float-to-int v2, v2

    .line 2
    iget v3, v1, Lc/d/d/p;->b:F

    float-to-int v3, v3

    move v14, v2

    move v15, v3

    .line 3
    :goto_2
    iget v2, v0, Lc/d/d/w/d/c;->i:I

    if-gt v15, v2, :cond_3

    .line 4
    iget v2, v0, Lc/d/d/w/d/c;->h:I

    if-lt v15, v2, :cond_3

    const/4 v3, 0x0

    move-object/from16 v9, p0

    .line 5
    iget v4, v9, Lc/d/d/s/b;->c:I

    move-object/from16 v2, p0

    move/from16 v5, p3

    move v6, v14

    move v7, v15

    move/from16 v8, p4

    move/from16 v9, p5

    .line 6
    invoke-static/range {v2 .. v9}, Lc/d/d/w/d/j;->c(Lc/d/d/s/b;IIZIIII)Lc/d/d/w/d/d;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v3, v11, Lc/d/d/w/d/g;->b:[Lc/d/d/w/d/d;

    .line 8
    iget-object v4, v11, Lc/d/d/w/d/g;->a:Lc/d/d/w/d/c;

    .line 9
    iget v4, v4, Lc/d/d/w/d/c;->h:I

    sub-int v4, v15, v4

    .line 10
    aput-object v2, v3, v4

    if-eqz v10, :cond_1

    .line 11
    iget v2, v2, Lc/d/d/w/d/d;->a:I

    goto :goto_3

    .line 12
    :cond_1
    iget v2, v2, Lc/d/d/w/d/d;->b:I

    :goto_3
    move v14, v2

    :cond_2
    add-int/2addr v15, v13

    goto :goto_2

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    return-object v11
.end method

.method public static e(Lc/d/d/w/d/f;I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget p0, p0, Lc/d/d/w/d/f;->d:I

    const/4 v0, 0x1

    add-int/2addr p0, v0

    if-gt p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
