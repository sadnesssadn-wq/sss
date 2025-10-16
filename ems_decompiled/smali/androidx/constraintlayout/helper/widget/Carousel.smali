.class public Landroidx/constraintlayout/helper/widget/Carousel;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/helper/widget/Carousel$b;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:F

.field public E:I

.field public F:I

.field public G:Ljava/lang/Runnable;

.field public o:Landroidx/constraintlayout/helper/widget/Carousel$b;

.field public final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public q:I

.field public r:I

.field public s:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public t:I

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:Z

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    const v2, 0x3f666666    # 0.9f

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:I

    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:I

    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:F

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:I

    const/16 v0, 0xc8

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->F:I

    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$a;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->G:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:Ljava/util/ArrayList;

    const/4 p3, 0x0

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:I

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    iput-boolean p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:Z

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:F

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:I

    const/4 p3, 0x4

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:I

    const/4 p3, 0x1

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    const/high16 p3, 0x40000000    # 2.0f

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:I

    const/16 p3, 0xc8

    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->F:I

    new-instance p3, Landroidx/constraintlayout/helper/widget/Carousel$a;

    invoke-direct {p3, p0}, Landroidx/constraintlayout/helper/widget/Carousel$a;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->G:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final B(IZ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B(I)Lb/g/c/b/q$b;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 1
    :cond_2
    iget-boolean v1, p1, Lb/g/c/b/q$b;->o:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne p2, v1, :cond_3

    return v0

    :cond_3
    xor-int/2addr p2, v2

    .line 2
    iput-boolean p2, p1, Lb/g/c/b/q$b;->o:Z

    return v2
.end method

.method public final C(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_b

    sget-object v0, Lb/g/d/f;->Carousel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_a

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v2, Lb/g/d/f;->Carousel_carousel_firstView:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    goto/16 :goto_1

    :cond_0
    sget v2, Lb/g/d/f;->Carousel_carousel_backwardTransition:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    goto/16 :goto_1

    :cond_1
    sget v2, Lb/g/d/f;->Carousel_carousel_forwardTransition:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    goto :goto_1

    :cond_2
    sget v2, Lb/g/d/f;->Carousel_carousel_emptyViewsBehavior:I

    if-ne v1, v2, :cond_3

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:I

    goto :goto_1

    :cond_3
    sget v2, Lb/g/d/f;->Carousel_carousel_previousState:I

    if-ne v1, v2, :cond_4

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    goto :goto_1

    :cond_4
    sget v2, Lb/g/d/f;->Carousel_carousel_nextState:I

    if-ne v1, v2, :cond_5

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    goto :goto_1

    :cond_5
    sget v2, Lb/g/d/f;->Carousel_carousel_touchUp_dampeningFactor:I

    if-ne v1, v2, :cond_6

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->z:F

    goto :goto_1

    :cond_6
    sget v2, Lb/g/d/f;->Carousel_carousel_touchUpMode:I

    if-ne v1, v2, :cond_7

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    goto :goto_1

    :cond_7
    sget v2, Lb/g/d/f;->Carousel_carousel_touchUp_velocityThreshold:I

    if-ne v1, v2, :cond_8

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->D:F

    goto :goto_1

    :cond_8
    sget v2, Lb/g/d/f;->Carousel_carousel_infinite:I

    if-ne v1, v2, :cond_9

    iget-boolean v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:Z

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b
    return-void
.end method

.method public final D()V
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_b

    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    add-int/2addr v4, v2

    iget v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:I

    sub-int/2addr v4, v5

    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:Z

    if-eqz v5, :cond_8

    const/4 v5, 0x4

    if-gez v4, :cond_5

    iget v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:I

    if-eq v6, v5, :cond_3

    invoke-virtual {p0, v3, v6}, Landroidx/constraintlayout/helper/widget/Carousel;->E(Landroid/view/View;I)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->E(Landroid/view/View;I)Z

    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v5

    rem-int v5, v4, v5

    if-nez v5, :cond_4

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {v4, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel$b;->a(Landroid/view/View;I)V

    goto :goto_6

    :cond_4
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v6

    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {v7}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v7

    rem-int/2addr v4, v7

    add-int/2addr v4, v6

    goto :goto_5

    :cond_5
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v6

    if-lt v4, v6, :cond_a

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v6

    if-ne v4, v6, :cond_6

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v6

    if-le v4, v6, :cond_7

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v6

    rem-int/2addr v4, v6

    :cond_7
    :goto_2
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:I

    if-eq v6, v5, :cond_a

    invoke-virtual {p0, v3, v6}, Landroidx/constraintlayout/helper/widget/Carousel;->E(Landroid/view/View;I)Z

    goto :goto_4

    :cond_8
    if-gez v4, :cond_9

    :goto_3
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->B:I

    invoke-virtual {p0, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel;->E(Landroid/view/View;I)Z

    goto :goto_6

    :cond_9
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v5

    if-lt v4, v5, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->E(Landroid/view/View;I)Z

    :goto_4
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    :goto_5
    invoke-interface {v5, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$b;->a(Landroid/view/View;I)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    if-eq v0, v3, :cond_c

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-instance v3, Lb/g/b/a/a;

    invoke-direct {v3, p0}, Lb/g/b/a/a;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_c
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    if-ne v0, v3, :cond_d

    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->E:I

    :cond_d
    :goto_7
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    if-eq v0, v2, :cond_12

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    if-ne v0, v2, :cond_e

    goto :goto_a

    :cond_e
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v0

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    const/4 v3, 0x1

    if-nez v2, :cond_10

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    invoke-virtual {p0, v2, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->B(IZ)Z

    goto :goto_8

    :cond_10
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    invoke-virtual {p0, v2, v3}, Landroidx/constraintlayout/helper/widget/Carousel;->B(IZ)Z

    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    :goto_8
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_11

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->B(IZ)Z

    goto :goto_9

    :cond_11
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    invoke-virtual {p0, v0, v3}, Landroidx/constraintlayout/helper/widget/Carousel;->B(IZ)Z

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    :goto_9
    return-void

    :cond_12
    :goto_a
    const-string v0, "Carousel"

    const-string v1, "No backward or forward transitions defined for Carousel!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final E(Landroid/view/View;I)Z
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_4

    aget v4, v0, v2

    .line 1
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    if-nez v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v4}, Lb/g/c/b/q;->b(I)Lb/g/d/c;

    move-result-object v4

    :goto_1
    const/4 v5, 0x1

    if-nez v4, :cond_2

    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Lb/g/d/c;->i(I)Lb/g/d/c$a;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, v4, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iput v5, v4, Lb/g/d/c$d;->c:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    or-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0

    return-void
.end method

.method public d(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 1

    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:I

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->y:I

    if-ne p2, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->x:I

    if-ne p2, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->u:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v0

    if-lt p1, v0, :cond_2

    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    :cond_2
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    if-gez p1, :cond_5

    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {p1}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    goto :goto_2

    :cond_3
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    invoke-interface {p1}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    :cond_4
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    if-gez p1, :cond_5

    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    :cond_5
    :goto_2
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->q:I

    iget p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->G:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$b;->c()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->r:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->d:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->c:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->t:I

    if-ne v4, v2, :cond_0

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->A:I

    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->C:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->w:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B(I)Lb/g/c/b/q$b;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    .line 1
    iget-object v0, v0, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v0, :cond_2

    .line 2
    iput v1, v0, Lb/g/c/b/t;->c:I

    .line 3
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->s:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->v:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->B(I)Lb/g/c/b/q$b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, v0, Lb/g/c/b/q$b;->l:Lb/g/c/b/t;

    if-eqz v0, :cond_3

    .line 5
    iput v1, v0, Lb/g/c/b/t;->c:I

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->D()V

    :cond_4
    return-void
.end method

.method public setAdapter(Landroidx/constraintlayout/helper/widget/Carousel$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->o:Landroidx/constraintlayout/helper/widget/Carousel$b;

    return-void
.end method
