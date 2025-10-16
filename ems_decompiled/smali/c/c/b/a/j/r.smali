.class public Lc/c/b/a/j/r;
.super Lc/c/b/a/j/q;
.source ""


# instance fields
.field public p:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lc/c/b/a/k/j;Lc/c/b/a/c/i;Lc/c/b/a/k/g;Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc/c/b/a/j/q;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/c/i;Lc/c/b/a/k/g;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/r;->p:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public a(FFZ)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v0}, Lc/c/b/a/k/j;->a()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v0}, Lc/c/b/a/k/j;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    iget-object p2, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget-object p2, p2, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 2
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 3
    invoke-virtual {p1, v0, p2}, Lc/c/b/a/k/g;->c(FF)Lc/c/b/a/k/d;

    move-result-object p1

    iget-object p2, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 4
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 5
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 6
    invoke-virtual {p2, v1, v0}, Lc/c/b/a/k/g;->c(FF)Lc/c/b/a/k/d;

    move-result-object p2

    if-eqz p3, :cond_0

    iget-wide v0, p2, Lc/c/b/a/k/d;->c:D

    double-to-float p3, v0

    iget-wide v0, p1, Lc/c/b/a/k/d;->c:D

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lc/c/b/a/k/d;->c:D

    double-to-float p3, v0

    iget-wide v0, p2, Lc/c/b/a/k/d;->c:D

    :goto_0
    double-to-float v0, v0

    .line 7
    sget-object v1, Lc/c/b/a/k/d;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, p1}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object p1, Lc/c/b/a/k/d;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, p2}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    move p1, p3

    move p2, v0

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2}, Lc/c/b/a/j/q;->b(FF)V

    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 1
    iget v1, v1, Lc/c/b/a/c/b;->d:F

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-virtual {v0}, Lc/c/b/a/c/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    invoke-static {v1, v0}, Lc/c/b/a/k/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)Lc/c/b/a/k/b;

    move-result-object v0

    iget v1, v0, Lc/c/b/a/k/b;->b:F

    iget-object v2, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 3
    iget v3, v2, Lc/c/b/a/c/b;->b:F

    const/high16 v4, 0x40600000    # 3.5f

    mul-float v3, v3, v4

    add-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v3, v3

    .line 4
    iget v0, v0, Lc/c/b/a/k/b;->c:F

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lc/c/b/a/k/i;->h(FFF)Lc/c/b/a/k/b;

    move-result-object v1

    iget-object v2, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    iget v2, v1, Lc/c/b/a/k/b;->b:F

    .line 5
    iget v3, v0, Lc/c/b/a/c/b;->b:F

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 6
    iput v2, v0, Lc/c/b/a/c/i;->C:I

    iget v2, v1, Lc/c/b/a/k/b;->c:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lc/c/b/a/c/i;->D:I

    .line 7
    sget-object v0, Lc/c/b/a/k/b;->d:Lc/c/b/a/k/f;

    invoke-virtual {v0, v1}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    return-void
.end method

