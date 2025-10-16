.class public final Lc/d/a/c/f0/s;
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
.field public static final l:[I

.field public static final m:[I

.field public static final n:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/d/a/c/f0/s;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public final e:[Landroid/view/animation/Interpolator;

.field public final f:Lc/d/a/c/f0/c;

.field public g:I

.field public h:Z

.field public i:F

.field public j:Z

.field public k:Lb/v/a/a/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lc/d/a/c/f0/s;->l:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lc/d/a/c/f0/s;->m:[I

    new-instance v0, Lc/d/a/c/f0/s$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lc/d/a/c/f0/s$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lc/d/a/c/f0/s;->n:Landroid/util/Property;

    return-void

    nop

    :array_0
    .array-data 4
        0x215
        0x237
        0x352
        0x2ee
    .end array-data

    :array_1
    .array-data 4
        0x4f3
        0x3e8
        0x14d
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lc/d/a/c/f0/m;-><init>(I)V

    const/4 v1, 0x0

    iput v1, p0, Lc/d/a/c/f0/s;->g:I

    const/4 v2, 0x0

    iput-object v2, p0, Lc/d/a/c/f0/s;->k:Lb/v/a/a/b;

    iput-object p2, p0, Lc/d/a/c/f0/s;->f:Lc/d/a/c/f0/c;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/view/animation/Interpolator;

    sget v2, Lc/d/a/c/a;->linear_indeterminate_line1_head_interpolator:I

    invoke-static {p1, v2}, Lb/u/a;->P(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    aput-object v2, p2, v1

    sget v1, Lc/d/a/c/a;->linear_indeterminate_line1_tail_interpolator:I

    invoke-static {p1, v1}, Lb/u/a;->P(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p2, v2

    sget v1, Lc/d/a/c/a;->linear_indeterminate_line2_head_interpolator:I

    invoke-static {p1, v1}, Lb/u/a;->P(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    aput-object v1, p2, v0

    sget v0, Lc/d/a/c/a;->linear_indeterminate_line2_tail_interpolator:I

    invoke-static {p1, v0}, Lb/u/a;->P(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, p2, v0

    iput-object p2, p0, Lc/d/a/c/f0/s;->e:[Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/s;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lc/d/a/c/f0/s;->h()V

    return-void
.end method

.method public d(Lb/v/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/f0/s;->k:Lb/v/a/a/b;

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/f0/m;->a:Lc/d/a/c/f0/n;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/c/f0/s;->j:Z

    iget-object v0, p0, Lc/d/a/c/f0/s;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lc/d/a/c/f0/s;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/c/f0/s;->d:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    sget-object v0, Lc/d/a/c/f0/s;->n:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/c/f0/s;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x708

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lc/d/a/c/f0/s;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lc/d/a/c/f0/s;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lc/d/a/c/f0/s;->d:Landroid/animation/ObjectAnimator;

    new-instance v1, Lc/d/a/c/f0/r;

    invoke-direct {v1, p0}, Lc/d/a/c/f0/r;-><init>(Lc/d/a/c/f0/s;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/d/a/c/f0/s;->h()V

    iget-object v0, p0, Lc/d/a/c/f0/s;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/c/f0/s;->k:Lb/v/a/a/b;

    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/c/f0/s;->g:I

    iget-object v1, p0, Lc/d/a/c/f0/s;->f:Lc/d/a/c/f0/c;

    iget-object v1, v1, Lc/d/a/c/f0/c;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, Lc/d/a/c/f0/m;->a:Lc/d/a/c/f0/n;

    .line 1
    iget v2, v2, Lc/d/a/c/f0/k;->l:I

    .line 2
    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->p(II)I

    move-result v1

    iget-object v2, p0, Lc/d/a/c/f0/m;->c:[I

    aput v1, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    return-void
.end method
