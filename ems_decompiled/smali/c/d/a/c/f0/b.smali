.class public abstract Lc/d/a/c/f0/b;
.super Landroid/widget/ProgressBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lc/d/a/c/f0/c;",
        ">",
        "Landroid/widget/ProgressBar;"
    }
.end annotation


# static fields
.field public static final o:I


# instance fields
.field public c:Lc/d/a/c/f0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z

.field public f:Z

.field public final g:I

.field public h:Lc/d/a/c/f0/a;

.field public i:Z

.field public j:I

.field public final k:Ljava/lang/Runnable;

.field public final l:Ljava/lang/Runnable;

.field public final m:Lb/v/a/a/b;

.field public final n:Lb/v/a/a/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lc/d/a/c/k;->Widget_MaterialComponents_ProgressIndicator:I

    sput v0, Lc/d/a/c/f0/b;->o:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    sget v0, Lc/d/a/c/f0/b;->o:I

    invoke-static {p1, p2, p3, v0}, Lc/d/a/c/p0/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/d/a/c/f0/b;->i:Z

    const/4 v0, 0x4

    iput v0, p0, Lc/d/a/c/f0/b;->j:I

    new-instance v0, Lc/d/a/c/f0/b$a;

    invoke-direct {v0, p0}, Lc/d/a/c/f0/b$a;-><init>(Lc/d/a/c/f0/b;)V

    iput-object v0, p0, Lc/d/a/c/f0/b;->k:Ljava/lang/Runnable;

    new-instance v0, Lc/d/a/c/f0/b$b;

    invoke-direct {v0, p0}, Lc/d/a/c/f0/b$b;-><init>(Lc/d/a/c/f0/b;)V

    iput-object v0, p0, Lc/d/a/c/f0/b;->l:Ljava/lang/Runnable;

    new-instance v0, Lc/d/a/c/f0/b$c;

    invoke-direct {v0, p0}, Lc/d/a/c/f0/b$c;-><init>(Lc/d/a/c/f0/b;)V

    iput-object v0, p0, Lc/d/a/c/f0/b;->m:Lb/v/a/a/b;

    new-instance v0, Lc/d/a/c/f0/b$d;

    invoke-direct {v0, p0}, Lc/d/a/c/f0/b$d;-><init>(Lc/d/a/c/f0/b;)V

    iput-object v0, p0, Lc/d/a/c/f0/b;->n:Lb/v/a/a/b;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lc/d/a/c/f0/b;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Lc/d/a/c/f0/c;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    sget-object v3, Lc/d/a/c/l;->BaseProgressIndicator:[I

    new-array v6, p1, [I

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lc/d/a/c/c0/l;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lc/d/a/c/l;->BaseProgressIndicator_showDelay:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    sget p2, Lc/d/a/c/l;->BaseProgressIndicator_minHideDelay:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 p3, 0x3e8

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lc/d/a/c/f0/b;->g:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lc/d/a/c/f0/a;

    invoke-direct {p1}, Lc/d/a/c/f0/a;-><init>()V

    iput-object p1, p0, Lc/d/a/c/f0/b;->h:Lc/d/a/c/f0/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/d/a/c/f0/b;->f:Z

    return-void
.end method

.method private getCurrentDrawingDelegate()Lc/d/a/c/f0/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/d/a/c/f0/l<",
            "TS;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lc/d/a/c/f0/n;->n:Lc/d/a/c/f0/l;

    :goto_0
    return-object v1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lc/d/a/c/f0/h;->n:Lc/d/a/c/f0/l;

    :goto_1
    return-object v1
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iget-boolean v0, p0, Lc/d/a/c/f0/b;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lc/d/a/c/f0/k;

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->d()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lc/d/a/c/f0/k;->h(ZZZ)Z

    return-void
.end method

.method public abstract b(Landroid/content/Context;Landroid/util/AttributeSet;)Lc/d/a/c/f0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TS;"
        }
    .end annotation
.end method

.method public c(IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v0

    if-eqz v0, :cond_3

    iput p1, p0, Lc/d/a/c/f0/b;->d:I

    iput-boolean p2, p0, Lc/d/a/c/f0/b;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/d/a/c/f0/b;->i:Z

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/d/a/c/f0/b;->h:Lc/d/a/c/f0/a;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/d/a/c/f0/a;->a(Landroid/content/ContentResolver;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lc/d/a/c/f0/n;->o:Lc/d/a/c/f0/m;

    .line 2
    invoke-virtual {p1}, Lc/d/a/c/f0/m;->e()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lc/d/a/c/f0/b;->m:Lb/v/a/a/b;

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/v/a/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/c/f0/h;->jumpToCurrentState()V

    :cond_3
    :goto_1
    return-void
.end method

.method public d()Z
    .locals 4

    .line 1
    sget-object v0, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p0

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    instance-of v3, v0, Landroid/view/View;

    if-nez v3, :cond_3

    goto :goto_1

    :goto_3
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_4
    :goto_4
    return v1
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHideAnimationBehavior()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    iget v0, v0, Lc/d/a/c/f0/c;->f:I

    return v0
.end method

.method public bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    return-object v0
.end method

.method public getIndeterminateDrawable()Lc/d/a/c/f0/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/d/a/c/f0/n<",
            "TS;>;"
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lc/d/a/c/f0/n;

    return-object v0
.end method

.method public getIndicatorColor()[I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    iget-object v0, v0, Lc/d/a/c/f0/c;->c:[I

    return-object v0
.end method

.method public bridge synthetic getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v0

    return-object v0
.end method

.method public getProgressDrawable()Lc/d/a/c/f0/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/d/a/c/f0/h<",
            "TS;>;"
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lc/d/a/c/f0/h;

    return-object v0
.end method

.method public getShowAnimationBehavior()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    iget v0, v0, Lc/d/a/c/f0/c;->e:I

    return v0
.end method

.method public getTrackColor()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    iget v0, v0, Lc/d/a/c/f0/c;->d:I

    return v0
.end method

.method public getTrackCornerRadius()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    iget v0, v0, Lc/d/a/c/f0/c;->b:I

    return v0
.end method

.method public getTrackThickness()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    iget v0, v0, Lc/d/a/c/f0/c;->a:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->invalidate()V

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 1
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lc/d/a/c/f0/n;->o:Lc/d/a/c/f0/m;

    .line 3
    iget-object v1, p0, Lc/d/a/c/f0/b;->m:Lb/v/a/a/b;

    invoke-virtual {v0, v1}, Lc/d/a/c/f0/m;->d(Lb/v/a/a/b;)V

    :cond_0
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/c/f0/b;->n:Lb/v/a/a/b;

    invoke-virtual {v0, v1}, Lc/d/a/c/f0/k;->g(Lb/v/a/a/b;)V

    :cond_1
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/c/f0/b;->n:Lb/v/a/a/b;

    invoke-virtual {v0, v1}, Lc/d/a/c/f0/k;->g(Lb/v/a/a/b;)V

    .line 4
    :cond_2
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget v0, p0, Lc/d/a/c/f0/b;->g:I

    if-lez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/f0/b;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lc/d/a/c/f0/b;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lc/d/a/c/f0/k;

    invoke-virtual {v0}, Lc/d/a/c/f0/k;->d()Z

    .line 1
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/c/f0/b;->n:Lb/v/a/a/b;

    invoke-virtual {v0, v1}, Lc/d/a/c/f0/k;->j(Lb/v/a/a/b;)Z

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lc/d/a/c/f0/n;->o:Lc/d/a/c/f0/m;

    .line 3
    invoke-virtual {v0}, Lc/d/a/c/f0/m;->g()V

    :cond_0
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/c/f0/b;->n:Lb/v/a/a/b;

    invoke-virtual {v0, v1}, Lc/d/a/c/f0/k;->j(Lb/v/a/a/b;)Z

    .line 4
    :cond_1
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_3
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    invoke-direct {p0}, Lc/d/a/c/f0/b;->getCurrentDrawingDelegate()Lc/d/a/c/f0/l;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lc/d/a/c/f0/l;->e()I

    move-result p2

    invoke-virtual {p1}, Lc/d/a/c/f0/l;->d()I

    move-result p1

    if-gez p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    :goto_0
    if-gez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v0

    add-int/2addr p1, v0

    :goto_1
    invoke-virtual {p0, p2, p1}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lc/d/a/c/f0/b;->a(Z)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onWindowVisibilityChanged(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc/d/a/c/f0/b;->a(Z)V

    return-void
.end method

.method public setAnimatorDurationScaleProvider(Lc/d/a/c/f0/a;)V
    .locals 1

    iput-object p1, p0, Lc/d/a/c/f0/b;->h:Lc/d/a/c/f0/a;

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v0

    iput-object p1, v0, Lc/d/a/c/f0/k;->e:Lc/d/a/c/f0/a;

    :cond_0
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v0

    iput-object p1, v0, Lc/d/a/c/f0/k;->e:Lc/d/a/c/f0/a;

    :cond_1
    return-void
.end method

.method public setHideAnimationBehavior(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    iput p1, v0, Lc/d/a/c/f0/c;->f:I

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->invalidate()V

    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot switch to indeterminate mode while the progress indicator is visible."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lc/d/a/c/f0/k;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc/d/a/c/f0/k;->d()Z

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lc/d/a/c/f0/k;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->d()Z

    move-result v1

    invoke-virtual {p1, v1, v0, v0}, Lc/d/a/c/f0/k;->h(ZZZ)Z

    :cond_4
    iput-boolean v0, p0, Lc/d/a/c/f0/b;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    instance-of v0, p1, Lc/d/a/c/f0/n;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lc/d/a/c/f0/k;

    invoke-virtual {v0}, Lc/d/a/c/f0/k;->d()Z

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set framework drawable as indeterminate drawable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setIndicatorColor([I)V
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lc/d/a/c/b;->colorPrimary:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S(Landroid/content/Context;II)I

    move-result v1

    aput v1, p1, v0

    :cond_0
    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndicatorColor()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    iput-object p1, v0, Lc/d/a/c/f0/c;->c:[I

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lc/d/a/c/f0/n;->o:Lc/d/a/c/f0/m;

    .line 2
    invoke-virtual {p1}, Lc/d/a/c/f0/m;->c()V

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->invalidate()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lc/d/a/c/f0/b;->c(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    instance-of v0, p1, Lc/d/a/c/f0/h;

    if-eqz v0, :cond_1

    check-cast p1, Lc/d/a/c/f0/h;

    invoke-virtual {p1}, Lc/d/a/c/f0/k;->d()Z

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set framework drawable as progress drawable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowAnimationBehavior(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    iput p1, v0, Lc/d/a/c/f0/c;->e:I

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->invalidate()V

    return-void
.end method

.method public setTrackColor(I)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    iget v1, v0, Lc/d/a/c/f0/c;->d:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lc/d/a/c/f0/c;->d:I

    invoke-virtual {p0}, Lc/d/a/c/f0/b;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackCornerRadius(I)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    iget v1, v0, Lc/d/a/c/f0/c;->b:I

    if-eq v1, p1, :cond_0

    iget v1, v0, Lc/d/a/c/f0/c;->a:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Lc/d/a/c/f0/c;->b:I

    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/f0/b;->c:Lc/d/a/c/f0/c;

    iget v1, v0, Lc/d/a/c/f0/c;->a:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lc/d/a/c/f0/c;->a:I

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVisibilityAfterHide(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The component\'s visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lc/d/a/c/f0/b;->j:I

    return-void
.end method
