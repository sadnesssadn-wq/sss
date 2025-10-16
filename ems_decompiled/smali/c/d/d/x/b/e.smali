.class public final Lc/d/d/x/b/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/d/s/l/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/d/s/l/c;

    sget-object v1, Lc/d/d/s/l/a;->l:Lc/d/d/s/l/a;

    invoke-direct {v0, v1}, Lc/d/d/s/l/c;-><init>(Lc/d/d/s/l/a;)V

    iput-object v0, p0, Lc/d/d/x/b/e;->a:Lc/d/d/s/l/c;

    return-void
.end method


# virtual methods
.method public a(Lc/d/d/s/b;Ljava/util/Map;)Lc/d/d/s/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/d/s/b;",
            "Ljava/util/Map<",
            "Lc/d/d/e;",
            "*>;)",
            "Lc/d/d/s/e;"
        }
    .end annotation

    new-instance v0, Lc/d/d/x/b/a;

    invoke-direct {v0, p1}, Lc/d/d/x/b/a;-><init>(Lc/d/d/s/b;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p2}, Lc/d/d/x/b/e;->b(Lc/d/d/x/b/a;Ljava/util/Map;)Lc/d/d/s/e;

    move-result-object p1
    :try_end_0
    .catch Lc/d/d/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lc/d/d/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, p1

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lc/d/d/x/b/a;->e()V

    .line 1
    iput-object p1, v0, Lc/d/d/x/b/a;->b:Lc/d/d/x/b/j;

    iput-object p1, v0, Lc/d/d/x/b/a;->c:Lc/d/d/x/b/g;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lc/d/d/x/b/a;->d:Z

    .line 2
    invoke-virtual {v0}, Lc/d/d/x/b/a;->d()Lc/d/d/x/b/j;

    invoke-virtual {v0}, Lc/d/d/x/b/a;->c()Lc/d/d/x/b/g;

    invoke-virtual {v0}, Lc/d/d/x/b/a;->b()V

    invoke-virtual {p0, v0, p2}, Lc/d/d/x/b/e;->b(Lc/d/d/x/b/a;Ljava/util/Map;)Lc/d/d/s/e;

    move-result-object p2

    new-instance v0, Lc/d/d/x/b/i;

    invoke-direct {v0, p1}, Lc/d/d/x/b/i;-><init>(Z)V

    .line 3
    iput-object v0, p2, Lc/d/d/s/e;->f:Ljava/lang/Object;
    :try_end_1
    .catch Lc/d/d/f; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lc/d/d/d; {:try_start_1 .. :try_end_1} :catch_2

    return-object p2

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    .line 4
    throw v2

    :cond_0
    throw p1

    :cond_1
    throw v1
.end method

