.class public Lc/d/a/c/f0/r;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lc/d/a/c/f0/s;


# direct methods
.method public constructor <init>(Lc/d/a/c/f0/s;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/f0/r;->a:Lc/d/a/c/f0/s;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lc/d/a/c/f0/r;->a:Lc/d/a/c/f0/s;

    .line 1
    iget-boolean v0, p1, Lc/d/a/c/f0/s;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lc/d/a/c/f0/s;->d:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Lc/d/a/c/f0/r;->a:Lc/d/a/c/f0/s;

    iget-object v0, p1, Lc/d/a/c/f0/s;->k:Lb/v/a/a/b;

    iget-object p1, p1, Lc/d/a/c/f0/m;->a:Lc/d/a/c/f0/n;

    invoke-virtual {v0, p1}, Lb/v/a/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lc/d/a/c/f0/r;->a:Lc/d/a/c/f0/s;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lc/d/a/c/f0/s;->j:Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lc/d/a/c/f0/r;->a:Lc/d/a/c/f0/s;

    .line 1
    iget v0, p1, Lc/d/a/c/f0/s;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    iget-object v2, p1, Lc/d/a/c/f0/s;->f:Lc/d/a/c/f0/c;

    .line 3
    iget-object v2, v2, Lc/d/a/c/f0/c;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 4
    iput v0, p1, Lc/d/a/c/f0/s;->g:I

    .line 5
    iput-boolean v1, p1, Lc/d/a/c/f0/s;->h:Z

    return-void
.end method
