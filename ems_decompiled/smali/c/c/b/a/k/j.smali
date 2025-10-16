.class public Lc/c/b/a/k/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public b:Landroid/graphics/RectF;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:Landroid/graphics/Matrix;

.field public final p:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lc/c/b/a/k/j;->c:F

    iput v0, p0, Lc/c/b/a/k/j;->d:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lc/c/b/a/k/j;->e:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, Lc/c/b/a/k/j;->f:F

    iput v1, p0, Lc/c/b/a/k/j;->g:F

    iput v2, p0, Lc/c/b/a/k/j;->h:F

    iput v1, p0, Lc/c/b/a/k/j;->i:F

    iput v1, p0, Lc/c/b/a/k/j;->j:F

    iput v0, p0, Lc/c/b/a/k/j;->k:F

    iput v0, p0, Lc/c/b/a/k/j;->l:F

    iput v0, p0, Lc/c/b/a/k/j;->m:F

    iput v0, p0, Lc/c/b/a/k/j;->n:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc/c/b/a/k/j;->o:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lc/c/b/a/k/j;->p:[F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lc/c/b/a/k/j;->i:F

    iget v1, p0, Lc/c/b/a/k/j;->g:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lc/c/b/a/k/j;->j:F

    iget v1, p0, Lc/c/b/a/k/j;->e:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(F)Z
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget-object v0, p0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(F)Z
    .locals 2

    iget-object v0, p0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(F)Z
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iget-object v0, p0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(F)Z
    .locals 1

    iget-object v0, p0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(F)Z
    .locals 1

    invoke-virtual {p0, p1}, Lc/c/b/a/k/j;->e(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lc/c/b/a/k/j;->f(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i(F)Z
    .locals 1

    invoke-virtual {p0, p1}, Lc/c/b/a/k/j;->g(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lc/c/b/a/k/j;->d(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 9

    iget-object v0, p0, Lc/c/b/a/k/j;->p:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lc/c/b/a/k/j;->p:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x5

    aget v6, v0, v5

    const/4 v7, 0x4

    aget v0, v0, v7

    iget v8, p0, Lc/c/b/a/k/j;->g:F

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v8, p0, Lc/c/b/a/k/j;->h:F

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lc/c/b/a/k/j;->i:F

    iget v4, p0, Lc/c/b/a/k/j;->e:F

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v4, p0, Lc/c/b/a/k/j;->f:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lc/c/b/a/k/j;->j:F

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    neg-float v0, v0

    iget v4, p0, Lc/c/b/a/k/j;->i:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v4, v8

    mul-float v4, v4, v0

    iget v0, p0, Lc/c/b/a/k/j;->m:F

    sub-float/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lc/c/b/a/k/j;->m:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lc/c/b/a/k/j;->k:F

    iget v0, p0, Lc/c/b/a/k/j;->j:F

    sub-float/2addr v0, v8

    mul-float v0, v0, p2

    iget p2, p0, Lc/c/b/a/k/j;->n:F

    add-float/2addr v0, p2

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget v0, p0, Lc/c/b/a/k/j;->n:F

    neg-float v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lc/c/b/a/k/j;->l:F

    iget-object v0, p0, Lc/c/b/a/k/j;->p:[F

    iget v2, p0, Lc/c/b/a/k/j;->k:F

    aput v2, v0, v1

    iget v1, p0, Lc/c/b/a/k/j;->i:F

    aput v1, v0, v3

    aput p2, v0, v5

    iget p2, p0, Lc/c/b/a/k/j;->j:F

    aput p2, v0, v7

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public k()F
    .locals 2

    iget v0, p0, Lc/c/b/a/k/j;->d:F

    iget-object v1, p0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public l()F
    .locals 2

    iget v0, p0, Lc/c/b/a/k/j;->c:F

    iget-object v1, p0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public m(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lc/c/b/a/k/j;->j(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p2, p0, Lc/c/b/a/k/j;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method public n(FFFF)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, p0, Lc/c/b/a/k/j;->c:F

    sub-float/2addr v1, p3

    iget p3, p0, Lc/c/b/a/k/j;->d:F

    sub-float/2addr p3, p4

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
