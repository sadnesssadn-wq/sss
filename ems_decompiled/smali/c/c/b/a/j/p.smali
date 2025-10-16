.class public Lc/c/b/a/j/p;
.super Lc/c/b/a/j/l;
.source ""


# instance fields
.field public h:Lc/c/b/a/g/a/h;

.field public i:[F


# direct methods
.method public constructor <init>(Lc/c/b/a/g/a/h;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lc/c/b/a/j/l;-><init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    iput-object p2, p0, Lc/c/b/a/j/p;->i:[F

    iput-object p1, p0, Lc/c/b/a/j/p;->h:Lc/c/b/a/g/a/h;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/c/b/a/j/p;->h:Lc/c/b/a/g/a/h;

    invoke-interface {v1}, Lc/c/b/a/g/a/h;->getScatterData()Lc/c/b/a/d/x;

    move-result-object v1

    .line 1
    iget-object v1, v1, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/a/g/b/k;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v3

    const/4 v10, 0x1

    if-ge v3, v10, :cond_1

    goto :goto_0

    :cond_1
    iget-object v11, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v3, v0, Lc/c/b/a/j/p;->h:Lc/c/b/a/g/a/h;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v4

    invoke-interface {v3, v4}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v12

    iget-object v3, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lc/c/b/a/g/b/k;->W()Lc/c/b/a/j/w/a;

    move-result-object v13

    if-nez v13, :cond_2

    const-string v2, "MISSING"

    const-string v3, "There\'s no IShapeRenderer specified for ScatterDataSet"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float v3, v3, v14

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v5

    int-to-float v5, v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-int v15, v3

    const/16 v16, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v15, :cond_0

    invoke-interface {v2, v9}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v3

    iget-object v4, v0, Lc/c/b/a/j/p;->i:[F

    invoke-virtual {v3}, Lc/c/b/a/d/o;->b()F

    move-result v5

    aput v5, v4, v16

    iget-object v4, v0, Lc/c/b/a/j/p;->i:[F

    invoke-virtual {v3}, Lc/c/b/a/d/g;->a()F

    move-result v3

    mul-float v3, v3, v14

    aput v3, v4, v10

    iget-object v3, v0, Lc/c/b/a/j/p;->i:[F

    invoke-virtual {v12, v3}, Lc/c/b/a/k/g;->g([F)V

    iget-object v3, v0, Lc/c/b/a/j/p;->i:[F

    aget v3, v3, v16

    invoke-virtual {v11, v3}, Lc/c/b/a/k/j;->f(F)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v3, v0, Lc/c/b/a/j/p;->i:[F

    aget v3, v3, v16

    invoke-virtual {v11, v3}, Lc/c/b/a/k/j;->e(F)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lc/c/b/a/j/p;->i:[F

    aget v3, v3, v10

    invoke-virtual {v11, v3}, Lc/c/b/a/k/j;->i(F)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    div-int/lit8 v4, v9, 0x2

    invoke-interface {v2, v4}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v3, v0, Lc/c/b/a/j/p;->i:[F

    aget v7, v3, v16

    aget v8, v3, v10

    iget-object v5, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v17, v5

    move-object v5, v2

    move/from16 v18, v9

    move-object/from16 v9, v17

    invoke-interface/range {v3 .. v9}, Lc/c/b/a/j/w/a;->a(Landroid/graphics/Canvas;Lc/c/b/a/g/b/k;Lc/c/b/a/k/j;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    :goto_2
    move/from16 v18, v9

    :goto_3
    add-int/lit8 v9, v18, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/graphics/Canvas;[Lc/c/b/a/f/d;)V
    .locals 11

    iget-object v0, p0, Lc/c/b/a/j/p;->h:Lc/c/b/a/g/a/h;

    invoke-interface {v0}, Lc/c/b/a/g/a/h;->getScatterData()Lc/c/b/a/d/x;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 1
    iget v4, v3, Lc/c/b/a/f/d;->f:I

    .line 2
    invoke-virtual {v0, v4}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v4

    check-cast v4, Lc/c/b/a/g/b/k;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->D0()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v5, v3, Lc/c/b/a/f/d;->a:F

    .line 4
    iget v6, v3, Lc/c/b/a/f/d;->b:F

    .line 5
    invoke-interface {v4, v5, v6}, Lc/c/b/a/g/b/e;->L(FF)Lc/c/b/a/d/o;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lc/c/b/a/j/c;->h(Lc/c/b/a/d/o;Lc/c/b/a/g/b/b;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lc/c/b/a/j/p;->h:Lc/c/b/a/g/a/h;

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v7

    invoke-interface {v6, v7}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v6

    invoke-virtual {v5}, Lc/c/b/a/d/o;->b()F

    move-result v7

    invoke-virtual {v5}, Lc/c/b/a/d/g;->a()F

    move-result v5

    iget-object v8, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v5, v5, v8

    invoke-virtual {v6, v7, v5}, Lc/c/b/a/k/g;->a(FF)Lc/c/b/a/k/d;

    move-result-object v5

    iget-wide v6, v5, Lc/c/b/a/k/d;->b:D

    double-to-float v8, v6

    iget-wide v9, v5, Lc/c/b/a/k/d;->c:D

    double-to-float v5, v9

    .line 6
    iput v8, v3, Lc/c/b/a/f/d;->i:F

    iput v5, v3, Lc/c/b/a/f/d;->j:F

    double-to-float v3, v6

    double-to-float v5, v9

    .line 7
    invoke-virtual {p0, p1, v3, v5, v4}, Lc/c/b/a/j/l;->j(Landroid/graphics/Canvas;FFLc/c/b/a/g/b/h;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/c/b/a/j/p;->h:Lc/c/b/a/g/a/h;

    invoke-virtual {v0, v1}, Lc/c/b/a/j/g;->g(Lc/c/b/a/g/a/e;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lc/c/b/a/j/p;->h:Lc/c/b/a/g/a/h;

    invoke-interface {v1}, Lc/c/b/a/g/a/h;->getScatterData()Lc/c/b/a/d/x;

    move-result-object v1

    .line 1
    iget-object v1, v1, Lc/c/b/a/d/l;->i:Ljava/util/List;

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, v0, Lc/c/b/a/j/p;->h:Lc/c/b/a/g/a/h;

    invoke-interface {v4}, Lc/c/b/a/g/a/h;->getScatterData()Lc/c/b/a/d/x;

    move-result-object v4

    invoke-virtual {v4}, Lc/c/b/a/d/l;->d()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/b/a/g/b/k;

    invoke-virtual {v0, v4}, Lc/c/b/a/j/c;->i(Lc/c/b/a/g/b/e;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->y0()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v0, v4}, Lc/c/b/a/j/g;->a(Lc/c/b/a/g/b/e;)V

    iget-object v5, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget-object v6, v0, Lc/c/b/a/j/p;->h:Lc/c/b/a/g/a/h;

    invoke-virtual {v5, v6, v4}, Lc/c/b/a/j/c$a;->a(Lc/c/b/a/g/a/b;Lc/c/b/a/g/b/b;)V

    iget-object v5, v0, Lc/c/b/a/j/p;->h:Lc/c/b/a/g/a/h;

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v6

    invoke-interface {v5, v6}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v5

    iget-object v6, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v7, v6, Lc/c/b/a/j/c$a;->a:I

    iget v6, v6, Lc/c/b/a/j/c$a;->b:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v6, v6, v8

    add-float/2addr v6, v8

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    .line 3
    iget-object v9, v5, Lc/c/b/a/k/g;->d:[F

    array-length v9, v9

    if-eq v9, v6, :cond_1

    new-array v9, v6, [F

    iput-object v9, v5, Lc/c/b/a/k/g;->d:[F

    :cond_1
    iget-object v9, v5, Lc/c/b/a/k/g;->d:[F

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v6, :cond_3

    div-int/lit8 v11, v10, 0x2

    add-int/2addr v11, v7

    invoke-interface {v4, v11}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lc/c/b/a/d/o;->b()F

    move-result v12

    aput v12, v9, v10

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v11}, Lc/c/b/a/d/g;->a()F

    move-result v11

    mul-float v11, v11, v8

    aput v11, v9, v12

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    aput v11, v9, v10

    add-int/lit8 v12, v10, 0x1

    aput v11, v9, v12

    :goto_2
    add-int/lit8 v10, v10, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lc/c/b/a/k/g;->b()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4
    invoke-interface {v4}, Lc/c/b/a/g/b/k;->n()F

    move-result v5

    invoke-static {v5}, Lc/c/b/a/k/i;->d(F)F

    move-result v5

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->x0()Lc/c/b/a/e/e;

    move-result-object v6

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->z0()Lc/c/b/a/k/e;

    move-result-object v7

    invoke-static {v7}, Lc/c/b/a/k/e;->c(Lc/c/b/a/k/e;)Lc/c/b/a/k/e;

    move-result-object v7

    iget v8, v7, Lc/c/b/a/k/e;->b:F

    invoke-static {v8}, Lc/c/b/a/k/i;->d(F)F

    move-result v8

    iput v8, v7, Lc/c/b/a/k/e;->b:F

    iget v8, v7, Lc/c/b/a/k/e;->c:F

    invoke-static {v8}, Lc/c/b/a/k/i;->d(F)F

    move-result v8

    iput v8, v7, Lc/c/b/a/k/e;->c:F

    const/4 v8, 0x0

    :goto_3
    array-length v10, v9

    if-ge v8, v10, :cond_9

    iget-object v10, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    aget v11, v9, v8

    invoke-virtual {v10, v11}, Lc/c/b/a/k/j;->f(F)Z

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_7

    :cond_4
    iget-object v10, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    aget v11, v9, v8

    invoke-virtual {v10, v11}, Lc/c/b/a/k/j;->e(F)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    add-int/lit8 v11, v8, 0x1

    aget v12, v9, v11

    invoke-virtual {v10, v12}, Lc/c/b/a/k/j;->i(F)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_5

    :cond_5
    div-int/lit8 v10, v8, 0x2

    iget-object v12, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v12, v12, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v12, v10

    invoke-interface {v4, v12}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v12

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->j0()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 5
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lc/c/b/a/d/g;->a()F

    move-result v13

    invoke-virtual {v6, v13}, Lc/c/b/a/e/e;->b(F)Ljava/lang/String;

    move-result-object v13

    .line 6
    aget v14, v9, v8

    aget v15, v9, v11

    sub-float/2addr v15, v5

    iget-object v2, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v2, v2, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v10, v2

    invoke-interface {v4, v10}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v2

    .line 7
    iget-object v10, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual {v10, v13, v14, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    move-object/from16 v10, p1

    .line 8
    :goto_4
    iget-object v2, v12, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    .line 9
    invoke-interface {v4}, Lc/c/b/a/g/b/e;->Q()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10
    iget-object v2, v12, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    .line 11
    aget v12, v9, v8

    iget v13, v7, Lc/c/b/a/k/e;->b:F

    add-float/2addr v12, v13

    float-to-int v12, v12

    aget v11, v9, v11

    iget v13, v7, Lc/c/b/a/k/e;->c:F

    add-float/2addr v11, v13

    float-to-int v11, v11

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    move-object/from16 v16, p1

    move-object/from16 v17, v2

    move/from16 v18, v12

    move/from16 v19, v11

    invoke-static/range {v16 .. v21}, Lc/c/b/a/k/i;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_6

    :cond_7
    :goto_5
    move-object/from16 v10, p1

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_3

    :cond_9
    :goto_7
    move-object/from16 v10, p1

    .line 12
    sget-object v2, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v2, v7}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    goto :goto_9

    :cond_a
    :goto_8
    move-object/from16 v10, p1

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
