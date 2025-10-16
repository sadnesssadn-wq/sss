.class public final Lc/d/a/c/f0/q;
.super Lc/d/a/c/f0/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/c/f0/m<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/d/a/c/f0/q;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public e:Lb/n/a/a/b;

.field public final f:Lc/d/a/c/f0/c;

.field public g:I

.field public h:Z

.field public i:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/d/a/c/f0/q$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lc/d/a/c/f0/q$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lc/d/a/c/f0/q;->j:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lc/d/a/c/f0/m;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lc/d/a/c/f0/q;->g:I

    iput-object p1, p0, Lc/d/a/c/f0/q;->f:Lc/d/a/c/f0/c;

    new-instance p1, Lb/n/a/a/b;

    invoke-direct {p1}, Lb/n/a/a/b;-><init>()V

    iput-object p1, p0, Lc/d/a/c/f0/q;->e:Lb/n/a/a/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/q;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lc/d/a/c/f0/q;->h()V

    return-void
.end method

.method public d(Lb/v/a/a/b;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/c/f0/q;->d:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    sget-object v0, Lc/d/a/c/f0/q;->j:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/c/f0/q;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lc/d/a/c/f0/q;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lc/d/a/c/f0/q;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lc/d/a/c/f0/q;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, Lc/d/a/c/f0/p;

    invoke-direct {v1, p0}, Lc/d/a/c/f0/p;-><init>(Lc/d/a/c/f0/q;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/d/a/c/f0/q;->h()V

    iget-object v0, p0, Lc/d/a/c/f0/q;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/c/f0/q;->h:Z

    iput v0, p0, Lc/d/a/c/f0/q;->g:I

    iget-object v0, p0, Lc/d/a/c/f0/m;->c:[I

    iget-object v1, p0, Lc/d/a/c/f0/q;->f:Lc/d/a/c/f0/c;

    iget-object v1, v1, Lc/d/a/c/f0/c;->c:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lc/d/a/c/f0/m;->a:Lc/d/a/c/f0/n;

    .line 1
    iget v2, v2, Lc/d/a/c/f0/k;->l:I

    .line 2
    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->p(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method