.method public d(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V
    .locals 0

    iget-object p2, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget-object p2, p2, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    .line 2
    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 3
    iget-object p2, p2, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 4
    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public f(Landroid/graphics/Canvas;FLc/c/b/a/k/e;)V
    .locals 11

    iget-object v0, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    iget v0, v0, Lc/c/b/a/c/a;->m:I

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    iget-object v5, v5, Lc/c/b/a/c/a;->k:[F

    div-int/lit8 v6, v3, 0x2

    aget v5, v5, v6

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    invoke-virtual {v3, v1}, Lc/c/b/a/k/g;->g([F)V

    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget v8, v1, v3

    iget-object v3, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v3, v8}, Lc/c/b/a/k/j;->i(F)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-virtual {v3}, Lc/c/b/a/c/a;->e()Lc/c/b/a/e/e;

    move-result-object v3

    iget-object v4, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    iget-object v4, v4, Lc/c/b/a/c/a;->k:[F

    div-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    .line 1
    invoke-virtual {v3, v4}, Lc/c/b/a/e/e;->b(F)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, p2

    move-object v9, p3

    .line 2
    invoke-virtual/range {v4 .. v10}, Lc/c/b/a/j/q;->e(Landroid/graphics/Canvas;Ljava/lang/String;FFLc/c/b/a/k/e;F)V

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    return-void
.end method

.method public g()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lc/c/b/a/j/q;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lc/c/b/a/j/q;->k:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget-object v2, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    .line 3
    iget v2, v2, Lc/c/b/a/c/a;->h:F

    neg-float v2, v2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lc/c/b/a/j/q;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public h(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 1
    iget-boolean v1, v0, Lc/c/b/a/c/b;->a:Z

    if-eqz v1, :cond_5

    .line 2
    iget-boolean v1, v0, Lc/c/b/a/c/a;->t:Z

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget v0, v0, Lc/c/b/a/c/b;->b:F

    .line 4
    iget-object v1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 5
    iget v2, v2, Lc/c/b/a/c/b;->d:F

    .line 6
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 7
    iget v2, v2, Lc/c/b/a/c/b;->e:I

    .line 8
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lc/c/b/a/k/e;->b(FF)Lc/c/b/a/k/e;

    move-result-object v2

    iget-object v3, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 9
    iget-object v3, v3, Lc/c/b/a/c/i;->E:Lc/c/b/a/c/i$a;

    .line 10
    sget-object v4, Lc/c/b/a/c/i$a;->c:Lc/c/b/a/c/i$a;

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_1

    iput v1, v2, Lc/c/b/a/k/e;->b:F

    iput v5, v2, Lc/c/b/a/k/e;->c:F

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 11
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 12
    :cond_1
    sget-object v4, Lc/c/b/a/c/i$a;->f:Lc/c/b/a/c/i$a;

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_2

    iput v6, v2, Lc/c/b/a/k/e;->b:F

    iput v5, v2, Lc/c/b/a/k/e;->c:F

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 13
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 14
    :cond_2
    sget-object v4, Lc/c/b/a/c/i$a;->d:Lc/c/b/a/c/i$a;

    if-ne v3, v4, :cond_3

    :goto_0
    iput v6, v2, Lc/c/b/a/k/e;->b:F

    iput v5, v2, Lc/c/b/a/k/e;->c:F

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    goto :goto_2

    :cond_3
    sget-object v4, Lc/c/b/a/c/i$a;->g:Lc/c/b/a/c/i$a;

    if-ne v3, v4, :cond_4

    iput v6, v2, Lc/c/b/a/k/e;->b:F

    iput v5, v2, Lc/c/b/a/k/e;->c:F

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 15
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    :goto_1
    add-float/2addr v1, v0

    goto :goto_4

    .line 16
    :cond_4
    iput v1, v2, Lc/c/b/a/k/e;->b:F

    iput v5, v2, Lc/c/b/a/k/e;->c:F

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 17
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v0

    .line 18
    invoke-virtual {p0, p1, v1, v2}, Lc/c/b/a/j/r;->f(Landroid/graphics/Canvas;FLc/c/b/a/k/e;)V

    goto :goto_0

    .line 19
    :goto_2
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v1, v0

    .line 20
    :goto_4
    invoke-virtual {p0, p1, v1, v2}, Lc/c/b/a/j/r;->f(Landroid/graphics/Canvas;FLc/c/b/a/k/e;)V

    .line 21
    sget-object p1, Lc/c/b/a/k/e;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, v2}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    :cond_5
    :goto_5
    return-void
.end method

.method public i(Landroid/graphics/Canvas;)V
    .locals 8

    sget-object v0, Lc/c/b/a/c/i$a;->e:Lc/c/b/a/c/i$a;

    iget-object v1, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 1
    iget-boolean v2, v1, Lc/c/b/a/c/a;->s:Z

    if-eqz v2, :cond_4

    .line 2
    iget-boolean v2, v1, Lc/c/b/a/c/b;->a:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    .line 4
    iget v1, v1, Lc/c/b/a/c/a;->i:I

    .line 5
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    iget-object v2, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 6
    iget v2, v2, Lc/c/b/a/c/a;->j:F

    .line 7
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 8
    iget-object v1, v1, Lc/c/b/a/c/i;->E:Lc/c/b/a/c/i$a;

    .line 9
    sget-object v2, Lc/c/b/a/c/i$a;->c:Lc/c/b/a/c/i$a;

    if-eq v1, v2, :cond_1

    sget-object v2, Lc/c/b/a/c/i$a;->f:Lc/c/b/a/c/i$a;

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_2

    :cond_1
    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 10
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->right:F

    .line 11
    iget v4, v1, Landroid/graphics/RectF;->top:F

    .line 12
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    .line 13
    iget-object v7, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v1, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 14
    iget-object v1, v1, Lc/c/b/a/c/i;->E:Lc/c/b/a/c/i$a;

    .line 15
    sget-object v2, Lc/c/b/a/c/i$a;->d:Lc/c/b/a/c/i$a;

    if-eq v1, v2, :cond_3

    sget-object v2, Lc/c/b/a/c/i$a;->g:Lc/c/b/a/c/i$a;

    if-eq v1, v2, :cond_3

    if-ne v1, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 16
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    .line 17
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 18
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 19
    iget-object v6, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public k(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 1
    iget-object v0, v0, Lc/c/b/a/c/a;->u:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lc/c/b/a/j/q;->l:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v5, p0, Lc/c/b/a/j/r;->p:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/c/b/a/c/g;

    .line 3
    iget-boolean v7, v7, Lc/c/b/a/c/b;->a:Z

    if-nez v7, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget-object v8, p0, Lc/c/b/a/j/q;->m:Landroid/graphics/RectF;

    iget-object v9, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 5
    iget-object v9, v9, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v8, p0, Lc/c/b/a/j/q;->m:Landroid/graphics/RectF;

    const/high16 v9, -0x80000000

    invoke-virtual {v8, v2, v9}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v8, p0, Lc/c/b/a/j/q;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v8, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    aput v2, v1, v4

    iget-object v8, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    invoke-virtual {v8, v1}, Lc/c/b/a/k/g;->g([F)V

    iget-object v8, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 7
    iget-object v8, v8, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    .line 8
    aget v9, v1, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 9
    iget-object v8, v8, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 10
    aget v9, v1, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
