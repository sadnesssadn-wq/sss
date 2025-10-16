.class public Lc/c/a/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/a$c;,
        Lc/c/a/a/a$b;,
        Lc/c/a/a/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/github/barteksc/pdfviewer/PDFView;

.field public b:Landroid/animation/ValueAnimator;

.field public c:Landroid/widget/OverScroller;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/a/a/a;->d:Z

    iput-boolean v0, p0, Lc/c/a/a/a;->e:Z

    iput-object p1, p0, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/c/a/a/a;->c:Landroid/widget/OverScroller;

    return-void
.end method

.method public static a(Lc/c/a/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lc/c/a/a/l/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lc/c/a/a/l/a;

    move-result-object p0

    invoke-interface {p0}, Lc/c/a/a/l/a;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(IIIIIIII)V
    .locals 11

    move-object v0, p0

    invoke-virtual {p0}, Lc/c/a/a/a;->f()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/c/a/a/a;->d:Z

    iget-object v2, v0, Lc/c/a/a/a;->c:Landroid/widget/OverScroller;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    return-void
.end method

.method public c(FF)V
    .locals 2

    invoke-virtual {p0}, Lc/c/a/a/a;->f()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    new-instance p1, Lc/c/a/a/a$a;

    invoke-direct {p1, p0}, Lc/c/a/a/a$a;-><init>(Lc/c/a/a/a;)V

    iget-object p2, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public d(FF)V
    .locals 2

    invoke-virtual {p0}, Lc/c/a/a/a;->f()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    new-instance p1, Lc/c/a/a/a$b;

    invoke-direct {p1, p0}, Lc/c/a/a/a$b;-><init>(Lc/c/a/a/a;)V

    iget-object p2, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public e(FFFF)V
    .locals 2

    invoke-virtual {p0}, Lc/c/a/a/a;->f()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lc/c/a/a/a$c;

    invoke-direct {p3, p0, p1, p2}, Lc/c/a/a/a$c;-><init>(Lc/c/a/a/a;FF)V

    iget-object p1, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/a/a/a;->b:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/c/a/a/a;->d:Z

    iget-object v0, p0, Lc/c/a/a/a;->c:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return-void
.end method
