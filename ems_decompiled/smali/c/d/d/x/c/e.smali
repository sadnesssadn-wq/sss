.class public Lc/d/d/x/c/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/d/x/c/e$b;,
        Lc/d/d/x/c/e$c;
    }
.end annotation


# instance fields
.field public final a:Lc/d/d/s/b;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/d/x/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public final d:[I

.field public final e:Lc/d/d/q;


# direct methods
.method public constructor <init>(Lc/d/d/s/b;Lc/d/d/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/d/x/c/e;->a:Lc/d/d/s/b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/d/d/x/c/e;->b:Ljava/util/List;

    const/4 p1, 0x5

    new-array p1, p1, [I

    iput-object p1, p0, Lc/d/d/x/c/e;->d:[I

    iput-object p2, p0, Lc/d/d/x/c/e;->e:Lc/d/d/q;

    return-void
.end method

.method public static a([II)F
    .locals 1

    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int/2addr p1, v0

    const/4 v0, 0x3

    aget v0, p0, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x2

    aget p0, p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method public static b([I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    aget v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    return v0

    :cond_2
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v5, v1, v4

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v4, v4, v2

    cmpg-float v4, v5, v4

    if-gez v4, :cond_3

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/4 v4, 0x4

    aget p0, p0, v4

    int-to-float p0, p0

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_3

    return v3

    :cond_3
    return v0
.end method


# virtual methods
.method public final c()[I
    .locals 3

    iget-object v0, p0, Lc/d/d/x/c/e;->d:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    return-object v0
.end method

.method public final d([IIIZ)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    add-int/2addr v3, v5

    const/4 v5, 0x2

    aget v6, v1, v5

    add-int/2addr v3, v6

    const/4 v6, 0x3

    aget v7, v1, v6

    add-int/2addr v3, v7

    const/4 v7, 0x4

    aget v8, v1, v7

    add-int/2addr v3, v8

    move/from16 v8, p3

    invoke-static {v1, v8}, Lc/d/d/x/c/e;->a([II)F

    move-result v8

    float-to-int v8, v8

    aget v9, v1, v5

    .line 1
    iget-object v10, v0, Lc/d/d/x/c/e;->a:Lc/d/d/s/b;

    .line 2
    iget v11, v10, Lc/d/d/s/b;->d:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Lc/d/d/x/c/e;->c()[I

    move-result-object v12

    move/from16 v13, p2

    :goto_0
    if-ltz v13, :cond_0

    invoke-virtual {v10, v8, v13}, Lc/d/d/s/b;->b(II)Z

    move-result v14

    if-eqz v14, :cond_0

    aget v14, v12, v5

    add-int/2addr v14, v4

    aput v14, v12, v5

    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    :cond_0
    if-gez v13, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_1
    if-ltz v13, :cond_2

    invoke-virtual {v10, v8, v13}, Lc/d/d/s/b;->b(II)Z

    move-result v15

    if-nez v15, :cond_2

    aget v15, v12, v4

    if-gt v15, v9, :cond_2

    aget v15, v12, v4

    add-int/2addr v15, v4

    aput v15, v12, v4

    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_2
    if-ltz v13, :cond_d

    aget v15, v12, v4

    if-le v15, v9, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_2
    if-ltz v13, :cond_4

    invoke-virtual {v10, v8, v13}, Lc/d/d/s/b;->b(II)Z

    move-result v15

    if-eqz v15, :cond_4

    aget v15, v12, v2

    if-gt v15, v9, :cond_4

    aget v15, v12, v2

    add-int/2addr v15, v4

    aput v15, v12, v2

    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    :cond_4
    aget v13, v12, v2

    if-le v13, v9, :cond_5

    goto/16 :goto_6

    :cond_5
    add-int/lit8 v13, p2, 0x1

    :goto_3
    if-ge v13, v11, :cond_6

    invoke-virtual {v10, v8, v13}, Lc/d/d/s/b;->b(II)Z

    move-result v15

    if-eqz v15, :cond_6

    aget v15, v12, v5

    add-int/2addr v15, v4

    aput v15, v12, v5

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    if-ne v13, v11, :cond_7

    goto :goto_6

    :cond_7
    :goto_4
    if-ge v13, v11, :cond_8

    invoke-virtual {v10, v8, v13}, Lc/d/d/s/b;->b(II)Z

    move-result v15

    if-nez v15, :cond_8

    aget v15, v12, v6

    if-ge v15, v9, :cond_8

    aget v15, v12, v6

    add-int/2addr v15, v4

    aput v15, v12, v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_8
    if-eq v13, v11, :cond_d

    aget v15, v12, v6

    if-lt v15, v9, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    if-ge v13, v11, :cond_a

    invoke-virtual {v10, v8, v13}, Lc/d/d/s/b;->b(II)Z

    move-result v15

    if-eqz v15, :cond_a

    aget v15, v12, v7

    if-ge v15, v9, :cond_a

    aget v15, v12, v7

    add-int/2addr v15, v4

    aput v15, v12, v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_a
    aget v10, v12, v7

    if-lt v10, v9, :cond_b

    goto :goto_6

    :cond_b
    aget v9, v12, v2

    aget v10, v12, v4

    add-int/2addr v9, v10

    aget v10, v12, v5

    add-int/2addr v9, v10

    aget v10, v12, v6

    add-int/2addr v9, v10

    aget v10, v12, v7

    add-int/2addr v9, v10

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x5

    mul-int/lit8 v10, v3, 0x2

    if-lt v9, v10, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v12}, Lc/d/d/x/c/e;->b([I)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {v12, v13}, Lc/d/d/x/c/e;->a([II)F

    move-result v9

    goto :goto_7

    :cond_d
    :goto_6
    const/high16 v9, 0x7fc00000    # Float.NaN

    .line 4
    :goto_7
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_31

    float-to-int v10, v9

    aget v11, v1, v5

    .line 5
    iget-object v12, v0, Lc/d/d/x/c/e;->a:Lc/d/d/s/b;

    .line 6
    iget v13, v12, Lc/d/d/s/b;->c:I

    .line 7
    invoke-virtual/range {p0 .. p0}, Lc/d/d/x/c/e;->c()[I

    move-result-object v15

    move v14, v8

    :goto_8
    if-ltz v14, :cond_e

    invoke-virtual {v12, v14, v10}, Lc/d/d/s/b;->b(II)Z

    move-result v16

    if-eqz v16, :cond_e

    aget v16, v15, v5

    add-int/lit8 v16, v16, 0x1

    aput v16, v15, v5

    add-int/lit8 v14, v14, -0x1

    goto :goto_8

    :cond_e
    if-gez v14, :cond_f

    goto/16 :goto_e

    :cond_f
    :goto_9
    if-ltz v14, :cond_10

    invoke-virtual {v12, v14, v10}, Lc/d/d/s/b;->b(II)Z

    move-result v16

    if-nez v16, :cond_10

    aget v7, v15, v4

    if-gt v7, v11, :cond_10

    aget v7, v15, v4

    add-int/2addr v7, v4

    aput v7, v15, v4

    add-int/lit8 v14, v14, -0x1

    const/4 v7, 0x4

    goto :goto_9

    :cond_10
    if-ltz v14, :cond_1c

    aget v7, v15, v4

    if-le v7, v11, :cond_11

    goto/16 :goto_e

    :cond_11
    :goto_a
    if-ltz v14, :cond_12

    invoke-virtual {v12, v14, v10}, Lc/d/d/s/b;->b(II)Z

    move-result v7

    if-eqz v7, :cond_12

    aget v7, v15, v2

    if-gt v7, v11, :cond_12

    aget v7, v15, v2

    add-int/2addr v7, v4

    aput v7, v15, v2

    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    :cond_12
    aget v7, v15, v2

    if-le v7, v11, :cond_13

    goto/16 :goto_e

    :cond_13
    add-int/2addr v8, v4

    :goto_b
    if-ge v8, v13, :cond_14

    invoke-virtual {v12, v8, v10}, Lc/d/d/s/b;->b(II)Z

    move-result v7

    if-eqz v7, :cond_14

    aget v7, v15, v5

    add-int/2addr v7, v4

    aput v7, v15, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_14
    if-ne v8, v13, :cond_15

    goto :goto_e

    :cond_15
    :goto_c
    if-ge v8, v13, :cond_16

    invoke-virtual {v12, v8, v10}, Lc/d/d/s/b;->b(II)Z

    move-result v7

    if-nez v7, :cond_16

    aget v7, v15, v6

    if-ge v7, v11, :cond_16

    aget v7, v15, v6

    add-int/2addr v7, v4

    aput v7, v15, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_16
    if-eq v8, v13, :cond_1c

    aget v7, v15, v6

    if-lt v7, v11, :cond_17

    goto :goto_e

    :cond_17
    :goto_d
    if-ge v8, v13, :cond_18

    invoke-virtual {v12, v8, v10}, Lc/d/d/s/b;->b(II)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v7, 0x4

    aget v14, v15, v7

    if-ge v14, v11, :cond_19

    aget v14, v15, v7

    add-int/2addr v14, v4

    aput v14, v15, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_18
    const/4 v7, 0x4

    :cond_19
    aget v12, v15, v7

    if-lt v12, v11, :cond_1a

    goto :goto_e

    :cond_1a
    aget v11, v15, v2

    aget v12, v15, v4

    add-int/2addr v11, v12

    aget v12, v15, v5

    add-int/2addr v11, v12

    aget v12, v15, v6

    add-int/2addr v11, v12

    aget v12, v15, v7

    add-int/2addr v11, v12

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x5

    if-lt v7, v3, :cond_1b

    goto :goto_e

    :cond_1b
    invoke-static {v15}, Lc/d/d/x/c/e;->b([I)Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-static {v15, v8}, Lc/d/d/x/c/e;->a([II)F

    move-result v14

    goto :goto_f

    :cond_1c
    :goto_e
    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 8
    :goto_f
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_31

    if-eqz p4, :cond_2b

    float-to-int v7, v14

    aget v1, v1, v5

    .line 9
    invoke-virtual/range {p0 .. p0}, Lc/d/d/x/c/e;->c()[I

    move-result-object v8

    const/4 v11, 0x0

    :goto_10
    if-lt v10, v11, :cond_1d

    if-lt v7, v11, :cond_1d

    iget-object v12, v0, Lc/d/d/x/c/e;->a:Lc/d/d/s/b;

    sub-int v13, v7, v11

    sub-int v15, v10, v11

    invoke-virtual {v12, v13, v15}, Lc/d/d/s/b;->b(II)Z

    move-result v12

    if-eqz v12, :cond_1d

    aget v12, v8, v5

    add-int/2addr v12, v4

    aput v12, v8, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_1d
    if-lt v10, v11, :cond_2a

    if-ge v7, v11, :cond_1e

    goto/16 :goto_16

    :cond_1e
    :goto_11
    if-lt v10, v11, :cond_1f

    if-lt v7, v11, :cond_1f

    iget-object v12, v0, Lc/d/d/x/c/e;->a:Lc/d/d/s/b;

    sub-int v13, v7, v11

    sub-int v15, v10, v11

    invoke-virtual {v12, v13, v15}, Lc/d/d/s/b;->b(II)Z

    move-result v12

    if-nez v12, :cond_1f

    aget v12, v8, v4

    if-gt v12, v1, :cond_1f

    aget v12, v8, v4

    add-int/2addr v12, v4

    aput v12, v8, v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_1f
    if-lt v10, v11, :cond_2a

    if-lt v7, v11, :cond_2a

    aget v12, v8, v4

    if-le v12, v1, :cond_20

    goto/16 :goto_16

    :cond_20
    :goto_12
    if-lt v10, v11, :cond_21

    if-lt v7, v11, :cond_21

    iget-object v12, v0, Lc/d/d/x/c/e;->a:Lc/d/d/s/b;

    sub-int v13, v7, v11

    sub-int v15, v10, v11

    invoke-virtual {v12, v13, v15}, Lc/d/d/s/b;->b(II)Z

    move-result v12

    if-eqz v12, :cond_21

    aget v12, v8, v2

    if-gt v12, v1, :cond_21

    aget v12, v8, v2

    add-int/2addr v12, v4

    aput v12, v8, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_21
    aget v11, v8, v2

    if-le v11, v1, :cond_22

    goto/16 :goto_16

    :cond_22
    iget-object v11, v0, Lc/d/d/x/c/e;->a:Lc/d/d/s/b;

    .line 10
    iget v12, v11, Lc/d/d/s/b;->d:I

    .line 11
    iget v11, v11, Lc/d/d/s/b;->c:I

    const/4 v13, 0x1

    :goto_13
    add-int v15, v10, v13

    if-ge v15, v12, :cond_23

    add-int v2, v7, v13

    if-ge v2, v11, :cond_23

    .line 12
    iget-object v6, v0, Lc/d/d/x/c/e;->a:Lc/d/d/s/b;

    invoke-virtual {v6, v2, v15}, Lc/d/d/s/b;->b(II)Z

    move-result v2

    if-eqz v2, :cond_23

    aget v2, v8, v5

    add-int/2addr v2, v4

    aput v2, v8, v5

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x3

    goto :goto_13

    :cond_23
    if-ge v15, v12, :cond_2a

    add-int v2, v7, v13

    if-lt v2, v11, :cond_24

    goto/16 :goto_16

    :cond_24
    :goto_14
    add-int v2, v10, v13

    if-ge v2, v12, :cond_25

    add-int v6, v7, v13

    if-ge v6, v11, :cond_25

    iget-object v15, v0, Lc/d/d/x/c/e;->a:Lc/d/d/s/b;

    invoke-virtual {v15, v6, v2}, Lc/d/d/s/b;->b(II)Z

    move-result v6

    if-nez v6, :cond_25

    const/4 v6, 0x3

    aget v15, v8, v6

    if-ge v15, v1, :cond_25

    aget v2, v8, v6

    add-int/2addr v2, v4

    aput v2, v8, v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    :cond_25
    if-ge v2, v12, :cond_2a

    add-int v2, v7, v13

    if-ge v2, v11, :cond_2a

    const/4 v2, 0x3

    aget v6, v8, v2

    if-lt v6, v1, :cond_26

    goto :goto_16

    :cond_26
    :goto_15
    add-int v2, v10, v13

    if-ge v2, v12, :cond_27

    add-int v6, v7, v13

    if-ge v6, v11, :cond_27

    iget-object v15, v0, Lc/d/d/x/c/e;->a:Lc/d/d/s/b;

    invoke-virtual {v15, v6, v2}, Lc/d/d/s/b;->b(II)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x4

    aget v6, v8, v2

    if-ge v6, v1, :cond_28

    aget v6, v8, v2

    add-int/2addr v6, v4

    aput v6, v8, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    :cond_27
    const/4 v2, 0x4

    :cond_28
    aget v6, v8, v2

    if-lt v6, v1, :cond_29

    goto :goto_16

    :cond_29
    const/4 v1, 0x0

    aget v6, v8, v1

    aget v1, v8, v4

    add-int/2addr v6, v1

    aget v1, v8, v5

    add-int/2addr v6, v1

    const/4 v1, 0x3

    aget v1, v8, v1

    add-int/2addr v6, v1

    aget v1, v8, v2

    add-int/2addr v6, v1

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v2, v3, 0x2

    if-ge v1, v2, :cond_2a

    invoke-static {v8}, Lc/d/d/x/c/e;->b([I)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_17

    :cond_2a
    :goto_16
    const/4 v1, 0x0

    :goto_17
    if-eqz v1, :cond_31

    :cond_2b
    int-to-float v1, v3

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    .line 13
    :goto_18
    iget-object v3, v0, Lc/d/d/x/c/e;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    iget-object v3, v0, Lc/d/d/x/c/e;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/d/x/c/d;

    .line 14
    iget v5, v3, Lc/d/d/p;->b:F

    sub-float v5, v9, v5

    .line 15
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_2d

    .line 16
    iget v5, v3, Lc/d/d/p;->a:F

    sub-float v5, v14, v5

    .line 17
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_2d

    iget v5, v3, Lc/d/d/x/c/d;->c:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v5, v6

    if-lez v6, :cond_2c

    iget v6, v3, Lc/d/d/x/c/d;->c:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2d

    :cond_2c
    const/4 v5, 0x1

    goto :goto_19

    :cond_2d
    const/4 v5, 0x0

    :goto_19
    if-eqz v5, :cond_2e

    .line 18
    iget-object v5, v0, Lc/d/d/x/c/e;->b:Ljava/util/List;

    .line 19
    iget v6, v3, Lc/d/d/x/c/d;->d:I

    add-int/lit8 v7, v6, 0x1

    int-to-float v6, v6

    .line 20
    iget v8, v3, Lc/d/d/p;->a:F

    mul-float v8, v8, v6

    add-float/2addr v8, v14

    int-to-float v10, v7

    div-float/2addr v8, v10

    .line 21
    iget v11, v3, Lc/d/d/p;->b:F

    mul-float v11, v11, v6

    add-float/2addr v11, v9

    div-float/2addr v11, v10

    .line 22
    iget v3, v3, Lc/d/d/x/c/d;->c:F

    mul-float v6, v6, v3

    add-float/2addr v6, v1

    div-float/2addr v6, v10

    new-instance v3, Lc/d/d/x/c/d;

    invoke-direct {v3, v8, v11, v6, v7}, Lc/d/d/x/c/d;-><init>(FFFI)V

    .line 23
    invoke-interface {v5, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_1a

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2f
    const/4 v2, 0x0

    :goto_1a
    if-nez v2, :cond_30

    new-instance v2, Lc/d/d/x/c/d;

    invoke-direct {v2, v14, v9, v1}, Lc/d/d/x/c/d;-><init>(FFF)V

    iget-object v1, v0, Lc/d/d/x/c/e;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lc/d/d/x/c/e;->e:Lc/d/d/q;

    if-eqz v1, :cond_30

    invoke-interface {v1, v2}, Lc/d/d/q;->a(Lc/d/d/p;)V

    :cond_30
    return v4

    :cond_31
    const/4 v1, 0x0

    return v1
.end method

.method public final e()Z
    .locals 9

    iget-object v0, p0, Lc/d/d/x/c/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lc/d/d/x/c/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/d/d/x/c/d;

    .line 1
    iget v7, v6, Lc/d/d/x/c/d;->d:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 2
    iget v6, v6, Lc/d/d/x/c/d;->c:F

    add-float/2addr v5, v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ge v4, v1, :cond_2

    return v3

    :cond_2
    int-to-float v0, v0

    div-float v0, v5, v0

    .line 3
    iget-object v1, p0, Lc/d/d/x/c/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/d/x/c/d;

    .line 4
    iget v4, v4, Lc/d/d/x/c/d;->c:F

    sub-float/2addr v4, v0

    .line 5
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v2, v4

    goto :goto_1

    :cond_3
    const v0, 0x3d4ccccd    # 0.05f

    mul-float v5, v5, v0

    cmpg-float v0, v2, v5

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    return v3
.end method
