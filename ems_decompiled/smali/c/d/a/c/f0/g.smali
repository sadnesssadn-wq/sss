.class public final Lc/d/a/c/f0/g;
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

.field public static final n:[I

.field public static final o:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/d/a/c/f0/g;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lc/d/a/c/f0/g;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Landroid/animation/ObjectAnimator;

.field public e:Landroid/animation/ObjectAnimator;

.field public final f:Lb/n/a/a/b;

.field public final g:Lc/d/a/c/f0/c;

.field public h:I

.field public i:F

.field public j:F

.field public k:Lb/v/a/a/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Float;

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Lc/d/a/c/f0/g;->l:[I

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lc/d/a/c/f0/g;->m:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lc/d/a/c/f0/g;->n:[I

    new-instance v1, Lc/d/a/c/f0/g$a;

    const-string v2, "animationFraction"

    invoke-direct {v1, v0, v2}, Lc/d/a/c/f0/g$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lc/d/a/c/f0/g;->o:Landroid/util/Property;

    new-instance v1, Lc/d/a/c/f0/g$b;

    const-string v2, "completeEndFraction"

    invoke-direct {v1, v0, v2}, Lc/d/a/c/f0/g$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lc/d/a/c/f0/g;->p:Landroid/util/Property;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x546
        0xa8c
        0xfd2
    .end array-data

    :array_1
    .array-data 4
        0x29b
        0x7e1
        0xd27
        0x126d
    .end array-data

    :array_2
    .array-data 4
        0x3e8
        0x92e
        0xe74
        0x13ba
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc/d/a/c/f0/m;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/c/f0/g;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/c/f0/g;->k:Lb/v/a/a/b;

    iput-object p1, p0, Lc/d/a/c/f0/g;->g:Lc/d/a/c/f0/c;

    new-instance p1, Lb/n/a/a/b;

    invoke-direct {p1}, Lb/n/a/a/b;-><init>()V

    iput-object p1, p0, Lc/d/a/c/f0/g;->f:Lb/n/a/a/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/g;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lc/d/a/c/f0/g;->h()V

    return-void
.end method

.method public d(Lb/v/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/f0/g;->k:Lb/v/a/a/b;

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/g;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lc/d/a/c/f0/m;->a:Lc/d/a/c/f0/n;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/c/f0/g;->e:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc/d/a/c/f0/g;->a()V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/a/c/f0/g;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    sget-object v0, Lc/d/a/c/f0/g;->o:Landroid/util/Property;

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/c/f0/g;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1518

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lc/d/a/c/f0/g;->d:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lc/d/a/c/f0/g;->d:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lc/d/a/c/f0/g;->d:Landroid/animation/ObjectAnimator;

    new-instance v2, Lc/d/a/c/f0/e;

    invoke-direct {v2, p0}, Lc/d/a/c/f0/e;-><init>(Lc/d/a/c/f0/g;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lc/d/a/c/f0/g;->e:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    sget-object v0, Lc/d/a/c/f0/g;->p:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/c/f0/g;->e:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lc/d/a/c/f0/g;->e:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lc/d/a/c/f0/g;->f:Lb/n/a/a/b;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lc/d/a/c/f0/g;->e:Landroid/animation/ObjectAnimator;

    new-instance v1, Lc/d/a/c/f0/f;

    invoke-direct {v1, p0}, Lc/d/a/c/f0/f;-><init>(Lc/d/a/c/f0/g;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2
    :cond_1
    invoke-virtual {p0}, Lc/d/a/c/f0/g;->h()V

    iget-object v0, p0, Lc/d/a/c/f0/g;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/c/f0/g;->k:Lb/v/a/a/b;

    return-void
.end method

.method public h()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/c/f0/g;->h:I

    iget-object v1, p0, Lc/d/a/c/f0/m;->c:[I

    iget-object v2, p0, Lc/d/a/c/f0/g;->g:Lc/d/a/c/f0/c;

    iget-object v2, v2, Lc/d/a/c/f0/c;->c:[I

    aget v2, v2, v0

    iget-object v3, p0, Lc/d/a/c/f0/m;->a:Lc/d/a/c/f0/n;

    .line 1
    iget v3, v3, Lc/d/a/c/f0/k;->l:I

    .line 2
    invoke-static {v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->p(II)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/c/f0/g;->j:F

    return-void
.end method
