.class public Lc/c/b/a/j/d;
.super Lc/c/b/a/j/c;
.source ""


# instance fields
.field public g:Lc/c/b/a/g/a/c;

.field public h:[F

.field public i:[F

.field public j:[F


# direct methods
.method public constructor <init>(Lc/c/b/a/g/a/c;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lc/c/b/a/j/c;-><init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    const/4 p2, 0x4

    new-array p2, p2, [F

    iput-object p2, p0, Lc/c/b/a/j/d;->h:[F

    const/4 p2, 0x2

    new-array p2, p2, [F

    iput-object p2, p0, Lc/c/b/a/j/d;->i:[F

    const/4 p2, 0x3

    new-array p2, p2, [F

    iput-object p2, p0, Lc/c/b/a/j/d;->j:[F

    iput-object p1, p0, Lc/c/b/a/j/d;->g:Lc/c/b/a/g/a/c;

    iget-object p1, p0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-static {p2}, Lc/c/b/a/k/i;->d(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lc/c/b/a/j/d;->g:Lc/c/b/a/g/a/c;

    invoke-interface {v0}, Lc/c/b/a/g/a/c;->getBubbleData()Lc/c/b/a/d/h;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/g/b/c;

    invoke-interface {v1}, Lc/c/b/a/g/b/e;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Lc/c/b/a/g/b/e;->y0()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lc/c/b/a/j/d;->g:Lc/c/b/a/g/a/c;

    invoke-interface {v1}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v4

    invoke-interface {v2, v4}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v2

    iget-object v4, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget-object v5, p0, Lc/c/b/a/j/d;->g:Lc/c/b/a/g/a/c;

    invoke-virtual {v4, v5, v1}, Lc/c/b/a/j/c$a;->a(Lc/c/b/a/g/a/b;Lc/c/b/a/g/b/b;)V

    iget-object v4, p0, Lc/c/b/a/j/d;->h:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v4, v7

    invoke-virtual {v2, v4}, Lc/c/b/a/k/g;->g([F)V

    invoke-interface {v1}, Lc/c/b/a/g/b/c;->j()Z

    move-result v4

    iget-object v9, p0, Lc/c/b/a/j/d;->h:[F

    aget v7, v9, v7

    aget v9, v9, v5

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v9, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 4
    iget-object v9, v9, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->bottom:F

    .line 5
    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v9

    .line 6
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget-object v9, p0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v9, v9, Lc/c/b/a/j/c$a;->a:I

    :goto_1
    iget-object v10, p0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v11, v10, Lc/c/b/a/j/c$a;->c:I

    iget v10, v10, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v11, v10

    if-gt v9, v11, :cond_0

    invoke-interface {v1, v9}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v10

    check-cast v10, Lc/c/b/a/d/i;

    iget-object v11, p0, Lc/c/b/a/j/d;->i:[F

    .line 7
    iget v12, v10, Lc/c/b/a/d/o;->f:F

    .line 8
    aput v12, v11, v5

    .line 9
    iget v12, v10, Lc/c/b/a/d/g;->c:F

    mul-float v12, v12, v8

    .line 10
    aput v12, v11, v3

    invoke-virtual {v2, v11}, Lc/c/b/a/k/g;->g([F)V

    invoke-interface {v1}, Lc/c/b/a/g/b/c;->c()F

    move-result v11

    invoke-virtual {p0, v6, v11, v7, v4}, Lc/c/b/a/j/d;->j(FFFZ)F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget-object v12, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v13, p0, Lc/c/b/a/j/d;->i:[F

    aget v13, v13, v3

    add-float/2addr v13, v11

    invoke-virtual {v12, v13}, Lc/c/b/a/k/j;->g(F)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v13, p0, Lc/c/b/a/j/d;->i:[F

    aget v13, v13, v3

    sub-float/2addr v13, v11

    invoke-virtual {v12, v13}, Lc/c/b/a/k/j;->d(F)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    iget-object v12, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v13, p0, Lc/c/b/a/j/d;->i:[F

    aget v13, v13, v5

    add-float/2addr v13, v11

    invoke-virtual {v12, v13}, Lc/c/b/a/k/j;->e(F)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_2

    :cond_3
    iget-object v12, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v13, p0, Lc/c/b/a/j/d;->i:[F

    aget v13, v13, v5

    sub-float/2addr v13, v11

    invoke-virtual {v12, v13}, Lc/c/b/a/k/j;->f(F)Z

    move-result v12

    if-nez v12, :cond_4

    goto/16 :goto_0

    .line 11
    :cond_4
    iget v10, v10, Lc/c/b/a/d/o;->f:F

    float-to-int v10, v10

    .line 12
    invoke-interface {v1, v10}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v10

    iget-object v12, p0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, p0, Lc/c/b/a/j/d;->i:[F

    aget v12, v10, v5

    aget v10, v10, v3

    iget-object v13, p0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v12, v10, v11, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/graphics/Canvas;[Lc/c/b/a/f/d;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lc/c/b/a/j/d;->g:Lc/c/b/a/g/a/c;

    invoke-interface {v2}, Lc/c/b/a/g/a/c;->getBubbleData()Lc/c/b/a/d/h;

    move-result-object v2

    iget-object v3, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    aget-object v6, v1, v5

    .line 1
    iget v7, v6, Lc/c/b/a/f/d;->f:I

    .line 2
    invoke-virtual {v2, v7}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v7

    check-cast v7, Lc/c/b/a/g/b/c;

    if-eqz v7, :cond_6

    invoke-interface {v7}, Lc/c/b/a/g/b/e;->D0()Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget v8, v6, Lc/c/b/a/f/d;->a:F

    .line 4
    iget v9, v6, Lc/c/b/a/f/d;->b:F

    .line 5
    invoke-interface {v7, v8, v9}, Lc/c/b/a/g/b/e;->L(FF)Lc/c/b/a/d/o;

    move-result-object v8

    check-cast v8, Lc/c/b/a/d/i;

    .line 6
    iget v9, v8, Lc/c/b/a/d/g;->c:F

    .line 7
    iget v10, v6, Lc/c/b/a/f/d;->b:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_1

    goto/16 :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, v8, v7}, Lc/c/b/a/j/c;->h(Lc/c/b/a/d/o;Lc/c/b/a/g/b/b;)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v9, v0, Lc/c/b/a/j/d;->g:Lc/c/b/a/g/a/c;

    invoke-interface {v7}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v10

    invoke-interface {v9, v10}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v9

    iget-object v10, v0, Lc/c/b/a/j/d;->h:[F

    const/4 v11, 0x0

    aput v11, v10, v4

    const/4 v12, 0x2

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v10, v12

    invoke-virtual {v9, v10}, Lc/c/b/a/k/g;->g([F)V

    invoke-interface {v7}, Lc/c/b/a/g/b/c;->j()Z

    move-result v10

    iget-object v14, v0, Lc/c/b/a/j/d;->h:[F

    aget v15, v14, v12

    aget v14, v14, v4

    sub-float/2addr v15, v14

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v14

    iget-object v15, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 9
    iget-object v15, v15, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v12, v15, Landroid/graphics/RectF;->bottom:F

    .line 10
    iget v15, v15, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v15

    .line 11
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget-object v14, v0, Lc/c/b/a/j/d;->i:[F

    .line 12
    iget v15, v8, Lc/c/b/a/d/o;->f:F

    .line 13
    aput v15, v14, v4

    .line 14
    iget v15, v8, Lc/c/b/a/d/g;->c:F

    mul-float v15, v15, v13

    const/4 v13, 0x1

    .line 15
    aput v15, v14, v13

    invoke-virtual {v9, v14}, Lc/c/b/a/k/g;->g([F)V

    iget-object v9, v0, Lc/c/b/a/j/d;->i:[F

    aget v14, v9, v4

    aget v9, v9, v13

    .line 16
    iput v14, v6, Lc/c/b/a/f/d;->i:F

    iput v9, v6, Lc/c/b/a/f/d;->j:F

    .line 17
    invoke-interface {v7}, Lc/c/b/a/g/b/c;->c()F

    move-result v6

    invoke-virtual {v0, v11, v6, v12, v10}, Lc/c/b/a/j/d;->j(FFFZ)F

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    iget-object v9, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v10, v0, Lc/c/b/a/j/d;->i:[F

    aget v10, v10, v13

    add-float/2addr v10, v6

    invoke-virtual {v9, v10}, Lc/c/b/a/k/j;->g(F)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v10, v0, Lc/c/b/a/j/d;->i:[F

    aget v10, v10, v13

    sub-float/2addr v10, v6

    invoke-virtual {v9, v10}, Lc/c/b/a/k/j;->d(F)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    iget-object v9, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v10, v0, Lc/c/b/a/j/d;->i:[F

    aget v10, v10, v4

    add-float/2addr v10, v6

    invoke-virtual {v9, v10}, Lc/c/b/a/k/j;->e(F)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    iget-object v9, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v10, v0, Lc/c/b/a/j/d;->i:[F

    aget v10, v10, v4

    sub-float/2addr v10, v6

    invoke-virtual {v9, v10}, Lc/c/b/a/k/j;->f(F)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    iget v8, v8, Lc/c/b/a/d/o;->f:F

    float-to-int v8, v8

    .line 19
    invoke-interface {v7, v8}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    iget-object v12, v0, Lc/c/b/a/j/d;->j:[F

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    iget-object v9, v0, Lc/c/b/a/j/d;->j:[F

    const/4 v10, 0x2

    aget v11, v9, v10

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v11, v11, v12

    aput v11, v9, v10

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    iget-object v9, v0, Lc/c/b/a/j/d;->j:[F

    invoke-static {v8, v9}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v8

    iget-object v9, v0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, v0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    invoke-interface {v7}, Lc/c/b/a/g/b/c;->d0()F

    move-result v7

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v7, v0, Lc/c/b/a/j/d;->i:[F

    aget v8, v7, v4

    aget v7, v7, v13

    iget-object v9, v0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual {v10, v8, v7, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    :goto_1
    move-object/from16 v10, p1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/c/b/a/j/d;->g:Lc/c/b/a/g/a/c;

    invoke-interface {v1}, Lc/c/b/a/g/a/c;->getBubbleData()Lc/c/b/a/d/h;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lc/c/b/a/j/d;->g:Lc/c/b/a/g/a/c;

    invoke-virtual {v0, v2}, Lc/c/b/a/j/g;->g(Lc/c/b/a/g/a/e;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1
    iget-object v1, v1, Lc/c/b/a/d/l;->i:Ljava/util/List;

    .line 2
    iget-object v2, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    const-string v3, "1"

    invoke-static {v2, v3}, Lc/c/b/a/k/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/c/b/a/g/b/c;

    invoke-virtual {v0, v5}, Lc/c/b/a/j/c;->i(Lc/c/b/a/g/b/e;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Lc/c/b/a/g/b/e;->y0()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v0, v5}, Lc/c/b/a/j/g;->a(Lc/c/b/a/g/b/e;)V

    iget-object v6, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v6}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget-object v10, v0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget-object v11, v0, Lc/c/b/a/j/d;->g:Lc/c/b/a/g/a/c;

    invoke-virtual {v10, v11, v5}, Lc/c/b/a/j/c$a;->a(Lc/c/b/a/g/a/b;Lc/c/b/a/g/b/b;)V

    iget-object v10, v0, Lc/c/b/a/j/d;->g:Lc/c/b/a/g/a/c;

    invoke-interface {v5}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v11

    invoke-interface {v10, v11}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v10

    iget-object v11, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v12, v11, Lc/c/b/a/j/c$a;->a:I

    iget v11, v11, Lc/c/b/a/j/c$a;->b:I

    sub-int/2addr v11, v12

    add-int/2addr v11, v7

    mul-int/lit8 v11, v11, 0x2

    .line 3
    iget-object v7, v10, Lc/c/b/a/k/g;->e:[F

    array-length v7, v7

    if-eq v7, v11, :cond_2

    new-array v7, v11, [F

    iput-object v7, v10, Lc/c/b/a/k/g;->e:[F

    :cond_2
    iget-object v7, v10, Lc/c/b/a/k/g;->e:[F

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_4

    div-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v12

    invoke-interface {v5, v14}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lc/c/b/a/d/o;->b()F

    move-result v15

    aput v15, v7, v13

    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v14}, Lc/c/b/a/d/g;->a()F

    move-result v14

    mul-float v14, v14, v6

    aput v14, v7, v15

    goto :goto_2

    :cond_3
    aput v9, v7, v13

    add-int/lit8 v14, v13, 0x1

    aput v9, v7, v14

    :goto_2
    add-int/lit8 v13, v13, 0x2

    goto :goto_1

    :cond_4
    invoke-virtual {v10}, Lc/c/b/a/k/g;->b()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    cmpl-float v10, v8, v6

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    move v6, v8

    .line 4
    :goto_3
    invoke-interface {v5}, Lc/c/b/a/g/b/e;->x0()Lc/c/b/a/e/e;

    move-result-object v8

    invoke-interface {v5}, Lc/c/b/a/g/b/e;->z0()Lc/c/b/a/k/e;

    move-result-object v10

    invoke-static {v10}, Lc/c/b/a/k/e;->c(Lc/c/b/a/k/e;)Lc/c/b/a/k/e;

    move-result-object v10

    iget v11, v10, Lc/c/b/a/k/e;->b:F

    invoke-static {v11}, Lc/c/b/a/k/i;->d(F)F

    move-result v11

    iput v11, v10, Lc/c/b/a/k/e;->b:F

    iget v11, v10, Lc/c/b/a/k/e;->c:F

    invoke-static {v11}, Lc/c/b/a/k/i;->d(F)F

    move-result v11

    iput v11, v10, Lc/c/b/a/k/e;->c:F

    const/4 v11, 0x0

    :goto_4
    array-length v12, v7

    if-ge v11, v12, :cond_b

    div-int/lit8 v12, v11, 0x2

    iget-object v13, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v13, v13, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v13, v12

    invoke-interface {v5, v13}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v13

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v14, v14, v6

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v15

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v14, v15, v3, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aget v13, v7, v11

    add-int/lit8 v14, v11, 0x1

    aget v14, v7, v14

    iget-object v15, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v15, v13}, Lc/c/b/a/k/j;->f(F)Z

    move-result v15

    if-nez v15, :cond_6

    goto/16 :goto_8

    :cond_6
    iget-object v15, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v15, v13}, Lc/c/b/a/k/j;->e(F)Z

    move-result v15

    if-eqz v15, :cond_9

    iget-object v15, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v15, v14}, Lc/c/b/a/k/j;->i(F)Z

    move-result v15

    if-nez v15, :cond_7

    goto :goto_6

    :cond_7
    iget-object v15, v0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    iget v15, v15, Lc/c/b/a/j/c$a;->a:I

    add-int/2addr v12, v15

    invoke-interface {v5, v12}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v12

    check-cast v12, Lc/c/b/a/d/i;

    invoke-interface {v5}, Lc/c/b/a/g/b/e;->j0()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 5
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lc/c/b/a/e/e;->b(F)Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v16, v16, v2

    add-float v9, v16, v14

    move-object/from16 v16, v1

    .line 6
    iget-object v1, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v15, v13, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_8
    move-object/from16 v3, p1

    move-object/from16 v16, v1

    .line 7
    :goto_5
    iget-object v1, v12, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    .line 8
    invoke-interface {v5}, Lc/c/b/a/g/b/e;->Q()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 9
    iget-object v1, v12, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    .line 10
    iget v9, v10, Lc/c/b/a/k/e;->b:F

    add-float/2addr v13, v9

    float-to-int v9, v13

    iget v12, v10, Lc/c/b/a/k/e;->c:F

    add-float/2addr v14, v12

    float-to-int v12, v14

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    move-object/from16 v17, p1

    move-object/from16 v18, v1

    move/from16 v19, v9

    move/from16 v20, v12

    invoke-static/range {v17 .. v22}, Lc/c/b/a/k/i;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_7

    :cond_9
    :goto_6
    move-object/from16 v3, p1

    move-object/from16 v16, v1

    :cond_a
    :goto_7
    add-int/lit8 v11, v11, 0x2

    move-object/from16 v1, v16

    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_b
    :goto_8
    move-object/from16 v3, p1

    move-object/from16 v16, v1

    .line 11
    sget-object v1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v10}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    goto :goto_a

    :cond_c
    :goto_9
    move-object/from16 v3, p1

    move-object/from16 v16, v1

    :goto_a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public j(FFFZ)F
    .locals 0

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    cmpl-float p4, p2, p4

    if-nez p4, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    :cond_1
    :goto_0
    mul-float p3, p3, p1

    return p3
.end method
