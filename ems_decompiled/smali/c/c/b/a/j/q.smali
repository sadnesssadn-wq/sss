.class public Lc/c/b/a/j/q;
.super Lc/c/b/a/j/a;
.source ""


# instance fields
.field public h:Lc/c/b/a/c/i;

.field public i:Landroid/graphics/Path;

.field public j:[F

.field public k:Landroid/graphics/RectF;

.field public l:[F

.field public m:Landroid/graphics/RectF;

.field public n:[F

.field public o:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lc/c/b/a/k/j;Lc/c/b/a/c/i;Lc/c/b/a/k/g;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lc/c/b/a/j/a;-><init>(Lc/c/b/a/k/j;Lc/c/b/a/k/g;Lc/c/b/a/c/a;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/q;->i:Landroid/graphics/Path;

    const/4 p1, 0x2

    new-array p3, p1, [F

    iput-object p3, p0, Lc/c/b/a/j/q;->j:[F

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lc/c/b/a/j/q;->k:Landroid/graphics/RectF;

    new-array p1, p1, [F

    iput-object p1, p0, Lc/c/b/a/j/q;->l:[F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/q;->m:Landroid/graphics/RectF;

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lc/c/b/a/j/q;->n:[F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/q;->o:Landroid/graphics/Path;

    iput-object p2, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    iget-object p1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lc/c/b/a/k/i;->d(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

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

    invoke-virtual {v0}, Lc/c/b/a/k/j;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    iget-object p2, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget-object p2, p2, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 2
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 3
    invoke-virtual {p1, v0, p2}, Lc/c/b/a/k/g;->c(FF)Lc/c/b/a/k/d;

    move-result-object p1

    iget-object p2, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 4
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 5
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 6
    invoke-virtual {p2, v1, v0}, Lc/c/b/a/k/g;->c(FF)Lc/c/b/a/k/d;

    move-result-object p2

    if-eqz p3, :cond_0

    iget-wide v0, p2, Lc/c/b/a/k/d;->b:D

    double-to-float p3, v0

    iget-wide v0, p1, Lc/c/b/a/k/d;->b:D

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lc/c/b/a/k/d;->b:D

    double-to-float p3, v0

    iget-wide v0, p2, Lc/c/b/a/k/d;->b:D

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
    invoke-super {p0, p1, p2}, Lc/c/b/a/j/a;->b(FF)V

    invoke-virtual {p0}, Lc/c/b/a/j/q;->c()V

    return-void
.end method

.method public b(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lc/c/b/a/j/a;->b(FF)V

    invoke-virtual {p0}, Lc/c/b/a/j/q;->c()V

    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-virtual {v0}, Lc/c/b/a/c/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 1
    iget v2, v2, Lc/c/b/a/c/b;->d:F

    .line 2
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    invoke-static {v1, v0}, Lc/c/b/a/k/i;->b(Landroid/graphics/Paint;Ljava/lang/String;)Lc/c/b/a/k/b;

    move-result-object v0

    iget v1, v0, Lc/c/b/a/k/b;->b:F

    iget-object v2, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    const-string v3, "Q"

    invoke-static {v2, v3}, Lc/c/b/a/k/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lc/c/b/a/k/i;->h(FFF)Lc/c/b/a/k/b;

    move-result-object v3

    iget-object v4, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    iget v2, v3, Lc/c/b/a/k/b;->b:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lc/c/b/a/c/i;->C:I

    iget-object v1, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    iget v2, v3, Lc/c/b/a/k/b;->c:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Lc/c/b/a/c/i;->D:I

    .line 3
    sget-object v1, Lc/c/b/a/k/b;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v3}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object v1, Lc/c/b/a/k/b;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, v0}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    return-void
.end method

.method public d(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V
    .locals 0

    iget-object p3, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget-object p3, p3, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 2
    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p3, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 3
    iget-object p3, p3, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    .line 4
    invoke-virtual {p4, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public e(Landroid/graphics/Canvas;Ljava/lang/String;FFLc/c/b/a/k/e;F)V
    .locals 8

    iget-object v0, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    .line 1
    sget-object v1, Lc/c/b/a/k/i;->k:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lc/c/b/a/k/i;->j:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    sget-object v2, Lc/c/b/a/k/i;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sub-float v2, v3, v2

    sget-object v4, Lc/c/b/a/k/i;->k:Landroid/graphics/Paint$FontMetrics;

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v5

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    cmpl-float v6, p6, v3

    if-eqz v6, :cond_2

    sget-object v3, Lc/c/b/a/k/i;->j:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v3, v3, v6

    sub-float/2addr v2, v3

    mul-float v3, v1, v6

    sub-float/2addr v4, v3

    iget v3, p5, Lc/c/b/a/k/e;->b:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_0

    iget v3, p5, Lc/c/b/a/k/e;->c:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lc/c/b/a/k/i;->j:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v1, p6}, Lc/c/b/a/k/i;->h(FFF)Lc/c/b/a/k/b;

    move-result-object v1

    iget v3, v1, Lc/c/b/a/k/b;->b:F

    iget v7, p5, Lc/c/b/a/k/e;->b:F

    sub-float/2addr v7, v6

    mul-float v7, v7, v3

    sub-float/2addr p3, v7

    iget v3, v1, Lc/c/b/a/k/b;->c:F

    iget p5, p5, Lc/c/b/a/k/e;->c:F

    sub-float/2addr p5, v6

    mul-float p5, p5, v3

    sub-float/2addr p4, p5

    .line 2
    sget-object p5, Lc/c/b/a/k/b;->d:Lc/c/b/a/k/f;

    invoke-virtual {p5, v1}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, p6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p1, p2, v2, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    iget p6, p5, Lc/c/b/a/k/e;->b:F

    cmpl-float p6, p6, v3

    if-nez p6, :cond_3

    iget p6, p5, Lc/c/b/a/k/e;->c:F

    cmpl-float p6, p6, v3

    if-eqz p6, :cond_4

    :cond_3
    sget-object p6, Lc/c/b/a/k/i;->j:Landroid/graphics/Rect;

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p6

    int-to-float p6, p6

    iget v3, p5, Lc/c/b/a/k/e;->b:F

    mul-float p6, p6, v3

    sub-float/2addr v2, p6

    iget p5, p5, Lc/c/b/a/k/e;->c:F

    mul-float v1, v1, p5

    sub-float/2addr v4, v1

    :cond_4
    add-float/2addr v2, p3

    add-float/2addr v4, p4

    invoke-virtual {p1, p2, v2, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public f(Landroid/graphics/Canvas;FLc/c/b/a/k/e;)V
    .locals 10

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

    iget-object v4, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    iget-object v4, v4, Lc/c/b/a/c/a;->k:[F

    div-int/lit8 v5, v3, 0x2

    aget v4, v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    invoke-virtual {v3, v1}, Lc/c/b/a/k/g;->g([F)V

    :goto_1
    if-ge v2, v0, :cond_2

    aget v6, v1, v2

    iget-object v3, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v3, v6}, Lc/c/b/a/k/j;->h(F)Z

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

    move-result-object v5

    .line 2
    iget-object v3, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Lc/c/b/a/j/q;->e(Landroid/graphics/Canvas;Ljava/lang/String;FFLc/c/b/a/k/e;F)V

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

    iget-object v1, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    .line 3
    iget v1, v1, Lc/c/b/a/c/a;->h:F

    neg-float v1, v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lc/c/b/a/j/q;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method public h(Landroid/graphics/Canvas;)V
    .locals 8

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
    iget v0, v0, Lc/c/b/a/c/b;->c:F

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
    iget-object v4, v3, Lc/c/b/a/c/i;->E:Lc/c/b/a/c/i$a;

    .line 10
    sget-object v5, Lc/c/b/a/c/i$a;->c:Lc/c/b/a/c/i$a;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    if-ne v4, v5, :cond_1

    iput v7, v2, Lc/c/b/a/k/e;->b:F

    iput v6, v2, Lc/c/b/a/k/e;->c:F

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 11
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 12
    :cond_1
    sget-object v5, Lc/c/b/a/c/i$a;->f:Lc/c/b/a/c/i$a;

    if-ne v4, v5, :cond_2

    iput v7, v2, Lc/c/b/a/k/e;->b:F

    iput v6, v2, Lc/c/b/a/k/e;->c:F

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 13
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    .line 14
    iget v0, v3, Lc/c/b/a/c/i;->D:I

    int-to-float v0, v0

    goto :goto_3

    :cond_2
    sget-object v5, Lc/c/b/a/c/i$a;->d:Lc/c/b/a/c/i$a;

    if-ne v4, v5, :cond_3

    :goto_0
    iput v7, v2, Lc/c/b/a/k/e;->b:F

    iput v1, v2, Lc/c/b/a/k/e;->c:F

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    goto :goto_2

    :cond_3
    sget-object v5, Lc/c/b/a/c/i$a;->g:Lc/c/b/a/c/i$a;

    iput v7, v2, Lc/c/b/a/k/e;->b:F

    if-ne v4, v5, :cond_4

    iput v1, v2, Lc/c/b/a/k/e;->c:F

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 15
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    .line 16
    iget v0, v3, Lc/c/b/a/c/i;->D:I

    int-to-float v0, v0

    :goto_1
    sub-float/2addr v1, v0

    goto :goto_4

    :cond_4
    iput v6, v2, Lc/c/b/a/k/e;->c:F

    iget-object v3, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 17
    iget-object v3, v3, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    .line 18
    invoke-virtual {p0, p1, v3, v2}, Lc/c/b/a/j/q;->f(Landroid/graphics/Canvas;FLc/c/b/a/k/e;)V

    goto :goto_0

    .line 19
    :goto_2
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    :goto_3
    add-float/2addr v1, v0

    .line 20
    :goto_4
    invoke-virtual {p0, p1, v1, v2}, Lc/c/b/a/j/q;->f(Landroid/graphics/Canvas;FLc/c/b/a/k/e;)V

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

    iget-object v1, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    iget-object v2, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

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

    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 11
    iget v6, v1, Landroid/graphics/RectF;->top:F

    .line 12
    iget v5, v1, Landroid/graphics/RectF;->right:F

    .line 13
    iget-object v7, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

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

    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 17
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 18
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 19
    iget-object v6, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public j(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 1
    iget-boolean v1, v0, Lc/c/b/a/c/a;->r:Z

    if-eqz v1, :cond_4

    .line 2
    iget-boolean v0, v0, Lc/c/b/a/c/b;->a:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lc/c/b/a/j/q;->g()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lc/c/b/a/j/q;->j:[F

    array-length v1, v1

    iget-object v2, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    iget v2, v2, Lc/c/b/a/c/a;->m:I

    mul-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    iget v1, v1, Lc/c/b/a/c/a;->m:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lc/c/b/a/j/q;->j:[F

    :cond_1
    iget-object v1, p0, Lc/c/b/a/j/q;->j:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    iget-object v4, v4, Lc/c/b/a/c/a;->k:[F

    div-int/lit8 v5, v3, 0x2

    aget v6, v4, v5

    aput v6, v1, v3

    add-int/lit8 v6, v3, 0x1

    aget v4, v4, v5

    aput v4, v1, v6

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    invoke-virtual {v3, v1}, Lc/c/b/a/k/g;->g([F)V

    .line 4
    iget-object v3, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    iget-object v4, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 5
    iget v4, v4, Lc/c/b/a/c/a;->g:I

    .line 6
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    iget-object v4, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    .line 7
    iget v4, v4, Lc/c/b/a/c/a;->h:F

    .line 8
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    iget-object v4, p0, Lc/c/b/a/j/q;->h:Lc/c/b/a/c/i;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 9
    iget-object v3, p0, Lc/c/b/a/j/q;->i:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    aget v4, v1, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, v1, v5

    invoke-virtual {p0, p1, v4, v5, v3}, Lc/c/b/a/j/q;->d(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public k(Landroid/graphics/Canvas;)V
    .locals 12

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

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c/b/a/c/g;

    .line 3
    iget-boolean v6, v6, Lc/c/b/a/c/b;->a:Z

    if-nez v6, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v7, p0, Lc/c/b/a/j/q;->m:Landroid/graphics/RectF;

    iget-object v8, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 5
    iget-object v8, v8, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v7, p0, Lc/c/b/a/j/q;->m:Landroid/graphics/RectF;

    const/high16 v8, -0x80000000

    invoke-virtual {v7, v8, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v7, p0, Lc/c/b/a/j/q;->m:Landroid/graphics/RectF;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    aput v2, v1, v3

    aput v2, v1, v4

    iget-object v7, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    invoke-virtual {v7, v1}, Lc/c/b/a/k/g;->g([F)V

    .line 7
    iget-object v7, p0, Lc/c/b/a/j/q;->n:[F

    aget v8, v1, v3

    aput v8, v7, v3

    iget-object v8, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 8
    iget-object v8, v8, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->top:F

    .line 9
    aput v9, v7, v4

    aget v9, v1, v3

    const/4 v10, 0x2

    aput v9, v7, v10

    .line 10
    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    const/4 v9, 0x3

    .line 11
    aput v8, v7, v9

    iget-object v7, p0, Lc/c/b/a/j/q;->o:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    iget-object v7, p0, Lc/c/b/a/j/q;->o:Landroid/graphics/Path;

    iget-object v8, p0, Lc/c/b/a/j/q;->n:[F

    aget v11, v8, v3

    aget v8, v8, v4

    invoke-virtual {v7, v11, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, p0, Lc/c/b/a/j/q;->o:Landroid/graphics/Path;

    iget-object v8, p0, Lc/c/b/a/j/q;->n:[F

    aget v10, v8, v10

    aget v8, v8, v9

    invoke-virtual {v7, v10, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v7, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v7, p0, Lc/c/b/a/j/q;->o:Landroid/graphics/Path;

    iget-object v8, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_2
    return-void
.end method
