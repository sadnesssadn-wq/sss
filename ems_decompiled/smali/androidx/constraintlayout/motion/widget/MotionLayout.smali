.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""

# interfaces
.implements Lb/i/m/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$i;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$d;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$e;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$c;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$h;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$g;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$f;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$j;
    }
.end annotation


# static fields
.field public static O0:Z


# instance fields
.field public A:I

.field public A0:Lb/g/a/h/a/d;

.field public B:I

.field public B0:Z

.field public C:I

.field public C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

.field public D:I

.field public D0:Ljava/lang/Runnable;

.field public E:I

.field public E0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public F:Z

.field public F0:Landroid/graphics/Rect;

.field public G:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lb/g/c/b/n;",
            ">;"
        }
    .end annotation
.end field

.field public G0:Z

.field public H:J

.field public H0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

.field public I:F

.field public I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

.field public J:F

.field public J0:Z

.field public K:F

.field public K0:Landroid/graphics/RectF;

.field public L:J

.field public L0:Landroid/view/View;

.field public M:F

.field public M0:Landroid/graphics/Matrix;

.field public N:Z

.field public N0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public O:Z

.field public P:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

.field public Q:F

.field public R:F

.field public S:I

.field public T:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

.field public U:Z

.field public V:Lb/g/c/a/a;

.field public W:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

.field public a0:Lb/g/c/b/b;

.field public b0:I

.field public c0:I

.field public d0:Z

.field public e0:F

.field public f0:F

.field public g0:J

.field public h0:F

.field public i0:Z

.field public j0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field public k0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field public l0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field public m0:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionLayout$i;",
            ">;"
        }
    .end annotation
.end field

.field public n0:I

.field public o0:J

.field public p0:F

.field public q0:I

.field public r0:F

.field public s0:Z

.field public t0:I

.field public u0:I

.field public v0:I

.field public w:Lb/g/c/b/q;

.field public w0:I

.field public x:Landroid/view/animation/Interpolator;

.field public x0:I

.field public y:Landroid/view/animation/Interpolator;

.field public y0:I

.field public z:F

