.class public final Lc/d/d/t/b/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/d/s/l/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/d/s/l/c;

    sget-object v1, Lc/d/d/s/l/a;->m:Lc/d/d/s/l/a;

    invoke-direct {v0, v1}, Lc/d/d/s/l/c;-><init>(Lc/d/d/s/l/a;)V

    iput-object v0, p0, Lc/d/d/t/b/d;->a:Lc/d/d/s/l/c;

    return-void
.end method


# virtual methods
.method public a(Lc/d/d/s/b;)Lc/d/d/s/e;
    .locals 22

    new-instance v0, Lc/d/d/t/b/a;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lc/d/d/t/b/a;-><init>(Lc/d/d/s/b;)V

    .line 1
    iget-object v1, v0, Lc/d/d/t/b/a;->c:Lc/d/d/t/b/e;

    .line 2
    iget v2, v1, Lc/d/d/t/b/e;->g:I

    .line 3
    new-array v3, v2, [B

    iget-object v4, v0, Lc/d/d/t/b/a;->a:Lc/d/d/s/b;

    .line 4
    iget v5, v4, Lc/d/d/s/b;->d:I

    .line 5
    iget v4, v4, Lc/d/d/s/b;->c:I

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x1

    if-ne v8, v5, :cond_7

    if-nez v9, :cond_7

    if-nez v10, :cond_7

    add-int/lit8 v10, v11, 0x1

    add-int/lit8 v6, v5, -0x1

    .line 6
    invoke-virtual {v0, v6, v7, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v17

    shl-int/lit8 v17, v17, 0x1

    invoke-virtual {v0, v6, v15, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_0

    or-int/lit8 v17, v17, 0x1

    :cond_0
    shl-int/lit8 v17, v17, 0x1

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_1

    or-int/lit8 v17, v17, 0x1

    :cond_1
    shl-int/lit8 v6, v17, 0x1

    add-int/lit8 v7, v4, -0x2

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v7, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v7

    if-eqz v7, :cond_2

    or-int/lit8 v6, v6, 0x1

    :cond_2
    const/4 v7, 0x1

    shl-int/2addr v6, v7

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v0, v15, v7, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v19

    if-eqz v19, :cond_3

    or-int/lit8 v6, v6, 0x1

    :cond_3
    const/4 v15, 0x1

    shl-int/2addr v6, v15

    invoke-virtual {v0, v15, v7, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_4

    or-int/lit8 v6, v6, 0x1

    :cond_4
    shl-int/2addr v6, v15

    const/4 v15, 0x2

    invoke-virtual {v0, v15, v7, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v19

    if-eqz v19, :cond_5

    or-int/lit8 v6, v6, 0x1

    :cond_5
    const/4 v15, 0x1

    shl-int/2addr v6, v15

    const/4 v15, 0x3

    invoke-virtual {v0, v15, v7, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v7

    if-eqz v7, :cond_6

    or-int/lit8 v6, v6, 0x1

    :cond_6
    int-to-byte v6, v6

    .line 7
    aput-byte v6, v3, v11

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    move v11, v10

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v6, v5, -0x2

    if-ne v8, v6, :cond_f

    if-nez v9, :cond_f

    and-int/lit8 v7, v4, 0x3

    if-eqz v7, :cond_f

    if-nez v12, :cond_f

    add-int/lit8 v7, v11, 0x1

    add-int/lit8 v12, v5, -0x3

    const/4 v15, 0x0

    .line 8
    invoke-virtual {v0, v12, v15, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v12

    move/from16 v19, v7

    const/4 v7, 0x1

    shl-int/2addr v12, v7

    invoke-virtual {v0, v6, v15, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_8

    or-int/lit8 v12, v12, 0x1

    :cond_8
    shl-int/lit8 v6, v12, 0x1

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v0, v12, v15, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_9

    or-int/lit8 v6, v6, 0x1

    :cond_9
    shl-int/2addr v6, v7

    add-int/lit8 v12, v4, -0x4

    invoke-virtual {v0, v15, v12, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_a

    or-int/lit8 v6, v6, 0x1

    :cond_a
    shl-int/2addr v6, v7

    add-int/lit8 v12, v4, -0x3

    invoke-virtual {v0, v15, v12, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_b

    or-int/lit8 v6, v6, 0x1

    :cond_b
    shl-int/2addr v6, v7

    add-int/lit8 v12, v4, -0x2

    invoke-virtual {v0, v15, v12, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_c

    or-int/lit8 v6, v6, 0x1

    :cond_c
    shl-int/2addr v6, v7

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {v0, v15, v12, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_d

    or-int/lit8 v6, v6, 0x1

    :cond_d
    shl-int/2addr v6, v7

    invoke-virtual {v0, v7, v12, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_e

    or-int/lit8 v6, v6, 0x1

    :cond_e
    int-to-byte v6, v6

    .line 9
    aput-byte v6, v3, v11

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    move/from16 v11, v19

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v7, v5, 0x4

    if-ne v8, v7, :cond_17

    const/4 v7, 0x2

    if-ne v9, v7, :cond_17

    and-int/lit8 v7, v4, 0x7

    if-nez v7, :cond_17

    if-nez v13, :cond_17

    add-int/lit8 v6, v11, 0x1

    add-int/lit8 v7, v5, -0x1

    const/4 v13, 0x0

    .line 10
    invoke-virtual {v0, v7, v13, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v15

    const/4 v13, 0x1

    shl-int/2addr v15, v13

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v0, v7, v13, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v7

    if-eqz v7, :cond_10

    or-int/lit8 v15, v15, 0x1

    :cond_10
    const/4 v7, 0x1

    shl-int/2addr v15, v7

    add-int/lit8 v7, v4, -0x3

    move/from16 v19, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v7, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_11

    or-int/lit8 v15, v15, 0x1

    :cond_11
    const/4 v6, 0x1

    shl-int/2addr v15, v6

    add-int/lit8 v6, v4, -0x2

    move/from16 v20, v10

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v6, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_12

    or-int/lit8 v15, v15, 0x1

    :cond_12
    move/from16 v21, v12

    const/4 v12, 0x1

    shl-int/2addr v15, v12

    invoke-virtual {v0, v10, v13, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_13

    or-int/lit8 v15, v15, 0x1

    :cond_13
    shl-int/lit8 v10, v15, 0x1

    invoke-virtual {v0, v12, v7, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v7

    if-eqz v7, :cond_14

    or-int/lit8 v10, v10, 0x1

    :cond_14
    shl-int/lit8 v7, v10, 0x1

    invoke-virtual {v0, v12, v6, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_15

    or-int/lit8 v7, v7, 0x1

    :cond_15
    shl-int/lit8 v6, v7, 0x1

    invoke-virtual {v0, v12, v13, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v7

    if-eqz v7, :cond_16

    or-int/lit8 v6, v6, 0x1

    :cond_16
    int-to-byte v6, v6

    .line 11
    aput-byte v6, v3, v11

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    move/from16 v11, v19

    move/from16 v10, v20

    move/from16 v12, v21

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_17
    move/from16 v20, v10

    move/from16 v21, v12

    if-ne v8, v6, :cond_1f

    if-nez v9, :cond_1f

    and-int/lit8 v7, v4, 0x7

    const/4 v10, 0x4

    if-ne v7, v10, :cond_1f

    if-nez v14, :cond_1f

    add-int/lit8 v7, v11, 0x1

    add-int/lit8 v10, v5, -0x3

    const/4 v12, 0x0

    .line 12
    invoke-virtual {v0, v10, v12, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v10

    const/4 v14, 0x1

    shl-int/2addr v10, v14

    invoke-virtual {v0, v6, v12, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_18

    or-int/lit8 v10, v10, 0x1

    :cond_18
    shl-int/lit8 v6, v10, 0x1

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v0, v10, v12, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v10

    if-eqz v10, :cond_19

    or-int/lit8 v6, v6, 0x1

    :cond_19
    shl-int/2addr v6, v14

    add-int/lit8 v10, v4, -0x2

    invoke-virtual {v0, v12, v10, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v10

    if-eqz v10, :cond_1a

    or-int/lit8 v6, v6, 0x1

    :cond_1a
    shl-int/2addr v6, v14

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v0, v12, v10, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v15

    if-eqz v15, :cond_1b

    or-int/lit8 v6, v6, 0x1

    :cond_1b
    shl-int/2addr v6, v14

    invoke-virtual {v0, v14, v10, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_1c

    or-int/lit8 v6, v6, 0x1

    :cond_1c
    shl-int/2addr v6, v14

    const/4 v12, 0x2

    invoke-virtual {v0, v12, v10, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v15

    if-eqz v15, :cond_1d

    or-int/lit8 v6, v6, 0x1

    :cond_1d
    shl-int/2addr v6, v14

    const/4 v12, 0x3

    invoke-virtual {v0, v12, v10, v5, v4}, Lc/d/d/t/b/a;->a(IIII)Z

    move-result v10

    if-eqz v10, :cond_1e

    or-int/lit8 v6, v6, 0x1

    :cond_1e
    int-to-byte v6, v6

    .line 13
    aput-byte v6, v3, v11

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    move v11, v7

    move/from16 v10, v20

    move/from16 v12, v21

    const/4 v14, 0x1

    goto :goto_1

    :cond_1f
    if-ge v8, v5, :cond_20

    if-ltz v9, :cond_20

    iget-object v6, v0, Lc/d/d/t/b/a;->b:Lc/d/d/s/b;

    invoke-virtual {v6, v9, v8}, Lc/d/d/s/b;->b(II)Z

    move-result v6

    if-nez v6, :cond_20

    add-int/lit8 v6, v11, 0x1

    invoke-virtual {v0, v8, v9, v5, v4}, Lc/d/d/t/b/a;->b(IIII)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v11

    move v11, v6

    :cond_20
    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    if-ltz v8, :cond_21

    if-lt v9, v4, :cond_1f

    :cond_21
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x3

    :cond_22
    if-ltz v8, :cond_23

    if-ge v9, v4, :cond_23

    iget-object v6, v0, Lc/d/d/t/b/a;->b:Lc/d/d/s/b;

    invoke-virtual {v6, v9, v8}, Lc/d/d/s/b;->b(II)Z

    move-result v6

    if-nez v6, :cond_23

    add-int/lit8 v6, v11, 0x1

    invoke-virtual {v0, v8, v9, v5, v4}, Lc/d/d/t/b/a;->b(IIII)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v11

    move v11, v6

    :cond_23
    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v9, -0x2

    if-ge v8, v5, :cond_24

    if-gez v9, :cond_22

    :cond_24
    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v20

    move/from16 v12, v21

    :goto_1
    if-lt v8, v5, :cond_8b

    if-lt v9, v4, :cond_8b

    iget-object v0, v0, Lc/d/d/t/b/a;->c:Lc/d/d/t/b/e;

    .line 14
    iget v0, v0, Lc/d/d/t/b/e;->g:I

    if-ne v11, v0, :cond_8a

    .line 15
    iget-object v0, v1, Lc/d/d/t/b/e;->f:Lc/d/d/t/b/e$c;

    .line 16
    iget-object v4, v0, Lc/d/d/t/b/e$c;->b:[Lc/d/d/t/b/e$b;

    .line 17
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v5, :cond_25

    aget-object v8, v4, v6

    .line 18
    iget v8, v8, Lc/d/d/t/b/e$b;->a:I

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 19
    :cond_25
    new-array v5, v7, [Lc/d/d/t/b/b;

    array-length v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v8, v6, :cond_27

    aget-object v10, v4, v8

    const/4 v11, 0x0

    .line 20
    :goto_4
    iget v12, v10, Lc/d/d/t/b/e$b;->a:I

    if-ge v11, v12, :cond_26

    .line 21
    iget v12, v10, Lc/d/d/t/b/e$b;->b:I

    .line 22
    iget v13, v0, Lc/d/d/t/b/e$c;->a:I

    add-int/2addr v13, v12

    add-int/lit8 v14, v9, 0x1

    .line 23
    new-instance v15, Lc/d/d/t/b/b;

    new-array v13, v13, [B

    invoke-direct {v15, v12, v13}, Lc/d/d/t/b/b;-><init>(I[B)V

    aput-object v15, v5, v9

    add-int/lit8 v11, v11, 0x1

    move v9, v14

    goto :goto_4

    :cond_26
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_27
    const/4 v8, 0x0

    aget-object v4, v5, v8

    iget-object v4, v4, Lc/d/d/t/b/b;->b:[B

    array-length v4, v4

    .line 24
    iget v0, v0, Lc/d/d/t/b/e$c;->a:I

    sub-int/2addr v4, v0

    add-int/lit8 v0, v4, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_5
    if-ge v6, v0, :cond_29

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_28

    .line 25
    aget-object v11, v5, v10

    iget-object v11, v11, Lc/d/d/t/b/b;->b:[B

    add-int/lit8 v12, v8, 0x1

    aget-byte v8, v3, v8

    aput-byte v8, v11, v6

    add-int/lit8 v10, v10, 0x1

    move v8, v12

    goto :goto_6

    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 26
    :cond_29
    iget v1, v1, Lc/d/d/t/b/e;->a:I

    const/16 v6, 0x18

    if-ne v1, v6, :cond_2a

    const/4 v1, 0x1

    goto :goto_7

    :cond_2a
    const/4 v1, 0x0

    :goto_7
    const/16 v6, 0x8

    if-eqz v1, :cond_2b

    const/16 v10, 0x8

    goto :goto_8

    :cond_2b
    move v10, v9

    :goto_8
    const/4 v11, 0x0

    :goto_9
    if-ge v11, v10, :cond_2c

    .line 27
    aget-object v12, v5, v11

    iget-object v12, v12, Lc/d/d/t/b/b;->b:[B

    add-int/lit8 v13, v8, 0x1

    aget-byte v8, v3, v8

    aput-byte v8, v12, v0

    add-int/lit8 v11, v11, 0x1

    move v8, v13

    goto :goto_9

    :cond_2c
    const/4 v11, 0x0

    aget-object v0, v5, v11

    iget-object v0, v0, Lc/d/d/t/b/b;->b:[B

    array-length v0, v0

    :goto_a
    if-ge v4, v0, :cond_30

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v9, :cond_2f

    if-eqz v1, :cond_2d

    add-int/lit8 v11, v10, 0x8

    rem-int/2addr v11, v9

    goto :goto_c

    :cond_2d
    move v11, v10

    :goto_c
    if-eqz v1, :cond_2e

    const/4 v12, 0x7

    if-le v11, v12, :cond_2e

    add-int/lit8 v12, v4, -0x1

    goto :goto_d

    :cond_2e
    move v12, v4

    :goto_d
    aget-object v11, v5, v11

    iget-object v11, v11, Lc/d/d/t/b/b;->b:[B

    add-int/lit8 v13, v8, 0x1

    aget-byte v8, v3, v8

    aput-byte v8, v11, v12

    add-int/lit8 v10, v10, 0x1

    move v8, v13

    goto :goto_b

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_30
    if-ne v8, v2, :cond_89

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_e
    if-ge v0, v7, :cond_31

    .line 28
    aget-object v2, v5, v0

    .line 29
    iget v2, v2, Lc/d/d/t/b/b;->a:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 30
    :cond_31
    new-array v0, v1, [B

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v7, :cond_35

    aget-object v2, v5, v1

    .line 31
    iget-object v3, v2, Lc/d/d/t/b/b;->b:[B

    .line 32
    iget v2, v2, Lc/d/d/t/b/b;->a:I

    .line 33
    array-length v4, v3

    new-array v8, v4, [I

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v4, :cond_32

    aget-byte v10, v3, v9

    and-int/lit16 v10, v10, 0xff

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_32
    move-object/from16 v15, p0

    :try_start_0
    iget-object v4, v15, Lc/d/d/t/b/d;->a:Lc/d/d/s/l/c;

    array-length v9, v3

    sub-int/2addr v9, v2

    invoke-virtual {v4, v8, v9}, Lc/d/d/s/l/c;->a([II)V
    :try_end_0
    .catch Lc/d/d/s/l/d; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v2, :cond_33

    aget v9, v8, v4

    int-to-byte v9, v9

    aput-byte v9, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_33
    const/4 v4, 0x0

    :goto_12
    if-ge v4, v2, :cond_34

    mul-int v8, v4, v7

    add-int/2addr v8, v1

    .line 34
    aget-byte v9, v3, v4

    aput-byte v9, v0, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 35
    :catch_0
    invoke-static {}, Lc/d/d/d;->a()Lc/d/d/d;

    move-result-object v0

    throw v0

    :cond_35
    move-object/from16 v15, p0

    .line 36
    sget-object v1, Lc/d/d/t/b/c$a;->c:Lc/d/d/t/b/c$a;

    sget-object v2, Lc/d/d/t/b/c$a;->d:Lc/d/d/t/b/c$a;

    new-instance v3, Lc/d/d/s/c;

    invoke-direct {v3, v0}, Lc/d/d/s/c;-><init>([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v2

    :goto_13
    const/16 v9, 0x1d

    const/16 v10, 0xfe

    const/16 v11, 0x80

    if-ne v8, v2, :cond_49

    const/4 v8, 0x0

    .line 37
    :cond_36
    invoke-virtual {v3, v6}, Lc/d/d/s/c;->b(I)I

    move-result v12

    if-eqz v12, :cond_48

    if-gt v12, v11, :cond_38

    if-eqz v8, :cond_37

    add-int/lit16 v12, v12, 0x80

    :cond_37
    const/4 v8, 0x1

    sub-int/2addr v12, v8

    int-to-char v8, v12

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    goto/16 :goto_2f

    :cond_38
    const/16 v13, 0x81

    if-ne v12, v13, :cond_39

    move-object v8, v1

    :goto_14
    const/4 v13, 0x0

    goto/16 :goto_30

    :cond_39
    const/16 v13, 0xe5

    if-gt v12, v13, :cond_3c

    add-int/lit16 v12, v12, -0x82

    const/16 v13, 0xa

    if-ge v12, v13, :cond_3a

    const/16 v13, 0x30

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3a
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3b
    :goto_15
    const/4 v13, 0x0

    goto/16 :goto_17

    :cond_3c
    const/16 v13, 0xe6

    if-ne v12, v13, :cond_3d

    sget-object v8, Lc/d/d/t/b/c$a;->e:Lc/d/d/t/b/c$a;

    goto :goto_14

    :cond_3d
    const/16 v13, 0xe7

    if-ne v12, v13, :cond_3e

    sget-object v8, Lc/d/d/t/b/c$a;->i:Lc/d/d/t/b/c$a;

    goto :goto_14

    :cond_3e
    const/16 v13, 0xe8

    if-ne v12, v13, :cond_3f

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_3f
    const/16 v13, 0xe9

    if-eq v12, v13, :cond_3b

    const/16 v13, 0xea

    if-eq v12, v13, :cond_3b

    const/16 v13, 0xeb

    if-ne v12, v13, :cond_40

    const/4 v8, 0x1

    goto :goto_15

    :cond_40
    const/16 v13, 0xec

    if-ne v12, v13, :cond_41

    const-string v12, "[)>\u001e05\u001d"

    goto :goto_16

    :cond_41
    const/16 v13, 0xed

    if-ne v12, v13, :cond_42

    const-string v12, "[)>\u001e06\u001d"

    :goto_16
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\u001e\u0004"

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_42
    const/4 v13, 0x0

    const/16 v14, 0xee

    if-ne v12, v14, :cond_43

    sget-object v8, Lc/d/d/t/b/c$a;->g:Lc/d/d/t/b/c$a;

    goto/16 :goto_30

    :cond_43
    const/16 v14, 0xef

    if-ne v12, v14, :cond_44

    sget-object v8, Lc/d/d/t/b/c$a;->f:Lc/d/d/t/b/c$a;

    goto/16 :goto_30

    :cond_44
    const/16 v14, 0xf0

    if-ne v12, v14, :cond_45

    sget-object v8, Lc/d/d/t/b/c$a;->h:Lc/d/d/t/b/c$a;

    goto/16 :goto_30

    :cond_45
    const/16 v14, 0xf1

    if-eq v12, v14, :cond_47

    const/16 v14, 0xf2

    if-lt v12, v14, :cond_47

    if-ne v12, v10, :cond_46

    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v12

    if-nez v12, :cond_46

    goto :goto_17

    :cond_46
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_47
    :goto_17
    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v12

    if-gtz v12, :cond_36

    goto/16 :goto_1a

    :cond_48
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_49
    const/4 v13, 0x0

    .line 38
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/16 v14, 0x1b

    const/4 v9, 0x2

    if-eq v8, v9, :cond_72

    const/4 v9, 0x3

    if-eq v8, v9, :cond_60

    const/4 v9, 0x4

    if-eq v8, v9, :cond_55

    const/4 v9, 0x5

    const/4 v11, 0x6

    if-eq v8, v9, :cond_50

    if-ne v8, v11, :cond_4f

    .line 39
    iget v8, v3, Lc/d/d/s/c;->b:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 40
    invoke-virtual {v3, v6}, Lc/d/d/s/c;->b(I)I

    move-result v9

    add-int/lit8 v10, v8, 0x1

    invoke-static {v9, v8}, Lc/d/d/t/b/c;->b(II)I

    move-result v8

    if-nez v8, :cond_4a

    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v8

    div-int/2addr v8, v6

    goto :goto_18

    :cond_4a
    const/16 v9, 0xfa

    if-ge v8, v9, :cond_4b

    goto :goto_18

    :cond_4b
    add-int/lit16 v8, v8, -0xf9

    mul-int/lit16 v8, v8, 0xfa

    invoke-virtual {v3, v6}, Lc/d/d/s/c;->b(I)I

    move-result v9

    add-int/lit8 v11, v10, 0x1

    invoke-static {v9, v10}, Lc/d/d/t/b/c;->b(II)I

    move-result v9

    add-int/2addr v8, v9

    move v10, v11

    :goto_18
    if-ltz v8, :cond_4e

    new-array v9, v8, [B

    const/4 v11, 0x0

    :goto_19
    if-ge v11, v8, :cond_4d

    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v12

    if-lt v12, v6, :cond_4c

    invoke-virtual {v3, v6}, Lc/d/d/s/c;->b(I)I

    move-result v12

    add-int/lit8 v14, v10, 0x1

    invoke-static {v12, v10}, Lc/d/d/t/b/c;->b(II)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v9, v11

    add-int/lit8 v11, v11, 0x1

    move v10, v14

    goto :goto_19

    :cond_4c
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_4d
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_1
    new-instance v8, Ljava/lang/String;

    const-string v10, "ISO8859_1"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2f

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Platform does not support required encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    .line 41
    :cond_4f
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    .line 42
    :cond_50
    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v8

    const/16 v9, 0x10

    if-gt v8, v9, :cond_51

    :goto_1a
    const/4 v9, 0x4

    goto/16 :goto_2f

    :cond_51
    const/4 v8, 0x0

    const/4 v9, 0x4

    :goto_1b
    if-ge v8, v9, :cond_54

    invoke-virtual {v3, v11}, Lc/d/d/s/c;->b(I)I

    move-result v10

    const/16 v12, 0x1f

    if-ne v10, v12, :cond_52

    .line 43
    iget v8, v3, Lc/d/d/s/c;->c:I

    rsub-int/lit8 v8, v8, 0x8

    if-eq v8, v6, :cond_84

    .line 44
    invoke-virtual {v3, v8}, Lc/d/d/s/c;->b(I)I

    goto/16 :goto_2f

    :cond_52
    and-int/lit8 v12, v10, 0x20

    if-nez v12, :cond_53

    or-int/lit8 v10, v10, 0x40

    :cond_53
    int-to-char v10, v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_54
    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v8

    if-gtz v8, :cond_50

    goto/16 :goto_2f

    :cond_55
    const/4 v8, 0x3

    new-array v11, v8, [I

    .line 45
    :goto_1c
    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v8

    if-ne v8, v6, :cond_56

    goto/16 :goto_2f

    :cond_56
    invoke-virtual {v3, v6}, Lc/d/d/s/c;->b(I)I

    move-result v8

    if-ne v8, v10, :cond_57

    goto/16 :goto_2f

    :cond_57
    invoke-virtual {v3, v6}, Lc/d/d/s/c;->b(I)I

    move-result v12

    invoke-static {v8, v12, v11}, Lc/d/d/t/b/c;->a(II[I)V

    const/4 v8, 0x0

    :goto_1d
    const/4 v12, 0x3

    if-ge v8, v12, :cond_5e

    aget v14, v11, v8

    if-nez v14, :cond_58

    const/16 v14, 0xd

    goto :goto_1f

    :cond_58
    const/4 v9, 0x1

    if-ne v14, v9, :cond_59

    const/16 v14, 0x2a

    goto :goto_1f

    :cond_59
    const/4 v9, 0x2

    if-ne v14, v9, :cond_5a

    const/16 v14, 0x3e

    goto :goto_1f

    :cond_5a
    if-ne v14, v12, :cond_5b

    const/16 v14, 0x20

    goto :goto_1f

    :cond_5b
    const/16 v9, 0xe

    if-ge v14, v9, :cond_5c

    add-int/lit8 v14, v14, 0x2c

    goto :goto_1e

    :cond_5c
    const/16 v9, 0x28

    if-ge v14, v9, :cond_5d

    add-int/lit8 v14, v14, 0x33

    :goto_1e
    int-to-char v14, v14

    :goto_1f
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x4

    goto :goto_1d

    :cond_5d
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_5e
    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v8

    if-gtz v8, :cond_5f

    goto/16 :goto_2f

    :cond_5f
    const/4 v9, 0x4

    goto :goto_1c

    :cond_60
    new-array v8, v9, [I

    const/16 v16, 0x0

    const/16 v19, 0x0

    .line 46
    :goto_20
    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v13

    if-ne v13, v6, :cond_61

    :goto_21
    const/16 v11, 0x8

    goto/16 :goto_2f

    :cond_61
    invoke-virtual {v3, v6}, Lc/d/d/s/c;->b(I)I

    move-result v13

    if-ne v13, v10, :cond_62

    goto :goto_21

    :cond_62
    invoke-virtual {v3, v6}, Lc/d/d/s/c;->b(I)I

    move-result v10

    invoke-static {v13, v10, v8}, Lc/d/d/t/b/c;->a(II[I)V

    move/from16 v13, v16

    const/4 v10, 0x0

    :goto_22
    if-ge v10, v9, :cond_70

    aget v6, v8, v10

    if-eqz v13, :cond_6c

    const/4 v12, 0x1

    if-eq v13, v12, :cond_69

    const/4 v12, 0x2

    if-eq v13, v12, :cond_65

    if-ne v13, v9, :cond_64

    sget-object v9, Lc/d/d/t/b/c;->e:[C

    array-length v12, v9

    if-ge v6, v12, :cond_63

    aget-char v6, v9, v6

    if-eqz v19, :cond_6b

    goto :goto_23

    :cond_63
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_64
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_65
    sget-object v9, Lc/d/d/t/b/c;->d:[C

    array-length v12, v9

    if-ge v6, v12, :cond_66

    aget-char v6, v9, v6

    if-eqz v19, :cond_6b

    :goto_23
    add-int/2addr v6, v11

    goto :goto_24

    :cond_66
    if-ne v6, v14, :cond_67

    const/16 v6, 0x1d

    goto :goto_25

    :cond_67
    const/16 v9, 0x1e

    if-ne v6, v9, :cond_68

    const/16 v19, 0x1

    goto :goto_26

    :cond_68
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_69
    if-eqz v19, :cond_6a

    add-int/lit16 v6, v6, 0x80

    :goto_24
    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v19, 0x0

    goto :goto_26

    :cond_6a
    int-to-char v6, v6

    :cond_6b
    :goto_25
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_26
    const/4 v13, 0x0

    goto :goto_27

    :cond_6c
    if-ge v6, v9, :cond_6d

    add-int/lit8 v6, v6, 0x1

    move v13, v6

    goto :goto_27

    :cond_6d
    sget-object v9, Lc/d/d/t/b/c;->c:[C

    array-length v12, v9

    if-ge v6, v12, :cond_6f

    aget-char v6, v9, v6

    if-eqz v19, :cond_6e

    add-int/lit16 v6, v6, 0x80

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v19, 0x0

    goto :goto_27

    :cond_6e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_27
    add-int/lit8 v10, v10, 0x1

    const/16 v6, 0x8

    const/4 v9, 0x3

    goto :goto_22

    :cond_6f
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_70
    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v6

    if-gtz v6, :cond_71

    goto/16 :goto_21

    :cond_71
    move/from16 v16, v13

    const/16 v6, 0x8

    const/4 v9, 0x3

    const/16 v10, 0xfe

    goto/16 :goto_20

    :cond_72
    const/4 v6, 0x3

    new-array v8, v6, [I

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 47
    :cond_73
    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_74

    goto/16 :goto_2f

    :cond_74
    invoke-virtual {v3, v11}, Lc/d/d/s/c;->b(I)I

    move-result v10

    const/16 v12, 0xfe

    if-ne v10, v12, :cond_75

    goto/16 :goto_2f

    :cond_75
    invoke-virtual {v3, v11}, Lc/d/d/s/c;->b(I)I

    move-result v13

    invoke-static {v10, v13, v8}, Lc/d/d/t/b/c;->a(II[I)V

    const/4 v10, 0x0

    :goto_28
    const/4 v13, 0x3

    if-ge v10, v13, :cond_83

    aget v11, v8, v10

    if-eqz v9, :cond_7f

    const/4 v12, 0x1

    if-eq v9, v12, :cond_7d

    const/4 v12, 0x2

    if-eq v9, v12, :cond_78

    if-ne v9, v13, :cond_77

    if-eqz v6, :cond_76

    add-int/lit16 v11, v11, 0xe0

    const/16 v13, 0x1e

    goto :goto_29

    :cond_76
    add-int/lit8 v11, v11, 0x60

    const/16 v13, 0x1e

    goto :goto_2b

    :cond_77
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_78
    sget-object v9, Lc/d/d/t/b/c;->b:[C

    array-length v13, v9

    if-ge v11, v13, :cond_79

    aget-char v9, v9, v11

    if-eqz v6, :cond_7a

    add-int/lit16 v9, v9, 0x80

    int-to-char v6, v9

    const/16 v13, 0x1e

    goto :goto_2a

    :cond_79
    if-ne v11, v14, :cond_7b

    const/16 v9, 0x1d

    :cond_7a
    const/16 v13, 0x1e

    goto :goto_2c

    :cond_7b
    const/16 v13, 0x1e

    if-ne v11, v13, :cond_7c

    const/4 v6, 0x1

    goto :goto_2d

    :cond_7c
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_7d
    const/4 v12, 0x2

    const/16 v13, 0x1e

    if-eqz v6, :cond_7e

    add-int/lit16 v11, v11, 0x80

    :goto_29
    int-to-char v6, v11

    :goto_2a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    goto :goto_2d

    :cond_7e
    :goto_2b
    int-to-char v9, v11

    :goto_2c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2d
    const/4 v9, 0x0

    goto :goto_2e

    :cond_7f
    const/4 v12, 0x3

    const/16 v13, 0x1e

    if-ge v11, v12, :cond_80

    add-int/lit8 v9, v11, 0x1

    goto :goto_2e

    :cond_80
    sget-object v12, Lc/d/d/t/b/c;->a:[C

    array-length v13, v12

    if-ge v11, v13, :cond_82

    aget-char v11, v12, v11

    if-eqz v6, :cond_81

    add-int/lit16 v11, v11, 0x80

    int-to-char v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    goto :goto_2e

    :cond_81
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2e
    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x8

    const/16 v12, 0xfe

    goto :goto_28

    :cond_82
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_83
    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v10

    if-gtz v10, :cond_73

    :cond_84
    :goto_2f
    move-object v8, v2

    :goto_30
    if-eq v8, v1, :cond_86

    .line 48
    invoke-virtual {v3}, Lc/d/d/s/c;->a()I

    move-result v6

    if-gtz v6, :cond_85

    goto :goto_31

    :cond_85
    const/16 v6, 0x8

    goto/16 :goto_13

    :cond_86
    :goto_31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_87

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_87
    new-instance v1, Lc/d/d/s/e;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_88

    move-object v7, v4

    :cond_88
    invoke-direct {v1, v0, v2, v7, v4}, Lc/d/d/s/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    :cond_89
    move-object/from16 v15, p0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8a
    move-object/from16 v15, p0

    .line 50
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_8b
    move-object/from16 v15, p0

    const/4 v6, 0x4

    const/4 v7, 0x0

    goto/16 :goto_0
.end method
