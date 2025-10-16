.class public Lc/d/a/c/f0/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lc/d/a/c/f0/g;


# direct methods
.method public constructor <init>(Lc/d/a/c/f0/g;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/f0/f;->a:Lc/d/a/c/f0/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lc/d/a/c/f0/f;->a:Lc/d/a/c/f0/g;

    invoke-virtual {p1}, Lc/d/a/c/f0/g;->a()V

    iget-object p1, p0, Lc/d/a/c/f0/f;->a:Lc/d/a/c/f0/g;

    iget-object v0, p1, Lc/d/a/c/f0/g;->k:Lb/v/a/a/b;

    iget-object p1, p1, Lc/d/a/c/f0/m;->a:Lc/d/a/c/f0/n;

    invoke-virtual {v0, p1}, Lb/v/a/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
