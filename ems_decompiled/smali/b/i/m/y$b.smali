.class public Lb/i/m/y$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/m/y;->f(Lb/i/m/b0;)Lb/i/m/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/i/m/b0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lb/i/m/y;Lb/i/m/b0;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lb/i/m/y$b;->a:Lb/i/m/b0;

    iput-object p3, p0, Lb/i/m/y$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lb/i/m/y$b;->a:Lb/i/m/b0;

    check-cast p1, Lb/b/k/x$c;

    .line 1
    iget-object p1, p1, Lb/b/k/x$c;->a:Lb/b/k/x;

    iget-object p1, p1, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
