.class public Lc/d/a/c/s0/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lc/d/a/c/w/c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lc/d/a/c/w/c;)V
    .locals 0

    iput-object p2, p0, Lc/d/a/c/s0/c;->a:Lc/d/a/c/w/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/c/s0/c;->a:Lc/d/a/c/w/c;

    invoke-interface {p1}, Lc/d/a/c/w/c;->getRevealInfo()Lc/d/a/c/w/c$e;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Lc/d/a/c/w/c$e;->c:F

    iget-object v0, p0, Lc/d/a/c/s0/c;->a:Lc/d/a/c/w/c;

    invoke-interface {v0, p1}, Lc/d/a/c/w/c;->setRevealInfo(Lc/d/a/c/w/c$e;)V

    return-void
.end method
