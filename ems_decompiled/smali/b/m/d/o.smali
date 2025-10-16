.class public Lb/m/d/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Lb/m/d/p0$a;

.field public final synthetic d:Lb/i/i/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Lb/m/d/p0$a;Lb/i/i/a;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/o;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lb/m/d/o;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lb/m/d/o;->c:Lb/m/d/p0$a;

    iput-object p4, p0, Lb/m/d/o;->d:Lb/i/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lb/m/d/o;->a:Landroid/view/ViewGroup;

    new-instance v0, Lb/m/d/o$a;

    invoke-direct {v0, p0}, Lb/m/d/o$a;-><init>(Lb/m/d/o;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
