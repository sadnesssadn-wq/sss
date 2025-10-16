.class public final Lc/d/d/r/d/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/d/r/d/a$a;
    }
.end annotation


# static fields
.field public static final g:[I


# instance fields
.field public final a:Lc/d/d/s/b;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lc/d/d/r/d/a;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xee0
        0x1dc
        0x83b
        0x707
    .end array-data
.end method

.method public constructor <init>(Lc/d/d/s/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    return-void
.end method

.method public static b([Lc/d/d/p;FF)[Lc/d/d/p;
    .locals 10

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    div-float/2addr p2, p1

    const/4 p1, 0x0

    aget-object v1, p0, p1

    .line 1
    iget v1, v1, Lc/d/d/p;->a:F

    const/4 v2, 0x2

    .line 2
    aget-object v3, p0, v2

    .line 3
    iget v3, v3, Lc/d/d/p;->a:F

    sub-float/2addr v1, v3

    .line 4
    aget-object v3, p0, p1

    .line 5
    iget v3, v3, Lc/d/d/p;->b:F

    .line 6
    aget-object v4, p0, v2

    .line 7
    iget v4, v4, Lc/d/d/p;->b:F

    sub-float/2addr v3, v4

    .line 8
    aget-object v4, p0, p1

    .line 9
    iget v4, v4, Lc/d/d/p;->a:F

    .line 10
    aget-object v5, p0, v2

    .line 11
    iget v5, v5, Lc/d/d/p;->a:F

    add-float/2addr v4, v5

    div-float/2addr v4, v0

    .line 12
    aget-object v5, p0, p1

    .line 13
    iget v5, v5, Lc/d/d/p;->b:F

    .line 14
    aget-object v6, p0, v2

    .line 15
    iget v6, v6, Lc/d/d/p;->b:F

    add-float/2addr v5, v6

    div-float/2addr v5, v0

    .line 16
    new-instance v6, Lc/d/d/p;

    mul-float v1, v1, p2

    add-float v7, v4, v1

    mul-float v3, v3, p2

    add-float v8, v5, v3

    invoke-direct {v6, v7, v8}, Lc/d/d/p;-><init>(FF)V

    new-instance v7, Lc/d/d/p;

    sub-float/2addr v4, v1

    sub-float/2addr v5, v3

    invoke-direct {v7, v4, v5}, Lc/d/d/p;-><init>(FF)V

    const/4 v1, 0x1

    aget-object v3, p0, v1

    .line 17
    iget v3, v3, Lc/d/d/p;->a:F

    const/4 v4, 0x3

    .line 18
    aget-object v5, p0, v4

    .line 19
    iget v5, v5, Lc/d/d/p;->a:F

    sub-float/2addr v3, v5

    .line 20
    aget-object v5, p0, v1

    .line 21
    iget v5, v5, Lc/d/d/p;->b:F

    .line 22
    aget-object v8, p0, v4

    .line 23
    iget v8, v8, Lc/d/d/p;->b:F

    sub-float/2addr v5, v8

    .line 24
    aget-object v8, p0, v1

    .line 25
    iget v8, v8, Lc/d/d/p;->a:F

    .line 26
    aget-object v9, p0, v4

    .line 27
    iget v9, v9, Lc/d/d/p;->a:F

    add-float/2addr v8, v9

    div-float/2addr v8, v0

    .line 28
    aget-object v9, p0, v1

    .line 29
    iget v9, v9, Lc/d/d/p;->b:F

    .line 30
    aget-object p0, p0, v4

    .line 31
    iget p0, p0, Lc/d/d/p;->b:F

    add-float/2addr v9, p0

    div-float/2addr v9, v0

    .line 32
    new-instance p0, Lc/d/d/p;

    mul-float v3, v3, p2

    add-float v0, v8, v3

    mul-float p2, p2, v5

    add-float v5, v9, p2

    invoke-direct {p0, v0, v5}, Lc/d/d/p;-><init>(FF)V

    new-instance v0, Lc/d/d/p;

    sub-float/2addr v8, v3

    sub-float/2addr v9, p2

    invoke-direct {v0, v8, v9}, Lc/d/d/p;-><init>(FF)V

    const/4 p2, 0x4

    new-array p2, p2, [Lc/d/d/p;

    aput-object v6, p2, p1

    aput-object p0, p2, v1

    aput-object v7, p2, v2

    aput-object v0, p2, v4

    return-object p2
.end method


# virtual methods
.method public a(Z)Lc/d/d/r/a;
    .locals 34

    move-object/from16 v0, p0

    const/16 v1, 0xa

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 1
    :try_start_0
    new-instance v8, Lc/d/d/s/k/a;

    iget-object v9, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    .line 2
    iget v10, v9, Lc/d/d/s/b;->c:I

    .line 3
    div-int/2addr v10, v4

    .line 4
    iget v11, v9, Lc/d/d/s/b;->d:I

    .line 5
    div-int/2addr v11, v4

    invoke-direct {v8, v9, v1, v10, v11}, Lc/d/d/s/k/a;-><init>(Lc/d/d/s/b;III)V

    .line 6
    invoke-virtual {v8}, Lc/d/d/s/k/a;->b()[Lc/d/d/p;

    move-result-object v8

    aget-object v9, v8, v5

    aget-object v10, v8, v7

    aget-object v11, v8, v4

    aget-object v8, v8, v3
    :try_end_0
    .catch Lc/d/d/j; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_c

    :catch_0
    iget-object v8, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    .line 7
    iget v9, v8, Lc/d/d/s/b;->c:I

    .line 8
    div-int/2addr v9, v4

    .line 9
    iget v8, v8, Lc/d/d/s/b;->d:I

    .line 10
    div-int/2addr v8, v4

    add-int/lit8 v10, v9, 0x7

    add-int/lit8 v11, v8, -0x7

    add-int/2addr v10, v7

    move v13, v10

    move v12, v11

    :goto_0
    add-int/2addr v12, v6

    .line 11
    invoke-virtual {v0, v13, v12}, Lc/d/d/r/d/a;->f(II)Z

    move-result v14

    if-eqz v14, :cond_0

    iget-object v14, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v14, v13, v12}, Lc/d/d/s/b;->b(II)Z

    move-result v14

    if-nez v14, :cond_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v13, v7

    add-int/2addr v12, v7

    :goto_1
    invoke-virtual {v0, v13, v12}, Lc/d/d/r/d/a;->f(II)Z

    move-result v14

    if-eqz v14, :cond_1

    iget-object v14, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v14, v13, v12}, Lc/d/d/s/b;->b(II)Z

    move-result v14

    if-nez v14, :cond_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr v13, v7

    :goto_2
    invoke-virtual {v0, v13, v12}, Lc/d/d/r/d/a;->f(II)Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v14, v13, v12}, Lc/d/d/s/b;->b(II)Z

    move-result v14

    if-nez v14, :cond_2

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_2
    add-int/2addr v12, v7

    .line 12
    new-instance v14, Lc/d/d/p;

    int-to-float v13, v13

    int-to-float v12, v12

    invoke-direct {v14, v13, v12}, Lc/d/d/p;-><init>(FF)V

    add-int/2addr v8, v2

    move v12, v8

    :goto_3
    add-int/2addr v12, v7

    .line 13
    invoke-virtual {v0, v10, v12}, Lc/d/d/r/d/a;->f(II)Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v13, v10, v12}, Lc/d/d/s/b;->b(II)Z

    move-result v13

    if-nez v13, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    sub-int/2addr v10, v7

    sub-int/2addr v12, v7

    :goto_4
    invoke-virtual {v0, v10, v12}, Lc/d/d/r/d/a;->f(II)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v13, v10, v12}, Lc/d/d/s/b;->b(II)Z

    move-result v13

    if-nez v13, :cond_4

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    sub-int/2addr v10, v7

    :goto_5
    invoke-virtual {v0, v10, v12}, Lc/d/d/r/d/a;->f(II)Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v13, v10, v12}, Lc/d/d/s/b;->b(II)Z

    move-result v13

    if-nez v13, :cond_5

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_5
    sub-int/2addr v12, v7

    .line 14
    new-instance v13, Lc/d/d/p;

    int-to-float v10, v10

    int-to-float v12, v12

    invoke-direct {v13, v10, v12}, Lc/d/d/p;-><init>(FF)V

    add-int/lit8 v9, v9, -0x7

    add-int/lit8 v10, v9, -0x1

    :goto_6
    add-int/2addr v8, v7

    .line 15
    invoke-virtual {v0, v10, v8}, Lc/d/d/r/d/a;->f(II)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v12, v10, v8}, Lc/d/d/s/b;->b(II)Z

    move-result v12

    if-nez v12, :cond_6

    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    :cond_6
    add-int/2addr v10, v7

    sub-int/2addr v8, v7

    :goto_7
    invoke-virtual {v0, v10, v8}, Lc/d/d/r/d/a;->f(II)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v12, v10, v8}, Lc/d/d/s/b;->b(II)Z

    move-result v12

    if-nez v12, :cond_7

    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    :cond_7
    add-int/2addr v10, v7

    :goto_8
    invoke-virtual {v0, v10, v8}, Lc/d/d/r/d/a;->f(II)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v12, v10, v8}, Lc/d/d/s/b;->b(II)Z

    move-result v12

    if-nez v12, :cond_8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_8
    sub-int/2addr v8, v7

    .line 16
    new-instance v12, Lc/d/d/p;

    int-to-float v10, v10

    int-to-float v8, v8

    invoke-direct {v12, v10, v8}, Lc/d/d/p;-><init>(FF)V

    :goto_9
    add-int/2addr v9, v6

    add-int/2addr v11, v6

    .line 17
    invoke-virtual {v0, v9, v11}, Lc/d/d/r/d/a;->f(II)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v8, v9, v11}, Lc/d/d/s/b;->b(II)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_9

    :cond_9
    add-int/2addr v9, v7

    add-int/2addr v11, v7

    :goto_a
    invoke-virtual {v0, v9, v11}, Lc/d/d/r/d/a;->f(II)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v8, v9, v11}, Lc/d/d/s/b;->b(II)Z

    move-result v8

    if-nez v8, :cond_a

    add-int/lit8 v9, v9, -0x1

    goto :goto_a

    :cond_a
    add-int/2addr v9, v7

    :goto_b
    invoke-virtual {v0, v9, v11}, Lc/d/d/r/d/a;->f(II)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v8, v9, v11}, Lc/d/d/s/b;->b(II)Z

    move-result v8

    if-nez v8, :cond_b

    add-int/lit8 v11, v11, -0x1

    goto :goto_b

    :cond_b
    add-int/2addr v11, v7

    .line 18
    new-instance v8, Lc/d/d/p;

    int-to-float v9, v9

    int-to-float v10, v11

    invoke-direct {v8, v9, v10}, Lc/d/d/p;-><init>(FF)V

    move-object v11, v12

    move-object v10, v13

    move-object v9, v14

    .line 19
    :goto_c
    iget v12, v9, Lc/d/d/p;->a:F

    iget v13, v8, Lc/d/d/p;->a:F

    add-float/2addr v12, v13

    iget v13, v10, Lc/d/d/p;->a:F

    add-float/2addr v12, v13

    iget v13, v11, Lc/d/d/p;->a:F

    add-float/2addr v12, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float/2addr v12, v13

    .line 20
    invoke-static {v12}, Lc/d/b/u/n;->q(F)I

    move-result v12

    .line 21
    iget v9, v9, Lc/d/d/p;->b:F

    iget v8, v8, Lc/d/d/p;->b:F

    add-float/2addr v9, v8

    iget v8, v10, Lc/d/d/p;->b:F

    add-float/2addr v9, v8

    iget v8, v11, Lc/d/d/p;->b:F

    add-float/2addr v9, v8

    div-float/2addr v9, v13

    .line 22
    invoke-static {v9}, Lc/d/b/u/n;->q(F)I

    move-result v8

    const/16 v9, 0xf

    :try_start_1
    new-instance v10, Lc/d/d/s/k/a;

    iget-object v11, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-direct {v10, v11, v9, v12, v8}, Lc/d/d/s/k/a;-><init>(Lc/d/d/s/b;III)V

    invoke-virtual {v10}, Lc/d/d/s/k/a;->b()[Lc/d/d/p;

    move-result-object v10

    aget-object v11, v10, v5

    aget-object v14, v10, v7

    aget-object v15, v10, v4

    aget-object v8, v10, v3
    :try_end_1
    .catch Lc/d/d/j; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_19

    :catch_1
    add-int/lit8 v10, v12, 0x7

    add-int/lit8 v11, v8, -0x7

    add-int/2addr v10, v7

    move v15, v10

    move v14, v11

    :goto_d
    add-int/2addr v14, v6

    .line 23
    invoke-virtual {v0, v15, v14}, Lc/d/d/r/d/a;->f(II)Z

    move-result v16

    if-eqz v16, :cond_c

    iget-object v9, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v9, v15, v14}, Lc/d/d/s/b;->b(II)Z

    move-result v9

    if-nez v9, :cond_c

    add-int/lit8 v15, v15, 0x1

    const/16 v9, 0xf

    goto :goto_d

    :cond_c
    sub-int/2addr v15, v7

    add-int/2addr v14, v7

    :goto_e
    invoke-virtual {v0, v15, v14}, Lc/d/d/r/d/a;->f(II)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v9, v15, v14}, Lc/d/d/s/b;->b(II)Z

    move-result v9

    if-nez v9, :cond_d

    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    :cond_d
    sub-int/2addr v15, v7

    :goto_f
    invoke-virtual {v0, v15, v14}, Lc/d/d/r/d/a;->f(II)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v9, v15, v14}, Lc/d/d/s/b;->b(II)Z

    move-result v9

    if-nez v9, :cond_e

    add-int/lit8 v14, v14, -0x1

    goto :goto_f

    :cond_e
    add-int/2addr v14, v7

    .line 24
    new-instance v9, Lc/d/d/p;

    int-to-float v15, v15

    int-to-float v14, v14

    invoke-direct {v9, v15, v14}, Lc/d/d/p;-><init>(FF)V

    add-int/2addr v8, v2

    move v14, v8

    :goto_10
    add-int/2addr v14, v7

    .line 25
    invoke-virtual {v0, v10, v14}, Lc/d/d/r/d/a;->f(II)Z

    move-result v15

    if-eqz v15, :cond_f

    iget-object v15, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v15, v10, v14}, Lc/d/d/s/b;->b(II)Z

    move-result v15

    if-nez v15, :cond_f

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_f
    sub-int/2addr v10, v7

    sub-int/2addr v14, v7

    :goto_11
    invoke-virtual {v0, v10, v14}, Lc/d/d/r/d/a;->f(II)Z

    move-result v15

    if-eqz v15, :cond_10

    iget-object v15, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v15, v10, v14}, Lc/d/d/s/b;->b(II)Z

    move-result v15

    if-nez v15, :cond_10

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_10
    sub-int/2addr v10, v7

    :goto_12
    invoke-virtual {v0, v10, v14}, Lc/d/d/r/d/a;->f(II)Z

    move-result v15

    if-eqz v15, :cond_11

    iget-object v15, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v15, v10, v14}, Lc/d/d/s/b;->b(II)Z

    move-result v15

    if-nez v15, :cond_11

    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_11
    sub-int/2addr v14, v7

    .line 26
    new-instance v15, Lc/d/d/p;

    int-to-float v10, v10

    int-to-float v14, v14

    invoke-direct {v15, v10, v14}, Lc/d/d/p;-><init>(FF)V

    add-int/lit8 v12, v12, -0x7

    add-int/lit8 v10, v12, -0x1

    :goto_13
    add-int/2addr v8, v7

    .line 27
    invoke-virtual {v0, v10, v8}, Lc/d/d/r/d/a;->f(II)Z

    move-result v14

    if-eqz v14, :cond_12

    iget-object v14, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v14, v10, v8}, Lc/d/d/s/b;->b(II)Z

    move-result v14

    if-nez v14, :cond_12

    add-int/lit8 v10, v10, -0x1

    goto :goto_13

    :cond_12
    add-int/2addr v10, v7

    sub-int/2addr v8, v7

    :goto_14
    invoke-virtual {v0, v10, v8}, Lc/d/d/r/d/a;->f(II)Z

    move-result v14

    if-eqz v14, :cond_13

    iget-object v14, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v14, v10, v8}, Lc/d/d/s/b;->b(II)Z

    move-result v14

    if-nez v14, :cond_13

    add-int/lit8 v10, v10, -0x1

    goto :goto_14

    :cond_13
    add-int/2addr v10, v7

    :goto_15
    invoke-virtual {v0, v10, v8}, Lc/d/d/r/d/a;->f(II)Z

    move-result v14

    if-eqz v14, :cond_14

    iget-object v14, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v14, v10, v8}, Lc/d/d/s/b;->b(II)Z

    move-result v14

    if-nez v14, :cond_14

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_14
    sub-int/2addr v8, v7

    .line 28
    new-instance v14, Lc/d/d/p;

    int-to-float v10, v10

    int-to-float v8, v8

    invoke-direct {v14, v10, v8}, Lc/d/d/p;-><init>(FF)V

    :goto_16
    add-int/2addr v12, v6

    add-int/2addr v11, v6

    .line 29
    invoke-virtual {v0, v12, v11}, Lc/d/d/r/d/a;->f(II)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v8, v12, v11}, Lc/d/d/s/b;->b(II)Z

    move-result v8

    if-nez v8, :cond_15

    goto :goto_16

    :cond_15
    add-int/2addr v12, v7

    add-int/2addr v11, v7

    :goto_17
    invoke-virtual {v0, v12, v11}, Lc/d/d/r/d/a;->f(II)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v8, v12, v11}, Lc/d/d/s/b;->b(II)Z

    move-result v8

    if-nez v8, :cond_16

    add-int/lit8 v12, v12, -0x1

    goto :goto_17

    :cond_16
    add-int/2addr v12, v7

    :goto_18
    invoke-virtual {v0, v12, v11}, Lc/d/d/r/d/a;->f(II)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v8, v12, v11}, Lc/d/d/s/b;->b(II)Z

    move-result v8

    if-nez v8, :cond_17

    add-int/lit8 v11, v11, -0x1

    goto :goto_18

    :cond_17
    add-int/2addr v11, v7

    .line 30
    new-instance v8, Lc/d/d/p;

    int-to-float v10, v12

    int-to-float v11, v11

    invoke-direct {v8, v10, v11}, Lc/d/d/p;-><init>(FF)V

    move-object v11, v9

    move-object/from16 v33, v15

    move-object v15, v14

    move-object/from16 v14, v33

    .line 31
    :goto_19
    iget v9, v11, Lc/d/d/p;->a:F

    iget v10, v8, Lc/d/d/p;->a:F

    add-float/2addr v9, v10

    iget v10, v14, Lc/d/d/p;->a:F

    add-float/2addr v9, v10

    iget v10, v15, Lc/d/d/p;->a:F

    add-float/2addr v9, v10

    div-float/2addr v9, v13

    .line 32
    invoke-static {v9}, Lc/d/b/u/n;->q(F)I

    move-result v9

    .line 33
    iget v10, v11, Lc/d/d/p;->b:F

    iget v8, v8, Lc/d/d/p;->b:F

    add-float/2addr v10, v8

    iget v8, v14, Lc/d/d/p;->b:F

    add-float/2addr v10, v8

    iget v8, v15, Lc/d/d/p;->b:F

    add-float/2addr v10, v8

    div-float/2addr v10, v13

    .line 34
    invoke-static {v10}, Lc/d/b/u/n;->q(F)I

    move-result v8

    new-instance v10, Lc/d/d/r/d/a$a;

    invoke-direct {v10, v9, v8}, Lc/d/d/r/d/a$a;-><init>(II)V

    .line 35
    iput v7, v0, Lc/d/d/r/d/a;->e:I

    move-object v8, v10

    move-object v9, v8

    move-object v11, v9

    const/4 v12, 0x1

    :goto_1a
    iget v13, v0, Lc/d/d/r/d/a;->e:I

    const/16 v14, 0x9

    if-ge v13, v14, :cond_1d

    invoke-virtual {v0, v10, v12, v7, v6}, Lc/d/d/r/d/a;->e(Lc/d/d/r/d/a$a;ZII)Lc/d/d/r/d/a$a;

    move-result-object v13

    invoke-virtual {v0, v8, v12, v7, v7}, Lc/d/d/r/d/a;->e(Lc/d/d/r/d/a$a;ZII)Lc/d/d/r/d/a$a;

    move-result-object v14

    invoke-virtual {v0, v9, v12, v6, v7}, Lc/d/d/r/d/a;->e(Lc/d/d/r/d/a$a;ZII)Lc/d/d/r/d/a$a;

    move-result-object v15

    invoke-virtual {v0, v11, v12, v6, v6}, Lc/d/d/r/d/a;->e(Lc/d/d/r/d/a$a;ZII)Lc/d/d/r/d/a$a;

    move-result-object v1

    iget v6, v0, Lc/d/d/r/d/a;->e:I

    if-le v6, v4, :cond_1c

    .line 36
    iget v6, v1, Lc/d/d/r/d/a$a;->a:I

    .line 37
    iget v5, v1, Lc/d/d/r/d/a$a;->b:I

    .line 38
    iget v2, v13, Lc/d/d/r/d/a$a;->a:I

    .line 39
    iget v7, v13, Lc/d/d/r/d/a$a;->b:I

    .line 40
    invoke-static {v6, v5, v2, v7}, Lc/d/b/u/n;->h(IIII)F

    move-result v2

    .line 41
    iget v5, v0, Lc/d/d/r/d/a;->e:I

    int-to-float v5, v5

    mul-float v2, v2, v5

    .line 42
    iget v5, v11, Lc/d/d/r/d/a$a;->a:I

    .line 43
    iget v6, v11, Lc/d/d/r/d/a$a;->b:I

    .line 44
    iget v7, v10, Lc/d/d/r/d/a$a;->a:I

    .line 45
    iget v3, v10, Lc/d/d/r/d/a$a;->b:I

    .line 46
    invoke-static {v5, v6, v7, v3}, Lc/d/b/u/n;->h(IIII)F

    move-result v3

    .line 47
    iget v5, v0, Lc/d/d/r/d/a;->e:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    mul-float v3, v3, v5

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    cmpg-double v7, v2, v5

    if-ltz v7, :cond_1d

    const-wide/high16 v5, 0x3ff4000000000000L    # 1.25

    cmpl-double v7, v2, v5

    if-gtz v7, :cond_1d

    .line 48
    new-instance v2, Lc/d/d/r/d/a$a;

    .line 49
    iget v3, v13, Lc/d/d/r/d/a$a;->a:I

    add-int/lit8 v3, v3, -0x3

    .line 50
    iget v5, v13, Lc/d/d/r/d/a$a;->b:I

    const/4 v6, 0x3

    add-int/2addr v5, v6

    .line 51
    invoke-direct {v2, v3, v5}, Lc/d/d/r/d/a$a;-><init>(II)V

    new-instance v3, Lc/d/d/r/d/a$a;

    .line 52
    iget v5, v14, Lc/d/d/r/d/a$a;->a:I

    add-int/lit8 v5, v5, -0x3

    .line 53
    iget v7, v14, Lc/d/d/r/d/a$a;->b:I

    add-int/lit8 v7, v7, -0x3

    .line 54
    invoke-direct {v3, v5, v7}, Lc/d/d/r/d/a$a;-><init>(II)V

    new-instance v5, Lc/d/d/r/d/a$a;

    .line 55
    iget v7, v15, Lc/d/d/r/d/a$a;->a:I

    add-int/2addr v7, v6

    .line 56
    iget v4, v15, Lc/d/d/r/d/a$a;->b:I

    add-int/lit8 v4, v4, -0x3

    .line 57
    invoke-direct {v5, v7, v4}, Lc/d/d/r/d/a$a;-><init>(II)V

    new-instance v4, Lc/d/d/r/d/a$a;

    .line 58
    iget v7, v1, Lc/d/d/r/d/a$a;->a:I

    add-int/2addr v7, v6

    move-object/from16 v17, v13

    .line 59
    iget v13, v1, Lc/d/d/r/d/a$a;->b:I

    add-int/2addr v13, v6

    .line 60
    invoke-direct {v4, v7, v13}, Lc/d/d/r/d/a$a;-><init>(II)V

    invoke-virtual {v0, v4, v2}, Lc/d/d/r/d/a;->c(Lc/d/d/r/d/a$a;Lc/d/d/r/d/a$a;)I

    move-result v6

    if-nez v6, :cond_18

    goto :goto_1b

    :cond_18
    invoke-virtual {v0, v2, v3}, Lc/d/d/r/d/a;->c(Lc/d/d/r/d/a$a;Lc/d/d/r/d/a$a;)I

    move-result v2

    if-eq v2, v6, :cond_19

    goto :goto_1b

    :cond_19
    invoke-virtual {v0, v3, v5}, Lc/d/d/r/d/a;->c(Lc/d/d/r/d/a$a;Lc/d/d/r/d/a$a;)I

    move-result v2

    if-eq v2, v6, :cond_1a

    goto :goto_1b

    :cond_1a
    invoke-virtual {v0, v5, v4}, Lc/d/d/r/d/a;->c(Lc/d/d/r/d/a$a;Lc/d/d/r/d/a$a;)I

    move-result v2

    if-ne v2, v6, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v2, 0x0

    :goto_1c
    if-eqz v2, :cond_1d

    goto :goto_1d

    :cond_1c
    move-object/from16 v17, v13

    :goto_1d
    xor-int/lit8 v12, v12, 0x1

    .line 61
    iget v2, v0, Lc/d/d/r/d/a;->e:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lc/d/d/r/d/a;->e:I

    move-object v11, v1

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v17

    const/16 v1, 0xa

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_1a

    :cond_1d
    iget v1, v0, Lc/d/d/r/d/a;->e:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1f

    const/4 v3, 0x7

    if-ne v1, v3, :cond_1e

    goto :goto_1e

    .line 62
    :cond_1e
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 63
    throw v1

    :cond_1f
    :goto_1e
    if-ne v1, v2, :cond_20

    const/4 v2, 0x1

    goto :goto_1f

    :cond_20
    const/4 v2, 0x0

    :goto_1f
    iput-boolean v2, v0, Lc/d/d/r/d/a;->b:Z

    new-instance v2, Lc/d/d/p;

    .line 64
    iget v3, v10, Lc/d/d/r/d/a$a;->a:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    .line 65
    iget v5, v10, Lc/d/d/r/d/a$a;->b:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    .line 66
    invoke-direct {v2, v3, v5}, Lc/d/d/p;-><init>(FF)V

    new-instance v3, Lc/d/d/p;

    .line 67
    iget v5, v8, Lc/d/d/r/d/a$a;->a:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    .line 68
    iget v6, v8, Lc/d/d/r/d/a$a;->b:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    .line 69
    invoke-direct {v3, v5, v6}, Lc/d/d/p;-><init>(FF)V

    new-instance v5, Lc/d/d/p;

    .line 70
    iget v6, v9, Lc/d/d/r/d/a$a;->a:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    .line 71
    iget v7, v9, Lc/d/d/r/d/a$a;->b:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    .line 72
    invoke-direct {v5, v6, v7}, Lc/d/d/p;-><init>(FF)V

    new-instance v6, Lc/d/d/p;

    .line 73
    iget v7, v11, Lc/d/d/r/d/a$a;->a:I

    int-to-float v7, v7

    sub-float/2addr v7, v4

    .line 74
    iget v8, v11, Lc/d/d/r/d/a$a;->b:I

    int-to-float v8, v8

    sub-float/2addr v8, v4

    .line 75
    invoke-direct {v6, v7, v8}, Lc/d/d/p;-><init>(FF)V

    const/4 v4, 0x4

    new-array v7, v4, [Lc/d/d/p;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v3, v7, v2

    const/4 v2, 0x2

    aput-object v5, v7, v2

    const/4 v3, 0x3

    aput-object v6, v7, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v1, -0x3

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-static {v7, v3, v1}, Lc/d/d/r/d/a;->b([Lc/d/d/p;FF)[Lc/d/d/p;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz p1, :cond_21

    .line 76
    aget-object v5, v1, v3

    aget-object v6, v1, v2

    aput-object v6, v1, v3

    aput-object v5, v1, v2

    .line 77
    :cond_21
    aget-object v5, v1, v3

    invoke-virtual {v0, v5}, Lc/d/d/r/d/a;->g(Lc/d/d/p;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, 0x1

    aget-object v5, v1, v3

    invoke-virtual {v0, v5}, Lc/d/d/r/d/a;->g(Lc/d/d/p;)Z

    move-result v3

    if-eqz v3, :cond_2b

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Lc/d/d/r/d/a;->g(Lc/d/d/p;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, 0x3

    aget-object v5, v1, v3

    invoke-virtual {v0, v5}, Lc/d/d/r/d/a;->g(Lc/d/d/p;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget v3, v0, Lc/d/d/r/d/a;->e:I

    mul-int/lit8 v3, v3, 0x2

    new-array v5, v4, [I

    const/4 v8, 0x0

    aget-object v6, v1, v8

    const/4 v7, 0x1

    aget-object v9, v1, v7

    invoke-virtual {v0, v6, v9, v3}, Lc/d/d/r/d/a;->h(Lc/d/d/p;Lc/d/d/p;I)I

    move-result v6

    aput v6, v5, v8

    aget-object v6, v1, v7

    aget-object v9, v1, v2

    invoke-virtual {v0, v6, v9, v3}, Lc/d/d/r/d/a;->h(Lc/d/d/p;Lc/d/d/p;I)I

    move-result v6

    aput v6, v5, v7

    aget-object v6, v1, v2

    const/4 v7, 0x3

    aget-object v9, v1, v7

    invoke-virtual {v0, v6, v9, v3}, Lc/d/d/r/d/a;->h(Lc/d/d/p;Lc/d/d/p;I)I

    move-result v6

    aput v6, v5, v2

    aget-object v2, v1, v7

    aget-object v6, v1, v8

    invoke-virtual {v0, v2, v6, v3}, Lc/d/d/r/d/a;->h(Lc/d/d/p;Lc/d/d/p;I)I

    move-result v2

    aput v2, v5, v7

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_20
    if-ge v2, v4, :cond_22

    .line 78
    aget v7, v5, v2

    add-int/lit8 v9, v3, -0x2

    shr-int v9, v7, v9

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    and-int/2addr v7, v10

    add-int/2addr v9, v7

    shl-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_22
    and-int/lit8 v2, v6, 0x1

    shl-int/lit8 v2, v2, 0xb

    const/4 v3, 0x1

    shr-int/2addr v6, v3

    add-int/2addr v2, v6

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v4, :cond_2a

    sget-object v6, Lc/d/d/r/d/a;->g:[I

    aget v6, v6, v3

    xor-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_29

    .line 79
    iput v3, v0, Lc/d/d/r/d/a;->f:I

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v4, :cond_24

    iget v7, v0, Lc/d/d/r/d/a;->f:I

    add-int/2addr v7, v6

    rem-int/2addr v7, v4

    aget v7, v5, v7

    iget-boolean v9, v0, Lc/d/d/r/d/a;->b:Z

    if-eqz v9, :cond_23

    const/4 v9, 0x7

    shl-long/2addr v2, v9

    shr-int/lit8 v7, v7, 0x1

    and-int/lit8 v7, v7, 0x7f

    const/16 v10, 0xa

    goto :goto_23

    :cond_23
    const/4 v9, 0x7

    const/16 v10, 0xa

    shl-long/2addr v2, v10

    shr-int/lit8 v11, v7, 0x2

    and-int/lit16 v11, v11, 0x3e0

    shr-int/lit8 v7, v7, 0x1

    and-int/lit8 v7, v7, 0x1f

    add-int/2addr v7, v11

    :goto_23
    int-to-long v11, v7

    add-long/2addr v2, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_24
    const/4 v9, 0x7

    const/16 v10, 0xa

    iget-boolean v5, v0, Lc/d/d/r/d/a;->b:Z

    if-eqz v5, :cond_25

    const/4 v5, 0x2

    goto :goto_24

    :cond_25
    const/4 v5, 0x4

    const/16 v9, 0xa

    :goto_24
    sub-int v6, v9, v5

    .line 80
    new-array v7, v9, [I

    const/4 v11, -0x1

    :goto_25
    add-int/2addr v9, v11

    if-ltz v9, :cond_26

    long-to-int v10, v2

    const/16 v12, 0xf

    and-int/2addr v10, v12

    aput v10, v7, v9

    shr-long/2addr v2, v4

    goto :goto_25

    :cond_26
    :try_start_2
    new-instance v2, Lc/d/d/s/l/c;

    sget-object v3, Lc/d/d/s/l/a;->k:Lc/d/d/s/l/a;

    invoke-direct {v2, v3}, Lc/d/d/s/l/c;-><init>(Lc/d/d/s/l/a;)V

    invoke-virtual {v2, v7, v6}, Lc/d/d/s/l/c;->a([II)V
    :try_end_2
    .catch Lc/d/d/s/l/d; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    :goto_26
    if-ge v8, v5, :cond_27

    shl-int/lit8 v2, v2, 0x4

    aget v3, v7, v8

    add-int/2addr v2, v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 81
    :cond_27
    iget-boolean v3, v0, Lc/d/d/r/d/a;->b:Z

    if-eqz v3, :cond_28

    shr-int/lit8 v3, v2, 0x6

    const/4 v6, 0x1

    add-int/2addr v3, v6

    iput v3, v0, Lc/d/d/r/d/a;->c:I

    and-int/lit8 v2, v2, 0x3f

    goto :goto_27

    :cond_28
    const/4 v6, 0x1

    shr-int/lit8 v3, v2, 0xb

    add-int/2addr v3, v6

    iput v3, v0, Lc/d/d/r/d/a;->c:I

    and-int/lit16 v2, v2, 0x7ff

    :goto_27
    add-int/2addr v2, v6

    iput v2, v0, Lc/d/d/r/d/a;->d:I

    .line 82
    iget-object v2, v0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    iget v3, v0, Lc/d/d/r/d/a;->f:I

    rem-int/lit8 v5, v3, 0x4

    aget-object v5, v1, v5

    add-int/lit8 v6, v3, 0x1

    rem-int/2addr v6, v4

    aget-object v6, v1, v6

    add-int/lit8 v7, v3, 0x2

    rem-int/2addr v7, v4

    aget-object v7, v1, v7

    const/4 v13, 0x3

    add-int/2addr v3, v13

    rem-int/2addr v3, v4

    aget-object v3, v1, v3

    .line 83
    sget-object v4, Lc/d/d/s/f;->a:Lc/d/d/s/f;

    .line 84
    invoke-virtual/range {p0 .. p0}, Lc/d/d/r/d/a;->d()I

    move-result v8

    int-to-float v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, v0, Lc/d/d/r/d/a;->e:I

    int-to-float v10, v10

    sub-float v23, v9, v10

    add-float v24, v9, v10

    .line 85
    iget v9, v5, Lc/d/d/p;->a:F

    .line 86
    iget v5, v5, Lc/d/d/p;->b:F

    .line 87
    iget v10, v6, Lc/d/d/p;->a:F

    .line 88
    iget v6, v6, Lc/d/d/p;->b:F

    .line 89
    iget v11, v7, Lc/d/d/p;->a:F

    .line 90
    iget v7, v7, Lc/d/d/p;->b:F

    .line 91
    iget v12, v3, Lc/d/d/p;->a:F

    .line 92
    iget v3, v3, Lc/d/d/p;->b:F

    move/from16 v17, v23

    move/from16 v18, v23

    move/from16 v19, v24

    move/from16 v20, v23

    move/from16 v21, v24

    move/from16 v22, v24

    move/from16 v25, v9

    move/from16 v26, v5

    move/from16 v27, v10

    move/from16 v28, v6

    move/from16 v29, v11

    move/from16 v30, v7

    move/from16 v31, v12

    move/from16 v32, v3

    .line 93
    invoke-static/range {v17 .. v32}, Lc/d/d/s/i;->a(FFFFFFFFFFFFFFFF)Lc/d/d/s/i;

    move-result-object v3

    invoke-virtual {v4, v2, v8, v8, v3}, Lc/d/d/s/f;->a(Lc/d/d/s/b;IILc/d/d/s/i;)Lc/d/d/s/b;

    move-result-object v10

    .line 94
    iget v2, v0, Lc/d/d/r/d/a;->e:I

    const/4 v7, 0x2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lc/d/d/r/d/a;->d()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lc/d/d/r/d/a;->b([Lc/d/d/p;FF)[Lc/d/d/p;

    move-result-object v11

    .line 95
    new-instance v1, Lc/d/d/r/a;

    iget-boolean v12, v0, Lc/d/d/r/d/a;->b:Z

    iget v13, v0, Lc/d/d/r/d/a;->d:I

    iget v14, v0, Lc/d/d/r/d/a;->c:I

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lc/d/d/r/a;-><init>(Lc/d/d/s/b;[Lc/d/d/p;ZII)V

    return-object v1

    .line 96
    :catch_2
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 97
    throw v1

    :cond_29
    const/4 v6, 0x1

    const/4 v9, 0x7

    const/16 v10, 0xa

    const/4 v11, -0x1

    const/16 v12, 0xf

    const/4 v13, 0x3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_21

    .line 98
    :cond_2a
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 99
    throw v1

    .line 100
    :cond_2b
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 101
    goto :goto_29

    :goto_28
    throw v1

    :goto_29
    goto :goto_28
.end method

.method public final c(Lc/d/d/r/d/a$a;Lc/d/d/r/d/a$a;)I
    .locals 11

    .line 1
    iget v0, p1, Lc/d/d/r/d/a$a;->a:I

    .line 2
    iget v1, p1, Lc/d/d/r/d/a$a;->b:I

    .line 3
    iget v2, p2, Lc/d/d/r/d/a$a;->a:I

    .line 4
    iget v3, p2, Lc/d/d/r/d/a$a;->b:I

    .line 5
    invoke-static {v0, v1, v2, v3}, Lc/d/b/u/n;->h(IIII)F

    move-result v0

    .line 6
    iget v1, p2, Lc/d/d/r/d/a$a;->a:I

    iget v2, p1, Lc/d/d/r/d/a$a;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 7
    iget p2, p2, Lc/d/d/r/d/a$a;->b:I

    iget p1, p1, Lc/d/d/r/d/a$a;->b:I

    sub-int/2addr p2, p1

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float v3, v2

    int-to-float v4, p1

    .line 8
    iget-object v5, p0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v5, v2, p1}, Lc/d/d/s/b;->b(II)Z

    move-result p1

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    add-float/2addr v3, v1

    add-float/2addr v4, p2

    iget-object v8, p0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-static {v3}, Lc/d/b/u/n;->q(F)I

    move-result v9

    invoke-static {v4}, Lc/d/b/u/n;->q(F)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lc/d/d/s/b;->b(II)Z

    move-result v8

    if-eq v8, p1, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    int-to-float p2, v7

    div-float/2addr p2, v0

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_2

    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    return v5

    :cond_2
    const/4 v1, 0x1

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-ne v5, p1, :cond_4

    return v1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public final d()I
    .locals 3

    iget-boolean v0, p0, Lc/d/d/r/d/a;->b:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lc/d/d/r/d/a;->c:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xb

    return v0

    :cond_0
    iget v0, p0, Lc/d/d/r/d/a;->c:I

    if-gt v0, v1, :cond_1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    return v0

    :cond_1
    mul-int/lit8 v2, v0, 0x4

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final e(Lc/d/d/r/d/a$a;ZII)Lc/d/d/r/d/a$a;
    .locals 2

    .line 1
    iget v0, p1, Lc/d/d/r/d/a$a;->a:I

    add-int/2addr v0, p3

    .line 2
    iget p1, p1, Lc/d/d/r/d/a$a;->b:I

    :goto_0
    add-int/2addr p1, p4

    .line 3
    invoke-virtual {p0, v0, p1}, Lc/d/d/r/d/a;->f(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v1, v0, p1}, Lc/d/d/s/b;->b(II)Z

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    sub-int/2addr p1, p4

    :goto_1
    invoke-virtual {p0, v0, p1}, Lc/d/d/r/d/a;->f(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {v1, v0, p1}, Lc/d/d/s/b;->b(II)Z

    move-result v1

    if-ne v1, p2, :cond_1

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p3

    :goto_2
    invoke-virtual {p0, v0, p1}, Lc/d/d/r/d/a;->f(II)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    invoke-virtual {p3, v0, p1}, Lc/d/d/s/b;->b(II)Z

    move-result p3

    if-ne p3, p2, :cond_2

    add-int/2addr p1, p4

    goto :goto_2

    :cond_2
    sub-int/2addr p1, p4

    new-instance p2, Lc/d/d/r/d/a$a;

    invoke-direct {p2, v0, p1}, Lc/d/d/r/d/a$a;-><init>(II)V

    return-object p2
.end method

.method public final f(II)Z
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    .line 1
    iget v1, v0, Lc/d/d/s/b;->c:I

    if-ge p1, v1, :cond_0

    if-lez p2, :cond_0

    .line 2
    iget p1, v0, Lc/d/d/s/b;->d:I

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lc/d/d/p;)Z
    .locals 1

    .line 1
    iget v0, p1, Lc/d/d/p;->a:F

    .line 2
    invoke-static {v0}, Lc/d/b/u/n;->q(F)I

    move-result v0

    .line 3
    iget p1, p1, Lc/d/d/p;->b:F

    .line 4
    invoke-static {p1}, Lc/d/b/u/n;->q(F)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lc/d/d/r/d/a;->f(II)Z

    move-result p1

    return p1
.end method

.method public final h(Lc/d/d/p;Lc/d/d/p;I)I
    .locals 7

    .line 1
    iget v0, p1, Lc/d/d/p;->a:F

    .line 2
    iget v1, p1, Lc/d/d/p;->b:F

    .line 3
    iget v2, p2, Lc/d/d/p;->a:F

    .line 4
    iget v3, p2, Lc/d/d/p;->b:F

    .line 5
    invoke-static {v0, v1, v2, v3}, Lc/d/b/u/n;->g(FFFF)F

    move-result v0

    int-to-float v1, p3

    div-float v1, v0, v1

    .line 6
    iget v2, p1, Lc/d/d/p;->a:F

    .line 7
    iget p1, p1, Lc/d/d/p;->b:F

    .line 8
    iget v3, p2, Lc/d/d/p;->a:F

    sub-float/2addr v3, v2

    mul-float v3, v3, v1

    div-float/2addr v3, v0

    .line 9
    iget p2, p2, Lc/d/d/p;->b:F

    sub-float/2addr p2, p1

    mul-float p2, p2, v1

    div-float/2addr p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 10
    iget-object v4, p0, Lc/d/d/r/d/a;->a:Lc/d/d/s/b;

    int-to-float v5, v0

    mul-float v6, v5, v3

    add-float/2addr v6, v2

    invoke-static {v6}, Lc/d/b/u/n;->q(F)I

    move-result v6

    mul-float v5, v5, p2

    add-float/2addr v5, p1

    invoke-static {v5}, Lc/d/b/u/n;->q(F)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lc/d/d/s/b;->b(II)Z

    move-result v4

    if-eqz v4, :cond_0

    sub-int v4, p3, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    shl-int v4, v5, v4

    or-int/2addr v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
