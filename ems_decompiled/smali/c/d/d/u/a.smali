.class public final Lc/d/d/u/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/d/l;


# static fields
.field public static final b:[Lc/d/d/p;


# instance fields
.field public final a:Lc/d/d/u/b/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lc/d/d/p;

    sput-object v0, Lc/d/d/u/a;->b:[Lc/d/d/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/d/u/b/c;

    invoke-direct {v0}, Lc/d/d/u/b/c;-><init>()V

    iput-object v0, p0, Lc/d/d/u/a;->a:Lc/d/d/u/b/c;

    return-void
.end method


# virtual methods
.method public a(Lc/d/d/c;Ljava/util/Map;)Lc/d/d/n;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/d/c;",
            "Ljava/util/Map<",
            "Lc/d/d/e;",
            "*>;)",
            "Lc/d/d/n;"
        }
    .end annotation

    move-object/from16 v0, p2

    if-eqz v0, :cond_1a

    sget-object v1, Lc/d/d/e;->d:Lc/d/d/e;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lc/d/d/c;->a()Lc/d/d/s/b;

    move-result-object v0

    .line 1
    iget v1, v0, Lc/d/d/s/b;->c:I

    iget v2, v0, Lc/d/d/s/b;->d:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    iget v7, v0, Lc/d/d/s/b;->d:I

    const/16 v8, 0x1f

    if-ge v6, v7, :cond_7

    const/4 v7, 0x0

    :goto_1
    iget v9, v0, Lc/d/d/s/b;->e:I

    if-ge v7, v9, :cond_6

    iget-object v10, v0, Lc/d/d/s/b;->f:[I

    mul-int v9, v9, v6

    add-int/2addr v9, v7

    aget v9, v10, v9

    if-eqz v9, :cond_5

    if-ge v6, v2, :cond_0

    move v2, v6

    :cond_0
    if-le v6, v5, :cond_1

    move v5, v6

    :cond_1
    shl-int/lit8 v10, v7, 0x5

    if-ge v10, v1, :cond_3

    const/4 v11, 0x0

    :goto_2
    rsub-int/lit8 v12, v11, 0x1f

    shl-int v12, v9, v12

    if-nez v12, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v11, v10

    if-ge v11, v1, :cond_3

    move v1, v11

    :cond_3
    add-int/lit8 v11, v10, 0x1f

    if-le v11, v3, :cond_5

    const/16 v11, 0x1f

    :goto_3
    ushr-int v12, v9, v11

    if-nez v12, :cond_4

    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_4
    add-int/2addr v10, v11

    if-le v10, v3, :cond_5

    move v3, v10

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-lt v3, v1, :cond_9

    if-ge v5, v2, :cond_8

    goto :goto_4

    :cond_8
    new-array v11, v6, [I

    aput v1, v11, v4

    aput v2, v11, v10

    sub-int/2addr v3, v1

    add-int/2addr v3, v10

    aput v3, v11, v9

    sub-int/2addr v5, v2

    add-int/2addr v5, v10

    aput v5, v11, v7

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_19

    .line 2
    aget v1, v11, v4

    aget v2, v11, v10

    aget v3, v11, v9

    aget v5, v11, v7

    const/16 v11, 0x21

    const/16 v12, 0x1e

    add-int/2addr v12, v8

    .line 3
    div-int/lit8 v12, v12, 0x20

    mul-int/lit8 v8, v12, 0x21

    new-array v8, v8, [I

    const/4 v13, 0x0

    :goto_6
    const/16 v14, 0x1e

    if-ge v13, v11, :cond_c

    mul-int v15, v13, v5

    .line 4
    div-int/lit8 v16, v5, 0x2

    add-int v16, v16, v15

    div-int/lit8 v16, v16, 0x21

    add-int v15, v16, v2

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v14, :cond_b

    mul-int v16, v6, v3

    div-int/lit8 v17, v3, 0x2

    add-int v17, v17, v16

    and-int/lit8 v16, v13, 0x1

    mul-int v16, v16, v3

    div-int/lit8 v16, v16, 0x2

    add-int v16, v16, v17

    div-int/lit8 v16, v16, 0x1e

    add-int v7, v16, v1

    invoke-virtual {v0, v7, v15}, Lc/d/d/s/b;->b(II)Z

    move-result v7

    if-eqz v7, :cond_a

    mul-int v7, v13, v12

    .line 5
    div-int/lit8 v16, v6, 0x20

    add-int v16, v16, v7

    aget v7, v8, v16

    and-int/lit8 v17, v6, 0x1f

    shl-int v17, v10, v17

    or-int v7, v17, v7

    aput v7, v8, v16

    :cond_a
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x3

    goto :goto_7

    :cond_b
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x3

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    .line 6
    iget-object v1, v0, Lc/d/d/u/a;->a:Lc/d/d/u/b/c;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x90

    new-array v3, v2, [B

    const/4 v5, 0x0

    :goto_8
    const/4 v6, 0x5

    if-ge v5, v11, :cond_10

    .line 8
    sget-object v7, Lc/d/d/u/b/a;->a:[[I

    aget-object v7, v7, v5

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v14, :cond_f

    aget v15, v7, v13

    if-ltz v15, :cond_e

    mul-int v16, v5, v12

    .line 9
    div-int/lit8 v17, v13, 0x20

    add-int v17, v17, v16

    aget v16, v8, v17

    and-int/lit8 v17, v13, 0x1f

    ushr-int v16, v16, v17

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_d

    const/16 v16, 0x1

    goto :goto_a

    :cond_d
    const/16 v16, 0x0

    :goto_a
    if-eqz v16, :cond_e

    .line 10
    div-int/lit8 v16, v15, 0x6

    aget-byte v17, v3, v16

    rem-int/lit8 v15, v15, 0x6

    rsub-int/lit8 v15, v15, 0x5

    shl-int v15, v10, v15

    int-to-byte v15, v15

    or-int v15, v15, v17

    int-to-byte v15, v15

    aput-byte v15, v3, v16

    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_10
    const/16 v17, 0x0

    const/16 v18, 0xa

    const/16 v19, 0xa

    const/16 v20, 0x0

    move-object v15, v1

    move-object/from16 v16, v3

    .line 11
    invoke-virtual/range {v15 .. v20}, Lc/d/d/u/b/c;->a([BIIII)V

    aget-byte v5, v3, v4

    and-int/lit8 v5, v5, 0xf

    if-eq v5, v9, :cond_12

    const/4 v7, 0x3

    if-eq v5, v7, :cond_12

    const/4 v7, 0x4

    if-eq v5, v7, :cond_12

    if-ne v5, v6, :cond_11

    const/16 v7, 0x14

    const/16 v8, 0x44

    const/16 v11, 0x38

    const/16 v20, 0x1

    const/16 v17, 0x14

    const/16 v18, 0x44

    const/16 v19, 0x38

    move-object v15, v1

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v20}, Lc/d/d/u/b/c;->a([BIIII)V

    const/16 v20, 0x2

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v11

    invoke-virtual/range {v15 .. v20}, Lc/d/d/u/b/c;->a([BIIII)V

    const/16 v1, 0x4e

    goto :goto_b

    :cond_11
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v1

    throw v1

    :cond_12
    const/16 v7, 0x14

    const/16 v8, 0x54

    const/16 v11, 0x28

    const/16 v20, 0x1

    const/16 v17, 0x14

    const/16 v18, 0x54

    const/16 v19, 0x28

    move-object v15, v1

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v20}, Lc/d/d/u/b/c;->a([BIIII)V

    const/16 v20, 0x2

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v11

    invoke-virtual/range {v15 .. v20}, Lc/d/d/u/b/c;->a([BIIII)V

    const/16 v1, 0x5e

    :goto_b
    new-array v7, v1, [B

    const/16 v8, 0xa

    invoke-static {v3, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v11, 0x14

    sub-int/2addr v1, v8

    invoke-static {v3, v11, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eq v5, v9, :cond_15

    const/4 v2, 0x3

    if-eq v5, v2, :cond_15

    const/4 v2, 0x4

    if-eq v5, v2, :cond_14

    if-eq v5, v6, :cond_13

    goto/16 :goto_f

    :cond_13
    const/16 v2, 0x4d

    goto :goto_c

    :cond_14
    const/16 v2, 0x5d

    :goto_c
    invoke-static {v7, v10, v2}, Lc/d/d/u/b/b;->b([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :cond_15
    const/4 v2, 0x6

    if-ne v5, v9, :cond_16

    new-array v3, v14, [B

    .line 13
    fill-array-data v3, :array_0

    invoke-static {v7, v3}, Lc/d/d/u/b/b;->a([B[B)I

    move-result v3

    .line 14
    new-instance v6, Ljava/text/DecimalFormat;

    new-array v2, v2, [B

    .line 15
    fill-array-data v2, :array_1

    invoke-static {v7, v2}, Lc/d/d/u/b/b;->a([B[B)I

    move-result v2

    const-string v9, "0000000000"

    .line 16
    invoke-virtual {v9, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v2, v3

    invoke-virtual {v6, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_16
    new-array v3, v2, [C

    .line 17
    sget-object v11, Lc/d/d/u/b/b;->a:[Ljava/lang/String;

    aget-object v12, v11, v4

    new-array v13, v2, [B

    fill-array-data v13, :array_2

    invoke-static {v7, v13}, Lc/d/d/u/b/b;->a([B[B)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v3, v4

    aget-object v12, v11, v4

    new-array v13, v2, [B

    fill-array-data v13, :array_3

    invoke-static {v7, v13}, Lc/d/d/u/b/b;->a([B[B)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v3, v10

    aget-object v10, v11, v4

    new-array v12, v2, [B

    fill-array-data v12, :array_4

    invoke-static {v7, v12}, Lc/d/d/u/b/b;->a([B[B)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aput-char v10, v3, v9

    aget-object v9, v11, v4

    new-array v10, v2, [B

    fill-array-data v10, :array_5

    invoke-static {v7, v10}, Lc/d/d/u/b/b;->a([B[B)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x3

    aput-char v9, v3, v10

    aget-object v9, v11, v4

    new-array v10, v2, [B

    fill-array-data v10, :array_6

    invoke-static {v7, v10}, Lc/d/d/u/b/b;->a([B[B)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x4

    aput-char v9, v3, v10

    aget-object v9, v11, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    invoke-static {v7, v2}, Lc/d/d/u/b/b;->a([B[B)I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v3, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 18
    :goto_d
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v6, "000"

    invoke-direct {v3, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-array v6, v8, [B

    .line 19
    fill-array-data v6, :array_8

    invoke-static {v7, v6}, Lc/d/d/u/b/b;->a([B[B)I

    move-result v6

    int-to-long v9, v6

    .line 20
    invoke-virtual {v3, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    new-array v9, v8, [B

    .line 21
    fill-array-data v9, :array_9

    invoke-static {v7, v9}, Lc/d/d/u/b/b;->a([B[B)I

    move-result v9

    int-to-long v9, v9

    .line 22
    invoke-virtual {v3, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x54

    invoke-static {v7, v8, v9}, Lc/d/d/u/b/b;->b([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[)>\u001e01\u001d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/16 v9, 0x1d

    if-eqz v8, :cond_17

    const/16 v4, 0x9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_e

    :cond_17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_e
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    new-instance v3, Lc/d/d/n;

    sget-object v4, Lc/d/d/u/a;->b:[Lc/d/d/p;

    sget-object v5, Lc/d/d/a;->l:Lc/d/d/a;

    invoke-direct {v3, v1, v7, v4, v5}, Lc/d/d/n;-><init>(Ljava/lang/String;[B[Lc/d/d/p;Lc/d/d/a;)V

    if-eqz v2, :cond_18

    sget-object v1, Lc/d/d/o;->f:Lc/d/d/o;

    invoke-virtual {v3, v1, v2}, Lc/d/d/n;->b(Lc/d/d/o;Ljava/lang/Object;)V

    :cond_18
    return-object v3

    :cond_19
    move-object/from16 v0, p0

    .line 24
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 25
    throw v1

    :cond_1a
    move-object/from16 v0, p0

    .line 26
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 27
    goto :goto_11

    :goto_10
    throw v1

    :goto_11
    goto :goto_10

    :array_0
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
    .end array-data

    nop

    :array_6
    .array-data 1
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x35t
        0x36t
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x25t
        0x26t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x31t
        0x32t
        0x33t
        0x34t
    .end array-data
.end method

.method public b()V
    .locals 0

    return-void
.end method