.method public final b(Lc/d/d/x/b/a;Ljava/util/Map;)Lc/d/d/s/e;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/d/x/b/a;",
            "Ljava/util/Map<",
            "Lc/d/d/e;",
            "*>;)",
            "Lc/d/d/s/e;"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lc/d/d/x/b/a;->d()Lc/d/d/x/b/j;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lc/d/d/x/b/a;->c()Lc/d/d/x/b/g;

    move-result-object v2

    .line 1
    iget-object v2, v2, Lc/d/d/x/b/g;->a:Lc/d/d/x/b/f;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lc/d/d/x/b/a;->c()Lc/d/d/x/b/g;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lc/d/d/x/b/a;->d()Lc/d/d/x/b/j;

    move-result-object v4

    invoke-static {}, Lc/d/d/x/b/c;->values()[Lc/d/d/x/b/c;

    move-result-object v5

    .line 3
    iget-byte v3, v3, Lc/d/d/x/b/g;->b:B

    .line 4
    aget-object v3, v5, v3

    iget-object v5, v0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    .line 5
    iget v6, v5, Lc/d/d/s/b;->d:I

    .line 6
    invoke-virtual {v3, v5, v6}, Lc/d/d/x/b/c;->d(Lc/d/d/s/b;I)V

    .line 7
    invoke-virtual {v4}, Lc/d/d/x/b/j;->c()I

    move-result v3

    new-instance v5, Lc/d/d/s/b;

    .line 8
    invoke-direct {v5, v3, v3}, Lc/d/d/s/b;-><init>(II)V

    const/4 v7, 0x0

    const/16 v8, 0x9

    .line 9
    invoke-virtual {v5, v7, v7, v8, v8}, Lc/d/d/s/b;->h(IIII)V

    add-int/lit8 v9, v3, -0x8

    const/16 v10, 0x8

    invoke-virtual {v5, v9, v7, v10, v8}, Lc/d/d/s/b;->h(IIII)V

    invoke-virtual {v5, v7, v9, v8, v10}, Lc/d/d/s/b;->h(IIII)V

    iget-object v9, v4, Lc/d/d/x/b/j;->b:[I

    array-length v9, v9

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x5

    if-ge v11, v9, :cond_4

    iget-object v13, v4, Lc/d/d/x/b/j;->b:[I

    aget v13, v13, v11

    add-int/lit8 v13, v13, -0x2

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v9, :cond_3

    if-nez v11, :cond_0

    if-eqz v14, :cond_2

    add-int/lit8 v15, v9, -0x1

    if-eq v14, v15, :cond_2

    :cond_0
    add-int/lit8 v15, v9, -0x1

    if-ne v11, v15, :cond_1

    if-eqz v14, :cond_2

    :cond_1
    iget-object v15, v4, Lc/d/d/x/b/j;->b:[I

    aget v15, v15, v14

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v5, v15, v13, v12, v12}, Lc/d/d/s/b;->h(IIII)V

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v9, v3, -0x11

    const/4 v11, 0x6

    const/4 v13, 0x1

    invoke-virtual {v5, v11, v8, v13, v9}, Lc/d/d/s/b;->h(IIII)V

    invoke-virtual {v5, v8, v11, v9, v13}, Lc/d/d/s/b;->h(IIII)V

    iget v9, v4, Lc/d/d/x/b/j;->a:I

    const/4 v14, 0x3

    if-le v9, v11, :cond_5

    add-int/lit8 v3, v3, -0xb

    invoke-virtual {v5, v3, v7, v14, v11}, Lc/d/d/s/b;->h(IIII)V

    invoke-virtual {v5, v7, v3, v11, v14}, Lc/d/d/s/b;->h(IIII)V

    .line 10
    :cond_5
    iget v3, v4, Lc/d/d/x/b/j;->d:I

    .line 11
    new-array v9, v3, [B

    add-int/lit8 v15, v6, -0x1

    move v8, v15

    const/4 v12, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2
    const/4 v14, 0x2

    if-lez v8, :cond_d

    if-ne v8, v11, :cond_6

    add-int/lit8 v8, v8, -0x1

    :cond_6
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v6, :cond_c

    if-eqz v16, :cond_7

    sub-int v20, v15, v11

    move/from16 v13, v20

    goto :goto_4

    :cond_7
    move v13, v11

    :goto_4
    if-ge v7, v14, :cond_b

    sub-int v14, v8, v7

    invoke-virtual {v5, v14, v13}, Lc/d/d/s/b;->b(II)Z

    move-result v22

    if-nez v22, :cond_a

    add-int/lit8 v10, v17, 0x1

    shl-int/lit8 v17, v18, 0x1

    move-object/from16 v23, v5

    iget-object v5, v0, Lc/d/d/x/b/a;->a:Lc/d/d/s/b;

    invoke-virtual {v5, v14, v13}, Lc/d/d/s/b;->b(II)Z

    move-result v5

    if-eqz v5, :cond_8

    or-int/lit8 v5, v17, 0x1

    goto :goto_5

    :cond_8
    move/from16 v5, v17

    :goto_5
    const/16 v14, 0x8

    if-ne v10, v14, :cond_9

    add-int/lit8 v10, v12, 0x1

    int-to-byte v5, v5

    aput-byte v5, v9, v12

    move v12, v10

    const/16 v17, 0x0

    const/16 v18, 0x0

    goto :goto_6

    :cond_9
    move/from16 v18, v5

    move/from16 v17, v10

    goto :goto_6

    :cond_a
    move-object/from16 v23, v5

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v23

    const/16 v10, 0x8

    const/4 v14, 0x2

    goto :goto_4

    :cond_b
    move-object/from16 v23, v5

    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    const/16 v10, 0x8

    const/4 v13, 0x1

    const/4 v14, 0x2

    goto :goto_3

    :cond_c
    move-object/from16 v23, v5

    xor-int/lit8 v16, v16, 0x1

    add-int/lit8 v8, v8, -0x2

    const/4 v7, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x6

    const/4 v13, 0x1

    goto :goto_2

    .line 12
    :cond_d
    iget v0, v4, Lc/d/d/x/b/j;->d:I

    if-ne v12, v0, :cond_3b

    .line 13
    iget v0, v1, Lc/d/d/x/b/j;->d:I

    if-ne v3, v0, :cond_3a

    .line 14
    iget-object v0, v1, Lc/d/d/x/b/j;->c:[Lc/d/d/x/b/j$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    .line 15
    iget-object v3, v0, Lc/d/d/x/b/j$b;->b:[Lc/d/d/x/b/j$a;

    .line 16
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_7
    if-ge v5, v4, :cond_e

    aget-object v7, v3, v5

    .line 17
    iget v7, v7, Lc/d/d/x/b/j$a;->a:I

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 18
    :cond_e
    new-array v4, v6, [Lc/d/d/x/b/b;

    array-length v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_8
    if-ge v7, v5, :cond_10

    aget-object v10, v3, v7

    const/4 v11, 0x0

    .line 19
    :goto_9
    iget v12, v10, Lc/d/d/x/b/j$a;->a:I

    if-ge v11, v12, :cond_f

    .line 20
    iget v12, v10, Lc/d/d/x/b/j$a;->b:I

    .line 21
    iget v13, v0, Lc/d/d/x/b/j$b;->a:I

    add-int/2addr v13, v12

    add-int/lit8 v14, v8, 0x1

    .line 22
    new-instance v15, Lc/d/d/x/b/b;

    new-array v13, v13, [B

    invoke-direct {v15, v12, v13}, Lc/d/d/x/b/b;-><init>(I[B)V

    aput-object v15, v4, v8

    add-int/lit8 v11, v11, 0x1

    move v8, v14

    goto :goto_9

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_10
    const/4 v7, 0x0

    aget-object v3, v4, v7

    iget-object v3, v3, Lc/d/d/x/b/b;->b:[B

    array-length v3, v3

    add-int/lit8 v5, v6, -0x1

    :goto_a
    if-ltz v5, :cond_11

    aget-object v7, v4, v5

    iget-object v7, v7, Lc/d/d/x/b/b;->b:[B

    array-length v7, v7

    if-eq v7, v3, :cond_11

    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    :cond_11
    const/4 v7, 0x1

    add-int/2addr v5, v7

    .line 23
    iget v0, v0, Lc/d/d/x/b/j$b;->a:I

    sub-int/2addr v3, v0

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v3, :cond_13

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v8, :cond_12

    .line 24
    aget-object v11, v4, v10

    iget-object v11, v11, Lc/d/d/x/b/b;->b:[B

    add-int/lit8 v12, v0, 0x1

    aget-byte v0, v9, v0

    aput-byte v0, v11, v7

    add-int/lit8 v10, v10, 0x1

    move v0, v12

    goto :goto_c

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_13
    move v7, v5

    :goto_d
    if-ge v7, v8, :cond_14

    aget-object v10, v4, v7

    iget-object v10, v10, Lc/d/d/x/b/b;->b:[B

    add-int/lit8 v11, v0, 0x1

    aget-byte v0, v9, v0

    aput-byte v0, v10, v3

    add-int/lit8 v7, v7, 0x1

    move v0, v11

    goto :goto_d

    :cond_14
    const/4 v7, 0x0

    aget-object v10, v4, v7

    iget-object v10, v10, Lc/d/d/x/b/b;->b:[B

    array-length v10, v10

    :goto_e
    if-ge v3, v10, :cond_17

    const/4 v11, 0x0

    :goto_f
    if-ge v11, v8, :cond_16

    if-ge v11, v5, :cond_15

    move v12, v3

    goto :goto_10

    :cond_15
    add-int/lit8 v12, v3, 0x1

    :goto_10
    aget-object v13, v4, v11

    iget-object v13, v13, Lc/d/d/x/b/b;->b:[B

    add-int/lit8 v14, v0, 0x1

    aget-byte v0, v9, v0

    aput-byte v0, v13, v12

    add-int/lit8 v11, v11, 0x1

    move v0, v14

    goto :goto_f

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_17
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v0, v6, :cond_18

    .line 25
    aget-object v5, v4, v0

    .line 26
    iget v5, v5, Lc/d/d/x/b/b;->a:I

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 27
    :cond_18
    new-array v9, v3, [B

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v0, v6, :cond_1c

    aget-object v5, v4, v0

    .line 28
    iget-object v8, v5, Lc/d/d/x/b/b;->b:[B

    .line 29
    iget v5, v5, Lc/d/d/x/b/b;->a:I

    .line 30
    array-length v10, v8

    new-array v11, v10, [I

    const/4 v12, 0x0

    :goto_13
    if-ge v12, v10, :cond_19

    aget-byte v13, v8, v12

    and-int/lit16 v13, v13, 0xff

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    :cond_19
    move-object/from16 v15, p0

    :try_start_0
    iget-object v10, v15, Lc/d/d/x/b/e;->a:Lc/d/d/s/l/c;

    array-length v12, v8

    sub-int/2addr v12, v5

    invoke-virtual {v10, v11, v12}, Lc/d/d/s/l/c;->a([II)V
    :try_end_0
    .catch Lc/d/d/s/l/d; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v5, :cond_1a

    aget v12, v11, v10

    int-to-byte v12, v12

    aput-byte v12, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_1a
    const/4 v10, 0x0

    :goto_15
    if-ge v10, v5, :cond_1b

    add-int/lit8 v11, v3, 0x1

    .line 31
    aget-byte v12, v8, v10

    aput-byte v12, v9, v3

    add-int/lit8 v10, v10, 0x1

    move v3, v11

    goto :goto_15

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 32
    :catch_0
    invoke-static {}, Lc/d/d/d;->a()Lc/d/d/d;

    move-result-object v0

    throw v0

    :cond_1c
    move-object/from16 v15, p0

    .line 33
    sget-object v0, Lc/d/d/x/b/d;->a:[C

    sget-object v0, Lc/d/d/x/b/h;->m:Lc/d/d/x/b/h;

    sget-object v3, Lc/d/d/x/b/h;->l:Lc/d/d/x/b/h;

    sget-object v4, Lc/d/d/x/b/h;->j:Lc/d/d/x/b/h;

    sget-object v5, Lc/d/d/x/b/h;->i:Lc/d/d/x/b/h;

    sget-object v6, Lc/d/d/x/b/h;->k:Lc/d/d/x/b/h;

    sget-object v8, Lc/d/d/x/b/h;->h:Lc/d/d/x/b/h;

    sget-object v10, Lc/d/d/x/b/h;->g:Lc/d/d/x/b/h;

    sget-object v11, Lc/d/d/x/b/h;->f:Lc/d/d/x/b/h;

    sget-object v12, Lc/d/d/x/b/h;->e:Lc/d/d/x/b/h;

    sget-object v13, Lc/d/d/x/b/h;->d:Lc/d/d/x/b/h;

    new-instance v14, Lc/d/d/s/c;

    invoke-direct {v14, v9}, Lc/d/d/s/c;-><init>([B)V

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v15, 0x32

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v16, v9

    const/4 v9, 0x1

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v17, -0x1

    move-object/from16 v21, v2

    const/4 v9, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    :goto_16
    :try_start_1
    invoke-virtual {v14}, Lc/d/d/s/c;->a()I

    move-result v2

    move-object/from16 v29, v4

    const/4 v4, 0x4

    if-ge v2, v4, :cond_1d

    goto :goto_17

    :cond_1d
    invoke-virtual {v14, v4}, Lc/d/d/s/c;->b(I)I

    move-result v2

    if-eqz v2, :cond_27

    const/4 v4, 0x1

    if-eq v2, v4, :cond_26

    const/4 v4, 0x2

    if-eq v2, v4, :cond_25

    const/4 v4, 0x3

    if-eq v2, v4, :cond_24

    const/4 v4, 0x4

    if-eq v2, v4, :cond_23

    const/4 v4, 0x5

    if-eq v2, v4, :cond_22

    const/4 v4, 0x7

    if-eq v2, v4, :cond_21

    const/16 v4, 0x8

    if-eq v2, v4, :cond_20

    const/16 v4, 0x9

    if-eq v2, v4, :cond_1f

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1e

    move-object v2, v0

    goto :goto_18

    .line 34
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1f
    move-object v2, v3

    goto :goto_18

    :cond_20
    move-object/from16 v2, v29

    goto :goto_18

    :cond_21
    move-object v2, v5

    goto :goto_18

    :cond_22
    move-object v2, v6

    goto :goto_18

    :cond_23
    move-object v2, v8

    goto :goto_18

    :cond_24
    move-object v2, v10

    goto :goto_18

    :cond_25
    move-object v2, v11

    goto :goto_18

    :cond_26
    move-object v2, v12

    goto :goto_18

    :cond_27
    :goto_17
    move-object v2, v13

    :goto_18
    if-eq v2, v13, :cond_37

    if-eq v2, v6, :cond_36

    if-ne v2, v3, :cond_28

    goto/16 :goto_1c

    :cond_28
    const/16 v4, 0x10

    if-ne v2, v10, :cond_2a

    move-object/from16 v30, v3

    .line 35
    invoke-virtual {v14}, Lc/d/d/s/c;->a()I

    move-result v3

    if-lt v3, v4, :cond_29

    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Lc/d/d/s/c;->b(I)I

    move-result v17

    invoke-virtual {v14, v3}, Lc/d/d/s/c;->b(I)I

    move-result v18

    goto/16 :goto_1d

    :cond_29
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_2a
    move-object/from16 v30, v3

    if-ne v2, v5, :cond_2f

    const/16 v3, 0x8

    .line 36
    invoke-virtual {v14, v3}, Lc/d/d/s/c;->b(I)I

    move-result v4

    and-int/lit16 v3, v4, 0x80

    if-nez v3, :cond_2b

    and-int/lit8 v3, v4, 0x7f

    move-object/from16 v31, v5

    goto :goto_1a

    :cond_2b
    and-int/lit16 v3, v4, 0xc0

    move-object/from16 v31, v5

    const/16 v5, 0x80

    if-ne v3, v5, :cond_2c

    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Lc/d/d/s/c;->b(I)I

    move-result v5

    and-int/lit8 v4, v4, 0x3f

    goto :goto_19

    :cond_2c
    const/16 v3, 0x8

    and-int/lit16 v5, v4, 0xe0

    const/16 v3, 0xc0

    if-ne v5, v3, :cond_2e

    const/16 v3, 0x10

    invoke-virtual {v14, v3}, Lc/d/d/s/c;->b(I)I

    move-result v5

    and-int/lit8 v4, v4, 0x1f

    :goto_19
    shl-int v3, v4, v3

    or-int/2addr v3, v5

    .line 37
    :goto_1a
    invoke-static {v3}, Lc/d/d/s/d;->a(I)Lc/d/d/s/d;

    move-result-object v19

    if-eqz v19, :cond_2d

    goto/16 :goto_1e

    :cond_2d
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    .line 38
    :cond_2e
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    :cond_2f
    move-object/from16 v31, v5

    if-ne v2, v0, :cond_30

    const/4 v3, 0x4

    .line 39
    invoke-virtual {v14, v3}, Lc/d/d/s/c;->b(I)I

    move-result v3

    invoke-virtual {v2, v1}, Lc/d/d/x/b/h;->a(Lc/d/d/x/b/j;)I

    move-result v4

    invoke-virtual {v14, v4}, Lc/d/d/s/c;->b(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_33

    invoke-static {v14, v7, v4}, Lc/d/d/x/b/d;->c(Lc/d/d/s/c;Ljava/lang/StringBuilder;I)V

    goto :goto_1b

    :cond_30
    const/4 v5, 0x1

    invoke-virtual {v2, v1}, Lc/d/d/x/b/h;->a(Lc/d/d/x/b/j;)I

    move-result v3

    invoke-virtual {v14, v3}, Lc/d/d/s/c;->b(I)I

    move-result v3

    if-ne v2, v12, :cond_31

    invoke-static {v14, v7, v3}, Lc/d/d/x/b/d;->e(Lc/d/d/s/c;Ljava/lang/StringBuilder;I)V

    goto :goto_1b

    :cond_31
    if-ne v2, v11, :cond_32

    invoke-static {v14, v7, v3, v9}, Lc/d/d/x/b/d;->a(Lc/d/d/s/c;Ljava/lang/StringBuilder;IZ)V

    goto :goto_1b

    :cond_32
    if-ne v2, v8, :cond_34

    move-object/from16 v23, v14

    move-object/from16 v24, v7

    move/from16 v25, v3

    move-object/from16 v26, v19

    move-object/from16 v27, v15

    move-object/from16 v28, p2

    invoke-static/range {v23 .. v28}, Lc/d/d/x/b/d;->b(Lc/d/d/s/c;Ljava/lang/StringBuilder;ILc/d/d/s/d;Ljava/util/Collection;Ljava/util/Map;)V

    :cond_33
    :goto_1b
    move-object/from16 v4, v29

    goto :goto_1f

    :cond_34
    move-object/from16 v4, v29

    if-ne v2, v4, :cond_35

    invoke-static {v14, v7, v3}, Lc/d/d/x/b/d;->d(Lc/d/d/s/c;Ljava/lang/StringBuilder;I)V

    goto :goto_1f

    :cond_35
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_36
    :goto_1c
    move-object/from16 v30, v3

    move-object/from16 v31, v5

    move-object/from16 v4, v29

    const/4 v5, 0x1

    const/4 v9, 0x1

    goto :goto_1f

    :cond_37
    move-object/from16 v30, v3

    :goto_1d
    move-object/from16 v31, v5

    :goto_1e
    move-object/from16 v4, v29

    const/4 v5, 0x1

    :goto_1f
    if-ne v2, v13, :cond_39

    new-instance v0, Lc/d/d/s/e;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v11, 0x0

    goto :goto_20

    :cond_38
    move-object v11, v15

    :goto_20
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v8, v0

    move-object/from16 v9, v16

    move/from16 v13, v17

    move/from16 v14, v18

    invoke-direct/range {v8 .. v14}, Lc/d/d/s/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-object v0

    :cond_39
    move-object/from16 v3, v30

    move-object/from16 v5, v31

    goto/16 :goto_16

    :catch_1
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    throw v0

    .line 40
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 41
    :cond_3b
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v0

    goto :goto_22

    :goto_21
    throw v0

    :goto_22
    goto :goto_21
.end method
