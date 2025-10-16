.class public Lc/d/a/c/b0/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public a:Z

.field public final synthetic b:Lc/d/a/c/b0/l;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lc/d/a/c/b0/l;)V
    .locals 0

    iput-object p2, p0, Lc/d/a/c/b0/d;->b:Lc/d/a/c/b0/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/d/a/c/b0/d;->a:Z

    iget-object p1, p0, Lc/d/a/c/b0/d;->b:Lc/d/a/c/b0/l;

    invoke-interface {p1}, Lc/d/a/c/b0/l;->b()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/c/b0/d;->b:Lc/d/a/c/b0/l;

    invoke-interface {p1}, Lc/d/a/c/b0/l;->a()V

    iget-boolean p1, p0, Lc/d/a/c/b0/d;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/d/a/c/b0/d;->b:Lc/d/a/c/b0/l;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lc/d/a/c/b0/l;->f(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/b0/d;->b:Lc/d/a/c/b0/l;

    invoke-interface {v0, p1}, Lc/d/a/c/b0/l;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/d/a/c/b0/d;->a:Z

    return-void
.end method
