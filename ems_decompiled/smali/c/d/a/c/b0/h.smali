.class public Lc/d/a/c/b0/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/c/b0/h$b;,
        Lc/d/a/c/b0/h$d;,
        Lc/d/a/c/b0/h$c;,
        Lc/d/a/c/b0/h$g;,
        Lc/d/a/c/b0/h$h;,
        Lc/d/a/c/b0/h$f;,
        Lc/d/a/c/b0/h$e;
    }
.end annotation


# static fields
.field public static final F:Landroid/animation/TimeInterpolator;

.field public static final G:[I

.field public static final H:[I

.field public static final I:[I

.field public static final J:[I

.field public static final K:[I

.field public static final L:[I


# instance fields
.field public final A:Landroid/graphics/Rect;

.field public final B:Landroid/graphics/RectF;

.field public final C:Landroid/graphics/RectF;

.field public final D:Landroid/graphics/Matrix;

.field public E:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public a:Lc/d/a/c/j0/l;

.field public b:Lc/d/a/c/j0/h;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Lc/d/a/c/b0/c;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Z

.field public g:Z

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public final l:Lc/d/a/c/c0/g;

.field public m:Lc/d/a/c/m/g;

.field public n:Lc/d/a/c/m/g;

.field public o:Landroid/animation/Animator;

.field public p:Lc/d/a/c/m/g;

.field public q:Lc/d/a/c/m/g;

.field public r:F

.field public s:F

.field public t:I

.field public u:I

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/c/b0/h$e;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final z:Lc/d/a/c/i0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lc/d/a/c/m/a;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Lc/d/a/c/b0/h;->F:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lc/d/a/c/b0/h;->G:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lc/d/a/c/b0/h;->H:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lc/d/a/c/b0/h;->I:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lc/d/a/c/b0/h;->J:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lc/d/a/c/b0/h;->K:[I

    new-array v0, v2, [I

    sput-object v0, Lc/d/a/c/b0/h;->L:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lc/d/a/c/i0/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/c/b0/h;->g:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc/d/a/c/b0/h;->s:F

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/c/b0/h;->u:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/d/a/c/b0/h;->A:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc/d/a/c/b0/h;->B:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc/d/a/c/b0/h;->C:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc/d/a/c/b0/h;->D:Landroid/graphics/Matrix;

    iput-object p1, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p0, Lc/d/a/c/b0/h;->z:Lc/d/a/c/i0/b;

    new-instance p2, Lc/d/a/c/c0/g;

    invoke-direct {p2}, Lc/d/a/c/c0/g;-><init>()V

    iput-object p2, p0, Lc/d/a/c/b0/h;->l:Lc/d/a/c/c0/g;

    sget-object v0, Lc/d/a/c/b0/h;->G:[I

    new-instance v1, Lc/d/a/c/b0/h$d;

    invoke-direct {v1, p0}, Lc/d/a/c/b0/h$d;-><init>(Lc/d/a/c/b0/h;)V

    invoke-virtual {p0, v1}, Lc/d/a/c/b0/h;->c(Lc/d/a/c/b0/h$h;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lc/d/a/c/c0/g;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lc/d/a/c/b0/h;->H:[I

    new-instance v1, Lc/d/a/c/b0/h$c;

    invoke-direct {v1, p0}, Lc/d/a/c/b0/h$c;-><init>(Lc/d/a/c/b0/h;)V

    invoke-virtual {p0, v1}, Lc/d/a/c/b0/h;->c(Lc/d/a/c/b0/h$h;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lc/d/a/c/c0/g;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lc/d/a/c/b0/h;->I:[I

    new-instance v1, Lc/d/a/c/b0/h$c;

    invoke-direct {v1, p0}, Lc/d/a/c/b0/h$c;-><init>(Lc/d/a/c/b0/h;)V

    invoke-virtual {p0, v1}, Lc/d/a/c/b0/h;->c(Lc/d/a/c/b0/h$h;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lc/d/a/c/c0/g;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lc/d/a/c/b0/h;->J:[I

    new-instance v1, Lc/d/a/c/b0/h$c;

    invoke-direct {v1, p0}, Lc/d/a/c/b0/h$c;-><init>(Lc/d/a/c/b0/h;)V

    invoke-virtual {p0, v1}, Lc/d/a/c/b0/h;->c(Lc/d/a/c/b0/h$h;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lc/d/a/c/c0/g;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lc/d/a/c/b0/h;->K:[I

    new-instance v1, Lc/d/a/c/b0/h$g;

    invoke-direct {v1, p0}, Lc/d/a/c/b0/h$g;-><init>(Lc/d/a/c/b0/h;)V

    invoke-virtual {p0, v1}, Lc/d/a/c/b0/h;->c(Lc/d/a/c/b0/h$h;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lc/d/a/c/c0/g;->a([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lc/d/a/c/b0/h;->L:[I

    new-instance v1, Lc/d/a/c/b0/h$b;

    invoke-direct {v1, p0}, Lc/d/a/c/b0/h$b;-><init>(Lc/d/a/c/b0/h;)V

    invoke-virtual {p0, v1}, Lc/d/a/c/b0/h;->c(Lc/d/a/c/b0/h$h;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lc/d/a/c/c0/g;->a([ILandroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getRotation()F

    move-result p1

    iput p1, p0, Lc/d/a/c/b0/h;->r:F

    return-void
.end method


# virtual methods
.method public final a(FLandroid/graphics/Matrix;)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lc/d/a/c/b0/h;->t:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/d/a/c/b0/h;->B:Landroid/graphics/RectF;

    iget-object v2, p0, Lc/d/a/c/b0/h;->C:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lc/d/a/c/b0/h;->t:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget v0, p0, Lc/d/a/c/b0/h;->t:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p2, p1, p1, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method public final b(Lc/d/a/c/m/g;FFF)Landroid/animation/AnimatorSet;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Lc/d/a/c/m/g;->f(Ljava/lang/String;)Lc/d/a/c/m/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc/d/a/c/m/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lc/d/a/c/m/g;->f(Ljava/lang/String;)Lc/d/a/c/m/h;

    move-result-object v2

    invoke-virtual {v2, p2}, Lc/d/a/c/m/h;->a(Landroid/animation/Animator;)V

    .line 1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Lc/d/a/c/b0/i;

    invoke-direct {v6, p0}, Lc/d/a/c/b0/i;-><init>(Lc/d/a/c/b0/h;)V

    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 2
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v3, [F

    aput p3, v7, v5

    invoke-static {p2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, v1}, Lc/d/a/c/m/g;->f(Ljava/lang/String;)Lc/d/a/c/m/h;

    move-result-object p3

    invoke-virtual {p3, p2}, Lc/d/a/c/m/h;->a(Landroid/animation/Animator;)V

    if-eq v2, v4, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance p3, Lc/d/a/c/b0/i;

    invoke-direct {p3, p0}, Lc/d/a/c/b0/i;-><init>(Lc/d/a/c/b0/h;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 4
    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lc/d/a/c/b0/h;->D:Landroid/graphics/Matrix;

    invoke-virtual {p0, p4, p2}, Lc/d/a/c/b0/h;->a(FLandroid/graphics/Matrix;)V

    iget-object p2, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Lc/d/a/c/m/e;

    invoke-direct {p3}, Lc/d/a/c/m/e;-><init>()V

    new-instance p4, Lc/d/a/c/b0/h$a;

    invoke-direct {p4, p0}, Lc/d/a/c/b0/h$a;-><init>(Lc/d/a/c/b0/h;)V

    new-array v1, v3, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lc/d/a/c/b0/h;->D:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v5

    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    invoke-virtual {p1, p3}, Lc/d/a/c/m/g;->f(Ljava/lang/String;)Lc/d/a/c/m/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc/d/a/c/m/h;->a(Landroid/animation/Animator;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->u0(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method public final c(Lc/d/a/c/b0/h$h;)Landroid/animation/ValueAnimator;
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Lc/d/a/c/b0/h;->F:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public d()Lc/d/a/c/j0/h;
    .locals 2

    iget-object v0, p0, Lc/d/a/c/b0/h;->a:Lc/d/a/c/j0/l;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lc/d/a/c/j0/h;

    invoke-direct {v1, v0}, Lc/d/a/c/j0/h;-><init>(Lc/d/a/c/j0/l;)V

    return-object v1
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lc/d/a/c/b0/h;->h:F

    return v0
.end method

.method public f(Landroid/graphics/Rect;)V
    .locals 5

    iget-boolean v0, p0, Lc/d/a/c/b0/h;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lc/d/a/c/b0/h;->k:I

    iget-object v1, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lc/d/a/c/b0/h;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc/d/a/c/b0/h;->e()F

    move-result v1

    iget v2, p0, Lc/d/a/c/b0/h;->j:F

    add-float/2addr v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v1, v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public g(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 0

    invoke-virtual {p0}, Lc/d/a/c/b0/h;->d()Lc/d/a/c/j0/h;

    move-result-object p4

    iput-object p4, p0, Lc/d/a/c/b0/h;->b:Lc/d/a/c/j0/h;

    invoke-virtual {p4, p1}, Lc/d/a/c/j0/h;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lc/d/a/c/b0/h;->b:Lc/d/a/c/j0/h;

    invoke-virtual {p1, p2}, Lc/d/a/c/j0/h;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object p1, p0, Lc/d/a/c/b0/h;->b:Lc/d/a/c/j0/h;

    const p2, -0xbbbbbc

    invoke-virtual {p1, p2}, Lc/d/a/c/j0/h;->t(I)V

    iget-object p1, p0, Lc/d/a/c/b0/h;->b:Lc/d/a/c/j0/h;

    iget-object p2, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/d/a/c/j0/h;->n(Landroid/content/Context;)V

    new-instance p1, Lc/d/a/c/h0/a;

    iget-object p2, p0, Lc/d/a/c/b0/h;->b:Lc/d/a/c/j0/h;

    .line 1
    iget-object p2, p2, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object p2, p2, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    .line 2
    invoke-direct {p1, p2}, Lc/d/a/c/h0/a;-><init>(Lc/d/a/c/j0/l;)V

    invoke-static {p3}, Lc/d/a/c/h0/b;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/d/a/c/h0/a;->setTintList(Landroid/content/res/ColorStateList;)V

    iput-object p1, p0, Lc/d/a/c/b0/h;->c:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    iget-object p4, p0, Lc/d/a/c/b0/h;->b:Lc/d/a/c/j0/h;

    .line 3
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    .line 4
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lc/d/a/c/b0/h;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public h()Z
    .locals 4

    iget-object v0, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lc/d/a/c/b0/h;->u:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lc/d/a/c/b0/h;->u:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public i()Z
    .locals 4

    iget-object v0, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lc/d/a/c/b0/h;->u:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lc/d/a/c/b0/h;->u:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/b0/h;->l:Lc/d/a/c/c0/g;

    .line 1
    iget-object v1, v0, Lc/d/a/c/c0/g;->c:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    const/4 v1, 0x0

    iput-object v1, v0, Lc/d/a/c/c0/g;->c:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l([I)V
    .locals 6

    iget-object v0, p0, Lc/d/a/c/b0/h;->l:Lc/d/a/c/c0/g;

    .line 1
    iget-object v1, v0, Lc/d/a/c/c0/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    iget-object v4, v0, Lc/d/a/c/c0/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/c/c0/g$b;

    iget-object v5, v4, Lc/d/a/c/c0/g$b;->a:[I

    invoke-static {v5, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_1
    iget-object p1, v0, Lc/d/a/c/c0/g;->b:Lc/d/a/c/c0/g$b;

    if-ne v4, p1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 2
    iget-object p1, v0, Lc/d/a/c/c0/g;->c:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v3, v0, Lc/d/a/c/c0/g;->c:Landroid/animation/ValueAnimator;

    .line 3
    :cond_3
    iput-object v4, v0, Lc/d/a/c/c0/g;->b:Lc/d/a/c/c0/g$b;

    if-eqz v4, :cond_4

    .line 4
    iget-object p1, v4, Lc/d/a/c/c0/g$b;->b:Landroid/animation/ValueAnimator;

    iput-object p1, v0, Lc/d/a/c/c0/g;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_2
    return-void
.end method

.method public m(FFF)V
    .locals 0

    invoke-virtual {p0}, Lc/d/a/c/b0/h;->x()V

    invoke-virtual {p0, p1}, Lc/d/a/c/b0/h;->y(F)V

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/b0/h;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/c/b0/h$e;

    invoke-interface {v1}, Lc/d/a/c/b0/h$e;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/b0/h;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/c/b0/h$e;

    invoke-interface {v1}, Lc/d/a/c/b0/h$e;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final q(F)V
    .locals 1

    iput p1, p0, Lc/d/a/c/b0/h;->s:F

    iget-object v0, p0, Lc/d/a/c/b0/h;->D:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0}, Lc/d/a/c/b0/h;->a(FLandroid/graphics/Matrix;)V

    iget-object p1, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public r(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/b0/h;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc/d/a/c/h0/b;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, La/a/a/a/a;->m0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final s(Lc/d/a/c/j0/l;)V
    .locals 2

    iput-object p1, p0, Lc/d/a/c/b0/h;->a:Lc/d/a/c/j0/l;

    iget-object v0, p0, Lc/d/a/c/b0/h;->b:Lc/d/a/c/j0/h;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iput-object p1, v1, Lc/d/a/c/j0/h$b;->a:Lc/d/a/c/j0/l;

    invoke-virtual {v0}, Lc/d/a/c/j0/h;->invalidateSelf()V

    .line 2
    :cond_0
    iget-object v0, p0, Lc/d/a/c/b0/h;->c:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lc/d/a/c/j0/p;

    if-eqz v1, :cond_1

    check-cast v0, Lc/d/a/c/j0/p;

    invoke-interface {v0, p1}, Lc/d/a/c/j0/p;->setShapeAppearanceModel(Lc/d/a/c/j0/l;)V

    :cond_1
    iget-object v0, p0, Lc/d/a/c/b0/h;->d:Lc/d/a/c/b0/c;

    if-eqz v0, :cond_2

    .line 3
    iput-object p1, v0, Lc/d/a/c/b0/c;->o:Lc/d/a/c/j0/l;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final u()Z
    .locals 2

    iget-object v0, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()Z
    .locals 2

    iget-boolean v0, p0, Lc/d/a/c/b0/h;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget v1, p0, Lc/d/a/c/b0/h;->k:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public w()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    iget v0, p0, Lc/d/a/c/b0/h;->r:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lc/d/a/c/b0/h;->b:Lc/d/a/c/j0/h;

    if-eqz v0, :cond_2

    iget v1, p0, Lc/d/a/c/b0/h;->r:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lc/d/a/c/j0/h;->u(I)V

    :cond_2
    return-void
.end method

.method public final x()V
    .locals 9

    iget-object v0, p0, Lc/d/a/c/b0/h;->A:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lc/d/a/c/b0/h;->f(Landroid/graphics/Rect;)V

    .line 1
    iget-object v1, p0, Lc/d/a/c/b0/h;->e:Landroid/graphics/drawable/Drawable;

    const-string v2, "Didn\'t initialize content background"

    invoke-static {v1, v2}, La/a/a/a/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lc/d/a/c/b0/h;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v3, p0, Lc/d/a/c/b0/h;->e:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v2, p0, Lc/d/a/c/b0/h;->z:Lc/d/a/c/i0/b;

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lc/d/a/c/b0/h;->z:Lc/d/a/c/i0/b;

    iget-object v2, p0, Lc/d/a/c/b0/h;->e:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_0
    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lc/d/a/c/b0/h;->z:Lc/d/a/c/i0/b;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 6
    iget-object v5, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->o:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 7
    iget v5, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->l:I

    add-int/2addr v2, v5

    add-int/2addr v3, v5

    add-int/2addr v4, v5

    add-int/2addr v0, v5

    .line 8
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    return-void
.end method

.method public y(F)V
    .locals 3

    iget-object v0, p0, Lc/d/a/c/b0/h;->b:Lc/d/a/c/j0/h;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v2, v1, Lc/d/a/c/j0/h$b;->o:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_0

    iput p1, v1, Lc/d/a/c/j0/h$b;->o:F

    invoke-virtual {v0}, Lc/d/a/c/j0/h;->C()V

    :cond_0
    return-void
.end method
