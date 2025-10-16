.class public Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeBounds$j;
    }
.end annotation


# static fields
.field public static final C:[Ljava/lang/String;

.field public static final D:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeBounds$j;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final F:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeBounds$j;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final G:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final H:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final I:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static J:Lb/u/n;


# instance fields
.field public A:[I

.field public B:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:clip"

    const-string v2, "android:changeBounds:parent"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeBounds;->C:[Ljava/lang/String;

    new-instance v0, Landroidx/transition/ChangeBounds$a;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->D:Landroid/util/Property;

    new-instance v0, Landroidx/transition/ChangeBounds$b;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->E:Landroid/util/Property;

    new-instance v0, Landroidx/transition/ChangeBounds$c;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeBounds$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->F:Landroid/util/Property;

    new-instance v0, Landroidx/transition/ChangeBounds$d;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeBounds$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->G:Landroid/util/Property;

    new-instance v0, Landroidx/transition/ChangeBounds$e;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->H:Landroid/util/Property;

    new-instance v0, Landroidx/transition/ChangeBounds$f;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->I:Landroid/util/Property;

    new-instance v0, Lb/u/n;

    invoke-direct {v0}, Lb/u/n;-><init>()V

    sput-object v0, Landroidx/transition/ChangeBounds;->J:Lb/u/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/ChangeBounds;->A:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->B:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/ChangeBounds;->A:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->B:Z

    sget-object v1, Lb/u/q;->b:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v1, "resizeClip"

    invoke-static {p1, p2, v1, v0, v0}, Lb/i/f/c/h;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1
    iput-boolean p2, p0, Landroidx/transition/ChangeBounds;->B:Z

    return-void
.end method


# virtual methods
.method public final J(Lb/u/x;)V
    .locals 7

    iget-object v0, p1, Lb/u/x;->b:Landroid/view/View;

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p1, Lb/u/x;->a:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lb/u/x;->a:Ljava/util/Map;

    iget-object v2, p1, Lb/u/x;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->B:Z

    if-eqz v1, :cond_1

    iget-object p1, p1, Lb/u/x;->a:Ljava/util/Map;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "android:changeBounds:clip"

    .line 4
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public d(Lb/u/x;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds;->J(Lb/u/x;)V

    return-void
.end method

.method public h(Lb/u/x;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds;->J(Lb/u/x;)V

    return-void
.end method

.method public l(Landroid/view/ViewGroup;Lb/u/x;Lb/u/x;)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_19

    if-nez v1, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-object v3, v0, Lb/u/x;->a:Ljava/util/Map;

    iget-object v4, v1, Lb/u/x;->a:Ljava/util/Map;

    const-string v5, "android:changeBounds:parent"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v3, :cond_18

    if-nez v4, :cond_1

    goto/16 :goto_c

    :cond_1
    iget-object v9, v1, Lb/u/x;->b:Landroid/view/View;

    iget-object v3, v0, Lb/u/x;->a:Ljava/util/Map;

    const-string v4, "android:changeBounds:bounds"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v5, v1, Lb/u/x;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v3, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v11, v5

    sub-int v14, v3, v7

    sub-int v15, v12, v6

    sub-int v2, v13, v10

    iget-object v0, v0, Lb/u/x;->a:Ljava/util/Map;

    move-object/from16 v16, v9

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, v1, Lb/u/x;->a:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    if-nez v14, :cond_3

    :cond_2
    if-eqz v15, :cond_7

    if-eqz v2, :cond_7

    :cond_3
    if-ne v5, v6, :cond_5

    if-eq v7, v10, :cond_4

    goto :goto_0

    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v17, 0x1

    :goto_1
    if-ne v11, v12, :cond_6

    if-eq v3, v13, :cond_8

    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_7
    const/16 v17, 0x0

    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_9
    if-nez v0, :cond_b

    if-eqz v9, :cond_b

    :cond_a
    add-int/lit8 v17, v17, 0x1

    :cond_b
    move/from16 v1, v17

    if-lez v1, :cond_17

    move-object/from16 v17, v9

    iget-boolean v9, v8, Landroidx/transition/ChangeBounds;->B:Z

    move-object/from16 v18, v0

    const/4 v0, 0x2

    if-nez v9, :cond_10

    move-object/from16 v9, v16

    invoke-static {v9, v5, v7, v11, v3}, Lb/u/b0;->b(Landroid/view/View;IIII)V

    if-ne v1, v0, :cond_d

    if-ne v4, v15, :cond_c

    if-ne v14, v2, :cond_c

    .line 1
    iget-object v0, v8, Landroidx/transition/Transition;->w:Landroidx/transition/PathMotion;

    int-to-float v1, v5

    int-to-float v2, v7

    int-to-float v3, v6

    int-to-float v4, v10

    .line 2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroidx/transition/ChangeBounds;->I:Landroid/util/Property;

    goto :goto_4

    :cond_c
    new-instance v1, Landroidx/transition/ChangeBounds$j;

    invoke-direct {v1, v9}, Landroidx/transition/ChangeBounds$j;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v2, v8, Landroidx/transition/Transition;->w:Landroidx/transition/PathMotion;

    int-to-float v4, v5

    int-to-float v5, v7

    int-to-float v6, v6

    int-to-float v7, v10

    .line 4
    invoke-virtual {v2, v4, v5, v6, v7}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v4, Landroidx/transition/ChangeBounds;->E:Landroid/util/Property;

    invoke-static {v1, v4, v2}, Lb/u/a;->R(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 5
    iget-object v4, v8, Landroidx/transition/Transition;->w:Landroidx/transition/PathMotion;

    int-to-float v5, v11

    int-to-float v3, v3

    int-to-float v6, v12

    int-to-float v7, v13

    .line 6
    invoke-virtual {v4, v5, v3, v6, v7}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v3

    sget-object v4, Landroidx/transition/ChangeBounds;->F:Landroid/util/Property;

    invoke-static {v1, v4, v3}, Lb/u/a;->R(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    const/4 v2, 0x1

    aput-object v3, v0, v2

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroidx/transition/ChangeBounds$g;

    invoke-direct {v0, v8, v1}, Landroidx/transition/ChangeBounds$g;-><init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$j;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_5

    :cond_d
    if-ne v5, v6, :cond_f

    if-eq v7, v10, :cond_e

    goto :goto_3

    .line 7
    :cond_e
    iget-object v0, v8, Landroidx/transition/Transition;->w:Landroidx/transition/PathMotion;

    int-to-float v1, v11

    int-to-float v2, v3

    int-to-float v3, v12

    int-to-float v4, v13

    .line 8
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroidx/transition/ChangeBounds;->G:Landroid/util/Property;

    goto :goto_4

    .line 9
    :cond_f
    :goto_3
    iget-object v0, v8, Landroidx/transition/Transition;->w:Landroidx/transition/PathMotion;

    int-to-float v1, v5

    int-to-float v2, v7

    int-to-float v3, v6

    int-to-float v4, v10

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Landroidx/transition/ChangeBounds;->H:Landroid/util/Property;

    :goto_4
    invoke-static {v9, v1, v0}, Lb/u/a;->R(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    :goto_5
    const/4 v10, 0x1

    goto/16 :goto_b

    :cond_10
    move-object/from16 v9, v16

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v5

    add-int/2addr v3, v7

    invoke-static {v9, v5, v7, v1, v3}, Lb/u/b0;->b(Landroid/view/View;IIII)V

    if-ne v5, v6, :cond_12

    if-eq v7, v10, :cond_11

    goto :goto_6

    :cond_11
    const/4 v11, 0x0

    goto :goto_7

    .line 11
    :cond_12
    :goto_6
    iget-object v1, v8, Landroidx/transition/Transition;->w:Landroidx/transition/PathMotion;

    int-to-float v3, v5

    int-to-float v5, v7

    int-to-float v7, v6

    int-to-float v11, v10

    .line 12
    invoke-virtual {v1, v3, v5, v7, v11}, Landroidx/transition/PathMotion;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, Landroidx/transition/ChangeBounds;->I:Landroid/util/Property;

    invoke-static {v9, v3, v1}, Lb/u/a;->R(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v11, v1

    :goto_7
    if-nez v18, :cond_13

    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v4, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_8

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v1, v18

    :goto_8
    if-nez v17, :cond_14

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_9

    :cond_14
    move-object/from16 v4, v17

    :goto_9
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 13
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 14
    sget-object v2, Landroidx/transition/ChangeBounds;->J:Lb/u/n;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const-string v3, "clipBounds"

    invoke-static {v9, v3, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v14

    new-instance v15, Landroidx/transition/ChangeBounds$h;

    move-object v0, v15

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, v17

    move v4, v6

    move v5, v10

    move v6, v12

    const/4 v10, 0x1

    move v7, v13

    invoke-direct/range {v0 .. v7}, Landroidx/transition/ChangeBounds$h;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v14, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v14

    goto :goto_a

    :cond_15
    const/4 v10, 0x1

    const/4 v2, 0x0

    :goto_a
    invoke-static {v11, v2}, Lb/u/w;->a(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v4

    :goto_b
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, v10}, Lb/u/a0;->a(Landroid/view/ViewGroup;Z)V

    new-instance v1, Landroidx/transition/ChangeBounds$i;

    invoke-direct {v1, v8, v0}, Landroidx/transition/ChangeBounds$i;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    invoke-virtual {v8, v1}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$d;)Landroidx/transition/Transition;

    :cond_16
    return-object v4

    :cond_17
    const/4 v0, 0x0

    return-object v0

    :cond_18
    :goto_c
    const/4 v0, 0x0

    return-object v0

    :cond_19
    :goto_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/transition/ChangeBounds;->C:[Ljava/lang/String;

    return-object v0
.end method
