.class public Lb/u/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public a:Z

.field public b:Landroid/graphics/Matrix;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/graphics/Matrix;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Landroidx/transition/ChangeTransform$e;

.field public final synthetic g:Landroidx/transition/ChangeTransform$d;

.field public final synthetic h:Landroidx/transition/ChangeTransform;


# direct methods
.method public constructor <init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$e;Landroidx/transition/ChangeTransform$d;)V
    .locals 0

    iput-object p1, p0, Lb/u/b;->h:Landroidx/transition/ChangeTransform;

    iput-boolean p2, p0, Lb/u/b;->c:Z

    iput-object p3, p0, Lb/u/b;->d:Landroid/graphics/Matrix;

    iput-object p4, p0, Lb/u/b;->e:Landroid/view/View;

    iput-object p5, p0, Lb/u/b;->f:Landroidx/transition/ChangeTransform$e;

    iput-object p6, p0, Lb/u/b;->g:Landroidx/transition/ChangeTransform$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lb/u/b;->b:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/u/b;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean p1, p0, Lb/u/b;->a:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lb/u/b;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/u/b;->h:Landroidx/transition/ChangeTransform;

    iget-boolean p1, p1, Landroidx/transition/ChangeTransform;->A:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/u/b;->d:Landroid/graphics/Matrix;

    .line 1
    iget-object v1, p0, Lb/u/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lb/u/b;->e:Landroid/view/View;

    sget v1, Lb/u/m;->transition_transform:I

    iget-object v2, p0, Lb/u/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lb/u/b;->f:Landroidx/transition/ChangeTransform$e;

    iget-object v1, p0, Lb/u/b;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidx/transition/ChangeTransform$e;->a(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lb/u/b;->e:Landroid/view/View;

    sget v1, Lb/u/m;->transition_transform:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lb/u/b;->e:Landroid/view/View;

    sget v1, Lb/u/m;->parent_matrix:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lb/u/b;->e:Landroid/view/View;

    .line 3
    sget-object v1, Lb/u/b0;->a:Lb/u/h0;

    invoke-virtual {v1, p1, v0}, Lb/u/h0;->d(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 4
    iget-object p1, p0, Lb/u/b;->f:Landroidx/transition/ChangeTransform$e;

    iget-object v0, p0, Lb/u/b;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/transition/ChangeTransform$e;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lb/u/b;->g:Landroidx/transition/ChangeTransform$d;

    .line 1
    iget-object p1, p1, Landroidx/transition/ChangeTransform$d;->a:Landroid/graphics/Matrix;

    .line 2
    iget-object v0, p0, Lb/u/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lb/u/b;->e:Landroid/view/View;

    sget v0, Lb/u/m;->transition_transform:I

    iget-object v1, p0, Lb/u/b;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lb/u/b;->f:Landroidx/transition/ChangeTransform$e;

    iget-object v0, p0, Lb/u/b;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/transition/ChangeTransform$e;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lb/u/b;->e:Landroid/view/View;

    invoke-static {p1}, Landroidx/transition/ChangeTransform;->K(Landroid/view/View;)V

    return-void
.end method
