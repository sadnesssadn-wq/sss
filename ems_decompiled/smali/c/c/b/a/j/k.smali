.class public abstract Lc/c/b/a/j/k;
.super Lc/c/b/a/j/l;
.source ""


# direct methods
.method public constructor <init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/c/b/a/j/l;-><init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    return-void
.end method


# virtual methods
.method public k(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V
    .locals 1

    shl-int/lit8 p4, p4, 0x18

    const v0, 0xffffff

    and-int/2addr p3, v0

    or-int/2addr p3, p4

    .line 1
    sget-object p4, Lc/c/b/a/k/i;->a:Landroid/util/DisplayMetrics;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p4

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public l(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    sget-object v0, Lc/c/b/a/k/i;->a:Landroid/util/DisplayMetrics;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p2, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 3
    iget-object p2, p2, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 4
    iget v2, p2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 5
    iget v3, p2, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    .line 6
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    .line 7
    invoke-virtual {p3, v1, v2, v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
