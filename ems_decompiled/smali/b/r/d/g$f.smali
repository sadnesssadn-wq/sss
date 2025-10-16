.class public Lb/r/d/g$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/r/d/g;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$a0;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$a0;

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/ViewPropertyAnimator;

.field public final synthetic f:Lb/r/d/g;


# direct methods
.method public constructor <init>(Lb/r/d/g;Landroidx/recyclerview/widget/RecyclerView$a0;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lb/r/d/g$f;->f:Lb/r/d/g;

    iput-object p2, p0, Lb/r/d/g$f;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    iput p3, p0, Lb/r/d/g$f;->b:I

    iput-object p4, p0, Lb/r/d/g$f;->c:Landroid/view/View;

    iput p5, p0, Lb/r/d/g$f;->d:I

    iput-object p6, p0, Lb/r/d/g$f;->e:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lb/r/d/g$f;->b:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/r/d/g$f;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lb/r/d/g$f;->d:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/r/d/g$f;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/r/d/g$f;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lb/r/d/g$f;->f:Lb/r/d/g;

    iget-object v0, p0, Lb/r/d/g$f;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {p1, v0}, Lb/r/d/x;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    iget-object p1, p0, Lb/r/d/g$f;->f:Lb/r/d/g;

    iget-object p1, p1, Lb/r/d/g;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lb/r/d/g$f;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/r/d/g$f;->f:Lb/r/d/g;

    invoke-virtual {p1}, Lb/r/d/g;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/r/d/g$f;->f:Lb/r/d/g;

    iget-object v0, p0, Lb/r/d/g$f;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {p1, v0}, Lb/r/d/x;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    return-void
.end method
