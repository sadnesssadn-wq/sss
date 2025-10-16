.class public Lb/t/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lb/t/a/d$a;

.field public final synthetic b:Lb/t/a/d;


# direct methods
.method public constructor <init>(Lb/t/a/d;Lb/t/a/d$a;)V
    .locals 0

    iput-object p1, p0, Lb/t/a/c;->b:Lb/t/a/d;

    iput-object p2, p0, Lb/t/a/c;->a:Lb/t/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lb/t/a/c;->b:Lb/t/a/d;

    iget-object v1, p0, Lb/t/a/c;->a:Lb/t/a/d$a;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lb/t/a/d;->a(FLb/t/a/d$a;Z)V

    iget-object v0, p0, Lb/t/a/c;->a:Lb/t/a/d$a;

    .line 1
    iget v1, v0, Lb/t/a/d$a;->e:F

    iput v1, v0, Lb/t/a/d$a;->k:F

    iget v1, v0, Lb/t/a/d$a;->f:F

    iput v1, v0, Lb/t/a/d$a;->l:F

    iget v1, v0, Lb/t/a/d$a;->g:F

    iput v1, v0, Lb/t/a/d$a;->m:F

    .line 2
    iget v1, v0, Lb/t/a/d$a;->j:I

    add-int/2addr v1, v3

    iget-object v3, v0, Lb/t/a/d$a;->i:[I

    array-length v3, v3

    rem-int/2addr v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lb/t/a/d$a;->a(I)V

    .line 4
    iget-object v0, p0, Lb/t/a/c;->b:Lb/t/a/d;

    iget-boolean v1, v0, Lb/t/a/d;->h:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/t/a/d;->h:Z

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v2, 0x534

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-object p1, p0, Lb/t/a/c;->a:Lb/t/a/d$a;

    invoke-virtual {p1, v1}, Lb/t/a/d$a;->b(Z)V

    goto :goto_0

    :cond_0
    iget p1, v0, Lb/t/a/d;->g:F

    add-float/2addr p1, v2

    iput p1, v0, Lb/t/a/d;->g:F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/t/a/c;->b:Lb/t/a/d;

    const/4 v0, 0x0

    iput v0, p1, Lb/t/a/d;->g:F

    return-void
.end method
