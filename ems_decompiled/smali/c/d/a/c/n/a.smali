.class public Lc/d/a/c/n/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lc/d/a/c/j0/h;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Lc/d/a/c/j0/h;)V
    .locals 0

    iput-object p2, p0, Lc/d/a/c/n/a;->a:Lc/d/a/c/j0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/n/a;->a:Lc/d/a/c/j0/h;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lc/d/a/c/j0/h;->p(F)V

    return-void
.end method
