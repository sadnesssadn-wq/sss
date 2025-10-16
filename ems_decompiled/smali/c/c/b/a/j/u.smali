.class public Lc/c/b/a/j/u;
.super Lc/c/b/a/j/t;
.source ""


# instance fields
.field public r:Landroid/graphics/Path;

.field public s:Landroid/graphics/Path;

.field public t:[F


# direct methods
.method public constructor <init>(Lc/c/b/a/k/j;Lc/c/b/a/c/j;Lc/c/b/a/k/g;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc/c/b/a/j/t;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/j;Lc/c/b/a/k/g;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/u;->r:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/u;->s:Landroid/graphics/Path;

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lc/c/b/a/j/u;->t:[F

    iget-object p1, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public a(FFZ)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v0}, Lc/c/b/a/k/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    iget-object p2, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 3
    iget-object p2, p2, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 4
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 5
    invoke-virtual {p1, v0, p2}, Lc/c/b/a/k/g;->c(FF)Lc/c/b/a/k/d;

    move-result-object p1

    iget-object p2, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 6
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 7
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 8
    invoke-virtual {p2, v1, v0}, Lc/c/b/a/k/g;->c(FF)Lc/c/b/a/k/d;

    move-result-object p2

    if-nez p3, :cond_0

    iget-wide v0, p1, Lc/c/b/a/k/d;->b:D

    double-to-float p3, v0

    iget-wide v0, p2, Lc/c/b/a/k/d;->b:D

    goto :goto_0

    :cond_0
    iget-wide v0, p2, Lc/c/b/a/k/d;->b:D

    double-to-float p3, v0

    iget-wide v0, p1, Lc/c/b/a/k/d;->b:D

    :goto_0
    double-to-float v0, v0

    .line 9
    sget-object v1, Lc/c/b/a/k/d;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, p1}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object p1, Lc/c/b/a/k/d;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, p2}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    move p1, p3

    move p2, v0

    .line 10
    :cond_1
    invoke-virtual {p0, p1, p2}, Lc/c/b/a/j/a;->b(FF)V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;F[FF)V
    .locals 6

    iget-object v0, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 1
    iget v1, v1, Lc/c/b/a/c/b;->d:F

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 3
    iget v1, v1, Lc/c/b/a/c/b;->e:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 5
    iget-boolean v1, v0, Lc/c/b/a/c/j;->C:Z

    xor-int/lit8 v1, v1, 0x1

    .line 6
    iget-boolean v2, v0, Lc/c/b/a/c/j;->D:Z

    .line 7
    iget v0, v0, Lc/c/b/a/c/a;->m:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    invoke-virtual {v2, v1}, Lc/c/b/a/c/a;->c(I)Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x2

    aget v3, p3, v3

    sub-float v4, p2, p4

    iget-object v5, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lc/c/b/a/j/t;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lc/c/b/a/j/t;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    .line 3
    iget v1, v1, Lc/c/b/a/c/a;->h:F

    neg-float v1, v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lc/c/b/a/j/t;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public e()[F
    .locals 4

    iget-object v0, p0, Lc/c/b/a/j/t;->l:[F

    array-length v0, v0

    iget-object v1, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    iget v1, v1, Lc/c/b/a/c/a;->m:I

    mul-int/lit8 v2, v1, 0x2

    if-eq v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [F

    iput-object v0, p0, Lc/c/b/a/j/t;->l:[F

    :cond_0
    iget-object v0, p0, Lc/c/b/a/j/t;->l:[F

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    iget-object v2, v2, Lc/c/b/a/c/a;->k:[F

    div-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    invoke-virtual {v1, v0}, Lc/c/b/a/k/g;->g([F)V

    return-object v0
.end method

.method public f(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2

    aget v0, p3, p2

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    aget p2, p3, p2

    iget-object p3, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 3
    iget-object p3, p3, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method public g(Landroid/graphics/Canvas;)V
    .locals 8

    sget-object v0, Lc/c/b/a/c/j$b;->c:Lc/c/b/a/c/j$b;

    iget-object v1, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 1
    iget-boolean v2, v1, Lc/c/b/a/c/b;->a:Z

    if-eqz v2, :cond_2

    .line 2
    iget-boolean v1, v1, Lc/c/b/a/c/a;->t:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/c/b/a/j/u;->e()[F

    move-result-object v1

    iget-object v2, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v3, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v3, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 4
    iget v3, v3, Lc/c/b/a/c/b;->d:F

    .line 5
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v3, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 6
    iget v3, v3, Lc/c/b/a/c/b;->e:I

    .line 7
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v2}, Lc/c/b/a/k/i;->d(F)F

    move-result v2

    iget-object v3, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    const-string v4, "Q"

    invoke-static {v3, v4}, Lc/c/b/a/k/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 8
    iget-object v5, v4, Lc/c/b/a/c/j;->J:Lc/c/b/a/c/j$a;

    .line 9
    iget-object v6, v4, Lc/c/b/a/c/j;->I:Lc/c/b/a/c/j$b;

    .line 10
    sget-object v7, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    if-ne v5, v7, :cond_1

    .line 11
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 13
    :goto_0
    iget v2, v4, Lc/c/b/a/c/b;->c:F

    .line 14
    invoke-virtual {p0, p1, v0, v1, v2}, Lc/c/b/a/j/u;->c(Landroid/graphics/Canvas;F[FF)V

    :cond_2
    :goto_1
    return-void
.end method

.method public h(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 1
    iget-boolean v1, v0, Lc/c/b/a/c/b;->a:Z

    if-eqz v1, :cond_2

    .line 2
    iget-boolean v1, v0, Lc/c/b/a/c/a;->s:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    .line 4
    iget v0, v0, Lc/c/b/a/c/a;->i:I

    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 6
    iget v1, v1, Lc/c/b/a/c/a;->j:F

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 8
    iget-object v0, v0, Lc/c/b/a/c/j;->J:Lc/c/b/a/c/j$a;

    .line 9
    sget-object v1, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 10
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 11
    iget v5, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 13
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 14
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 15
    :goto_0
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 16
    iget-object v6, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public j(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 1
    iget-object v0, v0, Lc/c/b/a/c/a;->u:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lc/c/b/a/j/u;->t:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v5, 0x2

    aput v2, v1, v5

    const/4 v6, 0x3

    aput v2, v1, v6

    iget-object v7, p0, Lc/c/b/a/j/u;->s:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/c/b/a/c/g;

    .line 3
    iget-boolean v9, v9, Lc/c/b/a/c/b;->a:Z

    if-nez v9, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    iget-object v10, p0, Lc/c/b/a/j/t;->q:Landroid/graphics/RectF;

    iget-object v11, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 5
    iget-object v11, v11, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v10, p0, Lc/c/b/a/j/t;->q:Landroid/graphics/RectF;

    const/high16 v11, -0x80000000

    invoke-virtual {v10, v11, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v10, p0, Lc/c/b/a/j/t;->q:Landroid/graphics/RectF;

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    aput v2, v1, v3

    aput v2, v1, v5

    iget-object v10, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    invoke-virtual {v10, v1}, Lc/c/b/a/k/g;->g([F)V

    iget-object v10, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 7
    iget-object v10, v10, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    .line 8
    aput v11, v1, v4

    .line 9
    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    .line 10
    aput v10, v1, v6

    aget v10, v1, v3

    aget v11, v1, v4

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    aget v10, v1, v5

    aget v11, v1, v6

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v10, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v10, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v10, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v10, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
