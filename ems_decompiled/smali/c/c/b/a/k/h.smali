.class public Lc/c/b/a/k/h;
.super Lc/c/b/a/k/g;
.source ""


# direct methods
.method public constructor <init>(Lc/c/b/a/k/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c/b/a/k/g;-><init>(Lc/c/b/a/k/j;)V

    return-void
.end method


# virtual methods
.method public h(Z)V
    .locals 3

    iget-object v0, p0, Lc/c/b/a/k/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/c/b/a/k/g;->b:Landroid/graphics/Matrix;

    iget-object v0, p0, Lc/c/b/a/k/g;->c:Lc/c/b/a/k/j;

    .line 1
    iget-object v1, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 2
    iget v2, v0, Lc/c/b/a/k/j;->d:F

    .line 3
    invoke-virtual {v0}, Lc/c/b/a/k/j;->k()F

    move-result v0

    sub-float/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/c/b/a/k/g;->b:Landroid/graphics/Matrix;

    iget-object v0, p0, Lc/c/b/a/k/g;->c:Lc/c/b/a/k/j;

    .line 4
    iget v1, v0, Lc/c/b/a/k/j;->c:F

    .line 5
    invoke-virtual {v0}, Lc/c/b/a/k/j;->l()F

    move-result v0

    sub-float/2addr v1, v0

    neg-float v0, v1

    iget-object v1, p0, Lc/c/b/a/k/g;->c:Lc/c/b/a/k/j;

    .line 6
    iget v2, v1, Lc/c/b/a/k/j;->d:F

    .line 7
    invoke-virtual {v1}, Lc/c/b/a/k/j;->k()F

    move-result v1

    sub-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lc/c/b/a/k/g;->b:Landroid/graphics/Matrix;

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_0
    return-void
.end method
