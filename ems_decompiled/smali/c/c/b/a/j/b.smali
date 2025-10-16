.class public Lc/c/b/a/j/b;
.super Lc/c/b/a/j/c;
.source ""


# instance fields
.field public g:Lc/c/b/a/g/a/a;

.field public h:Landroid/graphics/RectF;

.field public i:[Lc/c/b/a/b/a;

.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lc/c/b/a/g/a/a;Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lc/c/b/a/j/c;-><init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/b;->h:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lc/c/b/a/j/b;->l:Landroid/graphics/RectF;

    iput-object p1, p0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-static {p3, p3, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    const/16 p3, 0x78

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/b;->j:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/b;->k:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v0}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lc/c/b/a/d/l;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v2

    check-cast v2, Lc/c/b/a/g/b/a;

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, v2, v1}, Lc/c/b/a/j/b;->j(Landroid/graphics/Canvas;Lc/c/b/a/g/b/a;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/graphics/Canvas;[Lc/c/b/a/f/d;)V
    .locals 10

    iget-object v0, p0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v0}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v6

    array-length v7, p2

    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_4

    aget-object v9, p2, v8

    .line 1
    iget v0, v9, Lc/c/b/a/f/d;->f:I

    .line 2
    invoke-virtual {v6, v0}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v0

    check-cast v0, Lc/c/b/a/g/b/a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lc/c/b/a/g/b/e;->D0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v1, v9, Lc/c/b/a/f/d;->a:F

    .line 4
    iget v2, v9, Lc/c/b/a/f/d;->b:F

    .line 5
    invoke-interface {v0, v1, v2}, Lc/c/b/a/g/b/e;->L(FF)Lc/c/b/a/d/o;

    move-result-object v1

    check-cast v1, Lc/c/b/a/d/c;

    invoke-virtual {p0, v1, v0}, Lc/c/b/a/j/c;->h(Lc/c/b/a/d/o;Lc/c/b/a/g/b/b;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v0}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    move-result-object v5

    iget-object v2, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    invoke-interface {v0}, Lc/c/b/a/g/b/b;->n0()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    invoke-interface {v0}, Lc/c/b/a/g/b/a;->U()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    iget v0, v9, Lc/c/b/a/f/d;->g:I

    if-ltz v0, :cond_2

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    iget v2, v1, Lc/c/b/a/d/g;->c:F

    const/4 v3, 0x0

    .line 9
    iget v1, v1, Lc/c/b/a/d/o;->f:F

    .line 10
    iget v0, v6, Lc/c/b/a/d/a;->j:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    move-object v0, p0

    .line 11
    invoke-virtual/range {v0 .. v5}, Lc/c/b/a/j/b;->l(FFFFLc/c/b/a/k/g;)V

    iget-object v0, p0, Lc/c/b/a/j/b;->h:Landroid/graphics/RectF;

    invoke-virtual {p0, v9, v0}, Lc/c/b/a/j/b;->m(Lc/c/b/a/f/d;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lc/c/b/a/j/b;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public e(Landroid/graphics/Canvas;)V
    .locals 32

    move-object/from16 v6, p0

    iget-object v0, v6, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-virtual {v6, v0}, Lc/c/b/a/j/g;->g(Lc/c/b/a/g/a/e;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v6, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v0}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v0

    .line 1
    iget-object v7, v0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    const/high16 v0, 0x40900000    # 4.5f

    .line 2
    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v8

    iget-object v0, v6, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v0}, Lc/c/b/a/g/a/a;->d()Z

    move-result v9

    const/4 v11, 0x0

    :goto_0
    iget-object v0, v6, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v0}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/b/a/d/l;->d()I

    move-result v0

    if-ge v11, v0, :cond_15

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lc/c/b/a/g/b/a;

    invoke-virtual {v6, v12}, Lc/c/b/a/j/c;->i(Lc/c/b/a/g/b/e;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v24, v7

    move/from16 v25, v8

    move/from16 v22, v9

    goto/16 :goto_10

    :cond_0
    invoke-virtual {v6, v12}, Lc/c/b/a/j/g;->a(Lc/c/b/a/g/b/e;)V

    iget-object v0, v6, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/b/a/g/a/b;->b(Lc/c/b/a/c/j$a;)Z

    move-result v0

    iget-object v1, v6, Lc/c/b/a/j/g;->e:Landroid/graphics/Paint;

    const-string v2, "8"

    invoke-static {v1, v2}, Lc/c/b/a/k/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    if-eqz v9, :cond_1

    neg-float v2, v8

    goto :goto_1

    :cond_1
    add-float v2, v1, v8

    :goto_1
    if-eqz v9, :cond_2

    add-float v3, v1, v8

    goto :goto_2

    :cond_2
    neg-float v3, v8

    :goto_2
    if-eqz v0, :cond_3

    neg-float v0, v2

    sub-float v2, v0, v1

    neg-float v0, v3

    sub-float v3, v0, v1

    :cond_3
    move v13, v2

    move v14, v3

    iget-object v0, v6, Lc/c/b/a/j/b;->i:[Lc/c/b/a/b/a;

    aget-object v15, v0, v11

    iget-object v0, v6, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->x0()Lc/c/b/a/e/e;

    move-result-object v5

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->z0()Lc/c/b/a/k/e;

    move-result-object v0

    invoke-static {v0}, Lc/c/b/a/k/e;->c(Lc/c/b/a/k/e;)Lc/c/b/a/k/e;

    move-result-object v4

    iget v0, v4, Lc/c/b/a/k/e;->b:F

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, v4, Lc/c/b/a/k/e;->b:F

    iget v0, v4, Lc/c/b/a/k/e;->c:F

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, v4, Lc/c/b/a/k/e;->c:F

    invoke-interface {v12}, Lc/c/b/a/g/b/a;->i0()Z

    move-result v0

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    if-nez v0, :cond_c

    const/4 v3, 0x0

    :goto_3
    int-to-float v0, v3

    iget-object v1, v15, Lc/c/b/a/b/a;->b:[F

    array-length v1, v1

    int-to-float v1, v1

    iget-object v2, v6, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    mul-float v1, v1, v17

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    iget-object v0, v15, Lc/c/b/a/b/a;->b:[F

    aget v1, v0, v3

    add-int/lit8 v2, v3, 0x2

    aget v0, v0, v2

    add-float/2addr v1, v0

    div-float v2, v1, v16

    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v0, v2}, Lc/c/b/a/k/j;->f(F)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v1, v15, Lc/c/b/a/b/a;->b:[F

    add-int/lit8 v19, v3, 0x1

    aget v1, v1, v19

    invoke-virtual {v0, v1}, Lc/c/b/a/k/j;->i(F)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v0, v2}, Lc/c/b/a/k/j;->e(F)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_7

    :cond_5
    div-int/lit8 v0, v3, 0x4

    invoke-interface {v12, v0}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v1

    check-cast v1, Lc/c/b/a/d/c;

    .line 3
    iget v10, v1, Lc/c/b/a/d/g;->c:F

    .line 4
    invoke-interface {v12}, Lc/c/b/a/g/b/e;->j0()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-virtual {v5, v1}, Lc/c/b/a/e/e;->a(Lc/c/b/a/d/c;)Ljava/lang/String;

    move-result-object v20

    cmpl-float v21, v10, v18

    if-ltz v21, :cond_6

    move-object/from16 v21, v1

    iget-object v1, v15, Lc/c/b/a/b/a;->b:[F

    aget v1, v1, v19

    add-float/2addr v1, v13

    goto :goto_4

    :cond_6
    move-object/from16 v21, v1

    iget-object v1, v15, Lc/c/b/a/b/a;->b:[F

    add-int/lit8 v22, v3, 0x3

    aget v1, v1, v22

    add-float/2addr v1, v14

    :goto_4
    move/from16 v22, v1

    invoke-interface {v12, v0}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v24, v7

    move-object/from16 v7, v21

    move-object/from16 v1, p1

    move/from16 v21, v2

    move-object/from16 v2, v20

    move/from16 v20, v3

    move/from16 v3, v21

    move/from16 v25, v8

    move-object v8, v4

    move/from16 v4, v22

    move/from16 v22, v9

    move-object v9, v5

    move/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lc/c/b/a/j/b;->k(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_5

    :cond_7
    move/from16 v21, v2

    move/from16 v20, v3

    move-object/from16 v24, v7

    move/from16 v25, v8

    move/from16 v22, v9

    move-object v7, v1

    move-object v8, v4

    move-object v9, v5

    .line 5
    :goto_5
    iget-object v0, v7, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 6
    invoke-interface {v12}, Lc/c/b/a/g/b/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7
    iget-object v0, v7, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    cmpl-float v1, v10, v18

    if-ltz v1, :cond_8

    .line 8
    iget-object v1, v15, Lc/c/b/a/b/a;->b:[F

    aget v1, v1, v19

    add-float/2addr v1, v13

    goto :goto_6

    :cond_8
    iget-object v1, v15, Lc/c/b/a/b/a;->b:[F

    add-int/lit8 v3, v20, 0x3

    aget v1, v1, v3

    add-float/2addr v1, v14

    :goto_6
    iget v2, v8, Lc/c/b/a/k/e;->b:F

    add-float v2, v21, v2

    iget v3, v8, Lc/c/b/a/k/e;->c:F

    add-float/2addr v1, v3

    float-to-int v2, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v31

    move-object/from16 v26, p1

    move-object/from16 v27, v0

    move/from16 v28, v2

    move/from16 v29, v1

    invoke-static/range {v26 .. v31}, Lc/c/b/a/k/i;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v20, v3

    move-object/from16 v24, v7

    move/from16 v25, v8

    move/from16 v22, v9

    move-object v8, v4

    move-object v9, v5

    :cond_a
    :goto_8
    add-int/lit8 v3, v20, 0x4

    move-object v4, v8

    move-object v5, v9

    move/from16 v9, v22

    move-object/from16 v7, v24

    move/from16 v8, v25

    goto/16 :goto_3

    :cond_b
    :goto_9
    move-object/from16 v24, v7

    move/from16 v25, v8

    move/from16 v22, v9

    move-object v8, v4

    goto/16 :goto_f

    :cond_c
    move-object/from16 v24, v7

    move/from16 v25, v8

    move/from16 v22, v9

    move-object v8, v4

    move-object v9, v5

    iget-object v0, v6, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->t0()Lc/c/b/a/c/j$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/b/a/g/a/b;->a(Lc/c/b/a/c/j$a;)Lc/c/b/a/k/g;

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_a
    int-to-float v0, v7

    invoke-interface {v12}, Lc/c/b/a/g/b/e;->y0()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v6, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    mul-float v1, v1, v17

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    invoke-interface {v12, v7}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lc/c/b/a/d/c;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v15, Lc/c/b/a/b/a;->b:[F

    aget v1, v0, v10

    add-int/lit8 v2, v10, 0x2

    aget v0, v0, v2

    add-float/2addr v1, v0

    div-float v4, v1, v16

    invoke-interface {v12, v7}, Lc/c/b/a/g/b/e;->w(I)I

    move-result v19

    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v0, v4}, Lc/c/b/a/k/j;->f(F)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_f

    :cond_d
    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v1, v15, Lc/c/b/a/b/a;->b:[F

    add-int/lit8 v20, v10, 0x1

    aget v1, v1, v20

    invoke-virtual {v0, v1}, Lc/c/b/a/k/j;->i(F)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v6, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v0, v4}, Lc/c/b/a/k/j;->e(F)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_e

    :cond_e
    invoke-interface {v12}, Lc/c/b/a/g/b/e;->j0()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v9, v5}, Lc/c/b/a/e/e;->a(Lc/c/b/a/d/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v15, Lc/c/b/a/b/a;->b:[F

    aget v0, v0, v20

    .line 9
    iget v1, v5, Lc/c/b/a/d/g;->c:F

    cmpl-float v1, v1, v18

    if-ltz v1, :cond_f

    move v1, v13

    goto :goto_b

    :cond_f
    move v1, v14

    :goto_b
    add-float v21, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v4

    move/from16 v23, v4

    move/from16 v4, v21

    move-object v6, v5

    move/from16 v5, v19

    .line 10
    invoke-virtual/range {v0 .. v5}, Lc/c/b/a/j/b;->k(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_c

    :cond_10
    move/from16 v23, v4

    move-object v6, v5

    .line 11
    :goto_c
    iget-object v0, v6, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 12
    invoke-interface {v12}, Lc/c/b/a/g/b/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 13
    iget-object v0, v6, Lc/c/b/a/d/g;->e:Landroid/graphics/drawable/Drawable;

    .line 14
    iget-object v1, v15, Lc/c/b/a/b/a;->b:[F

    aget v1, v1, v20

    .line 15
    iget v2, v6, Lc/c/b/a/d/g;->c:F

    cmpl-float v2, v2, v18

    if-ltz v2, :cond_11

    move v2, v13

    goto :goto_d

    :cond_11
    move v2, v14

    :goto_d
    add-float/2addr v1, v2

    .line 16
    iget v2, v8, Lc/c/b/a/k/e;->b:F

    add-float v4, v23, v2

    iget v2, v8, Lc/c/b/a/k/e;->c:F

    add-float/2addr v1, v2

    float-to-int v2, v4

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v31

    move-object/from16 v26, p1

    move-object/from16 v27, v0

    move/from16 v28, v2

    move/from16 v29, v1

    invoke-static/range {v26 .. v31}, Lc/c/b/a/k/i;->e(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    :cond_12
    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v7, v7, 0x1

    :cond_13
    :goto_e
    move-object/from16 v6, p0

    goto/16 :goto_a

    .line 17
    :cond_14
    :goto_f
    sget-object v0, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {v0, v8}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    :goto_10
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, p0

    move/from16 v9, v22

    move-object/from16 v7, v24

    move/from16 v8, v25

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method public f()V
    .locals 7

    iget-object v0, p0, Lc/c/b/a/j/b;->g:Lc/c/b/a/g/a/a;

    invoke-interface {v0}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/b/a/d/l;->d()I

    move-result v1

    new-array v1, v1, [Lc/c/b/a/b/a;

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

    new-instance v4, Lc/c/b/a/b/a;

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

    invoke-direct {v4, v5, v6, v2}, Lc/c/b/a/b/a;-><init>(IIZ)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j(Landroid/graphics/Canvas;Lc/c/b/a/g/b/a;I)V
    .locals 24

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

    const/4 v4, 0x0

    const/4 v5, 0x1

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
    iget-object v11, v0, Lc/c/b/a/j/b;->l:Landroid/graphics/RectF;

    sub-float v12, v10, v6

    iput v12, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v6

    iput v10, v11, Landroid/graphics/RectF;->right:F

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

    iget-object v11, v0, Lc/c/b/a/j/b;->l:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    invoke-virtual {v10, v11}, Lc/c/b/a/k/j;->e(F)Z

    move-result v10

    if-nez v10, :cond_1

    move-object/from16 v15, p1

    goto :goto_2

    :cond_1
    iget-object v10, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v11, v0, Lc/c/b/a/j/b;->l:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    invoke-virtual {v10, v11}, Lc/c/b/a/k/j;->f(F)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_3

    :cond_2
    iget-object v10, v0, Lc/c/b/a/j/b;->l:Landroid/graphics/RectF;

    iget-object v11, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 9
    iget-object v11, v11, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v12, v11, Landroid/graphics/RectF;->top:F

    .line 10
    iput v12, v10, Landroid/graphics/RectF;->top:F

    .line 11
    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    .line 12
    iput v11, v10, Landroid/graphics/RectF;->bottom:F

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

    if-ne v2, v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_5

    iget-object v2, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/e;->B0()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    :cond_5
    :goto_5
    iget-object v2, v6, Lc/c/b/a/b/a;->b:[F

    array-length v7, v2

    if-ge v4, v7, :cond_c

    .line 21
    iget-object v7, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    add-int/lit8 v8, v4, 0x2

    aget v2, v2, v8

    invoke-virtual {v7, v2}, Lc/c/b/a/k/j;->e(F)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-object v2, v0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    iget-object v7, v6, Lc/c/b/a/b/a;->b:[F

    aget v7, v7, v4

    invoke-virtual {v2, v7}, Lc/c/b/a/k/j;->f(F)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_7

    :cond_7
    if-nez v5, :cond_8

    iget-object v2, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    div-int/lit8 v7, v4, 0x4

    invoke-interface {v1, v7}, Lc/c/b/a/g/b/e;->S0(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/e;->o0()Lc/c/b/a/i/a;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/e;->o0()Lc/c/b/a/i/a;

    move-result-object v2

    iget-object v7, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    iget-object v10, v6, Lc/c/b/a/b/a;->b:[F

    aget v17, v10, v4

    add-int/lit8 v11, v4, 0x3

    aget v18, v10, v11

    aget v19, v10, v4

    add-int/lit8 v11, v4, 0x1

    aget v20, v10, v11

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget-object v23, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_9
    invoke-interface/range {p2 .. p2}, Lc/c/b/a/g/b/e;->V()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/LinearGradient;

    iget-object v9, v6, Lc/c/b/a/b/a;->b:[F

    aget v17, v9, v4

    add-int/lit8 v10, v4, 0x3

    aget v18, v9, v10

    aget v19, v9, v4

    add-int/lit8 v10, v4, 0x1

    aget v20, v9, v10

    div-int/lit8 v9, v4, 0x4

    invoke-interface {v1, v9}, Lc/c/b/a/g/b/e;->K0(I)Lc/c/b/a/i/a;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v21, 0x0

    invoke-interface {v1, v9}, Lc/c/b/a/g/b/e;->K0(I)Lc/c/b/a/i/a;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v22, 0x0

    sget-object v23, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_a
    iget-object v2, v6, Lc/c/b/a/b/a;->b:[F

    aget v13, v2, v4

    add-int/lit8 v7, v4, 0x1

    aget v14, v2, v7

    aget v9, v2, v8

    add-int/lit8 v10, v4, 0x3

    aget v16, v2, v10

    iget-object v2, v0, Lc/c/b/a/j/g;->c:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v15, v9

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    if-eqz v3, :cond_b

    iget-object v2, v6, Lc/c/b/a/b/a;->b:[F

    aget v13, v2, v4

    aget v14, v2, v7

    aget v15, v2, v8

    aget v16, v2, v10

    iget-object v2, v0, Lc/c/b/a/j/b;->k:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_b
    :goto_6
    add-int/lit8 v4, v4, 0x4

    move-object/from16 v15, p1

    goto/16 :goto_5

    :cond_c
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

    invoke-virtual {p4, v0, p2, p1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lc/c/b/a/j/b;->h:Landroid/graphics/RectF;

    iget-object p2, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    iput p2, p1, Landroid/graphics/RectF;->top:F

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    mul-float p2, p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

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

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 1
    iput v0, p1, Lc/c/b/a/f/d;->i:F

    iput p2, p1, Lc/c/b/a/f/d;->j:F

    return-void
.end method
