.class public Lc/d/a/c/o/a;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lc/d/a/c/c0/i$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/c/o/a$a;
    }
.end annotation


# static fields
.field public static final s:I

.field public static final t:I


# instance fields
.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lc/d/a/c/j0/h;

.field public final e:Lc/d/a/c/c0/i;

.field public final f:Landroid/graphics/Rect;

.field public final g:F

.field public final h:F

.field public final i:F

.field public final j:Lc/d/a/c/o/a$a;

.field public k:F

.field public l:F

.field public m:I

.field public n:F

.field public o:F

.field public p:F

.field public q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lc/d/a/c/k;->Widget_MaterialComponents_Badge:I

    sput v0, Lc/d/a/c/o/a;->s:I

    sget v0, Lc/d/a/c/b;->badgeStyle:I

    sput v0, Lc/d/a/c/o/a;->t:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/d/a/c/o/a;->c:Ljava/lang/ref/WeakReference;

    .line 1
    sget-object v1, Lc/d/a/c/c0/l;->b:[I

    const-string v2, "Theme.MaterialComponents"

    invoke-static {p1, v1, v2}, Lc/d/a/c/c0/l;->c(Landroid/content/Context;[ILjava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lc/d/a/c/o/a;->f:Landroid/graphics/Rect;

    new-instance v2, Lc/d/a/c/j0/h;

    invoke-direct {v2}, Lc/d/a/c/j0/h;-><init>()V

    iput-object v2, p0, Lc/d/a/c/o/a;->d:Lc/d/a/c/j0/h;

    sget v2, Lc/d/a/c/d;->mtrl_badge_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lc/d/a/c/o/a;->g:F

    sget v2, Lc/d/a/c/d;->mtrl_badge_long_text_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lc/d/a/c/o/a;->i:F

    sget v2, Lc/d/a/c/d;->mtrl_badge_with_text_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lc/d/a/c/o/a;->h:F

    new-instance v1, Lc/d/a/c/c0/i;

    invoke-direct {v1, p0}, Lc/d/a/c/c0/i;-><init>(Lc/d/a/c/c0/i$b;)V

    iput-object v1, p0, Lc/d/a/c/o/a;->e:Lc/d/a/c/c0/i;

    .line 3
    iget-object v2, v1, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    .line 4
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v2, Lc/d/a/c/o/a$a;

    invoke-direct {v2, p1}, Lc/d/a/c/o/a$a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    sget p1, Lc/d/a/c/k;->TextAppearance_MaterialComponents_Badge:I

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lc/d/a/c/g0/b;

    invoke-direct {v3, v2, p1}, Lc/d/a/c/g0/b;-><init>(Landroid/content/Context;I)V

    .line 6
    iget-object p1, v1, Lc/d/a/c/c0/i;->f:Lc/d/a/c/g0/b;

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3, p1}, Lc/d/a/c/c0/i;->b(Lc/d/a/c/g0/b;Landroid/content/Context;)V

    invoke-virtual {p0}, Lc/d/a/c/o/a;->m()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lc/d/a/c/o/a;->e()I

    move-result v0

    iget v1, p0, Lc/d/a/c/o/a;->m:I

    if-gt v0, v1, :cond_0

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lc/d/a/c/o/a;->e()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc/d/a/c/o/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    sget v1, Lc/d/a/c/j;->mtrl_exceed_max_badge_number_suffix:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lc/d/a/c/o/a;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "+"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lc/d/a/c/o/a;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 1
    iget v0, v0, Lc/d/a/c/o/a$a;->i:I

    if-lez v0, :cond_3

    .line 2
    iget-object v0, p0, Lc/d/a/c/o/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lc/d/a/c/o/a;->e()I

    move-result v1

    iget v2, p0, Lc/d/a/c/o/a;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 3
    iget v1, v1, Lc/d/a/c/o/a$a;->i:I

    .line 4
    invoke-virtual {p0}, Lc/d/a/c/o/a;->e()I

    move-result v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lc/d/a/c/o/a;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 5
    iget v1, v1, Lc/d/a/c/o/a$a;->j:I

    new-array v4, v4, [Ljava/lang/Object;

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    iget-object v0, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 7
    iget-object v0, v0, Lc/d/a/c/o/a$a;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/o/a;->r:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1
    iget-object v0, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 2
    iget v0, v0, Lc/d/a/c/o/a$a;->e:I

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/c/o/a;->d:Lc/d/a/c/j0/h;

    invoke-virtual {v0, p1}, Lc/d/a/c/j0/h;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lc/d/a/c/o/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lc/d/a/c/o/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc/d/a/c/o/a;->e:Lc/d/a/c/c0/i;

    .line 5
    iget-object v2, v2, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v2, p0, Lc/d/a/c/o/a;->k:F

    iget v3, p0, Lc/d/a/c/o/a;->l:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget-object v0, p0, Lc/d/a/c/o/a;->e:Lc/d/a/c/c0/i;

    .line 7
    iget-object v0, v0, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    .line 8
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()I
    .locals 1

    invoke-virtual {p0}, Lc/d/a/c/o/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 1
    iget v0, v0, Lc/d/a/c/o/a$a;->f:I

    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 1
    iget v0, v0, Lc/d/a/c/o/a$a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(I)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 1
    iput p1, v0, Lc/d/a/c/o/a$a;->c:I

    .line 2
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/c/o/a;->d:Lc/d/a/c/j0/h;

    .line 3
    iget-object v1, v0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v1, v1, Lc/d/a/c/j0/h$b;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lc/d/a/c/j0/h;->q(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 1
    iget v0, v0, Lc/d/a/c/o/a$a;->e:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/o/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/o/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h(I)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 1
    iget v1, v0, Lc/d/a/c/o/a$a;->k:I

    if-eq v1, p1, :cond_1

    .line 2
    iput p1, v0, Lc/d/a/c/o/a$a;->k:I

    .line 3
    iget-object p1, p0, Lc/d/a/c/o/a;->q:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/d/a/c/o/a;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lc/d/a/c/o/a;->r:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lc/d/a/c/o/a;->l(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method

.method public i(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 1
    iput p1, v0, Lc/d/a/c/o/a$a;->d:I

    .line 2
    iget-object v0, p0, Lc/d/a/c/o/a;->e:Lc/d/a/c/c0/i;

    .line 3
    iget-object v0, v0, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    .line 4
    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lc/d/a/c/o/a;->e:Lc/d/a/c/c0/i;

    .line 5
    iget-object v0, v0, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    .line 6
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(I)V
    .locals 4

    iget-object v0, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 1
    iget v1, v0, Lc/d/a/c/o/a$a;->g:I

    if-eq v1, p1, :cond_0

    .line 2
    iput p1, v0, Lc/d/a/c/o/a$a;->g:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lc/d/a/c/o/a;->m:I

    .line 4
    iget-object p1, p0, Lc/d/a/c/o/a;->e:Lc/d/a/c/c0/i;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lc/d/a/c/c0/i;->d:Z

    .line 6
    invoke-virtual {p0}, Lc/d/a/c/o/a;->m()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 1
    iget v1, v0, Lc/d/a/c/o/a$a;->f:I

    if-eq v1, p1, :cond_0

    .line 2
    iput p1, v0, Lc/d/a/c/o/a$a;->f:I

    .line 3
    iget-object p1, p0, Lc/d/a/c/o/a;->e:Lc/d/a/c/c0/i;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lc/d/a/c/c0/i;->d:Z

    .line 5
    invoke-virtual {p0}, Lc/d/a/c/o/a;->m()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public l(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/d/a/c/o/a;->q:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/d/a/c/o/a;->r:Ljava/lang/ref/WeakReference;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 2
    invoke-virtual {p0}, Lc/d/a/c/o/a;->m()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final m()V
    .locals 8

    iget-object v0, p0, Lc/d/a/c/o/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lc/d/a/c/o/a;->q:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_c

    if-nez v1, :cond_1

    goto/16 :goto_8

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lc/d/a/c/o/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lc/d/a/c/o/a;->r:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_4
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1
    :goto_1
    iget-object v2, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 2
    iget v5, v2, Lc/d/a/c/o/a$a;->n:I

    .line 3
    iget v6, v2, Lc/d/a/c/o/a$a;->p:I

    add-int/2addr v5, v6

    .line 4
    iget v2, v2, Lc/d/a/c/o/a$a;->k:I

    const v6, 0x800053

    if-eq v2, v6, :cond_5

    const v7, 0x800055

    if-eq v2, v7, :cond_5

    .line 5
    iget v2, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v5

    goto :goto_2

    :cond_5
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v5

    :goto_2
    int-to-float v2, v2

    iput v2, p0, Lc/d/a/c/o/a;->l:F

    invoke-virtual {p0}, Lc/d/a/c/o/a;->e()I

    move-result v2

    const/16 v5, 0x9

    if-gt v2, v5, :cond_7

    invoke-virtual {p0}, Lc/d/a/c/o/a;->f()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lc/d/a/c/o/a;->g:F

    goto :goto_3

    :cond_6
    iget v2, p0, Lc/d/a/c/o/a;->h:F

    :goto_3
    iput v2, p0, Lc/d/a/c/o/a;->n:F

    iput v2, p0, Lc/d/a/c/o/a;->p:F

    goto :goto_4

    :cond_7
    iget v2, p0, Lc/d/a/c/o/a;->h:F

    iput v2, p0, Lc/d/a/c/o/a;->n:F

    iput v2, p0, Lc/d/a/c/o/a;->p:F

    invoke-virtual {p0}, Lc/d/a/c/o/a;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lc/d/a/c/o/a;->e:Lc/d/a/c/c0/i;

    invoke-virtual {v5, v2}, Lc/d/a/c/c0/i;->a(Ljava/lang/String;)F

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iget v5, p0, Lc/d/a/c/o/a;->i:F

    add-float/2addr v2, v5

    :goto_4
    iput v2, p0, Lc/d/a/c/o/a;->o:F

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lc/d/a/c/o/a;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lc/d/a/c/d;->mtrl_badge_text_horizontal_edge_offset:I

    goto :goto_5

    :cond_8
    sget v2, Lc/d/a/c/d;->mtrl_badge_horizontal_edge_offset:I

    :goto_5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 6
    iget v5, v2, Lc/d/a/c/o/a$a;->m:I

    .line 7
    iget v7, v2, Lc/d/a/c/o/a$a;->o:I

    add-int/2addr v5, v7

    .line 8
    iget v2, v2, Lc/d/a/c/o/a$a;->k:I

    const v7, 0x800033

    if-eq v2, v7, :cond_9

    if-eq v2, v6, :cond_9

    .line 9
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_9
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_b

    .line 10
    :cond_a
    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lc/d/a/c/o/a;->o:F

    sub-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float v0, v5

    add-float/2addr v1, v0

    goto :goto_7

    :cond_b
    :goto_6
    iget v1, v4, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lc/d/a/c/o/a;->o:F

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    int-to-float v0, v5

    sub-float/2addr v1, v0

    :goto_7
    iput v1, p0, Lc/d/a/c/o/a;->k:F

    .line 11
    iget-object v0, p0, Lc/d/a/c/o/a;->f:Landroid/graphics/Rect;

    iget v2, p0, Lc/d/a/c/o/a;->l:F

    iget v4, p0, Lc/d/a/c/o/a;->o:F

    iget v5, p0, Lc/d/a/c/o/a;->p:F

    sub-float v6, v1, v4

    float-to-int v6, v6

    sub-float v7, v2, v5

    float-to-int v7, v7

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 12
    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    iget-object v0, p0, Lc/d/a/c/o/a;->d:Lc/d/a/c/j0/h;

    iget v1, p0, Lc/d/a/c/o/a;->n:F

    .line 14
    iget-object v2, v0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v2, v2, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    invoke-virtual {v2, v1}, Lc/d/a/c/j0/l;->e(F)Lc/d/a/c/j0/l;

    move-result-object v1

    .line 15
    iget-object v2, v0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iput-object v1, v2, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    invoke-virtual {v0}, Lc/d/a/c/j0/h;->invalidateSelf()V

    .line 16
    iget-object v0, p0, Lc/d/a/c/o/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lc/d/a/c/o/a;->d:Lc/d/a/c/j0/h;

    iget-object v1, p0, Lc/d/a/c/o/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_c
    :goto_8
    return-void
.end method

.method public onStateChange([I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 1
    iput p1, v0, Lc/d/a/c/o/a$a;->e:I

    .line 2
    iget-object v0, p0, Lc/d/a/c/o/a;->e:Lc/d/a/c/c0/i;

    .line 3
    iget-object v0, v0, Lc/d/a/c/c0/i;->a:Landroid/text/TextPaint;

    .line 4
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
