.class public Lc/d/a/c/f0/i;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lc/d/a/c/f0/k;


# direct methods
.method public constructor <init>(Lc/d/a/c/f0/k;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/f0/i;->a:Lc/d/a/c/f0/k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lc/d/a/c/f0/i;->a:Lc/d/a/c/f0/k;

    .line 1
    iget-object v0, p1, Lc/d/a/c/f0/k;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lc/d/a/c/f0/k;->i:Z

    if-nez p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/v/a/a/b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
