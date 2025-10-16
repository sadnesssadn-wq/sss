.class public Lb/m/d/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Lb/m/d/w0$d;

.field public final synthetic e:Lb/m/d/c$b;


# direct methods
.method public constructor <init>(Lb/m/d/c;Landroid/view/ViewGroup;Landroid/view/View;ZLb/m/d/w0$d;Lb/m/d/c$b;)V
    .locals 0

    iput-object p2, p0, Lb/m/d/d;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lb/m/d/d;->b:Landroid/view/View;

    iput-boolean p4, p0, Lb/m/d/d;->c:Z

    iput-object p5, p0, Lb/m/d/d;->d:Lb/m/d/w0$d;

    iput-object p6, p0, Lb/m/d/d;->e:Lb/m/d/c$b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/m/d/d;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lb/m/d/d;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean p1, p0, Lb/m/d/d;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/m/d/d;->d:Lb/m/d/w0$d;

    .line 1
    iget-object p1, p1, Lb/m/d/w0$d;->a:Lb/m/d/w0$d$c;

    .line 2
    iget-object v0, p0, Lb/m/d/d;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Lb/m/d/w0$d$c;->a(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lb/m/d/d;->e:Lb/m/d/c$b;

    invoke-virtual {p1}, Lb/m/d/c$c;->a()V

    return-void
.end method
