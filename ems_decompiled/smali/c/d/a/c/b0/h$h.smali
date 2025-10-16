.class public abstract Lc/d/a/c/b0/h$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/b0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "h"
.end annotation


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public final synthetic d:Lc/d/a/c/b0/h;


# direct methods
.method public constructor <init>(Lc/d/a/c/b0/h;Lc/d/a/c/b0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/c/b0/h$h;->d:Lc/d/a/c/b0/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/c/b0/h$h;->d:Lc/d/a/c/b0/h;

    iget v0, p0, Lc/d/a/c/b0/h$h;->c:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lc/d/a/c/b0/h;->y(F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/d/a/c/b0/h$h;->a:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-boolean v0, p0, Lc/d/a/c/b0/h$h;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/d/a/c/b0/h$h;->d:Lc/d/a/c/b0/h;

    iget-object v0, v0, Lc/d/a/c/b0/h;->b:Lc/d/a/c/j0/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v0, v0, Lc/d/a/c/j0/h$b;->o:F

    .line 2
    :goto_0
    iput v0, p0, Lc/d/a/c/b0/h$h;->b:F

    invoke-virtual {p0}, Lc/d/a/c/b0/h$h;->a()F

    move-result v0

    iput v0, p0, Lc/d/a/c/b0/h$h;->c:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/c/b0/h$h;->a:Z

    :cond_1
    iget-object v0, p0, Lc/d/a/c/b0/h$h;->d:Lc/d/a/c/b0/h;

    iget v1, p0, Lc/d/a/c/b0/h$h;->b:F

    iget v2, p0, Lc/d/a/c/b0/h$h;->c:F

    sub-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lc/d/a/c/b0/h;->y(F)V

    return-void
.end method
