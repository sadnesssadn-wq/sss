.class public Lb/m/d/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:Lb/m/d/p0$a;

.field public final synthetic e:Lb/i/i/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Lb/m/d/p0$a;Lb/i/i/a;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/p;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lb/m/d/p;->b:Landroid/view/View;

    iput-object p3, p0, Lb/m/d/p;->c:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Lb/m/d/p;->d:Lb/m/d/p0$a;

    iput-object p5, p0, Lb/m/d/p;->e:Lb/i/i/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lb/m/d/p;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lb/m/d/p;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, Lb/m/d/p;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object p1

    iget-object v0, p0, Lb/m/d/p;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/m/d/p;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lb/m/d/p;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lb/m/d/p;->d:Lb/m/d/p0$a;

    iget-object v0, p0, Lb/m/d/p;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lb/m/d/p;->e:Lb/i/i/a;

    check-cast p1, Lb/m/d/y$d;

    invoke-virtual {p1, v0, v1}, Lb/m/d/y$d;->a(Landroidx/fragment/app/Fragment;Lb/i/i/a;)V

    :cond_0
    return-void
.end method
