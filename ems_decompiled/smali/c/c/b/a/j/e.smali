.class public Lc/c/b/a/j/e;
.super Lc/c/b/a/j/l;
.source ""


# instance fields
.field public h:Lc/c/b/a/g/a/d;

.field public i:[F

.field public j:[F

.field public k:[F

.field public l:[F

.field public m:[F


# direct methods
.method public constructor <init>(Lc/c/b/a/g/a/d;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lc/c/b/a/j/l;-><init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    const/16 p2, 0x8

    new-array p2, p2, [F

    iput-object p2, p0, Lc/c/b/a/j/e;->i:[F

    const/4 p2, 0x4

    new-array p3, p2, [F

    iput-object p3, p0, Lc/c/b/a/j/e;->j:[F

    new-array p3, p2, [F

    iput-object p3, p0, Lc/c/b/a/j/e;->k:[F

    new-array p3, p2, [F

    iput-object p3, p0, Lc/c/b/a/j/e;->l:[F

    new-array p2, p2, [F

    iput-object p2, p0, Lc/c/b/a/j/e;->m:[F

    iput-object p1, p0, Lc/c/b/a/j/e;->h:Lc/c/b/a/g/a/d;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/c/b/a/j/e;->h:Lc/c/b/a/g/a/d;

    invoke-interface {v1}, Lc/c/b/a/g/a/d;->getCandleData()Lc/c/b/a/d/j;

    move-result-object v1

    .line 1
    iget-object v1, v1, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/a/g/b/d;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3
    iget-object v3, v0, Lc/c/b/a/j/e;->h:Lc/c/b/a/g/a/d;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v4

    invoke-interface {v3, v4}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v3

    iget-object v4, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lc/c/b/a/g/b/d;->F0()F

    move-result v4

    invoke-interface {v2}, Lc/c/b/a/g/b/d;->w0()Z

    move-result v5

    iget-object v6, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget-object v7, v0, Lc/c/b/a/j/e;->h:Lc/c/b/a/g/a/d;

    invoke-virtual {v6, v7, v2}, Lc/c/b/a/j/c$a;->a(Lc/c/b/a/g/a/b;Lc/c/b/a/g/b/b;)V

    iget-object v6, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v2}, Lc/c/b/a/g/b/d;->C()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v6, v6, Lc/c/b/a/j/c$a;->a:I

    :goto_1
    iget-object v7, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v8, v7, Lc/c/b/a/j/c$a;->c:I

    iget v7, v7, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v8, v7

    if-gt v6, v8, :cond_7

    invoke-interface {v2, v6}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v7

    check-cast v7, Lc/c/b/a/d/k;

    if-nez v7, :cond_0

    move-object/from16 v14, p1

    goto/16 :goto_7

    .line 4
    :cond_0
    iget v7, v7, Lc/c/b/a/d/o;->f:F

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x1

    const v14, 0x112233

    if-eqz v5, :cond_5

    .line 5
    iget-object v15, v0, Lc/c/b/a/j/e;->i:[F

    aput v7, v15, v11

    aput v7, v15, v10

    const/16 v16, 0x4

    aput v7, v15, v16

    const/16 v16, 0x6

    aput v7, v15, v16

    aput v8, v15, v13

    aput v8, v15, v12

    const/16 v16, 0x5

    aput v8, v15, v16

    const/16 v16, 0x7

    aget v17, v15, v12

    aput v17, v15, v16

    invoke-virtual {v3, v15}, Lc/c/b/a/k/g;->g([F)V

    invoke-interface {v2}, Lc/c/b/a/g/b/d;->A()Z

    move-result v15

    if-eqz v15, :cond_2

    iget-object v15, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v2}, Lc/c/b/a/g/b/d;->i()I

    move-result v12

    if-ne v12, v14, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Lc/c/b/a/g/b/d;->i()I

    move-result v12

    goto :goto_3

    :cond_2
    iget-object v15, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v2}, Lc/c/b/a/g/b/d;->b0()I

    move-result v12

    if-ne v12, v14, :cond_3

    :goto_2
    invoke-interface {v2, v6}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v12

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Lc/c/b/a/g/b/d;->b0()I

    move-result v12

    :goto_3
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v12, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v12, v0, Lc/c/b/a/j/e;->i:[F

    iget-object v15, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    invoke-virtual {v14, v12, v15}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    iget-object v12, v0, Lc/c/b/a/j/e;->j:[F

    sub-float v15, v7, v9

    add-float/2addr v15, v4

    aput v15, v12, v11

    aput v8, v12, v13

    add-float/2addr v7, v9

    sub-float/2addr v7, v4

    aput v7, v12, v10

    const/4 v7, 0x3

    aput v8, v12, v7

    invoke-virtual {v3, v12}, Lc/c/b/a/k/g;->g([F)V

    invoke-interface {v2}, Lc/c/b/a/g/b/d;->i()I

    move-result v7

    const v8, 0x112233

    if-ne v7, v8, :cond_4

    iget-object v7, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v2, v6}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v8

    goto :goto_4

    :cond_4
    iget-object v7, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface {v2}, Lc/c/b/a/g/b/d;->i()I

    move-result v8

    :goto_4
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Lc/c/b/a/j/e;->j:[F

    aget v8, v7, v11

    aget v9, v7, v13

    aget v10, v7, v10

    const/4 v12, 0x3

    aget v7, v7, v12

    goto/16 :goto_6

    :cond_5
    move-object/from16 v14, p1

    iget-object v15, v0, Lc/c/b/a/j/e;->k:[F

    aput v7, v15, v11

    aput v8, v15, v13

    aput v7, v15, v10

    aput v8, v15, v12

    iget-object v12, v0, Lc/c/b/a/j/e;->l:[F

    sub-float v18, v7, v9

    add-float v18, v18, v4

    aput v18, v12, v11

    aput v8, v12, v13

    aput v7, v12, v10

    const/16 v16, 0x3

    aput v8, v12, v16

    iget-object v12, v0, Lc/c/b/a/j/e;->m:[F

    add-float/2addr v9, v7

    sub-float/2addr v9, v4

    aput v9, v12, v11

    aput v8, v12, v13

    aput v7, v12, v10

    aput v8, v12, v16

    invoke-virtual {v3, v15}, Lc/c/b/a/k/g;->g([F)V

    iget-object v7, v0, Lc/c/b/a/j/e;->l:[F

    invoke-virtual {v3, v7}, Lc/c/b/a/k/g;->g([F)V

    iget-object v7, v0, Lc/c/b/a/j/e;->m:[F

    invoke-virtual {v3, v7}, Lc/c/b/a/k/g;->g([F)V

    invoke-interface {v2}, Lc/c/b/a/g/b/d;->i()I

    move-result v7

    const v8, 0x112233

    if-ne v7, v8, :cond_6

    invoke-interface {v2, v6}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v7

    goto :goto_5

    :cond_6
    invoke-interface {v2}, Lc/c/b/a/g/b/d;->i()I

    move-result v7

    :goto_5
    iget-object v8, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, v0, Lc/c/b/a/j/e;->k:[F

    aget v18, v7, v11

    aget v19, v7, v13

    aget v20, v7, v10

    const/4 v8, 0x3

    aget v21, v7, v8

    iget-object v7, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move-object/from16 v22, v7

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v7, v0, Lc/c/b/a/j/e;->l:[F

    aget v18, v7, v11

    aget v19, v7, v13

    aget v20, v7, v10

    const/4 v8, 0x3

    aget v21, v7, v8

    iget-object v7, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    move-object/from16 v22, v7

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v7, v0, Lc/c/b/a/j/e;->m:[F

    aget v8, v7, v11

    aget v9, v7, v13

    aget v10, v7, v10

    const/4 v11, 0x3

    aget v7, v7, v11

    :goto_6
    iget-object v11, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    move/from16 v21, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move-object/from16 v22, v11

    move-object/from16 v17, p1

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    move-object/from16 v14, p1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/graphics/Canvas;[Lc/c/b/a/f/d;)V
    .locals 11

    iget-object v0, p0, Lc/c/b/a/j/e;->h:Lc/c/b/a/g/a/d;

    invoke-interface {v0}, Lc/c/b/a/g/a/d;->getCandleData()Lc/c/b/a/d/j;

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

    check-cast v4, Lc/c/b/a/g/b/d;

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

    check-cast v5, Lc/c/b/a/d/k;

    invoke-virtual {p0, v5, v4}, Lc/c/b/a/j/c;->h(Lc/c/b/a/d/o;Lc/c/b/a/g/b/b;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lc/c/b/a/j/e;->h:Lc/c/b/a/g/a/d;

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v8

    invoke-interface {v7, v8}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v7

    .line 6
    iget v5, v5, Lc/c/b/a/d/o;->f:F

    .line 7
    invoke-virtual {v7, v5, v6}, Lc/c/b/a/k/g;->a(FF)Lc/c/b/a/k/d;

    move-result-object v5

    iget-wide v6, v5, Lc/c/b/a/k/d;->b:D

    double-to-float v8, v6

    iget-wide v9, v5, Lc/c/b/a/k/d;->c:D

    double-to-float v5, v9

    .line 8
    iput v8, v3, Lc/c/b/a/f/d;->i:F

    iput v5, v3, Lc/c/b/a/f/d;->j:F

    double-to-float v3, v6

    double-to-float v5, v9

    .line 9
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

    iget-object v1, v0, Lc/c/b/a/j/e;->h:Lc/c/b/a/g/a/d;

    invoke-virtual {v0, v1}, Lc/c/b/a/j/g;->g(Lc/c/b/a/g/a/e;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lc/c/b/a/j/e;->h:Lc/c/b/a/g/a/d;

    invoke-interface {v1}, Lc/c/b/a/g/a/d;->getCandleData()Lc/c/b/a/d/j;

    move-result-object v1

    .line 1
    iget-object v1, v1, Lc/c/b/a/d/l;->i:Ljava/util/List;

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/b/a/g/b/d;

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

    iget-object v5, v0, Lc/c/b/a/j/e;->h:Lc/c/b/a/g/a/d;

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v6

    invoke-interface {v5, v6}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v5

    iget-object v6, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget-object v7, v0, Lc/c/b/a/j/e;->h:Lc/c/b/a/g/a/d;

    invoke-virtual {v6, v7, v4}, Lc/c/b/a/j/c$a;->a(Lc/c/b/a/g/a/b;Lc/c/b/a/g/b/b;)V

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
    iget-object v8, v5, Lc/c/b/a/k/g;->g:[F

    array-length v8, v8

    if-eq v8, v6, :cond_1

    new-array v8, v6, [F

    iput-object v8, v5, Lc/c/b/a/k/g;->g:[F

    :cond_1
    iget-object v8, v5, Lc/c/b/a/k/g;->g:[F

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x0

    if-ge v9, v6, :cond_3

    div-int/lit8 v11, v9, 0x2

    add-int/2addr v11, v7

    invoke-interface {v4, v11}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v11

    check-cast v11, Lc/c/b/a/d/k;

    if-eqz v11, :cond_2

    .line 4
    iget v11, v11, Lc/c/b/a/d/o;->f:F

    .line 5
    aput v11, v8, v9

    add-int/lit8 v11, v9, 0x1

    aput v10, v8, v11

    goto :goto_2

    :cond_2
    aput v10, v8, v9

    add-int/lit8 v11, v9, 0x1

    aput v10, v8, v11

    :goto_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lc/c/b/a/k/g;->b()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/high16 v5, 0x40a00000    # 5.0f

    .line 6
    invoke-static {v5}, Lc/c/b/a/k/i;->d(F)F

    move-result v5

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->x0()Lc/c/b/a/e/e;

    move-result-object v6

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->z0()Lc/c/b/a/k/e;

    move-result-object v7

    invoke-static {v7}, Lc/c/b/a/k/e;->c(Lc/c/b/a/k/e;)Lc/c/b/a/k/e;

    move-result-object v7

    iget v9, v7, Lc/c/b/a/k/e;->b:F

    invoke-static {v9}, Lc/c/b/a/k/i;->d(F)F

    move-result v9

    iput v9, v7, Lc/c/b/a/k/e;->b:F

    iget v9, v7, Lc/c/b/a/k/e;->c:F

    invoke-static {v9}, Lc/c/b/a/k/i;->d(F)F

    move-result v9

    iput v9, v7, Lc/c/b/a/k/e;->c:F

    const/4 v9, 0x0

    :goto_3
    array-length v11, v8

    if-ge v9, v11, :cond_9

    aget v11, v8, v9

    add-int/lit8 v12, v9, 0x1

    aget v12, v8, v12

    iget-object v13, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v13, v11}, Lc/c/b/a/k/j;->f(F)Z

    move-result v13

    if-nez v13, :cond_4

    goto/16 :goto_7

    :cond_4
    iget-object v13, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v13, v11}, Lc/c/b/a/k/j;->e(F)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v13, v12}, Lc/c/b/a/k/j;->i(F)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_5

    :cond_5
    div-int/lit8 v13, v9, 0x2

    iget-object v14, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v14, v14, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v14, v13

    invoke-interface {v4, v14}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v14

    check-cast v14, Lc/c/b/a/d/k;

    invoke-interface {v4}, Lc/c/b/a/g/b/e;->j0()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 7
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v10}, Lc/c/b/a/e/e;->b(F)Ljava/lang/String;

    move-result-object v15

    sub-float v2, v12, v5

    .line 8
    invoke-interface {v4, v13}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v13

    .line 9
    iget-object v10, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    invoke-virtual {v13, v15, v11, v2, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    move-object/from16 v13, p1

    .line 10
    :goto_4
    iget-object v2, v14, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    .line 11
    invoke-interface {v4}, Lc/c/b/a/g/b/e;->Q()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 12
    iget-object v2, v14, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    .line 13
    iget v10, v7, Lc/c/b/a/k/e;->b:F

    add-float/2addr v11, v10

    float-to-int v10, v11

    iget v11, v7, Lc/c/b/a/k/e;->c:F

    add-float/2addr v12, v11

    float-to-int v11, v12

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    move-object/from16 v16, p1

    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-static/range {v16 .. v21}, Lc/c/b/a/k/i;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_6

    :cond_7
    :goto_5
    move-object/from16 v13, p1

    :cond_8
    :goto_6
    add-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_9
    :goto_7
    move-object/from16 v13, p1

    .line 14
    sget-object v2, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v2, v7}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    goto :goto_9

    :cond_a
    :goto_8
    move-object/from16 v13, p1

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
