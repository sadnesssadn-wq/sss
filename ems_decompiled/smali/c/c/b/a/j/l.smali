.class public abstract Lc/c/b/a/j/l;
.super Lc/c/b/a/j/c;
.source ""


# instance fields
.field public g:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/c/b/a/j/c;-><init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/l;->g:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public j(Landroid/graphics/Canvas;FFLc/c/b/a/g/b/h;)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    invoke-interface {p4}, Lc/c/b/a/g/b/b;->n0()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    invoke-interface {p4}, Lc/c/b/a/g/b/h;->e0()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    invoke-interface {p4}, Lc/c/b/a/g/b/h;->y()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-interface {p4}, Lc/c/b/a/g/b/h;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/b/a/j/l;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lc/c/b/a/j/l;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 2
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lc/c/b/a/j/l;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 3
    iget-object v1, v1, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 4
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lc/c/b/a/j/l;->g:Landroid/graphics/Path;

    iget-object v0, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    invoke-interface {p4}, Lc/c/b/a/g/b/h;->M0()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lc/c/b/a/j/l;->g:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lc/c/b/a/j/l;->g:Landroid/graphics/Path;

    iget-object p4, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 5
    iget-object p4, p4, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->left:F

    .line 6
    invoke-virtual {p2, p4, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lc/c/b/a/j/l;->g:Landroid/graphics/Path;

    iget-object p4, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 7
    iget-object p4, p4, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->right:F

    .line 8
    invoke-virtual {p2, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lc/c/b/a/j/l;->g:Landroid/graphics/Path;

    iget-object p3, p0, Lc/c/b/a/j/g;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