.field public z0:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    new-instance v2, Lb/g/c/a/a;

    invoke-direct {v2}, Lb/g/c/a/a;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:Lb/g/c/a/a;

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:J

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:F

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    new-instance v0, Lb/g/a/h/a/d;

    invoke-direct {v0}, Lb/g/a/h/a/d;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lb/g/a/h/a/d;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K0:Landroid/graphics/RectF;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/view/View;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/graphics/Matrix;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->D(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Landroid/view/animation/Interpolator;

    const/4 p3, 0x0

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    new-instance v1, Lb/g/c/a/a;

    invoke-direct {v1}, Lb/g/c/a/a;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:Lb/g/c/a/a;

    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:J

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:I

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    new-instance p3, Lb/g/a/h/a/d;

    invoke-direct {p3}, Lb/g/a/h/a/d;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lb/g/a/h/a/d;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Ljava/lang/Runnable;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:Ljava/util/HashMap;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Landroid/graphics/Rect;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    sget-object p3, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    new-instance p3, Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    invoke-direct {p3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Z

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K0:Landroid/graphics/RectF;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/view/View;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/graphics/Matrix;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->D(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static t(Landroidx/constraintlayout/motion/widget/MotionLayout;Lb/g/a/i/d;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lb/g/a/i/d;->y()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lb/g/a/i/d;->x()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lb/g/a/i/d;->w()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lb/g/a/i/d;->q()I

    move-result p1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method


# virtual methods
.method public A(I)Lb/g/d/c;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object p1

    return-object p1
.end method

.method public B(I)Lb/g/c/b/q$b;
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    .line 1
    iget-object v0, v0, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/c/b/q$b;

    .line 2
    iget v2, v1, Lb/g/c/b/q$b;->a:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final C(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0, v4, v5, v3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->C(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K0:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K0:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    neg-float p1, p1

    neg-float p2, p2

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p4, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p3

    neg-float p1, p1

    neg-float p2, p2

    invoke-virtual {p4, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_2

    :cond_3
    invoke-static {p4}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/graphics/Matrix;

    if-nez p1, :cond_4

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/graphics/Matrix;

    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p3

    invoke-virtual {p4}, Landroid/view/MotionEvent;->recycle()V

    :goto_2
    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    return v1
.end method

.method public final D(Landroid/util/AttributeSet;)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O0:Z

    const-string v0, "MotionLayout"

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lb/g/d/f;->MotionLayout:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v5, v3, :cond_7

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    sget v8, Lb/g/d/f;->MotionLayout_layoutDescription:I

    if-ne v7, v8, :cond_0

    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    new-instance v8, Lb/g/c/b/q;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, p0, v7}, Lb/g/c/b/q;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    goto :goto_2

    :cond_0
    sget v8, Lb/g/d/f;->MotionLayout_currentState:I

    if-ne v7, v8, :cond_1

    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    goto :goto_2

    :cond_1
    sget v8, Lb/g/d/f;->MotionLayout_motionProgress:I

    if-ne v7, v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    goto :goto_2

    :cond_2
    sget v8, Lb/g/d/f;->MotionLayout_applyMotionScene:I

    if-ne v7, v8, :cond_3

    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto :goto_2

    :cond_3
    sget v8, Lb/g/d/f;->MotionLayout_showPaths:I

    if-ne v7, v8, :cond_5

    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    if-nez v8, :cond_6

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    sget v8, Lb/g/d/f;->MotionLayout_motionDebug:I

    if-ne v7, v8, :cond_6

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    :goto_1
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez p1, :cond_8

    const-string p1, "WARNING NO app:layoutDescription tag"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v6, :cond_9

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    :cond_9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    if-eqz p1, :cond_19

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez p1, :cond_a

    const-string p1, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_a
    invoke-virtual {p1}, Lb/g/c/b/q;->i()I

    move-result p1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v3}, Lb/g/c/b/q;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v3

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, La/a/a/a/a;->H(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    const-string v6, "CHECK: "

    if-ge v5, v4, :cond_d

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v8, v1, :cond_b

    const-string v9, " ALL VIEWS SHOULD HAVE ID\'s "

    invoke-static {v6, p1, v9}, Lc/a/a/a/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " does not!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v3, v8}, Lb/g/d/c;->i(I)Lb/g/d/c$a;

    move-result-object v8

    if-nez v8, :cond_c

    const-string v8, " NO CONSTRAINTS for "

    invoke-static {v6, p1, v8}, Lc/a/a/a/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7}, La/a/a/a/a;->I(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3
    :cond_d
    iget-object v4, v3, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Integer;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    array-length v5, v4

    new-array v7, v5, [I

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v5, :cond_e

    aget-object v9, v4, v8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    if-ge v2, v5, :cond_12

    .line 4
    aget v4, v7, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, La/a/a/a/a;->H(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    aget v9, v7, v2

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " NO View matches id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_f
    invoke-virtual {v3, v4}, Lb/g/d/c;->h(I)Lb/g/d/c$a;

    move-result-object v9

    iget-object v9, v9, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v9, v9, Lb/g/d/c$b;->d:I

    const-string v10, ") no LAYOUT_HEIGHT"

    const-string v11, "("

    if-ne v9, v1, :cond_10

    .line 6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_10
    invoke-virtual {v3, v4}, Lb/g/d/c;->h(I)Lb/g/d/c$a;

    move-result-object v4

    iget-object v4, v4, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v4, v4, Lb/g/d/c$b;->c:I

    if-ne v4, v1, :cond_11

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 9
    :cond_12
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    .line 10
    iget-object v3, v3, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/c/b/q$b;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    iget-object v5, v5, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-ne v4, v5, :cond_14

    const-string v5, "CHECK: CURRENT"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_14
    iget v5, v4, Lb/g/c/b/q$b;->d:I

    .line 13
    iget v6, v4, Lb/g/c/b/q$b;->c:I

    if-ne v5, v6, :cond_15

    const-string v5, "CHECK: start and end constraint set should not be the same!"

    .line 14
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_15
    iget v5, v4, Lb/g/c/b/q$b;->d:I

    .line 16
    iget v4, v4, Lb/g/c/b/q$b;->c:I

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, La/a/a/a/a;->H(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, La/a/a/a/a;->H(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    const-string v9, "->"

    if-ne v8, v4, :cond_16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CHECK: two transitions with the same start and end "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-ne v8, v5, :cond_17

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CHECK: you can\'t have reverse transitions"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    invoke-virtual {p1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v7, v5}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v5

    if-nez v5, :cond_18

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " no such constraintSetStart "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v5, v4}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v4

    if-nez v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " no such constraintSetEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 18
    :cond_19
    :goto_7
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    if-ne p1, v1, :cond_1a

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lb/g/c/b/q;->i()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {p1}, Lb/g/c/b/q;->i()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {p1}, Lb/g/c/b/q;->d()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    :cond_1a
    return-void
.end method

.method public E()V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    invoke-virtual {v0, p0, v1}, Lb/g/c/b/q;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    return-void

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    .line 1
    iget-object v3, v2, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/c/b/q$b;

    .line 2
    iget-object v5, v4, Lb/g/c/b/q$b;->m:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 4
    iget-object v4, v4, Lb/g/c/b/q$b;->m:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/c/b/q$b$a;

    invoke-virtual {v5, p0}, Lb/g/c/b/q$b$a;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lb/g/c/b/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/c/b/q$b;

    .line 6
    iget-object v5, v4, Lb/g/c/b/q$b;->m:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 8
    iget-object v4, v4, Lb/g/c/b/q$b;->m:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/c/b/q$b$a;

    invoke-virtual {v5, p0}, Lb/g/c/b/q$b$a;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/c/b/q$b;

    .line 10
    iget-object v5, v4, Lb/g/c/b/q$b;->m:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 12
    iget-object v5, v4, Lb/g/c/b/q$b;->m:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/c/b/q$b$a;

    invoke-virtual {v6, p0, v0, v4}, Lb/g/c/b/q$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILb/g/c/b/q$b;)V

    goto :goto_2

    :cond_7
    iget-object v2, v2, Lb/g/c/b/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/c/b/q$b;

    .line 14
    iget-object v4, v3, Lb/g/c/b/q$b;->m:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 16
    iget-object v4, v3, Lb/g/c/b/q$b;->m:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/c/b/q$b$a;

    invoke-virtual {v5, p0, v0, v3}, Lb/g/c/b/q$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILb/g/c/b/q$b;)V

    goto :goto_3

    .line 18
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v0}, Lb/g/c/b/q;->p()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    .line 19
    iget-object v0, v0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v0, :cond_c

    .line 20
    iget-object v0, v0, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v0, :cond_c

    .line 21
    iget v2, v0, Lb/g/c/b/t;->d:I

    if-eq v2, v1, :cond_a

    iget-object v1, v0, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v2, "cannot find TouchAnchorId @id/"

    invoke-static {v2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v0, Lb/g/c/b/t;->d:I

    invoke-static {v3, v4}, La/a/a/a/a;->H(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TouchResponse"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_4
    instance-of v2, v1, Landroidx/core/widget/NestedScrollView;

    if-eqz v2, :cond_c

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    new-instance v2, Lb/g/c/b/r;

    invoke-direct {v2, v0}, Lb/g/c/b/r;-><init>(Lb/g/c/b/t;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lb/g/c/b/s;

    invoke-direct {v2, v0}, Lb/g/c/b/s;-><init>(Lb/g/c/b/t;)V

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V

    :cond_c
    return-void
.end method

.method public final F()V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->d(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->d(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public G()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->e()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public H(III)V
    .locals 5

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lb/g/d/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    int-to-float p2, p2

    int-to-float p3, p3

    .line 1
    iget v3, v1, Lb/g/d/b;->b:I

    if-ne v3, p1, :cond_6

    if-ne p1, v0, :cond_0

    iget-object p1, v1, Lb/g/d/b;->d:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, v1, Lb/g/d/b;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lb/g/d/b$a;

    iget v3, v1, Lb/g/d/b;->c:I

    if-eq v3, v0, :cond_1

    iget-object v4, p1, Lb/g/d/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/d/b$b;

    invoke-virtual {v3, p2, p3}, Lb/g/d/b$b;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1, p2, p3}, Lb/g/d/b$a;->a(FF)I

    move-result p2

    iget p3, v1, Lb/g/d/b;->c:I

    if-ne p3, p2, :cond_2

    goto/16 :goto_5

    :cond_2
    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p3, p1, Lb/g/d/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb/g/d/b$b;

    iget-object v2, p3, Lb/g/d/b$b;->f:Lb/g/d/c;

    :goto_1
    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lb/g/d/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/g/d/b$b;

    iget p1, p1, Lb/g/d/b$b;->e:I

    :goto_2
    if-nez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    iput p2, v1, Lb/g/d/b;->c:I

    iget-object p1, v1, Lb/g/d/b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, p1}, Lb/g/d/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_5

    :cond_6
    iput p1, v1, Lb/g/d/b;->b:I

    iget-object v2, v1, Lb/g/d/b;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/d/b$a;

    invoke-virtual {v2, p2, p3}, Lb/g/d/b$a;->a(FF)I

    move-result v3

    if-ne v3, v0, :cond_7

    iget-object v4, v2, Lb/g/d/b$a;->d:Lb/g/d/c;

    goto :goto_3

    :cond_7
    iget-object v4, v2, Lb/g/d/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/d/b$b;

    iget-object v4, v4, Lb/g/d/b$b;->f:Lb/g/d/c;

    :goto_3
    if-ne v3, v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, v2, Lb/g/d/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/d/b$b;

    iget v0, v0, Lb/g/d/b$b;->e:I

    :goto_4
    if-nez v4, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO Constraint set found ! id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dim ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConstraintLayoutStates"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    iput v3, v1, Lb/g/d/b;->c:I

    iget-object p1, v1, Lb/g/d/b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, p1}, Lb/g/d/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_5

    .line 2
    :cond_a
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz p2, :cond_b

    invoke-virtual {p2, p1}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object p1

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p0, p2}, Lb/g/d/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Lb/g/d/c;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_b
    :goto_5
    return-void
.end method

.method public I(II)V
    .locals 2

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 1
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    .line 2
    iput p2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz v0, :cond_2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    invoke-virtual {v0, p1, p2}, Lb/g/c/b/q;->o(II)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v1, p1}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object p1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v1, p2}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(Lb/g/d/c;Lb/g/d/c;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->G()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u(F)V

    :cond_2
    return-void
.end method

.method public J(IFF)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v8, p2

    move/from16 v4, p3

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:J

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v3}, Lb/g/c/b/q;->c()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v5, v3, v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    const/4 v3, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_8

    if-eq v1, v2, :cond_8

    if-eq v1, v7, :cond_8

    const/4 v12, 0x4

    if-eq v1, v12, :cond_7

    const/4 v12, 0x5

    if-eq v1, v12, :cond_2

    if-eq v1, v6, :cond_8

    if-eq v1, v3, :cond_8

    goto/16 :goto_e

    :cond_2
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v3}, Lb/g/c/b/q;->h()F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v6, v4, v11

    if-lez v6, :cond_3

    div-float v6, v4, v3

    mul-float v7, v4, v6

    mul-float v3, v3, v6

    mul-float v3, v3, v6

    div-float/2addr v3, v5

    sub-float/2addr v7, v3

    add-float/2addr v7, v1

    cmpl-float v1, v7, v9

    if-lez v1, :cond_4

    goto :goto_0

    :cond_3
    neg-float v6, v4

    div-float/2addr v6, v3

    mul-float v7, v4, v6

    mul-float v3, v3, v6

    mul-float v3, v3, v6

    div-float/2addr v3, v5

    add-float/2addr v3, v7

    add-float/2addr v3, v1

    cmpg-float v1, v3, v11

    if-gez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v3}, Lb/g/c/b/q;->h()F

    move-result v3

    goto :goto_2

    :cond_5
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:Lb/g/c/a/a;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v3}, Lb/g/c/b/q;->h()F

    move-result v6

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    .line 1
    iget-object v3, v3, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v3, :cond_6

    .line 2
    iget-object v3, v3, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v3, :cond_6

    .line 3
    iget v3, v3, Lb/g/c/b/t;->s:F

    move v7, v3

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    move/from16 v3, p2

    move/from16 v4, p3

    .line 4
    invoke-virtual/range {v1 .. v7}, Lb/g/c/a/a;->b(FFFFFF)V

    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    goto/16 :goto_c

    :cond_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v3}, Lb/g/c/b/q;->h()F

    move-result v3

    .line 5
    :goto_2
    iput v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:F

    iput v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:F

    iput v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->c:F

    .line 6
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    goto/16 :goto_d

    :cond_8
    if-eq v1, v2, :cond_b

    if-ne v1, v3, :cond_9

    goto :goto_3

    :cond_9
    if-eq v1, v7, :cond_a

    if-ne v1, v6, :cond_c

    :cond_a
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v8, 0x0

    :cond_c
    :goto_4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    .line 7
    iget-object v2, v1, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v2, :cond_d

    .line 8
    iget-object v3, v2, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v3, :cond_d

    .line 9
    iget v3, v3, Lb/g/c/b/t;->D:I

    goto :goto_5

    :cond_d
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_f

    .line 10
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:Lb/g/c/a/a;

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    invoke-virtual {v1}, Lb/g/c/b/q;->h()F

    move-result v6

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    .line 11
    iget-object v1, v1, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v1, :cond_e

    .line 12
    iget-object v1, v1, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v1, :cond_e

    .line 13
    iget v1, v1, Lb/g/c/b/t;->s:F

    move v7, v1

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    :goto_6
    move-object v1, v2

    move v2, v3

    move v3, v8

    move/from16 v4, p3

    .line 14
    invoke-virtual/range {v1 .. v7}, Lb/g/c/a/a;->b(FFFFFF)V

    goto :goto_c

    :cond_f
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:Lb/g/c/a/a;

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    if-eqz v2, :cond_10

    .line 15
    iget-object v4, v2, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v4, :cond_10

    .line 16
    iget v4, v4, Lb/g/c/b/t;->z:F

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    :goto_7
    if-eqz v2, :cond_11

    .line 17
    iget-object v5, v2, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v5, :cond_11

    .line 18
    iget v5, v5, Lb/g/c/b/t;->A:F

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    :goto_8
    if-eqz v2, :cond_12

    .line 19
    iget-object v6, v2, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v6, :cond_12

    .line 20
    iget v6, v6, Lb/g/c/b/t;->y:F

    goto :goto_9

    :cond_12
    const/4 v6, 0x0

    :goto_9
    if-eqz v2, :cond_13

    .line 21
    iget-object v7, v2, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v7, :cond_13

    .line 22
    iget v7, v7, Lb/g/c/b/t;->B:F

    goto :goto_a

    :cond_13
    const/4 v7, 0x0

    :goto_a
    if-eqz v2, :cond_14

    .line 23
    iget-object v2, v2, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v2, :cond_14

    .line 24
    iget v2, v2, Lb/g/c/b/t;->C:I

    goto :goto_b

    :cond_14
    const/4 v2, 0x0

    .line 25
    :goto_b
    iget-object v9, v1, Lb/g/c/a/a;->b:Lb/g/a/h/a/k;

    if-nez v9, :cond_15

    new-instance v9, Lb/g/a/h/a/k;

    invoke-direct {v9}, Lb/g/a/h/a/k;-><init>()V

    iput-object v9, v1, Lb/g/c/a/a;->b:Lb/g/a/h/a/k;

    :cond_15
    iget-object v9, v1, Lb/g/c/a/a;->b:Lb/g/a/h/a/k;

    iput-object v9, v1, Lb/g/c/a/a;->c:Lb/g/a/h/a/m;

    float-to-double v12, v8

    .line 26
    iput-wide v12, v9, Lb/g/a/h/a/k;->c:D

    float-to-double v12, v6

    iput-wide v12, v9, Lb/g/a/h/a/k;->a:D

    iput v3, v9, Lb/g/a/h/a/k;->e:F

    float-to-double v5, v5

    iput-wide v5, v9, Lb/g/a/h/a/k;->b:D

    iput v4, v9, Lb/g/a/h/a/k;->g:F

    iput v7, v9, Lb/g/a/h/a/k;->h:F

    iput v2, v9, Lb/g/a/h/a/k;->i:I

    iput v11, v9, Lb/g/a/h/a/k;->d:F

    .line 27
    :goto_c
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:Lb/g/c/a/a;

    :goto_d
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    :goto_e
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:J

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public K()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Ljava/lang/Runnable;

    return-void
.end method

.method public L(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 1
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, v0, v0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->N(IIII)V

    return-void
.end method

.method public M(II)V
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-direct {p2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 1
    iput p1, p2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, v0, v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->N(IIII)V

    return-void
.end method

.method public N(IIII)V
    .locals 10

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_9

    iget-object v0, v0, Lb/g/c/b/q;->b:Lb/g/d/h;

    if-eqz v0, :cond_9

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    int-to-float p2, p2

    int-to-float p3, p3

    .line 1
    iget-object v0, v0, Lb/g/d/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/d/h$a;

    if-nez v0, :cond_0

    move v3, p1

    goto :goto_2

    :cond_0
    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, p2, v4

    if-eqz v5, :cond_5

    cmpl-float v4, p3, v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lb/g/d/h$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v1

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/d/h$b;

    invoke-virtual {v6, p2, p3}, Lb/g/d/h$b;->a(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v5, v6, Lb/g/d/h$b;->e:I

    if-ne v3, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v6

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_8

    iget v3, v5, Lb/g/d/h$b;->e:I

    goto :goto_2

    :cond_5
    :goto_1
    iget p2, v0, Lb/g/d/h$a;->c:I

    if-ne p2, v3, :cond_6

    goto :goto_2

    :cond_6
    iget-object p2, v0, Lb/g/d/h$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb/g/d/h$b;

    iget p3, p3, Lb/g/d/h$b;->e:I

    if-ne v3, p3, :cond_7

    goto :goto_2

    :cond_8
    iget v3, v0, Lb/g/d/h$a;->c:I

    :goto_2
    if-eq v3, v2, :cond_9

    move p1, v3

    .line 2
    :cond_9
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    if-ne p2, p1, :cond_a

    return-void

    :cond_a
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    if-ne p3, p1, :cond_c

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u(F)V

    if-lez p4, :cond_b

    int-to-float p1, p4

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    :cond_b
    return-void

    :cond_c
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne p3, p1, :cond_e

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u(F)V

    if-lez p4, :cond_d

    int-to-float p1, p4

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    :cond_d
    return-void

    :cond_e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    if-eq p2, v2, :cond_10

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->I(II)V

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u(F)V

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->K()V

    if-lez p4, :cond_f

    int-to-float p1, p4

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    :cond_f
    return-void

    :cond_10
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:J

    iput-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    if-ne p4, v2, :cond_11

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {p3}, Lb/g/c/b/q;->c()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v0

    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    :cond_11
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    invoke-virtual {p3, v2, v5}, Lb/g/c/b/q;->o(II)V

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    if-nez p4, :cond_12

    iget-object p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {p4}, Lb/g/c/b/q;->c()I

    move-result p4

    goto :goto_3

    :cond_12
    if-lez p4, :cond_13

    :goto_3
    int-to-float p4, p4

    div-float/2addr p4, v0

    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    :cond_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p4, :cond_14

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lb/g/c/b/n;

    invoke-direct {v5, v2}, Lb/g/c/b/n;-><init>(Landroid/view/View;)V

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/c/b/n;

    invoke-virtual {p3, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v2, p1}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(Lb/g/d/c;Lb/g/d/c;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->G()V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a()V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_16

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/c/b/n;

    if-nez v2, :cond_15

    goto :goto_6

    .line 4
    :cond_15
    iget-object v5, v2, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iput v3, v5, Lb/g/c/b/p;->e:F

    iput v3, v5, Lb/g/c/b/p;->f:F

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lb/g/c/b/p;->g(FFFF)V

    iget-object v2, v2, Lb/g/c/b/n;->g:Lb/g/c/b/l;

    invoke-virtual {v2, v1}, Lb/g/c/b/l;->j(Landroid/view/View;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5
    :cond_16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p4, :cond_18

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/c/b/n;

    if-nez v2, :cond_17

    goto :goto_8

    :cond_17
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v5, v2}, Lb/g/c/b/q;->g(Lb/g/c/b/n;)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v5}, Landroidx/constraintlayout/motion/widget/MotionHelper;->z(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    goto :goto_9

    :cond_19
    const/4 v1, 0x0

    :goto_a
    if-ge v1, p4, :cond_1d

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/c/b/n;

    if-nez v2, :cond_1a

    goto :goto_b

    :cond_1a
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v5

    invoke-virtual {v2, p1, v0, v5, v6}, Lb/g/c/b/n;->g(IIJ)V

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    const/4 v1, 0x0

    :goto_c
    if-ge v1, p4, :cond_1d

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/c/b/n;

    if-nez v2, :cond_1c

    goto :goto_d

    :cond_1c
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v5, v2}, Lb/g/c/b/q;->g(Lb/g/c/b/n;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v5

    invoke-virtual {v2, p1, v0, v5, v6}, Lb/g/c/b/n;->g(IIJ)V

    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1d
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    .line 6
    iget-object p1, p1, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz p1, :cond_1e

    .line 7
    iget p1, p1, Lb/g/c/b/q$b;->i:F

    goto :goto_e

    :cond_1e
    const/4 p1, 0x0

    :goto_e
    cmpl-float v0, p1, v3

    if-eqz v0, :cond_20

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const v1, -0x800001

    const/4 v2, 0x0

    :goto_f
    if-ge v2, p4, :cond_1f

    .line 8
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/c/b/n;

    .line 9
    iget-object v5, v5, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget v6, v5, Lb/g/c/b/p;->g:F

    .line 10
    iget v5, v5, Lb/g/c/b/p;->h:F

    add-float/2addr v5, v6

    .line 11
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1f
    :goto_10
    if-ge p2, p4, :cond_20

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/c/b/n;

    .line 12
    iget-object v5, v2, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget v6, v5, Lb/g/c/b/p;->g:F

    .line 13
    iget v5, v5, Lb/g/c/b/p;->h:F

    sub-float v7, v4, p1

    div-float v7, v4, v7

    .line 14
    iput v7, v2, Lb/g/c/b/n;->m:F

    add-float/2addr v6, v5

    sub-float/2addr v6, v0

    mul-float v6, v6, p1

    sub-float v5, v1, v0

    div-float/2addr v6, v5

    sub-float v5, p1, v6

    iput v5, v2, Lb/g/c/b/n;->l:F

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_20
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iput-boolean p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public O(ILb/g/d/c;)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    invoke-virtual {v1, v2}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    invoke-virtual {v2, v3}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(Lb/g/d/c;Lb/g/d/c;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->G()V

    .line 3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p2, p0, p1}, Lb/g/d/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Lb/g/d/c;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method public varargs P(I[Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz v0, :cond_8

    .line 1
    iget-object v0, v0, Lb/g/c/b/q;->q:Lb/g/c/b/w;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Lb/g/c/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lb/g/c/b/v;

    .line 3
    iget v2, v9, Lb/g/c/b/v;->a:I

    if-ne v2, p1, :cond_0

    .line 4
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    invoke-virtual {v9, v4}, Lb/g/c/b/v;->b(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-array v1, v2, [Landroid/view/View;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Landroid/view/View;

    .line 5
    iget-object v1, v0, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v4

    iget v1, v9, Lb/g/c/b/v;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v1, -0x1

    if-ne v4, v1, :cond_3

    iget-object v1, v0, Lb/g/c/b/w;->d:Ljava/lang/String;

    const-string v2, "No support for ViewTransition within transition yet. Currently: "

    invoke-static {v2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A(I)Lb/g/d/c;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object v1, v9

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lb/g/c/b/v;->a(Lb/g/c/b/w;Landroidx/constraintlayout/motion/widget/MotionLayout;ILb/g/d/c;[Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lb/g/c/b/v;->a(Lb/g/c/b/w;Landroidx/constraintlayout/motion/widget/MotionLayout;ILb/g/d/c;[Landroid/view/View;)V

    .line 6
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_6
    move-object v1, v9

    goto :goto_0

    :cond_7
    if-nez v1, :cond_9

    iget-object p1, v0, Lb/g/c/b/w;->d:Ljava/lang/String;

    const-string p2, " Could not find ViewTransition"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const-string p1, "MotionLayout"

    const-string p2, " no motionScene"

    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:F

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionHelper;->y()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(Z)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v3, Lb/g/c/b/q;->q:Lb/g/c/b/w;

    if-eqz v3, :cond_3

    .line 1
    iget-object v5, v3, Lb/g/c/b/w;->e:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/c/b/v$a;

    invoke-virtual {v6}, Lb/g/c/b/v$a;->a()V

    goto :goto_1

    :cond_2
    iget-object v5, v3, Lb/g/c/b/w;->e:Ljava/util/ArrayList;

    iget-object v6, v3, Lb/g/c/b/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v5, v3, Lb/g/c/b/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v3, Lb/g/c/b/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iput-object v4, v3, Lb/g/c/b/w;->e:Ljava/util/ArrayList;

    .line 2
    :cond_3
    :goto_2
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v3, :cond_4

    return-void

    :cond_4
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/high16 v5, 0x41300000    # 11.0f

    const/high16 v6, 0x41200000    # 10.0f

    if-ne v3, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:J

    const-wide/16 v11, -0x1

    cmp-long v3, v9, v11

    if-eqz v3, :cond_5

    sub-long v9, v7, v9

    const-wide/32 v11, 0xbebc200

    cmp-long v3, v9, v11

    if-lez v3, :cond_6

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    int-to-float v3, v3

    long-to-float v9, v9

    const v10, 0x3089705f    # 1.0E-9f

    mul-float v9, v9, v10

    div-float/2addr v3, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v3, v3, v9

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:F

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    :cond_5
    iput-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:J

    :cond_6
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v7, 0x42280000    # 42.0f

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v7

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float v7, v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " fps "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    invoke-static {v0, v9}, La/a/a/a/a;->M(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    invoke-static {v0, v9}, La/a/a/a/a;->M(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (progress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " ) state="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_7

    const-string v7, "undefined"

    goto :goto_3

    :cond_7
    invoke-static {v0, v7}, La/a/a/a/a;->M(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, -0x1000000

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1d

    int-to-float v8, v8

    invoke-virtual {v1, v7, v5, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v8, -0x77ff78

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1e

    int-to-float v8, v8

    invoke-virtual {v1, v7, v6, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    if-le v3, v4, :cond_31

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    if-nez v3, :cond_9

    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    invoke-direct {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    :cond_9
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v7}, Lb/g/c/b/q;->c()I

    move-result v7

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v9

    if-nez v9, :cond_a

    goto/16 :goto_1a

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v9, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v9

    const/4 v10, 0x2

    if-nez v9, :cond_b

    and-int/lit8 v9, v8, 0x1

    if-ne v9, v10, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 4
    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    .line 5
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, -0x1e

    int-to-float v10, v10

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v6, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1d

    int-to-float v6, v6

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v5, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v1

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/g/c/b/n;

    .line 6
    iget-object v9, v6, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget v9, v9, Lb/g/c/b/p;->d:I

    iget-object v10, v6, Lb/g/c/b/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/g/c/b/p;

    iget v11, v11, Lb/g/c/b/p;->d:I

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_5

    :cond_c
    iget-object v10, v6, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget v10, v10, Lb/g/c/b/p;->d:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-lez v8, :cond_d

    if-nez v9, :cond_d

    const/4 v9, 0x1

    :cond_d
    if-nez v9, :cond_e

    goto :goto_4

    .line 7
    :cond_e
    iget-object v15, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->c:[F

    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->b:[I

    if-eqz v15, :cond_11

    .line 8
    iget-object v11, v6, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    aget-object v11, v11, v2

    invoke-virtual {v11}, Lb/g/a/h/a/b;->g()[D

    move-result-object v14

    if-eqz v10, :cond_f

    iget-object v11, v6, Lb/g/c/b/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lb/g/c/b/p;

    add-int/lit8 v16, v12, 0x1

    iget v13, v13, Lb/g/c/b/p;->q:I

    aput v13, v10, v12

    move/from16 v12, v16

    goto :goto_6

    :cond_f
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_7
    array-length v10, v14

    if-ge v13, v10, :cond_10

    iget-object v10, v6, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    aget-object v2, v10, v2

    aget-wide v10, v14, v13

    iget-object v12, v6, Lb/g/c/b/n;->o:[D

    invoke-virtual {v2, v10, v11, v12}, Lb/g/a/h/a/b;->c(D[D)V

    iget-object v10, v6, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    aget-wide v11, v14, v13

    iget-object v2, v6, Lb/g/c/b/n;->n:[I

    move-object/from16 v18, v4

    iget-object v4, v6, Lb/g/c/b/n;->o:[D

    move/from16 v19, v13

    move-object v13, v2

    move-object v2, v14

    move-object v14, v4

    move-object v4, v15

    move/from16 v16, v17

    invoke-virtual/range {v10 .. v16}, Lb/g/c/b/p;->e(D[I[D[FI)V

    add-int/lit8 v17, v17, 0x2

    add-int/lit8 v13, v19, 0x1

    const/4 v10, 0x0

    move-object v14, v2

    move-object/from16 v4, v18

    const/4 v2, 0x0

    goto :goto_7

    :cond_10
    move-object/from16 v18, v4

    div-int/lit8 v17, v17, 0x2

    move/from16 v2, v17

    goto :goto_8

    :cond_11
    move-object/from16 v18, v4

    const/16 v17, 0x0

    const/4 v2, 0x0

    .line 9
    :goto_8
    iput v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->l:I

    const/4 v2, 0x1

    if-lt v9, v2, :cond_2f

    div-int/lit8 v2, v7, 0x10

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    if-eqz v4, :cond_12

    array-length v4, v4

    mul-int/lit8 v10, v2, 0x2

    if-eq v4, v10, :cond_13

    :cond_12
    mul-int/lit8 v4, v2, 0x2

    new-array v4, v4, [F

    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    :cond_13
    iget v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->n:I

    int-to-float v4, v4

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:Landroid/graphics/Paint;

    const/high16 v5, 0x77000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->i:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->f:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->g:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a:[F

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v5, v10, v5

    .line 10
    iget-object v11, v6, Lb/g/c/b/n;->y:Ljava/util/HashMap;

    const-string v12, "translationX"

    if-nez v11, :cond_14

    const/4 v11, 0x0

    goto :goto_9

    :cond_14
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/g/a/h/a/j;

    :goto_9
    move-object v15, v11

    iget-object v11, v6, Lb/g/c/b/n;->y:Ljava/util/HashMap;

    const-string v13, "translationY"

    if-nez v11, :cond_15

    const/4 v11, 0x0

    goto :goto_a

    :cond_15
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/g/a/h/a/j;

    :goto_a
    move-object v14, v11

    iget-object v11, v6, Lb/g/c/b/n;->z:Ljava/util/HashMap;

    if-nez v11, :cond_16

    const/4 v11, 0x0

    goto :goto_b

    :cond_16
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/g/c/a/b;

    :goto_b
    iget-object v12, v6, Lb/g/c/b/n;->z:Ljava/util/HashMap;

    if-nez v12, :cond_17

    const/4 v12, 0x0

    goto :goto_c

    :cond_17
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lb/g/c/a/b;

    :goto_c
    move-object v13, v12

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v2, :cond_26

    move/from16 v17, v2

    int-to-float v2, v12

    mul-float v2, v2, v5

    move/from16 v19, v5

    iget v5, v6, Lb/g/c/b/n;->m:F

    cmpl-float v10, v5, v10

    if-eqz v10, :cond_19

    iget v10, v6, Lb/g/c/b/n;->l:F

    cmpg-float v16, v2, v10

    if-gez v16, :cond_18

    const/4 v2, 0x0

    :cond_18
    cmpl-float v16, v2, v10

    if-lez v16, :cond_19

    move/from16 v20, v7

    move/from16 v21, v8

    float-to-double v7, v2

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpg-double v16, v7, v22

    if-gez v16, :cond_1a

    sub-float/2addr v2, v10

    mul-float v2, v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_e

    :cond_19
    move/from16 v20, v7

    move/from16 v21, v8

    :cond_1a
    :goto_e
    float-to-double v7, v2

    iget-object v5, v6, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v5, v5, Lb/g/c/b/p;->c:Lb/g/a/h/a/c;

    iget-object v10, v6, Lb/g/c/b/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/high16 v16, 0x7fc00000    # Float.NaN

    const/16 v22, 0x0

    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-wide/from16 v24, v7

    move-object/from16 v7, v23

    check-cast v7, Lb/g/c/b/p;

    iget-object v8, v7, Lb/g/c/b/p;->c:Lb/g/a/h/a/c;

    if-eqz v8, :cond_1c

    move-object/from16 v23, v8

    iget v8, v7, Lb/g/c/b/p;->e:F

    cmpg-float v26, v8, v2

    if-gez v26, :cond_1b

    move/from16 v22, v8

    move-object/from16 v5, v23

    goto :goto_10

    :cond_1b
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1c

    iget v7, v7, Lb/g/c/b/p;->e:F

    move/from16 v16, v7

    :cond_1c
    :goto_10
    move-wide/from16 v7, v24

    goto :goto_f

    :cond_1d
    move-wide/from16 v24, v7

    if-eqz v5, :cond_1f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/high16 v16, 0x3f800000    # 1.0f

    :cond_1e
    sub-float v7, v2, v22

    sub-float v16, v16, v22

    div-float v7, v7, v16

    float-to-double v7, v7

    invoke-virtual {v5, v7, v8}, Lb/g/a/h/a/c;->a(D)D

    move-result-wide v7

    double-to-float v5, v7

    mul-float v5, v5, v16

    add-float v5, v5, v22

    float-to-double v7, v5

    goto :goto_11

    :cond_1f
    move-wide/from16 v7, v24

    :goto_11
    iget-object v5, v6, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    const/4 v10, 0x0

    aget-object v5, v5, v10

    iget-object v10, v6, Lb/g/c/b/n;->o:[D

    invoke-virtual {v5, v7, v8, v10}, Lb/g/a/h/a/b;->c(D[D)V

    iget-object v5, v6, Lb/g/c/b/n;->j:Lb/g/a/h/a/b;

    if-eqz v5, :cond_20

    iget-object v10, v6, Lb/g/c/b/n;->o:[D

    move-object/from16 v16, v11

    array-length v11, v10

    if-lez v11, :cond_21

    invoke-virtual {v5, v7, v8, v10}, Lb/g/a/h/a/b;->c(D[D)V

    goto :goto_12

    :cond_20
    move-object/from16 v16, v11

    :cond_21
    :goto_12
    iget-object v10, v6, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v5, v6, Lb/g/c/b/n;->n:[I

    iget-object v11, v6, Lb/g/c/b/n;->o:[D

    mul-int/lit8 v22, v12, 0x2

    move/from16 v23, v12

    move-object/from16 v0, v16

    move-object/from16 v16, v11

    move-wide v11, v7

    move-object v7, v13

    move-object v13, v5

    move-object v5, v14

    move-object/from16 v14, v16

    move-object v8, v15

    move-object v15, v4

    move/from16 v16, v22

    invoke-virtual/range {v10 .. v16}, Lb/g/c/b/p;->e(D[I[D[FI)V

    if-eqz v0, :cond_22

    aget v10, v4, v22

    invoke-virtual {v0, v2}, Lb/g/a/h/a/e;->a(F)F

    move-result v11

    add-float/2addr v11, v10

    aput v11, v4, v22

    goto :goto_13

    :cond_22
    if-eqz v8, :cond_23

    aget v10, v4, v22

    invoke-virtual {v8, v2}, Lb/g/a/h/a/j;->a(F)F

    move-result v11

    add-float/2addr v11, v10

    aput v11, v4, v22

    :cond_23
    :goto_13
    if-eqz v7, :cond_24

    add-int/lit8 v22, v22, 0x1

    aget v10, v4, v22

    invoke-virtual {v7, v2}, Lb/g/a/h/a/e;->a(F)F

    move-result v2

    add-float/2addr v2, v10

    aput v2, v4, v22

    goto :goto_14

    :cond_24
    if-eqz v5, :cond_25

    add-int/lit8 v22, v22, 0x1

    aget v10, v4, v22

    invoke-virtual {v5, v2}, Lb/g/a/h/a/j;->a(F)F

    move-result v2

    add-float/2addr v2, v10

    aput v2, v4, v22

    :cond_25
    :goto_14
    add-int/lit8 v12, v23, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v0

    move-object v14, v5

    move-object v13, v7

    move-object v15, v8

    move/from16 v2, v17

    move/from16 v5, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v0, p0

    goto/16 :goto_d

    :cond_26
    move/from16 v20, v7

    move/from16 v21, v8

    .line 11
    iget v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->l:I

    invoke-virtual {v3, v1, v9, v0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a(Landroid/graphics/Canvas;IILb/g/c/b/n;)V

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:Landroid/graphics/Paint;

    const/16 v2, -0x55cd

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->f:Landroid/graphics/Paint;

    const v2, -0x1f8a66

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->g:Landroid/graphics/Paint;

    const v2, -0xcc5600

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->n:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->l:I

    invoke-virtual {v3, v1, v9, v0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a(Landroid/graphics/Canvas;IILb/g/c/b/n;)V

    const/4 v0, 0x5

    if-ne v9, v0, :cond_2e

    .line 12
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    :goto_15
    const/16 v2, 0x32

    if-gt v0, v2, :cond_2d

    int-to-float v4, v0

    int-to-float v2, v2

    div-float/2addr v4, v2

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->j:[F

    const/4 v5, 0x0

    .line 13
    invoke-virtual {v6, v4, v5}, Lb/g/c/b/n;->a(F[F)F

    move-result v4

    iget-object v5, v6, Lb/g/c/b/n;->i:[Lb/g/a/h/a/b;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    float-to-double v7, v4

    iget-object v4, v6, Lb/g/c/b/n;->o:[D

    invoke-virtual {v5, v7, v8, v4}, Lb/g/a/h/a/b;->c(D[D)V

    iget-object v4, v6, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v5, v6, Lb/g/c/b/n;->n:[I

    iget-object v7, v6, Lb/g/c/b/n;->o:[D

    .line 14
    iget v8, v4, Lb/g/c/b/p;->g:F

    iget v9, v4, Lb/g/c/b/p;->h:F

    iget v10, v4, Lb/g/c/b/p;->i:F

    iget v11, v4, Lb/g/c/b/p;->j:F

    const/4 v12, 0x0

    :goto_16
    array-length v13, v5

    if-ge v12, v13, :cond_2b

    aget-wide v14, v7, v12

    double-to-float v14, v14

    aget v15, v5, v12

    const/4 v13, 0x1

    if-eq v15, v13, :cond_2a

    const/4 v13, 0x2

    if-eq v15, v13, :cond_29

    const/4 v13, 0x3

    if-eq v15, v13, :cond_28

    const/4 v13, 0x4

    if-eq v15, v13, :cond_27

    goto :goto_17

    :cond_27
    move v11, v14

    goto :goto_17

    :cond_28
    move v10, v14

    goto :goto_17

    :cond_29
    move v9, v14

    goto :goto_17

    :cond_2a
    move v8, v14

    :goto_17
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_2b
    iget-object v4, v4, Lb/g/c/b/p;->o:Lb/g/c/b/n;

    if-eqz v4, :cond_2c

    const/4 v4, 0x0

    float-to-double v4, v4

    float-to-double v7, v8

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v14, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v10, v9

    move/from16 v16, v0

    float-to-double v0, v9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v14, v0

    double-to-float v0, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v12

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v11, v1

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v7

    double-to-float v9, v4

    move v8, v0

    goto :goto_18

    :cond_2c
    move/from16 v16, v0

    :goto_18
    add-float/2addr v10, v8

    add-float/2addr v11, v9

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    const/4 v0, 0x0

    add-float/2addr v8, v0

    add-float/2addr v9, v0

    add-float/2addr v10, v0

    add-float/2addr v11, v0

    const/4 v0, 0x0

    aput v8, v2, v0

    const/4 v0, 0x1

    aput v9, v2, v0

    const/4 v0, 0x2

    aput v10, v2, v0

    const/4 v0, 0x3

    aput v9, v2, v0

    const/4 v0, 0x4

    aput v10, v2, v0

    const/4 v0, 0x5

    aput v11, v2, v0

    const/4 v0, 0x6

    aput v8, v2, v0

    const/4 v1, 0x7

    aput v11, v2, v1

    .line 15
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->j:[F

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v7, 0x1

    aget v4, v4, v7

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->j:[F

    const/4 v5, 0x2

    aget v5, v4, v5

    const/4 v7, 0x3

    aget v4, v4, v7

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->j:[F

    const/4 v5, 0x4

    aget v5, v4, v5

    const/4 v7, 0x5

    aget v4, v4, v7

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->j:[F

    aget v0, v4, v0

    aget v1, v4, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    add-int/lit8 v0, v16, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_15

    :cond_2d
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x44000000    # 512.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40000000    # 2.0f

    move-object/from16 v1, p1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d:Landroid/graphics/Path;

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2e
    move-object v5, v1

    goto :goto_19

    :cond_2f
    move/from16 v20, v7

    move/from16 v21, v8

    :goto_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, v18

    move/from16 v7, v20

    move/from16 v8, v21

    goto/16 :goto_4

    .line 16
    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_31
    move-object/from16 v0, p0

    .line 17
    :goto_1a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Ljava/util/ArrayList;

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionHelper;->x()V

    goto :goto_1b

    :cond_32
    return-void
.end method

.method public getConstraintSetIds()[I
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, v0, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, v0, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getCurrentState()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    return v0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lb/g/c/b/q$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_0
    iget-object v0, v0, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDesignTool()Lb/g/c/b/b;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:Lb/g/c/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lb/g/c/b/b;

    invoke-direct {v0, p0}, Lb/g/c/b/b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:Lb/g/c/b/b;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->a0:Lb/g/c/b/b;

    return-object v0
.end method

.method public getEndState()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    return v0
.end method

.method public getNanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    return v0
.end method

.method public getStartState()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    return v0
.end method

.method public getTargetPosition()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    return v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 1
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    .line 3
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    .line 4
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 5
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:F

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:F

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:F

    const-string v3, "motion.progress"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:F

    const-string v3, "motion.velocity"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    const-string v3, "motion.StartState"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    const-string v2, "motion.EndState"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getTransitionTimeMs()J
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/g/c/b/q;->c()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    return v0
.end method

.method public i(Landroid/view/View;I)V
    .locals 10

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz p1, :cond_6

    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:F

    div-float/2addr v1, p2

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:F

    div-float/2addr v2, p2

    .line 1
    iget-object p1, p1, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz p1, :cond_6

    .line 2
    iget-object p1, p1, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p1, Lb/g/c/b/t;->m:Z

    iget-object v3, p1, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v3

    iget-object v4, p1, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v5, p1, Lb/g/c/b/t;->d:I

    iget v7, p1, Lb/g/c/b/t;->h:F

    iget v8, p1, Lb/g/c/b/t;->g:F

    iget-object v9, p1, Lb/g/c/b/t;->n:[F

    move v6, v3

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z(IFFF[F)V

    iget v4, p1, Lb/g/c/b/t;->k:F

    iget-object v5, p1, Lb/g/c/b/t;->n:[F

    aget v6, v5, p2

    iget v6, p1, Lb/g/c/b/t;->l:F

    const/4 v7, 0x1

    aget v8, v5, v7

    cmpl-float v8, v4, v0

    if-eqz v8, :cond_1

    mul-float v1, v1, v4

    aget v2, v5, p2

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    mul-float v2, v2, v6

    aget v1, v5, v7

    div-float v1, v2, v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v1, v2

    add-float/2addr v3, v2

    :cond_2
    cmpl-float v2, v3, v0

    if-eqz v2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iget v5, p1, Lb/g/c/b/t;->c:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    const/4 p2, 0x1

    :cond_4
    and-int/2addr p2, v4

    if-eqz p2, :cond_6

    iget-object p1, p1, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v3, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double p2, v3, v6

    if-gez p2, :cond_5

    goto :goto_2

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p1, v5, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->J(IFF)V

    :cond_6
    :goto_3
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public j(Landroid/view/View;II[II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v5, v4, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v5, :cond_15

    .line 1
    iget-boolean v6, v5, Lb/g/c/b/q$b;->o:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-nez v6, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v8, -0x1

    if-eqz v6, :cond_2

    .line 2
    iget-object v6, v5, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v6, :cond_2

    .line 3
    iget v6, v6, Lb/g/c/b/t;->e:I

    if-eq v6, v8, :cond_2

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v9

    if-eq v9, v6, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v6, v4, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    .line 6
    iget-object v6, v6, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v6, :cond_3

    .line 7
    iget-boolean v6, v6, Lb/g/c/b/t;->u:Z

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v6, :cond_6

    .line 8
    iget-object v6, v5, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v6, :cond_4

    .line 9
    iget v6, v6, Lb/g/c/b/t;->w:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_4

    move v8, v3

    .line 10
    :cond_4
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    cmpl-float v12, v6, v11

    if-eqz v12, :cond_5

    cmpl-float v6, v6, v10

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual {v1, v8}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v6

    if-eqz v6, :cond_6

    return-void

    .line 11
    :cond_6
    iget-object v5, v5, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v5, :cond_e

    .line 12
    iget v5, v5, Lb/g/c/b/t;->w:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_e

    int-to-float v5, v2

    int-to-float v6, v3

    .line 13
    iget-object v8, v4, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v8, :cond_a

    .line 14
    iget-object v8, v8, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v8, :cond_a

    .line 15
    iget-object v12, v8, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v15

    iget-object v13, v8, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v14, v8, Lb/g/c/b/t;->d:I

    iget v12, v8, Lb/g/c/b/t;->h:F

    iget v11, v8, Lb/g/c/b/t;->g:F

    iget-object v7, v8, Lb/g/c/b/t;->n:[F

    move/from16 v16, v12

    move/from16 v17, v11

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z(IFFF[F)V

    iget v7, v8, Lb/g/c/b/t;->k:F

    const v11, 0x33d6bf95    # 1.0E-7f

    cmpl-float v12, v7, v10

    if-eqz v12, :cond_8

    iget-object v6, v8, Lb/g/c/b/t;->n:[F

    aget v8, v6, v9

    cmpl-float v8, v8, v10

    if-nez v8, :cond_7

    aput v11, v6, v9

    :cond_7
    mul-float v5, v5, v7

    aget v6, v6, v9

    div-float/2addr v5, v6

    goto :goto_1

    :cond_8
    iget-object v5, v8, Lb/g/c/b/t;->n:[F

    const/4 v7, 0x1

    aget v12, v5, v7

    cmpl-float v12, v12, v10

    if-nez v12, :cond_9

    aput v11, v5, v7

    :cond_9
    iget v8, v8, Lb/g/c/b/t;->l:F

    mul-float v6, v6, v8

    aget v5, v5, v7

    div-float v5, v6, v5

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    .line 16
    :goto_1
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpg-float v7, v6, v10

    if-gtz v7, :cond_b

    cmpg-float v7, v5, v10

    if-ltz v7, :cond_c

    :cond_b
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_e

    cmpl-float v5, v5, v10

    if-lez v5, :cond_e

    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_d

    invoke-virtual {v1, v9}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    invoke-direct {v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$a;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_d
    return-void

    :cond_e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v5

    int-to-float v7, v2

    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->e0:F

    int-to-float v8, v3

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->f0:F

    iget-wide v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:J

    sub-long v11, v5, v11

    long-to-double v11, v11

    const-wide v13, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    double-to-float v11, v11

    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:F

    iput-wide v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:J

    .line 17
    iget-object v4, v4, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v4, :cond_12

    .line 18
    iget-object v4, v4, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v4, :cond_12

    .line 19
    iget-object v5, v4, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v5

    iget-boolean v6, v4, Lb/g/c/b/t;->m:Z

    if-nez v6, :cond_f

    const/4 v6, 0x1

    iput-boolean v6, v4, Lb/g/c/b/t;->m:Z

    iget-object v6, v4, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_f
    iget-object v11, v4, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v12, v4, Lb/g/c/b/t;->d:I

    iget v14, v4, Lb/g/c/b/t;->h:F

    iget v15, v4, Lb/g/c/b/t;->g:F

    iget-object v6, v4, Lb/g/c/b/t;->n:[F

    move v13, v5

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z(IFFF[F)V

    iget v6, v4, Lb/g/c/b/t;->k:F

    iget-object v11, v4, Lb/g/c/b/t;->n:[F

    aget v12, v11, v9

    mul-float v6, v6, v12

    iget v12, v4, Lb/g/c/b/t;->l:F

    const/4 v13, 0x1

    aget v11, v11, v13

    mul-float v12, v12, v11

    add-float/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v11, v6

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, v11, v14

    if-gez v6, :cond_10

    iget-object v6, v4, Lb/g/c/b/t;->n:[F

    const v11, 0x3c23d70a    # 0.01f

    aput v11, v6, v9

    aput v11, v6, v13

    :cond_10
    iget v6, v4, Lb/g/c/b/t;->k:F

    cmpl-float v11, v6, v10

    if-eqz v11, :cond_11

    mul-float v7, v7, v6

    iget-object v6, v4, Lb/g/c/b/t;->n:[F

    aget v6, v6, v9

    div-float/2addr v7, v6

    goto :goto_2

    :cond_11
    iget v6, v4, Lb/g/c/b/t;->l:F

    mul-float v8, v8, v6

    iget-object v6, v4, Lb/g/c/b/t;->n:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    div-float v7, v8, v6

    :goto_2
    add-float/2addr v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, v4, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_12

    iget-object v4, v4, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 20
    :cond_12
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_13

    aput v2, p4, v9

    const/4 v1, 0x1

    aput v3, p4, v1

    goto :goto_3

    :cond_13
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(Z)V

    aget v2, p4, v9

    if-nez v2, :cond_14

    aget v2, p4, v1

    if-eqz v2, :cond_15

    :cond_14
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Z

    :cond_15
    :goto_4
    return-void
.end method

.method public l(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Lb/g/d/b;

    return-void
.end method

.method public m(Landroid/view/View;IIIII[I)V
    .locals 0

    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Z

    const/4 p6, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    :cond_1
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->d0:Z

    return-void
.end method

.method public n(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public o(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p1, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz p1, :cond_1

    .line 2
    iget p1, p1, Lb/g/c/b/t;->w:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz v0, :cond_8

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    invoke-virtual {v0, v1}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget-object v4, v1, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5

    iget-object v4, v1, Lb/g/c/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2
    iget-object v6, v1, Lb/g/c/b/q;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    iget-object v7, v1, Lb/g/c/b/q;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    :goto_1
    if-lez v6, :cond_3

    if-ne v6, v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v7, -0x1

    if-gez v7, :cond_2

    :goto_2
    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    iget-object v7, v1, Lb/g/c/b/q;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    move v7, v8

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_4

    const-string v1, "MotionScene"

    const-string v2, "Cannot be derived from yourself"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v4, p0}, Lb/g/c/b/q;->n(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_5
    :goto_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionHelper;->w()V

    goto :goto_5

    :cond_6
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p0, v5}, Lb/g/d/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Lb/g/d/c;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 6
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    :cond_8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->E()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-eqz v0, :cond_a

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    if-eqz v1, :cond_9

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a()V

    goto :goto_6

    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v0, :cond_b

    .line 7
    iget v0, v0, Lb/g/c/b/q$b;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->K()V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->e:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:Z

    if-nez v3, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v1, v1, Lb/g/c/b/q;->q:Lb/g/c/b/w;

    const/4 v3, -0x1

    const/4 v10, 0x1

    if-eqz v1, :cond_10

    .line 1
    iget-object v4, v1, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v11

    if-ne v11, v3, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v4, v1, Lb/g/c/b/w;->c:Ljava/util/HashSet;

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v1, Lb/g/c/b/w;->c:Ljava/util/HashSet;

    iget-object v4, v1, Lb/g/c/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/c/b/v;

    iget-object v6, v1, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    iget-object v8, v1, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5, v8}, Lb/g/c/b/v;->c(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    iget-object v9, v1, Lb/g/c/b/w;->c:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    iget-object v4, v1, Lb/g/c/b/w;->e:Ljava/util/ArrayList;

    const/4 v9, 0x2

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v1, Lb/g/c/b/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/c/b/v$a;

    .line 2
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v15, v10, :cond_7

    if-eq v15, v9, :cond_6

    goto :goto_1

    :cond_6
    iget-object v6, v5, Lb/g/c/b/v$a;->d:Lb/g/c/b/n;

    .line 3
    iget-object v6, v6, Lb/g/c/b/n;->b:Landroid/view/View;

    .line 4
    iget-object v7, v5, Lb/g/c/b/v$a;->m:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v6, v5, Lb/g/c/b/v$a;->m:Landroid/graphics/Rect;

    float-to-int v7, v12

    float-to-int v8, v13

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_5

    iget-boolean v6, v5, Lb/g/c/b/v$a;->i:Z

    if-nez v6, :cond_5

    goto :goto_2

    :cond_7
    iget-boolean v6, v5, Lb/g/c/b/v$a;->i:Z

    if-nez v6, :cond_5

    :goto_2
    invoke-virtual {v5, v10}, Lb/g/c/b/v$a;->b(Z)V

    goto :goto_1

    :cond_8
    if-eqz v15, :cond_9

    if-eq v15, v10, :cond_9

    goto/16 :goto_7

    .line 5
    :cond_9
    iget-object v4, v1, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A(I)Lb/g/d/c;

    move-result-object v16

    iget-object v4, v1, Lb/g/c/b/w;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lb/g/c/b/v;

    .line 6
    iget v4, v8, Lb/g/c/b/v;->b:I

    if-ne v4, v10, :cond_b

    if-nez v15, :cond_d

    goto :goto_3

    :cond_b
    if-ne v4, v9, :cond_c

    if-ne v15, v10, :cond_d

    goto :goto_3

    :cond_c
    const/4 v5, 0x3

    if-ne v4, v5, :cond_d

    if-nez v15, :cond_d

    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    :cond_d
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_a

    .line 7
    iget-object v4, v1, Lb/g/c/b/w;->c:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v8, v4}, Lb/g/c/b/v;->c(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v4, v14}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v5, v12

    float-to-int v6, v13

    invoke-virtual {v14, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v6, v1, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-array v7, v10, [Landroid/view/View;

    aput-object v4, v7, v2

    move-object v4, v8

    move-object v5, v1

    move-object/from16 v19, v7

    move v7, v11

    move-object/from16 v20, v8

    move-object/from16 v8, v16

    const/16 v21, 0x2

    move-object/from16 v9, v19

    invoke-virtual/range {v4 .. v9}, Lb/g/c/b/v;->a(Lb/g/c/b/w;Landroidx/constraintlayout/motion/widget/MotionLayout;ILb/g/d/c;[Landroid/view/View;)V

    goto :goto_6

    :cond_f
    move-object/from16 v20, v8

    const/16 v21, 0x2

    :goto_6
    move-object/from16 v8, v20

    const/4 v9, 0x2

    goto :goto_5

    .line 8
    :cond_10
    :goto_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    iget-object v1, v1, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v1, :cond_14

    .line 9
    iget-boolean v4, v1, Lb/g/c/b/q$b;->o:Z

    xor-int/2addr v4, v10

    if-eqz v4, :cond_14

    .line 10
    iget-object v1, v1, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v1, :cond_14

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_11

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v1, v0, v4}, Lb/g/c/b/t;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_11

    return v2

    .line 12
    :cond_11
    iget v1, v1, Lb/g/c/b/t;->e:I

    if-eq v1, v3, :cond_14

    .line 13
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/view/View;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v1, :cond_13

    :cond_12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/view/View;

    :cond_13
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/view/View;

    if-eqz v1, :cond_14

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K0:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K0:Landroid/graphics/RectF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/view/View;

    move-object/from16 v5, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->C(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_14
    :goto_8
    return v2
.end method

.method public onLayout(ZIIII)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v2, :cond_0

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    :try_start_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:I

    if-eq p1, p5, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->G()V

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->w(Z)V

    :cond_2
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->b0:I

    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->c0:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    throw p1
.end method

.method public onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v3, :cond_0

    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v1, :cond_2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:I

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Z

    if-eqz v6, :cond_3

    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->E()V

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->F()V

    const/4 v3, 0x1

    :cond_3
    iget-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    :cond_4
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v6}, Lb/g/c/b/q;->i()I

    move-result v6

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v7}, Lb/g/c/b/q;->d()I

    move-result v7

    if-nez v3, :cond_7

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 1
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->e:I

    if-ne v6, v9, :cond_6

    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->f:I

    if-eq v7, v8, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v8, 0x1

    :goto_3
    if-eqz v8, :cond_8

    .line 2
    :cond_7
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v2, v6}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v3, v7}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(Lb/g/d/c;Lb/g/d/c;)V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->e()V

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 3
    iput v6, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->e:I

    iput v7, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->f:I

    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    if-eqz v3, :cond_9

    .line 4
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    :cond_9
    const/4 v1, 0x1

    :goto_4
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    if-nez v2, :cond_a

    if-eqz v1, :cond_f

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    invoke-virtual {v1}, Lb/g/a/i/d;->w()I

    move-result v1

    add-int/2addr v1, v3

    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    invoke-virtual {v3}, Lb/g/a/i/d;->q()I

    move-result v3

    add-int/2addr v3, v2

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:I

    const/high16 v6, -0x80000000

    if-eq v2, v6, :cond_b

    if-nez v2, :cond_c

    :cond_b
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:I

    int-to-float v2, v1

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:F

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:I

    sub-int/2addr v8, v1

    int-to-float v1, v8

    mul-float v7, v7, v1

    add-float/2addr v7, v2

    float-to-int v1, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_c
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:I

    if-eq v2, v6, :cond_d

    if-nez v2, :cond_e

    :cond_d
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:I

    int-to-float v3, v2

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:F

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:I

    sub-int/2addr v7, v2

    int-to-float v2, v7

    mul-float v6, v6, v2

    add-float/2addr v6, v3

    float-to-int v3, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_e
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 5
    :cond_f
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    instance-of v7, v6, Lb/g/c/a/a;

    const v8, 0x3089705f    # 1.0E-9f

    const/4 v9, 0x0

    if-nez v7, :cond_10

    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    sub-long v10, v2, v10

    long-to-float v7, v10

    mul-float v7, v7, v1

    mul-float v7, v7, v8

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    div-float/2addr v7, v10

    goto :goto_5

    :cond_10
    const/4 v7, 0x0

    :goto_5
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    add-float/2addr v10, v7

    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    if-eqz v7, :cond_11

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    :cond_11
    cmpl-float v7, v1, v9

    if-lez v7, :cond_12

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpl-float v7, v10, v7

    if-gez v7, :cond_13

    :cond_12
    cmpg-float v7, v1, v9

    if-gtz v7, :cond_14

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpg-float v7, v10, v7

    if-gtz v7, :cond_14

    :cond_13
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    goto :goto_6

    :cond_14
    const/4 v5, 0x0

    :goto_6
    if-eqz v6, :cond_16

    if-nez v5, :cond_16

    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    if-eqz v5, :cond_15

    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:J

    sub-long/2addr v2, v10

    long-to-float v2, v2

    mul-float v2, v2, v8

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    goto :goto_7

    :cond_15
    invoke-interface {v6, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    :cond_16
    :goto_7
    cmpl-float v2, v1, v9

    if-lez v2, :cond_17

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpl-float v2, v10, v2

    if-gez v2, :cond_18

    :cond_17
    cmpg-float v1, v1, v9

    if-gtz v1, :cond_19

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpg-float v1, v10, v1

    if-gtz v1, :cond_19

    :cond_18
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    :cond_19
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Landroid/view/animation/Interpolator;

    if-nez v5, :cond_1a

    goto :goto_8

    :cond_1a
    invoke-interface {v5, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    :goto_8
    if-ge v4, v1, :cond_1c

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lb/g/c/b/n;

    if-eqz v11, :cond_1b

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lb/g/a/h/a/d;

    move v13, v10

    move-wide v14, v2

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Lb/g/c/b/n;->d(Landroid/view/View;FJLb/g/a/h/a/d;)Z

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_1c
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1d
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    move-result v0

    .line 1
    iput-boolean v0, p1, Lb/g/c/b/q;->p:Z

    iget-object p1, p1, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lb/g/c/b/t;->c(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz v2, :cond_54

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:Z

    if-eqz v3, :cond_54

    invoke-virtual {v2}, Lb/g/c/b/q;->p()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    iget-object v3, v2, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1
    iget-boolean v3, v3, Lb/g/c/b/q$b;->o:Z

    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 2
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v3

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iget-object v7, v2, Lb/g/c/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-nez v7, :cond_1

    iget-object v7, v2, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 4
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:Landroid/view/VelocityTracker;

    .line 6
    iput-object v5, v2, Lb/g/c/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    :cond_1
    iget-object v5, v2, Lb/g/c/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 7
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    const/4 v5, 0x2

    const/4 v8, -0x1

    if-eq v3, v8, :cond_18

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-eqz v11, :cond_15

    if-eq v11, v5, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-boolean v11, v2, Lb/g/c/b/q;->m:Z

    if-eqz v11, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget v12, v2, Lb/g/c/b/q;->s:F

    sub-float/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    iget v13, v2, Lb/g/c/b/q;->r:F

    sub-float/2addr v12, v13

    float-to-double v13, v12

    const-wide/16 v15, 0x0

    cmpl-double v17, v13, v15

    if-nez v17, :cond_5

    float-to-double v13, v11

    cmpl-double v17, v13, v15

    if-eqz v17, :cond_53

    :cond_5
    iget-object v13, v2, Lb/g/c/b/q;->l:Landroid/view/MotionEvent;

    if-nez v13, :cond_6

    goto/16 :goto_22

    :cond_6
    if-eq v3, v8, :cond_12

    .line 9
    iget-object v14, v2, Lb/g/c/b/q;->b:Lb/g/d/h;

    if-eqz v14, :cond_7

    invoke-virtual {v14, v3, v8, v8}, Lb/g/d/h;->a(III)I

    move-result v14

    if-eq v14, v8, :cond_7

    goto :goto_0

    :cond_7
    move v14, v3

    .line 10
    :goto_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v2, Lb/g/c/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Lb/g/c/b/q$b;

    .line 11
    iget v5, v8, Lb/g/c/b/q$b;->d:I

    if-eq v5, v14, :cond_8

    .line 12
    iget v5, v8, Lb/g/c/b/q$b;->c:I

    if-ne v5, v14, :cond_9

    .line 13
    :cond_8
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v5, 0x2

    const/4 v8, -0x1

    goto :goto_1

    .line 14
    :cond_a
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lb/g/c/b/q$b;

    .line 15
    iget-boolean v4, v15, Lb/g/c/b/q$b;->o:Z

    if-eqz v4, :cond_b

    goto/16 :goto_5

    .line 16
    :cond_b
    iget-object v4, v15, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v4, :cond_10

    .line 17
    iget-boolean v7, v2, Lb/g/c/b/q;->p:Z

    invoke-virtual {v4, v7}, Lb/g/c/b/t;->c(Z)V

    .line 18
    iget-object v4, v15, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    .line 19
    iget-object v7, v2, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v7, v5}, Lb/g/c/b/t;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v4, v7, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_5

    .line 20
    :cond_c
    iget-object v4, v15, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    .line 21
    iget-object v7, v2, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v7, v5}, Lb/g/c/b/t;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v4, v7, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_5

    .line 22
    :cond_d
    iget-object v4, v15, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    .line 23
    iget v7, v4, Lb/g/c/b/t;->k:F

    mul-float v7, v7, v12

    iget v10, v4, Lb/g/c/b/t;->l:F

    mul-float v10, v10, v11

    add-float/2addr v10, v7

    .line 24
    iget-boolean v4, v4, Lb/g/c/b/t;->j:Z

    if-eqz v4, :cond_e

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 25
    iget-object v7, v15, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    .line 26
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v4, v7

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    move-object/from16 v18, v5

    .line 27
    iget-object v5, v15, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    .line 28
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sub-float/2addr v10, v7

    add-float v5, v12, v4

    add-float v7, v11, v10

    move-object/from16 v19, v8

    float-to-double v7, v7

    move/from16 v20, v11

    move/from16 v21, v12

    float-to-double v11, v5

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    float-to-double v4, v4

    float-to-double v10, v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    sub-double/2addr v7, v4

    double-to-float v4, v7

    const/high16 v5, 0x41200000    # 10.0f

    mul-float v10, v4, v5

    goto :goto_3

    :cond_e
    move-object/from16 v18, v5

    move-object/from16 v19, v8

    move/from16 v20, v11

    move/from16 v21, v12

    .line 29
    :goto_3
    iget v4, v15, Lb/g/c/b/q$b;->c:I

    if-ne v4, v3, :cond_f

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_4

    :cond_f
    const v4, 0x3f8ccccd    # 1.1f

    :goto_4
    mul-float v4, v4, v10

    cmpl-float v5, v4, v9

    if-lez v5, :cond_11

    move v9, v4

    move-object v14, v15

    goto :goto_6

    :cond_10
    :goto_5
    move-object/from16 v18, v5

    move-object/from16 v19, v8

    move/from16 v20, v11

    move/from16 v21, v12

    :cond_11
    :goto_6
    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move/from16 v11, v20

    move/from16 v12, v21

    const/4 v4, 0x1

    goto/16 :goto_2

    .line 30
    :cond_12
    iget-object v14, v2, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    :cond_13
    if-eqz v14, :cond_18

    .line 31
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lb/g/c/b/q$b;)V

    iget-object v3, v2, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    .line 32
    iget-object v3, v3, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    .line 33
    iget-object v4, v2, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3, v4, v6}, Lb/g/c/b/t;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v4, v2, Lb/g/c/b/q;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, v2, Lb/g/c/b/q;->l:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_7

    :cond_14
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, v2, Lb/g/c/b/q;->n:Z

    iget-object v3, v2, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    .line 34
    iget-object v3, v3, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    .line 35
    iget v4, v2, Lb/g/c/b/q;->r:F

    iget v5, v2, Lb/g/c/b/q;->s:F

    .line 36
    iput v4, v3, Lb/g/c/b/t;->p:F

    iput v5, v3, Lb/g/c/b/t;->q:F

    const/4 v4, 0x0

    iput-boolean v4, v3, Lb/g/c/b/t;->m:Z

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Lb/g/c/b/q;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Lb/g/c/b/q;->s:F

    iput-object v1, v2, Lb/g/c/b/q;->l:Landroid/view/MotionEvent;

    iput-boolean v4, v2, Lb/g/c/b/q;->m:Z

    iget-object v1, v2, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    .line 38
    iget-object v1, v1, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v1, :cond_53

    .line 39
    iget-object v3, v2, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v3, v6}, Lb/g/c/b/t;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v3, v2, Lb/g/c/b/q;->l:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v2, Lb/g/c/b/q;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    iput-object v1, v2, Lb/g/c/b/q;->l:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lb/g/c/b/q;->m:Z

    goto/16 :goto_22

    :cond_16
    iget-object v1, v2, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    .line 40
    iget-object v1, v1, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    .line 41
    iget-object v3, v2, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v3, v6}, Lb/g/c/b/t;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v3, v2, Lb/g/c/b/q;->l:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v2, Lb/g/c/b/q;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v10, 0x1

    goto :goto_8

    :cond_17
    const/4 v10, 0x0

    :goto_8
    iput-boolean v10, v2, Lb/g/c/b/q;->n:Z

    iget-object v1, v2, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    .line 42
    iget-object v1, v1, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    .line 43
    iget v3, v2, Lb/g/c/b/q;->r:F

    iget v2, v2, Lb/g/c/b/q;->s:F

    .line 44
    iput v3, v1, Lb/g/c/b/t;->p:F

    iput v2, v1, Lb/g/c/b/t;->q:F

    goto/16 :goto_22

    .line 45
    :cond_18
    :goto_9
    iget-boolean v3, v2, Lb/g/c/b/q;->m:Z

    if-eqz v3, :cond_19

    goto/16 :goto_22

    :cond_19
    iget-object v3, v2, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v3, :cond_50

    .line 46
    iget-object v3, v3, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v3, :cond_50

    .line 47
    iget-boolean v4, v2, Lb/g/c/b/q;->n:Z

    if-nez v4, :cond_50

    iget-object v4, v2, Lb/g/c/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 48
    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->f:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    iget-boolean v6, v3, Lb/g/c/b/t;->j:Z

    if-eqz v6, :cond_35

    .line 49
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 50
    iget-object v6, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_1a

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 51
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_34

    const/high16 v19, 0x43b40000    # 360.0f

    const/high16 v20, 0x40000000    # 2.0f

    const/4 v13, 0x1

    if-eq v6, v13, :cond_28

    const/4 v13, 0x2

    if-eq v6, v13, :cond_1b

    goto/16 :goto_20

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    iget-object v5, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v20

    iget-object v6, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v20

    iget v9, v3, Lb/g/c/b/t;->i:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1c

    iget-object v5, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v9, v3, Lb/g/c/b/t;->o:[I

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v6, v3, Lb/g/c/b/t;->o:[I

    const/4 v9, 0x0

    aget v6, v6, v9

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    div-float v9, v9, v20

    add-float/2addr v6, v9

    iget-object v9, v3, Lb/g/c/b/t;->o:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v10

    int-to-float v5, v5

    div-float v5, v5, v20

    add-float/2addr v5, v9

    move/from16 v32, v6

    move v6, v5

    move/from16 v5, v32

    goto :goto_a

    :cond_1c
    iget v9, v3, Lb/g/c/b/t;->d:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1e

    iget-object v10, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 52
    iget-object v11, v10, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/g/c/b/n;

    .line 53
    iget-object v10, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 54
    iget-object v9, v9, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget v9, v9, Lb/g/c/b/p;->m:I

    .line 55
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1d

    const-string v9, "TouchResponse"

    const-string v10, "could not find view to animate to"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_1d
    iget-object v5, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v6, v3, Lb/g/c/b/t;->o:[I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v5, v3, Lb/g/c/b/t;->o:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    add-int/2addr v10, v6

    int-to-float v6, v10

    div-float v6, v6, v20

    add-float/2addr v5, v6

    iget-object v6, v3, Lb/g/c/b/t;->o:[I

    const/4 v10, 0x1

    aget v6, v6, v10

    int-to-float v6, v6

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float v9, v9, v20

    add-float/2addr v6, v9

    :cond_1e
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    sub-float/2addr v9, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    sub-float/2addr v10, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    sub-float/2addr v11, v6

    float-to-double v13, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    sub-float/2addr v11, v5

    float-to-double v7, v11

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    iget v11, v3, Lb/g/c/b/t;->q:F

    sub-float/2addr v11, v6

    float-to-double v13, v11

    iget v6, v3, Lb/g/c/b/t;->p:F

    sub-float/2addr v6, v5

    float-to-double v5, v6

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    sub-double v5, v7, v5

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double v5, v5, v13

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v13

    double-to-float v5, v5

    const/high16 v6, 0x43a50000    # 330.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1f

    sub-float v5, v5, v19

    goto :goto_b

    :cond_1f
    const/high16 v6, -0x3c5b0000    # -330.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_20

    add-float v5, v5, v19

    :cond_20
    :goto_b
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v13, v6

    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v6, v13, v20

    if-gtz v6, :cond_21

    iget-boolean v6, v3, Lb/g/c/b/t;->m:Z

    if-eqz v6, :cond_50

    :cond_21
    iget-object v6, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    iget-boolean v11, v3, Lb/g/c/b/t;->m:Z

    if-nez v11, :cond_22

    const/4 v11, 0x1

    iput-boolean v11, v3, Lb/g/c/b/t;->m:Z

    iget-object v11, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_22
    iget v11, v3, Lb/g/c/b/t;->d:I

    const/4 v13, -0x1

    if-eq v11, v13, :cond_23

    iget-object v13, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v14, v3, Lb/g/c/b/t;->h:F

    iget v15, v3, Lb/g/c/b/t;->g:F

    iget-object v12, v3, Lb/g/c/b/t;->n:[F

    move-object/from16 v20, v13

    move/from16 v21, v11

    move/from16 v22, v6

    move/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v25, v12

    invoke-virtual/range {v20 .. v25}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z(IFFF[F)V

    iget-object v11, v3, Lb/g/c/b/t;->n:[F

    const/4 v12, 0x1

    aget v13, v11, v12

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    double-to-float v13, v13

    aput v13, v11, v12

    goto :goto_c

    :cond_23
    const/4 v12, 0x1

    iget-object v11, v3, Lb/g/c/b/t;->n:[F

    aput v19, v11, v12

    :goto_c
    iget v11, v3, Lb/g/c/b/t;->v:F

    mul-float v5, v5, v11

    iget-object v11, v3, Lb/g/c/b/t;->n:[F

    aget v11, v11, v12

    div-float/2addr v5, v11

    add-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v12, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v12

    cmpl-float v13, v5, v12

    if-eqz v13, :cond_27

    cmpl-float v13, v12, v11

    if-eqz v13, :cond_24

    cmpl-float v6, v12, v6

    if-nez v6, :cond_26

    :cond_24
    iget-object v6, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    cmpl-float v11, v12, v11

    if-nez v11, :cond_25

    const/4 v11, 0x1

    goto :goto_d

    :cond_25
    const/4 v11, 0x0

    :goto_d
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->v(Z)V

    :cond_26
    iget-object v6, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a(I)V

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b()F

    move-result v5

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c()F

    move-result v4

    float-to-double v11, v4

    float-to-double v4, v5

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v13

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    sub-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v13

    float-to-double v6, v9

    float-to-double v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v4, v6

    iput v4, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    goto :goto_e

    :cond_27
    iget-object v4, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Lb/g/c/b/t;->p:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Lb/g/c/b/t;->q:F

    goto/16 :goto_20

    :cond_28
    const/4 v6, 0x0

    iput-boolean v6, v3, Lb/g/c/b/t;->m:Z

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a(I)V

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b()F

    move-result v6

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c()F

    move-result v4

    iget-object v7, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v7

    iget-object v8, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v20

    iget-object v12, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v20

    iget v13, v3, Lb/g/c/b/t;->i:I

    const/4 v15, -0x1

    if-eq v13, v15, :cond_29

    iget-object v8, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v12, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v13, v3, Lb/g/c/b/t;->o:[I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v12, v3, Lb/g/c/b/t;->o:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    int-to-float v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v15

    add-int/2addr v15, v13

    int-to-float v13, v15

    div-float v13, v13, v20

    add-float/2addr v13, v12

    iget-object v12, v3, Lb/g/c/b/t;->o:[I

    const/4 v15, 0x1

    aget v12, v12, v15

    goto :goto_f

    :cond_29
    iget v13, v3, Lb/g/c/b/t;->d:I

    const/4 v15, -0x1

    if-eq v13, v15, :cond_2a

    iget-object v8, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 56
    iget-object v12, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/g/c/b/n;

    .line 57
    iget-object v12, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 58
    iget-object v8, v8, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget v8, v8, Lb/g/c/b/p;->m:I

    .line 59
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v12, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v13, v3, Lb/g/c/b/t;->o:[I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v12, v3, Lb/g/c/b/t;->o:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    int-to-float v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v15

    add-int/2addr v15, v13

    int-to-float v13, v15

    div-float v13, v13, v20

    add-float/2addr v13, v12

    iget-object v12, v3, Lb/g/c/b/t;->o:[I

    const/4 v15, 0x1

    aget v12, v12, v15

    :goto_f
    int-to-float v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v15

    int-to-float v8, v8

    div-float v8, v8, v20

    add-float/2addr v12, v8

    move v8, v13

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    sub-float/2addr v13, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    sub-float/2addr v8, v12

    float-to-double v9, v8

    float-to-double v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    iget v11, v3, Lb/g/c/b/t;->d:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2b

    iget-object v12, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v15, v3, Lb/g/c/b/t;->h:F

    iget v14, v3, Lb/g/c/b/t;->g:F

    iget-object v0, v3, Lb/g/c/b/t;->n:[F

    move-object/from16 v26, v12

    move/from16 v27, v11

    move/from16 v28, v7

    move/from16 v29, v15

    move/from16 v30, v14

    move-object/from16 v31, v0

    invoke-virtual/range {v26 .. v31}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z(IFFF[F)V

    iget-object v0, v3, Lb/g/c/b/t;->n:[F

    const/4 v11, 0x1

    aget v12, v0, v11

    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    double-to-float v12, v14

    aput v12, v0, v11

    goto :goto_10

    :cond_2b
    const/4 v11, 0x1

    iget-object v0, v3, Lb/g/c/b/t;->n:[F

    aput v19, v0, v11

    :goto_10
    add-float/2addr v4, v8

    float-to-double v11, v4

    add-float/2addr v6, v13

    float-to-double v13, v6

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    sub-double/2addr v11, v9

    double-to-float v0, v11

    const/high16 v4, 0x427a0000    # 62.5f

    mul-float v0, v0, v4

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2c

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v14, v0, v4

    iget v4, v3, Lb/g/c/b/t;->v:F

    mul-float v14, v14, v4

    iget-object v4, v3, Lb/g/c/b/t;->n:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    div-float/2addr v14, v4

    add-float/2addr v14, v7

    goto :goto_11

    :cond_2c
    move v14, v7

    :goto_11
    const/4 v4, 0x0

    cmpl-float v6, v14, v4

    if-eqz v6, :cond_32

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v6, v14, v4

    if-eqz v6, :cond_32

    iget v4, v3, Lb/g/c/b/t;->c:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_32

    iget v6, v3, Lb/g/c/b/t;->v:F

    mul-float v0, v0, v6

    iget-object v6, v3, Lb/g/c/b/t;->n:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    div-float/2addr v0, v6

    float-to-double v8, v14

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v8, v10

    if-gez v6, :cond_2d

    const/4 v6, 0x0

    goto :goto_12

    :cond_2d
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_12
    const/4 v8, 0x6

    if-ne v4, v8, :cond_2f

    add-float v4, v7, v0

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2e

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_2e
    const/high16 v6, 0x3f800000    # 1.0f

    :cond_2f
    iget v4, v3, Lb/g/c/b/t;->c:I

    const/4 v8, 0x7

    if-ne v4, v8, :cond_31

    add-float v4, v7, v0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_30

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    :cond_30
    const/4 v6, 0x0

    :cond_31
    iget-object v4, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v8, v3, Lb/g/c/b/t;->c:I

    const/high16 v9, 0x40400000    # 3.0f

    mul-float v0, v0, v9

    invoke-virtual {v4, v8, v6, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->J(IFF)V

    const/4 v0, 0x0

    cmpl-float v0, v0, v7

    if-gez v0, :cond_33

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v0, v4, v7

    if-gtz v0, :cond_50

    goto :goto_13

    :cond_32
    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v14

    if-gez v0, :cond_33

    cmpg-float v0, v4, v14

    if-gtz v0, :cond_50

    :cond_33
    :goto_13
    iget-object v0, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    goto/16 :goto_20

    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v3, Lb/g/c/b/t;->p:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v3, Lb/g/c/b/t;->q:F

    const/4 v0, 0x0

    iput-boolean v0, v3, Lb/g/c/b/t;->m:Z

    goto/16 :goto_20

    .line 60
    :cond_35
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 61
    iget-object v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_36

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 62
    :cond_36
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v6, 0x1

    if-eq v0, v6, :cond_44

    const/4 v6, 0x2

    if-eq v0, v6, :cond_37

    goto/16 :goto_20

    :cond_37
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v5, v3, Lb/g/c/b/t;->q:F

    sub-float/2addr v0, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, v3, Lb/g/c/b/t;->p:F

    sub-float/2addr v5, v6

    iget v6, v3, Lb/g/c/b/t;->k:F

    mul-float v6, v6, v5

    iget v7, v3, Lb/g/c/b/t;->l:F

    mul-float v7, v7, v0

    add-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v3, Lb/g/c/b/t;->x:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_38

    iget-boolean v6, v3, Lb/g/c/b/t;->m:Z

    if-eqz v6, :cond_50

    :cond_38
    iget-object v6, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    iget-boolean v7, v3, Lb/g/c/b/t;->m:Z

    if-nez v7, :cond_39

    const/4 v7, 0x1

    iput-boolean v7, v3, Lb/g/c/b/t;->m:Z

    iget-object v7, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_39
    iget v8, v3, Lb/g/c/b/t;->d:I

    const/4 v7, -0x1

    if-eq v8, v7, :cond_3a

    iget-object v7, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v10, v3, Lb/g/c/b/t;->h:F

    iget v11, v3, Lb/g/c/b/t;->g:F

    iget-object v12, v3, Lb/g/c/b/t;->n:[F

    move v9, v6

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z(IFFF[F)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_14

    :cond_3a
    iget-object v7, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    iget-object v8, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v3, Lb/g/c/b/t;->n:[F

    iget v9, v3, Lb/g/c/b/t;->l:F

    mul-float v9, v9, v7

    const/4 v10, 0x1

    aput v9, v8, v10

    iget v9, v3, Lb/g/c/b/t;->k:F

    mul-float v7, v7, v9

    const/4 v9, 0x0

    aput v7, v8, v9

    :goto_14
    iget v7, v3, Lb/g/c/b/t;->k:F

    iget-object v8, v3, Lb/g/c/b/t;->n:[F

    aget v11, v8, v9

    mul-float v7, v7, v11

    iget v9, v3, Lb/g/c/b/t;->l:F

    aget v8, v8, v10

    mul-float v9, v9, v8

    add-float/2addr v9, v7

    iget v7, v3, Lb/g/c/b/t;->v:F

    mul-float v9, v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const v9, 0x3c23d70a    # 0.01f

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v12, v7, v10

    if-gez v12, :cond_3b

    iget-object v7, v3, Lb/g/c/b/t;->n:[F

    const/4 v8, 0x0

    aput v9, v7, v8

    const/4 v10, 0x1

    aput v9, v7, v10

    goto :goto_15

    :cond_3b
    const/4 v8, 0x0

    const/4 v10, 0x1

    :goto_15
    iget v7, v3, Lb/g/c/b/t;->k:F

    const/4 v11, 0x0

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_3c

    iget-object v0, v3, Lb/g/c/b/t;->n:[F

    aget v0, v0, v8

    div-float/2addr v5, v0

    goto :goto_16

    :cond_3c
    iget-object v5, v3, Lb/g/c/b/t;->n:[F

    aget v5, v5, v10

    div-float v5, v0, v5

    :goto_16
    add-float/2addr v6, v5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v0, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v0, v3, Lb/g/c/b/t;->c:I

    const/4 v6, 0x6

    if-ne v0, v6, :cond_3d

    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_3d
    iget v0, v3, Lb/g/c/b/t;->c:I

    const/4 v6, 0x7

    if-ne v0, v6, :cond_3e

    const v0, 0x3f7d70a4    # 0.99f

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :cond_3e
    iget-object v0, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    cmpl-float v6, v5, v0

    if-eqz v6, :cond_43

    const/4 v6, 0x0

    cmpl-float v7, v0, v6

    if-eqz v7, :cond_3f

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v0, v7

    if-nez v7, :cond_41

    :cond_3f
    iget-object v7, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    cmpl-float v0, v0, v6

    if-nez v0, :cond_40

    const/4 v0, 0x1

    goto :goto_17

    :cond_40
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->v(Z)V

    :cond_41
    iget-object v0, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/16 v0, 0x3e8

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a(I)V

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b()F

    move-result v0

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c()F

    move-result v4

    iget v5, v3, Lb/g/c/b/t;->k:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_42

    iget-object v4, v3, Lb/g/c/b/t;->n:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    div-float/2addr v0, v4

    move v9, v0

    goto :goto_18

    :cond_42
    iget-object v0, v3, Lb/g/c/b/t;->n:[F

    const/4 v5, 0x1

    aget v0, v0, v5

    div-float/2addr v4, v0

    move v9, v4

    :goto_18
    iget-object v0, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    goto :goto_19

    :cond_43
    iget-object v0, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v9, 0x0

    :goto_19
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v3, Lb/g/c/b/t;->p:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v3, Lb/g/c/b/t;->q:F

    goto/16 :goto_20

    :cond_44
    const/4 v0, 0x0

    iput-boolean v0, v3, Lb/g/c/b/t;->m:Z

    const/16 v0, 0x3e8

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a(I)V

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b()F

    move-result v0

    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c()F

    move-result v4

    iget-object v6, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    iget v8, v3, Lb/g/c/b/t;->d:I

    const/4 v7, -0x1

    if-eq v8, v7, :cond_45

    iget-object v7, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v10, v3, Lb/g/c/b/t;->h:F

    iget v11, v3, Lb/g/c/b/t;->g:F

    iget-object v12, v3, Lb/g/c/b/t;->n:[F

    move v9, v6

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->z(IFFF[F)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_1a

    :cond_45
    iget-object v7, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    iget-object v8, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v3, Lb/g/c/b/t;->n:[F

    iget v9, v3, Lb/g/c/b/t;->l:F

    mul-float v9, v9, v7

    const/4 v10, 0x1

    aput v9, v8, v10

    iget v9, v3, Lb/g/c/b/t;->k:F

    mul-float v7, v7, v9

    const/4 v9, 0x0

    aput v7, v8, v9

    :goto_1a
    iget v7, v3, Lb/g/c/b/t;->k:F

    iget-object v8, v3, Lb/g/c/b/t;->n:[F

    aget v11, v8, v9

    aget v11, v8, v10

    const/4 v12, 0x0

    cmpl-float v7, v7, v12

    if-eqz v7, :cond_46

    aget v4, v8, v9

    div-float/2addr v0, v4

    goto :goto_1b

    :cond_46
    aget v0, v8, v10

    div-float v0, v4, v0

    :goto_1b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_47

    const/high16 v4, 0x40400000    # 3.0f

    div-float v4, v0, v4

    add-float/2addr v4, v6

    goto :goto_1c

    :cond_47
    move v4, v6

    :goto_1c
    const/4 v7, 0x0

    cmpl-float v8, v4, v7

    if-eqz v8, :cond_4d

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v4, v7

    if-eqz v8, :cond_4d

    iget v7, v3, Lb/g/c/b/t;->c:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4d

    float-to-double v8, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v8, v10

    if-gez v4, :cond_48

    const/4 v4, 0x0

    goto :goto_1d

    :cond_48
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1d
    const/4 v8, 0x6

    if-ne v7, v8, :cond_4a

    add-float v4, v6, v0

    const/4 v7, 0x0

    cmpg-float v4, v4, v7

    if-gez v4, :cond_49

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_49
    const/high16 v4, 0x3f800000    # 1.0f

    :cond_4a
    iget v7, v3, Lb/g/c/b/t;->c:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_4c

    add-float v4, v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_4b

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    :cond_4b
    const/4 v11, 0x0

    goto :goto_1e

    :cond_4c
    move v11, v4

    :goto_1e
    iget-object v4, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v7, v3, Lb/g/c/b/t;->c:I

    invoke-virtual {v4, v7, v11, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->J(IFF)V

    const/4 v0, 0x0

    cmpl-float v0, v0, v6

    if-gez v0, :cond_4e

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v0, v7, v6

    if-gtz v0, :cond_50

    goto :goto_1f

    :cond_4d
    const/4 v0, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-gez v0, :cond_4e

    cmpg-float v0, v7, v4

    if-gtz v0, :cond_50

    :cond_4e
    :goto_1f
    iget-object v0, v3, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    goto :goto_20

    :cond_4f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v3, Lb/g/c/b/t;->p:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v3, Lb/g/c/b/t;->q:F

    const/4 v0, 0x0

    iput-boolean v0, v3, Lb/g/c/b/t;->m:Z

    .line 63
    :cond_50
    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v2, Lb/g/c/b/q;->r:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v2, Lb/g/c/b/q;->s:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_52

    iget-object v0, v2, Lb/g/c/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    if-eqz v0, :cond_52

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 64
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:Landroid/view/VelocityTracker;

    goto :goto_21

    :cond_51
    const/4 v1, 0x0

    .line 65
    :goto_21
    iput-object v1, v2, Lb/g/c/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_53

    invoke-virtual {v2, v0, v1}, Lb/g/c/b/q;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    goto :goto_22

    :cond_52
    move-object/from16 v0, p0

    :cond_53
    :goto_22
    const/4 v1, 0x1

    return v1

    .line 66
    :cond_54
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    if-eqz v0, :cond_6

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->k:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_2
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;->l:Z

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Ljava/util/ArrayList;

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 2

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v0, :cond_0

    .line 1
    iget v0, v0, Lb/g/c/b/q$b;->q:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->e:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v0}, Lb/g/c/b/q;->f()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 6

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->f:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->e:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    if-ltz v4, :cond_0

    cmpl-float v4, p1, v2

    if-lez v4, :cond_1

    :cond_0
    const-string v4, "MotionLayout"

    const-string v5, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 1
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:F

    return-void

    :cond_3
    cmpg-float v4, p1, v3

    if-gtz v4, :cond_5

    .line 2
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpl-float v2, v4, v2

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    if-ne v2, v4, :cond_4

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    :cond_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_8

    goto :goto_0

    :cond_5
    cmpl-float v4, p1, v2

    if-ltz v4, :cond_7

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpl-float v3, v4, v3

    if-nez v3, :cond_6

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    if-ne v3, v4, :cond_6

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    :cond_6
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_8

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    goto :goto_1

    :cond_7
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    :cond_8
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setScene(Lb/g/c/b/q;)V
    .locals 1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    move-result v0

    .line 1
    iput-boolean v0, p1, Lb/g/c/b/q;->p:Z

    iget-object p1, p1, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lb/g/c/b/t;->c(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->G()V

    return-void
.end method

.method public setStartState(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 1
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    .line 2
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    return-void

    .line 3
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    return-void
.end method

.method public setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V
    .locals 4

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->f:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->e:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    if-ne v1, v2, :cond_1

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x()V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    if-ne p1, v0, :cond_5

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->y()V

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->x()V

    :cond_4
    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public setTransition(I)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B(I)Lb/g/c/b/q$b;

    move-result-object p1

    .line 1
    iget v0, p1, Lb/g/c/b/q$b;->d:I

    .line 2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 3
    iget v0, p1, Lb/g/c/b/q$b;->c:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 5
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    .line 6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    .line 7
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    return-void

    :cond_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    if-ne v1, v2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    .line 9
    iput-object p1, v1, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    .line 10
    iget-object p1, p1, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz p1, :cond_4

    .line 11
    iget-boolean v1, v1, Lb/g/c/b/q;->p:Z

    invoke-virtual {p1, v1}, Lb/g/c/b/t;->c(Z)V

    .line 12
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    invoke-virtual {v1, v2}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    invoke-virtual {v2, v5}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(Lb/g/d/c;Lb/g/d/c;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->G()V

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    const/4 v1, 0x1

    cmpl-float v2, v0, v4

    if-nez v2, :cond_5

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->v(Z)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    goto :goto_1

    :cond_5
    cmpl-float v2, v0, v3

    if-nez v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->v(Z)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    :goto_1
    invoke-virtual {v2, v3}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v2

    .line 13
    invoke-virtual {v2, p0, v1}, Lb/g/d/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Lb/g/d/c;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 14
    :cond_6
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_2

    :cond_7
    move p1, v0

    :goto_2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La/a/a/a/a;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " transitionToStart "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u(F)V

    goto :goto_3

    .line 16
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_9
    :goto_3
    return-void
.end method

.method public setTransition(Lb/g/c/b/q$b;)V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    .line 17
    iput-object p1, v0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz p1, :cond_0

    .line 18
    iget-object v1, p1, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v1, :cond_0

    .line 19
    iget-boolean v0, v0, Lb/g/c/b/q;->p:Z

    invoke-virtual {v1, v0}, Lb/g/c/b/t;->c(Z)V

    .line 20
    :cond_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v1}, Lb/g/c/b/q;->d()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 21
    iget p1, p1, Lb/g/c/b/q$b;->r:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const-wide/16 v0, -0x1

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {p1}, Lb/g/c/b/q;->i()I

    move-result p1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v0}, Lb/g/c/b/q;->d()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    if-ne p1, v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v1, p1, v0}, Lb/g/c/b/q;->o(II)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    invoke-virtual {v0, v1}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    invoke-virtual {v1, v2}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d(Lb/g/d/c;Lb/g/d/c;)V

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    .line 23
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->e:I

    iput v1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->f:I

    .line 24
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->e()V

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->G()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v0, :cond_0

    const-string p1, "MotionLayout"

    const-string v0, "MotionScene not defined"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1
    :cond_0
    iget-object v1, v0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Lb/g/c/b/q$b;->h:I

    goto :goto_0

    .line 3
    :cond_1
    iput p1, v0, Lb/g/c/b/q;->j:I

    :goto_0
    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "motion.progress"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a:F

    const-string v1, "motion.velocity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:F

    const-string v1, "motion.StartState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c:I

    const-string v1, "motion.EndState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->d:I

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    invoke-static {v0, v2}, La/a/a/a/a;->H(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    invoke-static {v0, v2}, La/a/a/a/a;->H(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(F)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    if-eqz v1, :cond_1

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    invoke-virtual {v0}, Lb/g/c/b/q;->c()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {p1}, Lb/g/c/b/q;->f()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Landroid/view/animation/Interpolator;

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public v(Z)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/c/b/n;

    if-eqz v3, :cond_1

    .line 1
    iget-object v4, v3, Lb/g/c/b/n;->b:Landroid/view/View;

    invoke-static {v4}, La/a/a/a/a;->I(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "button"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lb/g/c/b/n;->A:[Lb/g/c/b/k;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Lb/g/c/b/n;->A:[Lb/g/c/b/k;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    if-eqz p1, :cond_0

    const/high16 v6, -0x3d380000    # -100.0f

    goto :goto_2

    :cond_0
    const/high16 v6, 0x42c80000    # 100.0f

    :goto_2
    iget-object v7, v3, Lb/g/c/b/n;->b:Landroid/view/View;

    invoke-virtual {v5, v6, v7}, Lb/g/c/b/k;->i(FLandroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public w(Z)V
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->f:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    iget-wide v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    :cond_0
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    if-lez v6, :cond_1

    cmpg-float v6, v2, v4

    if-gez v6, :cond_1

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    :cond_1
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_2

    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    if-eqz v6, :cond_28

    if-nez p1, :cond_2

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_28

    :cond_2
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v9

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    instance-of v11, v6, Lb/g/c/b/o;

    const v12, 0x3089705f    # 1.0E-9f

    if-nez v11, :cond_3

    iget-wide v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    sub-long v13, v9, v13

    long-to-float v11, v13

    mul-float v11, v11, v2

    mul-float v11, v11, v12

    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    div-float/2addr v11, v13

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    :goto_0
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    add-float/2addr v13, v11

    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    if-eqz v14, :cond_4

    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    :cond_4
    cmpl-float v14, v2, v5

    if-lez v14, :cond_5

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpl-float v14, v13, v14

    if-gez v14, :cond_6

    :cond_5
    cmpg-float v14, v2, v5

    if-gtz v14, :cond_7

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpg-float v14, v13, v14

    if-gtz v14, :cond_7

    :cond_6
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    const/4 v14, 0x1

    goto :goto_1

    :cond_7
    const/4 v14, 0x0

    :goto_1
    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    iput-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    const/4 v15, 0x2

    const v16, 0x3727c5ac    # 1.0E-5f

    if-eqz v6, :cond_f

    if-nez v14, :cond_f

    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    if-eqz v14, :cond_d

    iget-wide v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:J

    sub-long v13, v9, v13

    long-to-float v11, v13

    mul-float v11, v11, v12

    invoke-interface {v6, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:Lb/g/c/a/a;

    if-ne v11, v12, :cond_9

    .line 1
    iget-object v11, v12, Lb/g/c/a/a;->c:Lb/g/a/h/a/m;

    invoke-interface {v11}, Lb/g/a/h/a/m;->a()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x2

    goto :goto_2

    :cond_8
    const/4 v11, 0x1

    goto :goto_2

    :cond_9
    const/4 v11, 0x0

    .line 2
    :goto_2
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iput-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    instance-of v10, v9, Lb/g/c/b/o;

    if-eqz v10, :cond_c

    check-cast v9, Lb/g/c/b/o;

    invoke-virtual {v9}, Lb/g/c/b/o;->a()F

    move-result v9

    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    mul-float v10, v10, v12

    cmpg-float v10, v10, v16

    if-gtz v10, :cond_a

    if-ne v11, v15, :cond_a

    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    :cond_a
    cmpl-float v10, v9, v5

    if-lez v10, :cond_b

    cmpl-float v10, v6, v4

    if-ltz v10, :cond_b

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_b
    cmpg-float v9, v9, v5

    if-gez v9, :cond_c

    cmpg-float v9, v6, v5

    if-gtz v9, :cond_c

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    const/4 v13, 0x0

    goto :goto_5

    :cond_c
    move v13, v6

    goto :goto_5

    :cond_d
    invoke-interface {v6, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:Landroid/view/animation/Interpolator;

    instance-of v10, v9, Lb/g/c/b/o;

    if-eqz v10, :cond_e

    check-cast v9, Lb/g/c/b/o;

    invoke-virtual {v9}, Lb/g/c/b/o;->a()F

    move-result v9

    goto :goto_3

    :cond_e
    add-float/2addr v13, v11

    invoke-interface {v9, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    sub-float/2addr v9, v6

    mul-float v9, v9, v2

    div-float/2addr v9, v11

    :goto_3
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    move v13, v6

    goto :goto_4

    :cond_f
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    :goto_4
    const/4 v11, 0x0

    :goto_5
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v16

    if-lez v6, :cond_10

    sget-object v6, Landroidx/constraintlayout/motion/widget/MotionLayout$j;->e:Landroidx/constraintlayout/motion/widget/MotionLayout$j;

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    :cond_10
    if-eq v11, v7, :cond_15

    cmpl-float v6, v2, v5

    if-lez v6, :cond_11

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpl-float v6, v13, v6

    if-gez v6, :cond_12

    :cond_11
    cmpg-float v6, v2, v5

    if-gtz v6, :cond_13

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpg-float v6, v13, v6

    if-gtz v6, :cond_13

    :cond_12
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    :cond_13
    cmpl-float v6, v13, v4

    if-gez v6, :cond_14

    cmpg-float v6, v13, v5

    if-gtz v6, :cond_15

    :cond_14
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v9

    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:F

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Landroid/view/animation/Interpolator;

    if-nez v11, :cond_16

    move v11, v13

    goto :goto_6

    :cond_16
    invoke-interface {v11, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    :goto_6
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Landroid/view/animation/Interpolator;

    if-eqz v12, :cond_17

    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I:F

    div-float v14, v2, v14

    add-float/2addr v14, v13

    invoke-interface {v12, v14}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:Landroid/view/animation/Interpolator;

    invoke-interface {v14, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v14

    sub-float/2addr v12, v14

    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:F

    :cond_17
    const/4 v12, 0x0

    :goto_7
    if-ge v12, v6, :cond_19

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/g/c/b/n;

    if-eqz v14, :cond_18

    iget-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:Z

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:Lb/g/a/h/a/d;

    move/from16 v16, v11

    move-wide/from16 v17, v9

    move-object/from16 v19, v4

    invoke-virtual/range {v14 .. v19}, Lb/g/c/b/n;->d(Landroid/view/View;FJLb/g/a/h/a/d;)Z

    move-result v4

    or-int/2addr v4, v8

    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:Z

    :cond_18
    add-int/lit8 v12, v12, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    goto :goto_7

    :cond_19
    cmpl-float v4, v2, v5

    if-lez v4, :cond_1a

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpl-float v4, v13, v4

    if-gez v4, :cond_1b

    :cond_1a
    cmpg-float v4, v2, v5

    if-gtz v4, :cond_1c

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpg-float v4, v13, v4

    if-gtz v4, :cond_1c

    :cond_1b
    const/4 v4, 0x1

    goto :goto_8

    :cond_1c
    const/4 v4, 0x0

    :goto_8
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:Z

    if-nez v6, :cond_1d

    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    if-nez v6, :cond_1d

    if-eqz v4, :cond_1d

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    :cond_1d
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    if-eqz v6, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1e
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:Z

    xor-int/2addr v4, v7

    or-int/2addr v4, v6

    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:Z

    cmpg-float v4, v13, v5

    if-gtz v4, :cond_1f

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    if-eq v4, v3, :cond_1f

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    if-eq v3, v4, :cond_1f

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v3, v4}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lb/g/d/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    const/4 v8, 0x1

    goto :goto_9

    :cond_1f
    const/4 v8, 0x0

    :goto_9
    float-to-double v3, v13

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v3, v9

    if-ltz v6, :cond_20

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    if-eq v3, v4, :cond_20

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v3, v4}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lb/g/d/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    const/4 v8, 0x1

    :cond_20
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:Z

    if-nez v3, :cond_24

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    if-eqz v3, :cond_21

    goto :goto_a

    :cond_21
    cmpl-float v3, v2, v5

    if-lez v3, :cond_22

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v13, v3

    if-eqz v4, :cond_23

    :cond_22
    cmpg-float v3, v2, v5

    if-gez v3, :cond_25

    cmpl-float v3, v13, v5

    if-nez v3, :cond_25

    :cond_23
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$j;)V

    goto :goto_b

    :cond_24
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_25
    :goto_b
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:Z

    if-nez v1, :cond_28

    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    if-nez v1, :cond_28

    cmpl-float v1, v2, v5

    if-lez v1, :cond_26

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, v13, v1

    if-eqz v3, :cond_27

    :cond_26
    cmpg-float v1, v2, v5

    if-gez v1, :cond_28

    cmpl-float v1, v13, v5

    if-nez v1, :cond_28

    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->E()V

    :cond_28
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2a

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    if-eq v1, v2, :cond_29

    goto :goto_c

    :cond_29
    move v7, v8

    :goto_c
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    move v8, v7

    goto :goto_d

    :cond_2a
    cmpg-float v1, v1, v5

    if-gtz v1, :cond_2b

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    if-eq v1, v2, :cond_29

    goto :goto_c

    :cond_2b
    :goto_d
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Z

    or-int/2addr v1, v8

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Z

    if-eqz v8, :cond_2c

    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:Z

    if-nez v1, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_2c
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    return-void
.end method

.method public final x()V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    if-eqz v0, :cond_1

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    invoke-interface {v0, p0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    invoke-interface {v2, p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    goto :goto_0

    :cond_2
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:I

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    if-eqz v1, :cond_3

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    invoke-interface {v1, p0, v2, v3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    invoke-interface {v1, p0, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public y()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    if-eq v0, v2, :cond_2

    if-eq v2, v1, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->F()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public z(IFFF[F)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    .line 1
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/c/b/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lb/g/c/b/n;->c(FFF[F)V

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result p1

    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:F

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    const-string p2, ""

    invoke-static {p2, p1}, Lc/a/a/a/a;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WARNING could not find view id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
