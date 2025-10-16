.class public Lc/d/a/c/r0/a;
.super Lc/d/a/c/j0/h;
.source ""

# interfaces
.implements Lc/d/a/c/c0/i$b;


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public final B:Landroid/content/Context;

.field public final C:Landroid/graphics/Paint$FontMetrics;

.field public final D:Lc/d/a/c/c0/i;

.field public final E:Landroid/view/View$OnLayoutChangeListener;

.field public final F:Landroid/graphics/Rect;

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:F

.field public N:F

.field public O:F

.field public P:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lc/d/a/c/j0/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lc/d/a/c/r0/a;->C:Landroid/graphics/Paint$FontMetrics;

    new-instance p2, Lc/d/a/c/c0/i;

    invoke-direct {p2, p0}, Lc/d/a/c/c0/i;-><init>(Lc/d/a/c/c0/i$b;)V

    iput-object p2, p0, Lc/d/a/c/r0/a;->D:Lc/d/a/c/c0/i;

    new-instance p3, Lc/d/a/c/r0/a$a;

    invoke-direct {p3, p0}, Lc/d/a/c/r0/a$a;-><init>(Lc/d/a/c/r0/a;)V

    iput-object p3, p0, Lc/d/a/c/r0/a;->E:Landroid/view/View$OnLayoutChangeListener;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lc/d/a/c/r0/a;->F:Landroid/graphics/Rect;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lc/d/a/c/r0/a;->M:F

    iput p3, p0, Lc/d/a/c/r0/a;->N:F

    const/high16 p4, 0x3f000000    # 0.5f

    iput p4, p0, Lc/d/a/c/r0/a;->O:F

    iput p3, p0, Lc/d/a/c/r0/a;->P:F

    iput-object p1, p0, Lc/d/a/c/r0/a;->B:Landroid/content/Context;

    .line 1
    iget-object p3, p2, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p3, Landroid/text/TextPaint;->density:F

    .line 3
    iget-object p1, p2, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    .line 4
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public final D()F
    .locals 2

    iget-object v0, p0, Lc/d/a/c/r0/a;->F:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/d/a/c/r0/a;->L:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/d/a/c/r0/a;->J:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/r0/a;->F:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/d/a/c/r0/a;->L:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/d/a/c/r0/a;->J:I

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lc/d/a/c/r0/a;->F:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/d/a/c/r0/a;->L:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/d/a/c/r0/a;->J:I

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lc/d/a/c/r0/a;->F:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/d/a/c/r0/a;->L:I

    sub-int/2addr v0, v1

    iget v1, p0, Lc/d/a/c/r0/a;->J:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final E()Lc/d/a/c/j0/f;
    .locals 7

    invoke-virtual {p0}, Lc/d/a/c/r0/a;->D()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lc/d/a/c/r0/a;->K:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v5

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v1, Lc/d/a/c/j0/i;

    new-instance v2, Lc/d/a/c/j0/g;

    iget v3, p0, Lc/d/a/c/r0/a;->K:I

    int-to-float v3, v3

    invoke-direct {v2, v3}, Lc/d/a/c/j0/g;-><init>(F)V

    invoke-direct {v1, v2, v0}, Lc/d/a/c/j0/i;-><init>(Lc/d/a/c/j0/f;F)V

    return-object v1
.end method

.method public a()V
    .locals 0

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lc/d/a/c/r0/a;->D()F

    move-result v0

    iget v1, p0, Lc/d/a/c/r0/a;->K:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    iget v1, p0, Lc/d/a/c/r0/a;->K:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v1

    neg-double v1, v3

    double-to-float v1, v1

    iget v2, p0, Lc/d/a/c/r0/a;->M:F

    iget v3, p0, Lc/d/a/c/r0/a;->N:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    add-float/2addr v5, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lc/d/a/c/r0/a;->O:F

    mul-float v6, v6, v7

    add-float/2addr v6, v4

    invoke-virtual {p1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Lc/d/a/c/j0/h;->draw(Landroid/graphics/Canvas;)V

    .line 1
    iget-object v0, p0, Lc/d/a/c/r0/a;->A:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 3
    iget-object v2, p0, Lc/d/a/c/r0/a;->D:Lc/d/a/c/c0/i;

    .line 4
    iget-object v2, v2, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    .line 5
    iget-object v3, p0, Lc/d/a/c/r0/a;->C:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget-object v2, p0, Lc/d/a/c/r0/a;->C:Landroid/graphics/Paint$FontMetrics;

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 6
    iget-object v2, p0, Lc/d/a/c/r0/a;->D:Lc/d/a/c/c0/i;

    .line 7
    iget-object v3, v2, Lc/d/a/c/c0/i;->f:Lc/d/a/c/g0/b;

    if-eqz v3, :cond_1

    .line 8
    iget-object v2, v2, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    iget-object v2, p0, Lc/d/a/c/r0/a;->D:Lc/d/a/c/c0/i;

    iget-object v3, p0, Lc/d/a/c/r0/a;->B:Landroid/content/Context;

    .line 10
    iget-object v4, v2, Lc/d/a/c/c0/i;->f:Lc/d/a/c/g0/b;

    iget-object v5, v2, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    iget-object v2, v2, Lc/d/a/c/c0/i;->b:Lc/d/a/c/g0/d;

    invoke-virtual {v4, v3, v5, v2}, Lc/d/a/c/g0/b;->e(Landroid/content/Context;Landroid/text/TextPaint;Lc/d/a/c/g0/d;)V

    .line 11
    iget-object v2, p0, Lc/d/a/c/r0/a;->D:Lc/d/a/c/c0/i;

    .line 12
    iget-object v2, v2, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    .line 13
    iget v3, p0, Lc/d/a/c/r0/a;->P:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_1
    iget-object v5, p0, Lc/d/a/c/r0/a;->A:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v8, v0

    int-to-float v9, v1

    iget-object v0, p0, Lc/d/a/c/r0/a;->D:Lc/d/a/c/c0/i;

    .line 14
    iget-object v10, v0, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    move-object v4, p1

    .line 15
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 16
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Lc/d/a/c/r0/a;->D:Lc/d/a/c/c0/i;

    .line 1
    iget-object v0, v0, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    .line 2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget v1, p0, Lc/d/a/c/r0/a;->I:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    iget v0, p0, Lc/d/a/c/r0/a;->G:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 1
    iget-object v1, p0, Lc/d/a/c/r0/a;->A:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lc/d/a/c/r0/a;->D:Lc/d/a/c/c0/i;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lc/d/a/c/c0/i;->a(Ljava/lang/String;)F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    .line 2
    iget v1, p0, Lc/d/a/c/r0/a;->H:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lc/d/a/c/j0/h;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 1
    iget-object p1, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object p1, p1, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/d/a/c/j0/l$b;

    invoke-direct {v0, p1}, Lc/d/a/c/j0/l$b;-><init>(Lc/d/a/c/j0/l;)V

    .line 3
    invoke-virtual {p0}, Lc/d/a/c/r0/a;->E()Lc/d/a/c/j0/f;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lc/d/a/c/j0/l$b;->k:Lc/d/a/c/j0/f;

    .line 5
    invoke-virtual {v0}, Lc/d/a/c/j0/l$b;->a()Lc/d/a/c/j0/l;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iput-object p1, v0, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    invoke-virtual {p0}, Lc/d/a/c/j0/h;->invalidateSelf()V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 0

    invoke-super {p0, p1}, Lc/d/a/c/j0/h;->onStateChange([I)Z

    move-result p1

    return p1
.end method
