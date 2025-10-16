.class public Lc/c/a/a/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final synthetic c:Lc/c/a/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/a/a;FF)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/a$c;->c:Lc/c/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lc/c/a/a/a$c;->a:F

    iput p3, p0, Lc/c/a/a/a$c;->b:F

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lc/c/a/a/a$c;->c:Lc/c/a/a/a;

    .line 1
    iget-object p1, p1, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    iget-object p1, p0, Lc/c/a/a/a$c;->c:Lc/c/a/a/a;

    invoke-static {p1}, Lc/c/a/a/a;->a(Lc/c/a/a/a;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lc/c/a/a/a$c;->c:Lc/c/a/a/a;

    .line 1
    iget-object p1, p1, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    iget-object p1, p0, Lc/c/a/a/a$c;->c:Lc/c/a/a/a;

    .line 3
    iget-object p1, p1, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 4
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->r()V

    iget-object p1, p0, Lc/c/a/a/a$c;->c:Lc/c/a/a/a;

    invoke-static {p1}, Lc/c/a/a/a;->a(Lc/c/a/a/a;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lc/c/a/a/a$c;->c:Lc/c/a/a/a;

    .line 1
    iget-object v0, v0, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lc/c/a/a/a$c;->a:F

    iget v3, p0, Lc/c/a/a/a$c;->b:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->v(FLandroid/graphics/PointF;)V

    return-void
.end method
