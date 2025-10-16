.class public Lc/c/b/a/j/h;
.super Lc/c/b/a/j/b;
.source ""


# instance fields
.field public m:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lc/c/b/a/g/a/a;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc/c/b/a/j/b;-><init>(Lc/c/b/a/g/a/a;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/h;->m:Landroid/graphics/RectF;

    iget-object p1, p0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public e(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-virtual {v0, v1}, Lc/c/b/a/j/h;->g(Lc/c/b/a/g/a/e;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v1}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v1

    .line 1
    iget-object v8, v1, Lc/c/b/a/d/l;->i:Ljava/util/List;

    const/high16 v1, 0x40a00000    # 5.0f

    .line 2
    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v9

    iget-object v1, v0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v1}, Lc/c/b/a/g/a/a;->d()Z

    move-result v10

    const/4 v12, 0x0

    :goto_0
    iget-object v1, v0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v1}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/b/a/d/l;->d()I

    move-result v1

    if-ge v12, v1, :cond_18

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lc/c/b/a/g/b/a;

    invoke-virtual {v0, v13}, Lc/c/b/a/j/c;->i(Lc/c/b/a/g/b/e;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v21, v8

    move/from16 v20, v9

    move/from16 v19, v10

    move/from16 v22, v12

    goto/16 :goto_11

    :cond_0
    iget-object v1, v0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v13}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v2

    invoke-interface {v1, v2}, Lc/c/b/a/g/a/b;->b(Lc/c/b/a/c/j$a;)Z

    move-result v14

    invoke-virtual {v0, v13}, Lc/c/b/a/j/g;->a(Lc/c/b/a/g/b/e;)V

    iget-object v1, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    const-string v2, "10"

    invoke-static {v1, v2}, Lc/c/b/a/k/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v15, 0x40000000    # 2.0f

    div-float v16, v1, v15

    invoke-interface {v13}, Lc/c/b/a/g/b/e;->x0()Lc/c/b/a/e/e;

    move-result-object v6

    iget-object v1, v0, Lc/c/b/a/j/b;->i:[Lc/c/b/a/b/a;

    aget-object v5, v1, v12

    iget-object v1, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13}, Lc/c/b/a/g/b/e;->z0()Lc/c/b/a/k/e;

    move-result-object v1

    invoke-static {v1}, Lc/c/b/a/k/e;->c(Lc/c/b/a/k/e;)Lc/c/b/a/k/e;

    move-result-object v4

    iget v1, v4, Lc/c/b/a/k/e;->b:F

    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v1

    iput v1, v4, Lc/c/b/a/k/e;->b:F

    iget v1, v4, Lc/c/b/a/k/e;->c:F

    invoke-static {v1}, Lc/c/b/a/k/i;->d(F)F

    move-result v1

    iput v1, v4, Lc/c/b/a/k/e;->c:F

    invoke-interface {v13}, Lc/c/b/a/g/b/a;->i0()Z

    move-result v1

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    if-nez v1, :cond_c

    const/4 v3, 0x0

    :goto_1
    int-to-float v1, v3

    iget-object v2, v5, Lc/c/b/a/b/a;->b:[F

    array-length v2, v2

    int-to-float v2, v2

    iget-object v11, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    mul-float v2, v2, v17

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    iget-object v1, v5, Lc/c/b/a/b/a;->b:[F

    add-int/lit8 v2, v3, 0x1

    aget v11, v1, v2

    add-int/lit8 v19, v3, 0x3

    aget v19, v1, v19

    add-float v11, v11, v19

    div-float/2addr v11, v15

    iget-object v15, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    aget v1, v1, v2

    invoke-virtual {v15, v1}, Lc/c/b/a/k/j;->g(F)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v1, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v15, v5, Lc/c/b/a/b/a;->b:[F

    aget v15, v15, v3

    invoke-virtual {v1, v15}, Lc/c/b/a/k/j;->h(F)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v15, v5, Lc/c/b/a/b/a;->b:[F

    aget v2, v15, v2

    invoke-virtual {v1, v2}, Lc/c/b/a/k/j;->d(F)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    move v15, v3

    move-object v11, v5

    move-object/from16 v21, v8

    move/from16 v22, v12

    move/from16 v25, v14

    move-object v8, v4

    move-object v12, v6

    goto/16 :goto_8

    :cond_3
    div-int/lit8 v1, v3, 0x4

    invoke-interface {v13, v1}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v1

    check-cast v1, Lc/c/b/a/d/c;

    .line 3
    iget v2, v1, Lc/c/b/a/d/g;->c:F

    .line 4
    invoke-virtual {v6, v1}, Lc/c/b/a/e/e;->a(Lc/c/b/a/d/c;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v6

    iget-object v6, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-static {v6, v15}, Lc/c/b/a/k/i;->c(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v21, v8

    if-eqz v10, :cond_4

    move v8, v9

    goto :goto_3

    :cond_4
    add-float v8, v6, v9

    neg-float v8, v8

    :goto_3
    move/from16 v22, v12

    if-eqz v10, :cond_5

    add-float v12, v6, v9

    neg-float v12, v12

    goto :goto_4

    :cond_5
    move v12, v9

    :goto_4
    if-eqz v14, :cond_6

    neg-float v8, v8

    sub-float/2addr v8, v6

    neg-float v12, v12

    sub-float/2addr v12, v6

    :cond_6
    invoke-interface {v13}, Lc/c/b/a/g/b/e;->j0()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v5, Lc/c/b/a/b/a;->b:[F

    add-int/lit8 v23, v3, 0x2

    aget v6, v6, v23

    cmpl-float v23, v2, v18

    if-ltz v23, :cond_7

    move/from16 v23, v8

    goto :goto_5

    :cond_7
    move/from16 v23, v12

    :goto_5
    add-float v6, v6, v23

    move/from16 v23, v8

    add-float v8, v11, v16

    move/from16 v24, v12

    div-int/lit8 v12, v3, 0x2

    invoke-interface {v13, v12}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v12

    move/from16 v25, v14

    .line 5
    iget-object v14, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v14, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v12, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v15, v6, v8, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_8
    move/from16 v23, v8

    move/from16 v24, v12

    move/from16 v25, v14

    .line 6
    :goto_6
    iget-object v6, v1, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_a

    .line 7
    invoke-interface {v13}, Lc/c/b/a/g/b/e;->Q()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 8
    iget-object v6, v1, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    .line 9
    iget-object v1, v5, Lc/c/b/a/b/a;->b:[F

    add-int/lit8 v8, v3, 0x2

    aget v1, v1, v8

    cmpl-float v2, v2, v18

    if-ltz v2, :cond_9

    move/from16 v8, v23

    goto :goto_7

    :cond_9
    move/from16 v8, v24

    :goto_7
    add-float/2addr v1, v8

    iget v2, v4, Lc/c/b/a/k/e;->b:F

    add-float/2addr v1, v2

    iget v2, v4, Lc/c/b/a/k/e;->c:F

    add-float/2addr v11, v2

    float-to-int v8, v1

    float-to-int v11, v11

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    move-object/from16 v1, p1

    move-object v2, v6

    move v15, v3

    move v3, v8

    move-object v8, v4

    move v4, v11

    move-object v11, v5

    move v5, v12

    move-object/from16 v12, v20

    move v6, v14

    invoke-static/range {v1 .. v6}, Lc/c/b/a/k/i;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_8

    :cond_a
    move v15, v3

    move-object v8, v4

    move-object v11, v5

    move-object/from16 v12, v20

    :goto_8
    add-int/lit8 v3, v15, 0x4

    move-object v4, v8

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v8, v21

    move/from16 v12, v22

    move/from16 v14, v25

    const/high16 v15, 0x40000000    # 2.0f

    goto/16 :goto_1

    :cond_b
    :goto_9
    move-object/from16 v21, v8

    move/from16 v22, v12

    move-object v8, v4

    goto/16 :goto_10

    :cond_c
    move-object v11, v5

    move-object/from16 v21, v8

    move/from16 v22, v12

    move/from16 v25, v14

    move-object v8, v4

    move-object v12, v6

    iget-object v1, v0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v13}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v2

    invoke-interface {v1, v2}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_a
    int-to-float v1, v14

    invoke-interface {v13}, Lc/c/b/a/g/b/e;->y0()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    mul-float v2, v2, v17

    cmpg-float v1, v1, v2

    if-gez v1, :cond_17

    invoke-interface {v13, v14}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v1

    check-cast v1, Lc/c/b/a/d/c;

    invoke-interface {v13, v14}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v4, v11, Lc/c/b/a/b/a;->b:[F

    add-int/lit8 v5, v15, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lc/c/b/a/k/j;->g(F)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_10

    :cond_d
    iget-object v3, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v4, v11, Lc/c/b/a/b/a;->b:[F

    aget v4, v4, v15

    invoke-virtual {v3, v4}, Lc/c/b/a/k/j;->h(F)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_a

    :cond_e
    iget-object v3, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v4, v11, Lc/c/b/a/b/a;->b:[F

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lc/c/b/a/k/j;->d(F)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v12, v1}, Lc/c/b/a/e/e;->a(Lc/c/b/a/d/c;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-static {v4, v3}, Lc/c/b/a/k/i;->c(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    if-eqz v10, :cond_10

    move v6, v9

    goto :goto_b

    :cond_10
    add-float v6, v4, v9

    neg-float v6, v6

    :goto_b
    move/from16 v19, v10

    if-eqz v10, :cond_11

    add-float v10, v4, v9

    neg-float v10, v10

    goto :goto_c

    :cond_11
    move v10, v9

    :goto_c
    if-eqz v25, :cond_12

    neg-float v6, v6

    sub-float/2addr v6, v4

    neg-float v10, v10

    sub-float/2addr v10, v4

    :cond_12
    invoke-interface {v13}, Lc/c/b/a/g/b/e;->j0()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v11, Lc/c/b/a/b/a;->b:[F

    add-int/lit8 v20, v15, 0x2

    aget v20, v4, v20

    move/from16 v23, v6

    .line 10
    iget v6, v1, Lc/c/b/a/d/g;->c:F

    cmpl-float v6, v6, v18

    if-ltz v6, :cond_13

    move/from16 v6, v23

    goto :goto_d

    :cond_13
    move v6, v10

    :goto_d
    add-float v6, v20, v6

    .line 11
    aget v4, v4, v5

    add-float v4, v4, v16

    move/from16 v20, v9

    .line 12
    iget-object v9, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v6, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_e

    :cond_14
    move/from16 v23, v6

    move/from16 v20, v9

    .line 13
    :goto_e
    iget-object v2, v1, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_16

    .line 14
    invoke-interface {v13}, Lc/c/b/a/g/b/e;->Q()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 15
    iget-object v2, v1, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    .line 16
    iget-object v3, v11, Lc/c/b/a/b/a;->b:[F

    add-int/lit8 v4, v15, 0x2

    aget v4, v3, v4

    .line 17
    iget v1, v1, Lc/c/b/a/d/g;->c:F

    cmpl-float v1, v1, v18

    if-ltz v1, :cond_15

    move/from16 v6, v23

    goto :goto_f

    :cond_15
    move v6, v10

    :goto_f
    add-float/2addr v4, v6

    .line 18
    aget v1, v3, v5

    iget v3, v8, Lc/c/b/a/k/e;->b:F

    add-float/2addr v4, v3

    iget v3, v8, Lc/c/b/a/k/e;->c:F

    add-float/2addr v1, v3

    float-to-int v3, v4

    float-to-int v4, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lc/c/b/a/k/i;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    :cond_16
    add-int/lit8 v15, v15, 0x4

    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v19

    move/from16 v9, v20

    goto/16 :goto_a

    :cond_17
    :goto_10
    move/from16 v20, v9

    move/from16 v19, v10

    .line 19
    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v8}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    :goto_11
    add-int/lit8 v12, v22, 0x1

    move/from16 v10, v19

    move/from16 v9, v20

    move-object/from16 v8, v21

    goto/16 :goto_0

    :cond_18
    return-void
.end method

.method public f()V
    .locals 7

    iget-object v0, p0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v0}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/b/a/d/l;->d()I

    move-result v1

    new-array v1, v1, [Lc/c/b/a/b/b;

    iput-object v1, p0, Lc/c/b/a/j/b;->i:[Lc/c/b/a/b/a;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lc/c/b/a/j/b;->i:[Lc/c/b/a/b/a;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v2

    check-cast v2, Lc/c/b/a/g/b/a;

    iget-object v3, p0, Lc/c/b/a/j/b;->i:[Lc/c/b/a/b/a;

    new-instance v4, Lc/c/b/a/b/b;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-interface {v2}, Lc/c/b/a/g/b/a;->i0()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Lc/c/b/a/g/b/a;->H()I

    move-result v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    :goto_1
    mul-int v5, v5, v6

    invoke-virtual {v0}, Lc/c/b/a/d/l;->d()I

    move-result v6

    invoke-interface {v2}, Lc/c/b/a/g/b/a;->i0()Z

    move-result v2

    invoke-direct {v4, v5, v6, v2}, Lc/c/b/a/b/b;-><init>(IIZ)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(Lc/c/b/a/g/a/e;)Z
    .locals 2

    invoke-interface {p1}, Lc/c/b/a/g/a/e;->getData()Lc/c/b/a/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/b/a/d/l;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Lc/c/b/a/g/a/e;->getMaxVisibleCount()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget v1, v1, Lc/c/b/a/k/j;->j:F

    mul-float p1, p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Landroid/graphics/Canvas;Lc/c/b/a/g/b/a;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v2

    iget-object v3, v0, Lc/c/b/a/j/b;->k:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/a;->J()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lc/c/b/a/j/b;->k:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/a;->Y()F

    move-result v4

    invoke-static {v4}, Lc/c/b/a/k/i;->d(F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/a;->Y()F

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v6, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v6}, Lc/c/b/a/g/a/a;->c()Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_3

    iget-object v6, v0, Lc/c/b/a/j/b;->j:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/a;->g()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v6}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v6

    .line 1
    iget v6, v6, Lc/c/b/a/d/a;->j:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    .line 2
    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v7

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    invoke-interface {v1, v9}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v10

    check-cast v10, Lc/c/b/a/d/c;

    .line 3
    iget v10, v10, Lc/c/b/a/d/o;->f:F

    .line 4
    iget-object v11, v0, Lc/c/b/a/j/h;->m:Landroid/graphics/RectF;

    sub-float v12, v10, v6

    iput v12, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v6

    iput v10, v11, Landroid/graphics/RectF;->bottom:F

    .line 5
    iget-object v10, v2, Lc/c/b/a/k/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v10, v2, Lc/c/b/a/k/g;->c:Lc/c/b/a/k/j;

    .line 6
    iget-object v10, v10, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    .line 7
    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v10, v2, Lc/c/b/a/k/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8
    iget-object v10, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v11, v0, Lc/c/b/a/j/h;->m:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10, v11}, Lc/c/b/a/k/j;->g(F)Z

    move-result v10

    if-nez v10, :cond_1

    move-object/from16 v15, p1

    goto :goto_2

    :cond_1
    iget-object v10, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v11, v0, Lc/c/b/a/j/h;->m:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10, v11}, Lc/c/b/a/k/j;->d(F)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_3

    :cond_2
    iget-object v10, v0, Lc/c/b/a/j/h;->m:Landroid/graphics/RectF;

    iget-object v11, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 9
    iget-object v11, v11, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->left:F

    .line 10
    iput v12, v10, Landroid/graphics/RectF;->left:F

    .line 11
    iget v11, v11, Landroid/graphics/RectF;->right:F

    .line 12
    iput v11, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, v0, Lc/c/b/a/j/b;->j:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v10, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    move-object/from16 v15, p1

    iget-object v6, v0, Lc/c/b/a/j/b;->i:[Lc/c/b/a/b/a;

    aget-object v6, v6, p3

    .line 13
    iput v7, v6, Lc/c/b/a/b/a;->c:F

    iput v7, v6, Lc/c/b/a/b/a;->d:F

    .line 14
    iget-object v7, v0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v8

    invoke-interface {v7, v8}, Lc/c/b/a/g/a/b;->b(Lc/c/b/a/c/j$a;)Z

    move-result v7

    .line 15
    iput-boolean v7, v6, Lc/c/b/a/b/a;->f:Z

    .line 16
    iget-object v7, v0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v7}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v7

    .line 17
    iget v7, v7, Lc/c/b/a/d/a;->j:F

    .line 18
    iput v7, v6, Lc/c/b/a/b/a;->g:F

    .line 19
    invoke-virtual {v6, v1}, Lc/c/b/a/b/a;->b(Lc/c/b/a/g/b/a;)V

    iget-object v7, v6, Lc/c/b/a/b/a;->b:[F

    invoke-virtual {v2, v7}, Lc/c/b/a/k/g;->g([F)V

    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/e;->F()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_5

    iget-object v2, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/e;->B0()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    :cond_5
    :goto_5
    iget-object v2, v6, Lc/c/b/a/b/a;->b:[F

    array-length v7, v2

    if-ge v5, v7, :cond_a

    .line 21
    iget-object v7, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    add-int/lit8 v8, v5, 0x3

    aget v2, v2, v8

    invoke-virtual {v7, v2}, Lc/c/b/a/k/j;->g(F)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_7

    :cond_6
    iget-object v2, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v7, v6, Lc/c/b/a/b/a;->b:[F

    add-int/lit8 v9, v5, 0x1

    aget v7, v7, v9

    invoke-virtual {v2, v7}, Lc/c/b/a/k/j;->d(F)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    if-nez v4, :cond_8

    iget-object v2, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    div-int/lit8 v7, v5, 0x4

    invoke-interface {v1, v7}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    iget-object v2, v6, Lc/c/b/a/b/a;->b:[F

    aget v13, v2, v5

    aget v14, v2, v9

    add-int/lit8 v7, v5, 0x2

    aget v10, v2, v7

    aget v16, v2, v8

    iget-object v2, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v15, v10

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz v3, :cond_9

    iget-object v2, v6, Lc/c/b/a/b/a;->b:[F

    aget v13, v2, v5

    aget v14, v2, v9

    aget v15, v2, v7

    aget v16, v2, v8

    iget-object v2, v0, Lc/c/b/a/j/b;->k:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x4

    move-object/from16 v15, p1

    goto :goto_5

    :cond_a
    :goto_7
    return-void
.end method

.method public k(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1

    iget-object v0, p0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p5, p0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public l(FFFFLc/c/b/a/k/g;)V
    .locals 1

    sub-float v0, p1, p4

    add-float/2addr p1, p4

    iget-object p4, p0, Lc/c/b/a/j/b;->h:Landroid/graphics/RectF;

    invoke-virtual {p4, p2, v0, p3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lc/c/b/a/j/b;->h:Landroid/graphics/RectF;

    iget-object p2, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    iput p2, p1, Landroid/graphics/RectF;->left:F

    iget p2, p1, Landroid/graphics/RectF;->right:F

    mul-float p2, p2, p3

    iput p2, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p5, Lc/c/b/a/k/g;->a:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p2, p5, Lc/c/b/a/k/g;->c:Lc/c/b/a/k/j;

    .line 2
    iget-object p2, p2, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p2, p5, Lc/c/b/a/k/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public m(Lc/c/b/a/f/d;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget p2, p2, Landroid/graphics/RectF;->right:F

    .line 1
    iput v0, p1, Lc/c/b/a/f/d;->i:F

    iput p2, p1, Lc/c/b/a/f/d;->j:F

    return-void
.end method
