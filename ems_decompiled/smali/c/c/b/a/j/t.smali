.class public Lc/c/b/a/j/t;
.super Lc/c/b/a/j/a;
.source ""


# instance fields
.field public h:Lc/c/b/a/c/j;

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Path;

.field public k:Landroid/graphics/RectF;

.field public l:[F

.field public m:Landroid/graphics/Path;

.field public n:Landroid/graphics/RectF;

.field public o:Landroid/graphics/Path;

.field public p:[F

.field public q:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lc/c/b/a/k/j;Lc/c/b/a/c/j;Lc/c/b/a/k/g;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lc/c/b/a/j/a;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/k/g;Lc/c/b/a/c/a;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/t;->j:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/t;->k:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p3, p1, [F

    iput-object p3, p0, Lc/c/b/a/j/t;->l:[F

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lc/c/b/a/j/t;->m:Landroid/graphics/Path;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lc/c/b/a/j/t;->n:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lc/c/b/a/j/t;->o:Landroid/graphics/Path;

    new-array p1, p1, [F

    iput-object p1, p0, Lc/c/b/a/j/t;->p:[F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/t;->q:Landroid/graphics/RectF;

    iput-object p2, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    iget-object p1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lc/c/b/a/k/i;->d(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/t;->i:Landroid/graphics/Paint;

    const p2, -0x777778

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lc/c/b/a/j/t;->i:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lc/c/b/a/j/t;->i:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Canvas;F[FF)V
    .locals 5

    iget-object v0, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 1
    iget-boolean v1, v0, Lc/c/b/a/c/j;->C:Z

    xor-int/lit8 v1, v1, 0x1

    .line 2
    iget-boolean v2, v0, Lc/c/b/a/c/j;->D:Z

    .line 3
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

    add-int/lit8 v3, v3, 0x1

    aget v3, p3, v3

    add-float/2addr v3, p4

    iget-object v4, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

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

    const/4 v1, 0x0

    iget-object v2, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    .line 3
    iget v2, v2, Lc/c/b/a/c/a;->h:F

    neg-float v2, v2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lc/c/b/a/j/t;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public e()[F
    .locals 5

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

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    iget-object v3, v3, Lc/c/b/a/c/a;->k:[F

    div-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    invoke-virtual {v1, v0}, Lc/c/b/a/k/g;->g([F)V

    return-object v0
.end method

.method public f(Landroid/graphics/Path;I[F)Landroid/graphics/Path;
    .locals 2

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-int/lit8 p2, p2, 0x1

    .line 2
    aget v1, p3, p2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 3
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 4
    aget p2, p3, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method public g(Landroid/graphics/Canvas;)V
    .locals 7

    sget-object v0, Lc/c/b/a/c/j$b;->c:Lc/c/b/a/c/j$b;

    iget-object v1, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 1
    iget-boolean v2, v1, Lc/c/b/a/c/b;->a:Z

    if-eqz v2, :cond_4

    .line 2
    iget-boolean v1, v1, Lc/c/b/a/c/a;->t:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/c/b/a/j/t;->e()[F

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

    iget-object v2, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 8
    iget v2, v2, Lc/c/b/a/c/b;->b:F

    .line 9
    iget-object v3, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    const-string v4, "A"

    invoke-static {v3, v4}, Lc/c/b/a/k/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40200000    # 2.5f

    div-float/2addr v3, v4

    iget-object v4, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 10
    iget v5, v4, Lc/c/b/a/c/b;->c:F

    add-float/2addr v3, v5

    .line 11
    iget-object v5, v4, Lc/c/b/a/c/j;->J:Lc/c/b/a/c/j$a;

    .line 12
    iget-object v4, v4, Lc/c/b/a/c/j;->I:Lc/c/b/a/c/j$b;

    .line 13
    sget-object v6, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    if-ne v5, v6, :cond_2

    if-ne v4, v0, :cond_1

    iget-object v0, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 14
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 16
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    if-ne v4, v0, :cond_3

    .line 17
    iget-object v0, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 18
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    add-float/2addr v0, v2

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 20
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    :goto_1
    sub-float/2addr v0, v2

    .line 21
    :goto_2
    invoke-virtual {p0, p1, v0, v1, v3}, Lc/c/b/a/j/t;->c(Landroid/graphics/Canvas;F[FF)V

    :cond_4
    :goto_3
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

    iget v4, v0, Landroid/graphics/RectF;->left:F

    .line 11
    iget v3, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 13
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 14
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 15
    :goto_0
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 16
    iget-object v6, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public i(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 1
    iget-boolean v1, v0, Lc/c/b/a/c/b;->a:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, v0, Lc/c/b/a/c/a;->r:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lc/c/b/a/j/t;->d()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p0}, Lc/c/b/a/j/t;->e()[F

    move-result-object v1

    iget-object v2, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    iget-object v3, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 4
    iget v3, v3, Lc/c/b/a/c/a;->g:I

    .line 5
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    iget-object v3, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    .line 6
    iget v3, v3, Lc/c/b/a/c/a;->h:F

    .line 7
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    iget-object v3, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, p0, Lc/c/b/a/j/t;->j:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v2, v3, v1}, Lc/c/b/a/j/t;->f(Landroid/graphics/Path;I[F)Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object p1, p0, Lc/c/b/a/j/t;->h:Lc/c/b/a/c/j;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Landroid/graphics/Canvas;)V
    .locals 10

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
    iget-object v1, p0, Lc/c/b/a/j/t;->p:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v5, p0, Lc/c/b/a/j/t;->o:Landroid/graphics/Path;

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

    iget-object v8, p0, Lc/c/b/a/j/t;->q:Landroid/graphics/RectF;

    iget-object v9, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 5
    iget-object v9, v9, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v8, p0, Lc/c/b/a/j/t;->q:Landroid/graphics/RectF;

    const/high16 v9, -0x80000000

    invoke-virtual {v8, v2, v9}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v8, p0, Lc/c/b/a/j/t;->q:Landroid/graphics/RectF;

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
