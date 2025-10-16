.class public Lc/c/a/a/a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/a$a;->a:Lc/c/a/a/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/a/a$a;->a:Lc/c/a/a/a;

    .line 1
    iget-object p1, p1, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    iget-object p1, p0, Lc/c/a/a/a$a;->a:Lc/c/a/a/a;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lc/c/a/a/a;->e:Z

    .line 4
    invoke-static {p1}, Lc/c/a/a/a;->a(Lc/c/a/a/a;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/a/a$a;->a:Lc/c/a/a/a;

    .line 1
    iget-object p1, p1, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    iget-object p1, p0, Lc/c/a/a/a$a;->a:Lc/c/a/a/a;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lc/c/a/a/a;->e:Z

    .line 4
    invoke-static {p1}, Lc/c/a/a/a;->a(Lc/c/a/a/a;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lc/c/a/a/a$a;->a:Lc/c/a/a/a;

    .line 1
    iget-object v0, v0, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, p1, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->q(FFZ)V

    .line 4
    iget-object p1, p0, Lc/c/a/a/a$a;->a:Lc/c/a/a/a;

    .line 5
    iget-object p1, p1, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 6
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->o()V

    return-void
.end method
