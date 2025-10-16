.class public final Lc/d/a/c/c0/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A:Lc/d/a/c/g0/a;

.field public B:Ljava/lang/CharSequence;

.field public C:Ljava/lang/CharSequence;

.field public D:Z

.field public E:Z

.field public F:Landroid/graphics/Bitmap;

.field public G:F

.field public H:F

.field public I:[I

.field public J:Z

.field public final K:Landroid/text/TextPaint;

.field public final L:Landroid/text/TextPaint;

.field public M:Landroid/animation/TimeInterpolator;

.field public N:Landroid/animation/TimeInterpolator;

.field public O:F

.field public P:F

.field public Q:F

.field public R:Landroid/content/res/ColorStateList;

.field public S:F

.field public T:F

.field public U:F

.field public V:Landroid/content/res/ColorStateList;

.field public W:F

.field public X:F

.field public Y:Landroid/text/StaticLayout;

.field public Z:F

.field public final a:Landroid/view/View;

.field public a0:F

.field public b:Z

.field public b0:F

.field public c:F

.field public c0:Ljava/lang/CharSequence;

.field public d:Z

.field public d0:I

.field public e:F

.field public e0:F

.field public f:F

.field public f0:F

.field public g:I

.field public g0:I

.field public final h:Landroid/graphics/Rect;

.field public final i:Landroid/graphics/Rect;

.field public final j:Landroid/graphics/RectF;

.field public k:I

.field public l:I

.field public m:F

.field public n:F

.field public o:Landroid/content/res/ColorStateList;

.field public p:Landroid/content/res/ColorStateList;

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:Landroid/graphics/Typeface;

.field public x:Landroid/graphics/Typeface;

.field public y:Landroid/graphics/Typeface;

.field public z:Lc/d/a/c/g0/a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lc/d/a/c/c0/a;->k:I

    iput v0, p0, Lc/d/a/c/c0/a;->l:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lc/d/a/c/c0/a;->m:F

    iput v0, p0, Lc/d/a/c/c0/a;->n:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/c/c0/a;->E:Z

    iput v0, p0, Lc/d/a/c/c0/a;->d0:I

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/c/c0/a;->e0:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc/d/a/c/c0/a;->f0:F

    sget v1, Lc/d/a/c/c0/h;->m:I

    iput v1, p0, Lc/d/a/c/c0/a;->g0:I

    iput-object p1, p0, Lc/d/a/c/c0/a;->a:Landroid/view/View;

    new-instance p1, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {p1, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lc/d/a/c/c0/a;->L:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lc/d/a/c/c0/a;->j:Landroid/graphics/RectF;

    .line 1
    iget p1, p0, Lc/d/a/c/c0/a;->e:F

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1, p1}, Lc/a/a/a/a;->a(FFFF)F

    move-result p1

    .line 2
    iput p1, p0, Lc/d/a/c/c0/a;->f:F

    return-void
.end method

.method public static a(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v2, v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v3, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v4, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p1, p0

    float-to-int p0, v2

    float-to-int p2, v3

    float-to-int v0, v4

    float-to-int p1, p1

    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static k(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lc/d/a/c/m/a;->a(FFF)F

    move-result p0

    return p0
.end method

.method public static n(Landroid/graphics/Rect;IIII)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A(Landroid/graphics/Typeface;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/a/c/c0/a;->A:Lc/d/a/c/g0/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, v0, Lc/d/a/c/g0/a;->c:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/c/c0/a;->w:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lc/d/a/c/c0/a;->w:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lc/d/a/c/c0/a;->z:Lc/d/a/c/g0/a;

    if-eqz v3, :cond_2

    .line 5
    iput-boolean v1, v3, Lc/d/a/c/g0/a;->c:Z

    .line 6
    :cond_2
    iget-object v3, p0, Lc/d/a/c/c0/a;->x:Landroid/graphics/Typeface;

    if-eq v3, p1, :cond_3

    iput-object p1, p0, Lc/d/a/c/c0/a;->x:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 7
    :cond_4
    invoke-virtual {p0, v2}, Lc/d/a/c/c0/a;->m(Z)V

    :cond_5
    return-void
.end method

.method public final B()Z
    .locals 2

    iget v0, p0, Lc/d/a/c/c0/a;->d0:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lc/d/a/c/c0/a;->D:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc/d/a/c/c0/a;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public b()F
    .locals 4

    iget-object v0, p0, Lc/d/a/c/c0/a;->B:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lc/d/a/c/c0/a;->L:Landroid/text/TextPaint;

    .line 1
    iget v1, p0, Lc/d/a/c/c0/a;->n:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lc/d/a/c/c0/a;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    iget v1, p0, Lc/d/a/c/c0/a;->W:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 2
    :cond_1
    iget-object v0, p0, Lc/d/a/c/c0/a;->L:Landroid/text/TextPaint;

    iget-object v1, p0, Lc/d/a/c/c0/a;->B:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/c/c0/a;->a:Landroid/view/View;

    .line 2
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-boolean v0, p0, Lc/d/a/c/c0/a;->E:Z

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 4
    sget-object v0, Lb/i/k/d;->d:Lb/i/k/c;

    goto :goto_1

    :cond_1
    sget-object v0, Lb/i/k/d;->c:Lb/i/k/c;

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    check-cast v0, Lb/i/k/d$c;

    invoke-virtual {v0, p1, v2, v1}, Lb/i/k/d$c;->b(Ljava/lang/CharSequence;II)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final d(F)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lc/d/a/c/c0/a;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/c/c0/a;->j:Landroid/graphics/RectF;

    iget v1, p0, Lc/d/a/c/c0/a;->f:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lc/d/a/c/c0/a;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lc/d/a/c/c0/a;->M:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lc/d/a/c/c0/a;->j:Landroid/graphics/RectF;

    iget v1, p0, Lc/d/a/c/c0/a;->q:F

    iget v2, p0, Lc/d/a/c/c0/a;->r:F

    iget-object v3, p0, Lc/d/a/c/c0/a;->M:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lc/d/a/c/c0/a;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lc/d/a/c/c0/a;->M:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lc/d/a/c/c0/a;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lc/d/a/c/c0/a;->M:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 2
    :goto_1
    iget-boolean v0, p0, Lc/d/a/c/c0/a;->d:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget v0, p0, Lc/d/a/c/c0/a;->f:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iget v0, p0, Lc/d/a/c/c0/a;->s:F

    iput v0, p0, Lc/d/a/c/c0/a;->u:F

    iget v0, p0, Lc/d/a/c/c0/a;->q:F

    iput v0, p0, Lc/d/a/c/c0/a;->v:F

    iget v0, p0, Lc/d/a/c/c0/a;->m:F

    invoke-virtual {p0, v0}, Lc/d/a/c/c0/a;->x(F)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget v0, p0, Lc/d/a/c/c0/a;->t:F

    iput v0, p0, Lc/d/a/c/c0/a;->u:F

    iget v0, p0, Lc/d/a/c/c0/a;->r:F

    const/4 v3, 0x0

    iget v4, p0, Lc/d/a/c/c0/a;->g:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Lc/d/a/c/c0/a;->v:F

    iget v0, p0, Lc/d/a/c/c0/a;->n:F

    invoke-virtual {p0, v0}, Lc/d/a/c/c0/a;->x(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    iget v0, p0, Lc/d/a/c/c0/a;->s:F

    iget v3, p0, Lc/d/a/c/c0/a;->t:F

    iget-object v4, p0, Lc/d/a/c/c0/a;->M:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v4}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lc/d/a/c/c0/a;->u:F

    iget v0, p0, Lc/d/a/c/c0/a;->q:F

    iget v3, p0, Lc/d/a/c/c0/a;->r:F

    iget-object v4, p0, Lc/d/a/c/c0/a;->M:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v4}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lc/d/a/c/c0/a;->v:F

    iget v0, p0, Lc/d/a/c/c0/a;->m:F

    iget v3, p0, Lc/d/a/c/c0/a;->n:F

    iget-object v4, p0, Lc/d/a/c/c0/a;->N:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v4}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-virtual {p0, v0}, Lc/d/a/c/c0/a;->x(F)V

    move v0, p1

    :goto_2
    sub-float v3, v2, p1

    sget-object v4, Lc/d/a/c/m/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, v3, v4}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    sub-float v3, v2, v3

    .line 3
    iput v3, p0, Lc/d/a/c/c0/a;->Z:F

    iget-object v3, p0, Lc/d/a/c/c0/a;->a:Landroid/view/View;

    .line 4
    sget-object v5, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5
    invoke-static {v2, v1, p1, v4}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    .line 6
    iput v3, p0, Lc/d/a/c/c0/a;->a0:F

    iget-object v3, p0, Lc/d/a/c/c0/a;->a:Landroid/view/View;

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 8
    iget-object v3, p0, Lc/d/a/c/c0/a;->p:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lc/d/a/c/c0/a;->o:Landroid/content/res/ColorStateList;

    if-eq v3, v5, :cond_4

    iget-object v3, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    .line 9
    invoke-virtual {p0, v5}, Lc/d/a/c/c0/a;->j(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 10
    invoke-virtual {p0}, Lc/d/a/c/c0/a;->i()I

    move-result v6

    invoke-static {v5, v6, v0}, Lc/d/a/c/c0/a;->a(IIF)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lc/d/a/c/c0/a;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_6

    iget v0, p0, Lc/d/a/c/c0/a;->W:F

    iget v3, p0, Lc/d/a/c/c0/a;->X:F

    cmpl-float v5, v0, v3

    if-eqz v5, :cond_5

    iget-object v5, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-static {v3, v0, p1, v4}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_6
    :goto_4
    iget-object v0, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    iget v3, p0, Lc/d/a/c/c0/a;->S:F

    iget v4, p0, Lc/d/a/c/c0/a;->O:F

    const/4 v5, 0x0

    invoke-static {v3, v4, p1, v5}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget v4, p0, Lc/d/a/c/c0/a;->T:F

    iget v6, p0, Lc/d/a/c/c0/a;->P:F

    invoke-static {v4, v6, p1, v5}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iget v6, p0, Lc/d/a/c/c0/a;->U:F

    iget v7, p0, Lc/d/a/c/c0/a;->Q:F

    invoke-static {v6, v7, p1, v5}, Lc/d/a/c/c0/a;->k(FFFLandroid/animation/TimeInterpolator;)F

    move-result v5

    iget-object v6, p0, Lc/d/a/c/c0/a;->V:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v6}, Lc/d/a/c/c0/a;->j(Landroid/content/res/ColorStateList;)I

    move-result v6

    iget-object v7, p0, Lc/d/a/c/c0/a;->R:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v7}, Lc/d/a/c/c0/a;->j(Landroid/content/res/ColorStateList;)I

    move-result v7

    invoke-static {v6, v7, p1}, Lc/d/a/c/c0/a;->a(IIF)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-boolean v0, p0, Lc/d/a/c/c0/a;->d:Z

    if-eqz v0, :cond_8

    .line 11
    iget v0, p0, Lc/d/a/c/c0/a;->f:F

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_7

    iget v3, p0, Lc/d/a/c/c0/a;->e:F

    invoke-static {v2, v1, v3, v0, p1}, Lc/d/a/c/m/a;->b(FFFFF)F

    move-result p1

    goto :goto_5

    :cond_7
    invoke-static {v1, v2, v0, v2, p1}, Lc/d/a/c/m/a;->b(FFFFF)F

    move-result p1

    :goto_5
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 12
    iget-object v0, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    :cond_8
    iget-object p1, p0, Lc/d/a/c/c0/a;->a:Landroid/view/View;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final e(FZ)V
    .locals 9

    iget-object v0, p0, Lc/d/a/c/c0/a;->B:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lc/d/a/c/c0/a;->n:F

    sub-float v2, p1, v2

    .line 1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    .line 2
    iget p1, p0, Lc/d/a/c/c0/a;->n:F

    iput v6, p0, Lc/d/a/c/c0/a;->G:F

    iget-object p2, p0, Lc/d/a/c/c0/a;->y:Landroid/graphics/Typeface;

    iget-object v1, p0, Lc/d/a/c/c0/a;->w:Landroid/graphics/Typeface;

    if-eq p2, v1, :cond_2

    iput-object v1, p0, Lc/d/a/c/c0/a;->y:Landroid/graphics/Typeface;

    const/4 v7, 0x1

    goto :goto_6

    :cond_2
    const/4 v7, 0x0

    goto :goto_6

    :cond_3
    iget v2, p0, Lc/d/a/c/c0/a;->m:F

    iget-object v7, p0, Lc/d/a/c/c0/a;->y:Landroid/graphics/Typeface;

    iget-object v8, p0, Lc/d/a/c/c0/a;->x:Landroid/graphics/Typeface;

    if-eq v7, v8, :cond_4

    iput-object v8, p0, Lc/d/a/c/c0/a;->y:Landroid/graphics/Typeface;

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    sub-float v8, p1, v2

    .line 3
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v3, v8, v3

    if-gez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 4
    iput v6, p0, Lc/d/a/c/c0/a;->G:F

    goto :goto_3

    :cond_6
    iget v3, p0, Lc/d/a/c/c0/a;->m:F

    div-float/2addr p1, v3

    iput p1, p0, Lc/d/a/c/c0/a;->G:F

    :goto_3
    iget p1, p0, Lc/d/a/c/c0/a;->n:F

    iget v3, p0, Lc/d/a/c/c0/a;->m:F

    div-float/2addr p1, v3

    mul-float v3, v1, p1

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    cmpl-float p2, v3, v0

    if-lez p2, :cond_8

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    goto :goto_5

    :cond_8
    :goto_4
    move v0, v1

    :goto_5
    move p1, v2

    :goto_6
    const/4 p2, 0x0

    cmpl-float p2, v0, p2

    if-lez p2, :cond_b

    iget p2, p0, Lc/d/a/c/c0/a;->H:F

    cmpl-float p2, p2, p1

    if-nez p2, :cond_a

    iget-boolean p2, p0, Lc/d/a/c/c0/a;->J:Z

    if-nez p2, :cond_a

    if-eqz v7, :cond_9

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v7, 0x1

    :goto_8
    iput p1, p0, Lc/d/a/c/c0/a;->H:F

    iput-boolean v4, p0, Lc/d/a/c/c0/a;->J:Z

    :cond_b
    iget-object p1, p0, Lc/d/a/c/c0/a;->C:Ljava/lang/CharSequence;

    if-eqz p1, :cond_c

    if-eqz v7, :cond_f

    :cond_c
    iget-object p1, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    iget p2, p0, Lc/d/a/c/c0/a;->H:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    iget-object p2, p0, Lc/d/a/c/c0/a;->y:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    iget p2, p0, Lc/d/a/c/c0/a;->G:F

    cmpl-float p2, p2, v6

    if-eqz p2, :cond_d

    const/4 p2, 0x1

    goto :goto_9

    :cond_d
    const/4 p2, 0x0

    :goto_9
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLinearText(Z)V

    iget-object p1, p0, Lc/d/a/c/c0/a;->B:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lc/d/a/c/c0/a;->c(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lc/d/a/c/c0/a;->D:Z

    invoke-virtual {p0}, Lc/d/a/c/c0/a;->B()Z

    move-result p1

    if-eqz p1, :cond_e

    iget v5, p0, Lc/d/a/c/c0/a;->d0:I

    :cond_e
    iget-boolean p1, p0, Lc/d/a/c/c0/a;->D:Z

    .line 5
    :try_start_0
    iget-object p2, p0, Lc/d/a/c/c0/a;->B:Ljava/lang/CharSequence;

    iget-object v1, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    float-to-int v0, v0

    .line 6
    new-instance v2, Lc/d/a/c/c0/h;

    invoke-direct {v2, p2, v1, v0}, Lc/d/a/c/c0/h;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    .line 7
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 8
    iput-object p2, v2, Lc/d/a/c/c0/h;->l:Landroid/text/TextUtils$TruncateAt;

    .line 9
    iput-boolean p1, v2, Lc/d/a/c/c0/h;->k:Z

    .line 10
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 11
    iput-object p1, v2, Lc/d/a/c/c0/h;->e:Landroid/text/Layout$Alignment;

    .line 12
    iput-boolean v4, v2, Lc/d/a/c/c0/h;->j:Z

    .line 13
    iput v5, v2, Lc/d/a/c/c0/h;->f:I

    .line 14
    iget p1, p0, Lc/d/a/c/c0/a;->e0:F

    iget p2, p0, Lc/d/a/c/c0/a;->f0:F

    .line 15
    iput p1, v2, Lc/d/a/c/c0/h;->g:F

    iput p2, v2, Lc/d/a/c/c0/h;->h:F

    .line 16
    iget p1, p0, Lc/d/a/c/c0/a;->g0:I

    .line 17
    iput p1, v2, Lc/d/a/c/c0/h;->i:I

    .line 18
    invoke-virtual {v2}, Lc/d/a/c/c0/h;->a()Landroid/text/StaticLayout;

    move-result-object p1
    :try_end_0
    .catch Lc/d/a/c/c0/h$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CollapsingTextHelper"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 19
    :goto_a
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lc/d/a/c/c0/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/c/c0/a;->C:Ljava/lang/CharSequence;

    :cond_f
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/c0/a;->F:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/c/c0/a;->F:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public g(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget-object v0, p0, Lc/d/a/c/c0/a;->C:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lc/d/a/c/c0/a;->b:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lc/d/a/c/c0/a;->d0:I

    const/4 v1, 0x1

    const/4 v8, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lc/d/a/c/c0/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/c/c0/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    :goto_0
    iget v1, p0, Lc/d/a/c/c0/a;->u:F

    add-float/2addr v1, v0

    iget v0, p0, Lc/d/a/c/c0/a;->b0:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    iget-object v0, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    iget v2, p0, Lc/d/a/c/c0/a;->H:F

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lc/d/a/c/c0/a;->u:F

    iget v2, p0, Lc/d/a/c/c0/a;->v:F

    iget v3, p0, Lc/d/a/c/c0/a;->G:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lc/d/a/c/c0/a;->d:Z

    if-nez v4, :cond_1

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    invoke-virtual {p0}, Lc/d/a/c/c0/a;->B()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lc/d/a/c/c0/a;->d:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lc/d/a/c/c0/a;->c:F

    iget v4, p0, Lc/d/a/c/c0/a;->f:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 1
    :cond_2
    iget-object v0, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v9

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    iget v1, p0, Lc/d/a/c/c0/a;->a0:F

    int-to-float v2, v9

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v0, p0, Lc/d/a/c/c0/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    iget v1, p0, Lc/d/a/c/c0/a;->Z:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v0, p0, Lc/d/a/c/c0/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v0

    iget-object v1, p0, Lc/d/a/c/c0/a;->c0:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v10, v0

    iget-object v6, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lc/d/a/c/c0/a;->d:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lc/d/a/c/c0/a;->c0:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    iget-object v0, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v2, 0x0

    iget-object v0, p0, Lc/d/a/c/c0/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    iget-object v6, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    move-object v0, p1

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 2
    :cond_4
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lc/d/a/c/c0/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    :goto_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    return-void
.end method

.method public h()F
    .locals 3

    iget-object v0, p0, Lc/d/a/c/c0/a;->L:Landroid/text/TextPaint;

    .line 1
    iget v1, p0, Lc/d/a/c/c0/a;->n:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lc/d/a/c/c0/a;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    iget v1, p0, Lc/d/a/c/c0/a;->W:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 2
    :cond_0
    iget-object v0, p0, Lc/d/a/c/c0/a;->L:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/c0/a;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lc/d/a/c/c0/a;->j(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public final j(Landroid/content/res/ColorStateList;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lc/d/a/c/c0/a;->I:[I

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lc/d/a/c/c0/a;->b:Z

    return-void
.end method

.method public m(Z)V
    .locals 12

    iget-object v0, p0, Lc/d/a/c/c0/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/c0/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_11

    .line 1
    :cond_1
    iget v0, p0, Lc/d/a/c/c0/a;->H:F

    iget v1, p0, Lc/d/a/c/c0/a;->n:F

    invoke-virtual {p0, v1, p1}, Lc/d/a/c/c0/a;->e(FZ)V

    iget-object v1, p0, Lc/d/a/c/c0/a;->C:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lc/d/a/c/c0/a;->Y:Landroid/text/StaticLayout;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v3, v2, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/c/c0/a;->c0:Ljava/lang/CharSequence;

    :cond_2
    iget-object v1, p0, Lc/d/a/c/c0/a;->c0:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v4, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lc/d/a/c/c0/a;->l:I

    iget-boolean v5, p0, Lc/d/a/c/c0/a;->D:Z

    .line 2
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_5

    if-eq v5, v6, :cond_4

    .line 3
    iget-object v5, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    iget-object v9, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v5

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v9, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    add-float/2addr v9, v5

    :goto_1
    iput v9, p0, Lc/d/a/c/c0/a;->r:F

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iput v5, p0, Lc/d/a/c/c0/a;->r:F

    :goto_2
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_7

    if-eq v4, v9, :cond_6

    iget-object v1, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lc/d/a/c/c0/a;->t:F

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lc/d/a/c/c0/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    :goto_3
    sub-float/2addr v4, v1

    iput v4, p0, Lc/d/a/c/c0/a;->t:F

    :goto_4
    iget v1, p0, Lc/d/a/c/c0/a;->m:F

    invoke-virtual {p0, v1, p1}, Lc/d/a/c/c0/a;->e(FZ)V

    iget-object p1, p0, Lc/d/a/c/c0/a;->Y:Landroid/text/StaticLayout;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    iget-object v1, p0, Lc/d/a/c/c0/a;->C:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    iget-object v4, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v4, v1, v2, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    iget-object v4, p0, Lc/d/a/c/c0/a;->Y:Landroid/text/StaticLayout;

    if-eqz v4, :cond_a

    iget v11, p0, Lc/d/a/c/c0/a;->d0:I

    if-le v11, v10, :cond_a

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :cond_a
    iget-object v4, p0, Lc/d/a/c/c0/a;->Y:Landroid/text/StaticLayout;

    if-eqz v4, :cond_c

    iget v3, p0, Lc/d/a/c/c0/a;->d0:I

    if-le v3, v10, :cond_b

    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    int-to-float v3, v2

    goto :goto_7

    :cond_b
    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    :cond_c
    :goto_7
    iput v3, p0, Lc/d/a/c/c0/a;->b0:F

    iget v2, p0, Lc/d/a/c/c0/a;->k:I

    iget-boolean v3, p0, Lc/d/a/c/c0/a;->D:Z

    .line 4
    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v3, v2, 0x70

    if-eq v3, v7, :cond_e

    if-eq v3, v6, :cond_d

    div-float/2addr p1, v8

    .line 5
    iget-object v3, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iput v3, p0, Lc/d/a/c/c0/a;->q:F

    goto :goto_9

    :cond_d
    iget-object v3, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iget-object p1, p0, Lc/d/a/c/c0/a;->K:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result p1

    add-float/2addr p1, v3

    goto :goto_8

    :cond_e
    iget-object p1, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    :goto_8
    iput p1, p0, Lc/d/a/c/c0/a;->q:F

    :goto_9
    and-int p1, v2, v5

    if-eq p1, v10, :cond_10

    if-eq p1, v9, :cond_f

    iget-object p1, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    goto :goto_b

    :cond_f
    iget-object p1, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    goto :goto_a

    :cond_10
    iget-object p1, p0, Lc/d/a/c/c0/a;->h:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, v8

    :goto_a
    sub-float/2addr p1, v1

    :goto_b
    iput p1, p0, Lc/d/a/c/c0/a;->s:F

    invoke-virtual {p0}, Lc/d/a/c/c0/a;->f()V

    invoke-virtual {p0, v0}, Lc/d/a/c/c0/a;->x(F)V

    .line 6
    iget p1, p0, Lc/d/a/c/c0/a;->c:F

    invoke-virtual {p0, p1}, Lc/d/a/c/c0/a;->d(F)V

    :cond_11
    return-void
.end method

.method public o(I)V
    .locals 3

    new-instance v0, Lc/d/a/c/g0/b;

    iget-object v1, p0, Lc/d/a/c/c0/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc/d/a/c/g0/b;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Lc/d/a/c/g0/b;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lc/d/a/c/c0/a;->p:Landroid/content/res/ColorStateList;

    :cond_0
    iget p1, v0, Lc/d/a/c/g0/b;->k:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    iput p1, p0, Lc/d/a/c/c0/a;->n:F

    :cond_1
    iget-object p1, v0, Lc/d/a/c/g0/b;->b:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lc/d/a/c/c0/a;->R:Landroid/content/res/ColorStateList;

    :cond_2
    iget p1, v0, Lc/d/a/c/g0/b;->f:F

    iput p1, p0, Lc/d/a/c/c0/a;->P:F

    iget p1, v0, Lc/d/a/c/g0/b;->g:F

    iput p1, p0, Lc/d/a/c/c0/a;->Q:F

    iget p1, v0, Lc/d/a/c/g0/b;->h:F

    iput p1, p0, Lc/d/a/c/c0/a;->O:F

    iget p1, v0, Lc/d/a/c/g0/b;->j:F

    iput p1, p0, Lc/d/a/c/c0/a;->W:F

    iget-object p1, p0, Lc/d/a/c/c0/a;->A:Lc/d/a/c/g0/a;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, p1, Lc/d/a/c/g0/a;->c:Z

    .line 2
    :cond_3
    new-instance p1, Lc/d/a/c/g0/a;

    new-instance v1, Lc/d/a/c/c0/a$a;

    invoke-direct {v1, p0}, Lc/d/a/c/c0/a$a;-><init>(Lc/d/a/c/c0/a;)V

    .line 3
    invoke-virtual {v0}, Lc/d/a/c/g0/b;->a()V

    iget-object v2, v0, Lc/d/a/c/g0/b;->n:Landroid/graphics/Typeface;

    .line 4
    invoke-direct {p1, v1, v2}, Lc/d/a/c/g0/a;-><init>(Lc/d/a/c/g0/a$a;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lc/d/a/c/c0/a;->A:Lc/d/a/c/g0/a;

    iget-object p1, p0, Lc/d/a/c/c0/a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lc/d/a/c/c0/a;->A:Lc/d/a/c/g0/a;

    invoke-virtual {v0, p1, v1}, Lc/d/a/c/g0/b;->c(Landroid/content/Context;Lc/d/a/c/g0/d;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lc/d/a/c/c0/a;->m(Z)V

    return-void
.end method

.method public p(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/c0/a;->p:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lc/d/a/c/c0/a;->p:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/c/c0/a;->m(Z)V

    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 1

    iget v0, p0, Lc/d/a/c/c0/a;->l:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lc/d/a/c/c0/a;->l:I

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/c/c0/a;->m(Z)V

    :cond_0
    return-void
.end method

.method public r(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/c/c0/a;->A:Lc/d/a/c/g0/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, v0, Lc/d/a/c/g0/a;->c:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/c/c0/a;->w:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lc/d/a/c/c0/a;->w:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Lc/d/a/c/c0/a;->m(Z)V

    :cond_2
    return-void
.end method

.method public s(I)V
    .locals 3

    new-instance v0, Lc/d/a/c/g0/b;

    iget-object v1, p0, Lc/d/a/c/c0/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc/d/a/c/g0/b;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Lc/d/a/c/g0/b;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lc/d/a/c/c0/a;->o:Landroid/content/res/ColorStateList;

    :cond_0
    iget p1, v0, Lc/d/a/c/g0/b;->k:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    iput p1, p0, Lc/d/a/c/c0/a;->m:F

    :cond_1
    iget-object p1, v0, Lc/d/a/c/g0/b;->b:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lc/d/a/c/c0/a;->V:Landroid/content/res/ColorStateList;

    :cond_2
    iget p1, v0, Lc/d/a/c/g0/b;->f:F

    iput p1, p0, Lc/d/a/c/c0/a;->T:F

    iget p1, v0, Lc/d/a/c/g0/b;->g:F

    iput p1, p0, Lc/d/a/c/c0/a;->U:F

    iget p1, v0, Lc/d/a/c/g0/b;->h:F

    iput p1, p0, Lc/d/a/c/c0/a;->S:F

    iget p1, v0, Lc/d/a/c/g0/b;->j:F

    iput p1, p0, Lc/d/a/c/c0/a;->X:F

    iget-object p1, p0, Lc/d/a/c/c0/a;->z:Lc/d/a/c/g0/a;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, p1, Lc/d/a/c/g0/a;->c:Z

    .line 2
    :cond_3
    new-instance p1, Lc/d/a/c/g0/a;

    new-instance v1, Lc/d/a/c/c0/a$b;

    invoke-direct {v1, p0}, Lc/d/a/c/c0/a$b;-><init>(Lc/d/a/c/c0/a;)V

    .line 3
    invoke-virtual {v0}, Lc/d/a/c/g0/b;->a()V

    iget-object v2, v0, Lc/d/a/c/g0/b;->n:Landroid/graphics/Typeface;

    .line 4
    invoke-direct {p1, v1, v2}, Lc/d/a/c/g0/a;-><init>(Lc/d/a/c/g0/a$a;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lc/d/a/c/c0/a;->z:Lc/d/a/c/g0/a;

    iget-object p1, p0, Lc/d/a/c/c0/a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lc/d/a/c/c0/a;->z:Lc/d/a/c/g0/a;

    invoke-virtual {v0, p1, v1}, Lc/d/a/c/g0/b;->c(Landroid/content/Context;Lc/d/a/c/g0/d;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lc/d/a/c/c0/a;->m(Z)V

    return-void
.end method

.method public t(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/c0/a;->o:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lc/d/a/c/c0/a;->o:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/c/c0/a;->m(Z)V

    :cond_0
    return-void
.end method

.method public u(I)V
    .locals 1

    iget v0, p0, Lc/d/a/c/c0/a;->k:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lc/d/a/c/c0/a;->k:I

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/c/c0/a;->m(Z)V

    :cond_0
    return-void
.end method

.method public v(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/c/c0/a;->z:Lc/d/a/c/g0/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, v0, Lc/d/a/c/g0/a;->c:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/c/c0/a;->x:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lc/d/a/c/c0/a;->x:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Lc/d/a/c/c0/a;->m(Z)V

    :cond_2
    return-void
.end method

.method public w(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, La/a/a/a/a;->k(FFF)F

    move-result p1

    iget v0, p0, Lc/d/a/c/c0/a;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lc/d/a/c/c0/a;->c:F

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/c/c0/a;->d(F)V

    :cond_0
    return-void
.end method

.method public final x(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lc/d/a/c/c0/a;->e(FZ)V

    .line 2
    iget-object p1, p0, Lc/d/a/c/c0/a;->a:Landroid/view/View;

    .line 3
    sget-object v0, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final y([I)Z
    .locals 2

    iput-object p1, p0, Lc/d/a/c/c0/a;->I:[I

    .line 1
    iget-object p1, p0, Lc/d/a/c/c0/a;->p:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lc/d/a/c/c0/a;->o:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p0, v1}, Lc/d/a/c/c0/a;->m(Z)V

    return v0

    :cond_3
    return v1
.end method

.method public z(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/d/a/c/c0/a;->B:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lc/d/a/c/c0/a;->B:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/c/c0/a;->C:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lc/d/a/c/c0/a;->f()V

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lc/d/a/c/c0/a;->m(Z)V

    :cond_1
    return-void
.end method
