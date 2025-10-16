.class public Landroidx/constraintlayout/motion/widget/MotionLayout$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Lb/g/a/i/e;

.field public b:Lb/g/a/i/e;

.field public c:Lb/g/d/c;

.field public d:Lb/g/d/c;

.field public e:I

.field public f:I

.field public final synthetic g:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lb/g/a/i/e;

    invoke-direct {p1}, Lb/g/a/i/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    new-instance p1, Lb/g/a/i/e;

    invoke-direct {p1}, Lb/g/a/i/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Lb/g/d/c;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d:Lb/g/d/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    new-array v3, v1, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lb/g/c/b/n;

    invoke-direct {v7, v6}, Lb/g/c/b/n;-><init>(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    aput v8, v3, v5

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_10

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/g/c/b/n;

    if-nez v8, :cond_1

    move/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    goto/16 :goto_5

    :cond_1
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Lb/g/d/c;

    const-string v15, ")"

    const-string v14, " ("

    const-string v13, "no widget for  "

    const-string v12, "MotionLayout"

    if-eqz v9, :cond_b

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    invoke-virtual {v0, v9, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c(Lb/g/a/i/e;Landroid/view/View;)Lb/g/a/i/d;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v10, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(Landroidx/constraintlayout/motion/widget/MotionLayout;Lb/g/a/i/d;)Landroid/graphics/Rect;

    move-result-object v11

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Lb/g/d/c;

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v16

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v17

    .line 1
    iget v9, v10, Lb/g/d/c;->c:I

    if-eqz v9, :cond_2

    iget-object v4, v8, Lb/g/c/b/n;->a:Landroid/graphics/Rect;

    move/from16 v18, v9

    move-object v9, v8

    move-object v6, v10

    move-object v10, v11

    move-object/from16 v19, v2

    move-object v2, v11

    move-object v11, v4

    move-object v4, v12

    move/from16 v12, v18

    move-object/from16 v20, v3

    move-object v3, v13

    move/from16 v13, v16

    move/from16 v16, v1

    move-object v1, v14

    move/from16 v14, v17

    invoke-virtual/range {v9 .. v14}, Lb/g/c/b/n;->f(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    goto :goto_2

    :cond_2
    move/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v18, v9

    move-object v6, v10

    move-object v2, v11

    move-object v4, v12

    move-object v3, v13

    move-object v1, v14

    :goto_2
    const/4 v9, 0x0

    iget-object v10, v8, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iput v9, v10, Lb/g/c/b/p;->e:F

    iput v9, v10, Lb/g/c/b/p;->f:F

    invoke-virtual {v8, v10}, Lb/g/c/b/n;->e(Lb/g/c/b/p;)V

    iget-object v9, v8, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget v10, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lb/g/c/b/p;->g(FFFF)V

    iget v9, v8, Lb/g/c/b/n;->c:I

    .line 2
    invoke-virtual {v6, v9}, Lb/g/d/c;->h(I)Lb/g/d/c$a;

    move-result-object v9

    .line 3
    iget-object v10, v8, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    invoke-virtual {v10, v9}, Lb/g/c/b/p;->a(Lb/g/d/c$a;)V

    iget-object v10, v9, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v10, v10, Lb/g/d/c$c;->g:F

    iput v10, v8, Lb/g/c/b/n;->k:F

    iget-object v10, v8, Lb/g/c/b/n;->g:Lb/g/c/b/l;

    iget v11, v8, Lb/g/c/b/n;->c:I

    move/from16 v12, v18

    invoke-virtual {v10, v2, v6, v12, v11}, Lb/g/c/b/l;->g(Landroid/graphics/Rect;Lb/g/d/c;II)V

    iget-object v2, v9, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget v2, v2, Lb/g/d/c$e;->i:I

    iput v2, v8, Lb/g/c/b/n;->C:I

    iget-object v2, v9, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v6, v2, Lb/g/d/c$c;->k:I

    iput v6, v8, Lb/g/c/b/n;->E:I

    iget v2, v2, Lb/g/d/c$c;->j:F

    iput v2, v8, Lb/g/c/b/n;->F:F

    iget-object v2, v8, Lb/g/c/b/n;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, v9, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget v9, v6, Lb/g/d/c$c;->m:I

    iget-object v10, v6, Lb/g/d/c$c;->l:Ljava/lang/String;

    iget v6, v6, Lb/g/d/c$c;->n:I

    const/4 v11, -0x2

    if-eq v9, v11, :cond_9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_8

    if-eqz v9, :cond_7

    const/4 v2, 0x1

    if-eq v9, v2, :cond_6

    const/4 v2, 0x2

    if-eq v9, v2, :cond_5

    const/4 v2, 0x4

    if-eq v9, v2, :cond_4

    const/4 v2, 0x5

    if-eq v9, v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    .line 4
    :cond_3
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto :goto_3

    :cond_4
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_3

    :cond_5
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_3

    :cond_6
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_3

    :cond_7
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_3

    :cond_8
    invoke-static {v10}, Lb/g/a/h/a/c;->c(Ljava/lang/String;)Lb/g/a/h/a/c;

    move-result-object v2

    new-instance v6, Lb/g/c/b/m;

    invoke-direct {v6, v2}, Lb/g/c/b/m;-><init>(Lb/g/a/h/a/c;)V

    move-object v2, v6

    goto :goto_3

    :cond_9
    invoke-static {v2, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 5
    :goto_3
    iput-object v2, v8, Lb/g/c/b/n;->G:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_a
    move/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v4, v12

    move-object v3, v13

    move-object v1, v14

    .line 6
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La/a/a/a/a;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, La/a/a/a/a;->I(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    move/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v4, v12

    move-object v3, v13

    move-object v1, v14

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_c
    :goto_4
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d:Lb/g/d/c;

    if-eqz v2, :cond_f

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    invoke-virtual {v0, v2, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c(Lb/g/a/i/e;Landroid/view/View;)Lb/g/a/i/d;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->t(Landroidx/constraintlayout/motion/widget/MotionLayout;Lb/g/a/i/d;)Landroid/graphics/Rect;

    move-result-object v10

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d:Lb/g/d/c;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    .line 9
    iget v2, v1, Lb/g/d/c;->c:I

    if-eqz v2, :cond_d

    iget-object v11, v8, Lb/g/c/b/n;->a:Landroid/graphics/Rect;

    move-object v9, v8

    move v12, v2

    invoke-virtual/range {v9 .. v14}, Lb/g/c/b/n;->f(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    iget-object v10, v8, Lb/g/c/b/n;->a:Landroid/graphics/Rect;

    :cond_d
    iget-object v3, v8, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lb/g/c/b/p;->e:F

    iput v4, v3, Lb/g/c/b/p;->f:F

    invoke-virtual {v8, v3}, Lb/g/c/b/n;->e(Lb/g/c/b/p;)V

    iget-object v3, v8, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v6, v10, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3, v4, v6, v7, v9}, Lb/g/c/b/p;->g(FFFF)V

    iget-object v3, v8, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget v4, v8, Lb/g/c/b/n;->c:I

    .line 10
    invoke-virtual {v1, v4}, Lb/g/d/c;->h(I)Lb/g/d/c$a;

    move-result-object v4

    .line 11
    invoke-virtual {v3, v4}, Lb/g/c/b/p;->a(Lb/g/d/c$a;)V

    iget-object v3, v8, Lb/g/c/b/n;->h:Lb/g/c/b/l;

    iget v4, v8, Lb/g/c/b/n;->c:I

    invoke-virtual {v3, v10, v1, v2, v4}, Lb/g/c/b/l;->g(Landroid/graphics/Rect;Lb/g/d/c;II)V

    goto :goto_5

    .line 12
    :cond_e
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La/a/a/a/a;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, La/a/a/a/a;->I(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_1

    :cond_10
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_12

    aget v2, v20, v4

    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/c/b/n;

    .line 13
    iget-object v5, v2, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget v5, v5, Lb/g/c/b/p;->m:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_11

    .line 14
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/c/b/n;

    .line 15
    iget-object v7, v2, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget-object v8, v5, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    invoke-virtual {v7, v5, v8}, Lb/g/c/b/p;->k(Lb/g/c/b/n;Lb/g/c/b/p;)V

    iget-object v2, v2, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget-object v7, v5, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    invoke-virtual {v2, v5, v7}, Lb/g/c/b/p;->k(Lb/g/c/b/n;Lb/g/c/b/p;)V

    :cond_11
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v19, v3

    goto :goto_6

    :cond_12
    return-void
.end method

.method public b(Lb/g/a/i/e;Lb/g/a/i/e;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, p2, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2, p1, v1}, Lb/g/a/i/d;->k(Lb/g/a/i/d;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/i/d;

    instance-of v3, v2, Lb/g/a/i/a;

    if-eqz v3, :cond_0

    new-instance v3, Lb/g/a/i/a;

    invoke-direct {v3}, Lb/g/a/i/a;-><init>()V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lb/g/a/i/g;

    if-eqz v3, :cond_1

    new-instance v3, Lb/g/a/i/g;

    invoke-direct {v3}, Lb/g/a/i/g;-><init>()V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lb/g/a/i/f;

    if-eqz v3, :cond_2

    new-instance v3, Lb/g/a/i/f;

    invoke-direct {v3}, Lb/g/a/i/f;-><init>()V

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lb/g/a/i/h;

    if-eqz v3, :cond_3

    new-instance v3, Lb/g/a/i/i;

    invoke-direct {v3}, Lb/g/a/i/i;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v3, Lb/g/a/i/d;

    invoke-direct {v3}, Lb/g/a/i/d;-><init>()V

    .line 5
    :goto_1
    iget-object v4, p2, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v4, v3, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v4, :cond_4

    .line 7
    check-cast v4, Lb/g/a/i/l;

    .line 8
    iget-object v4, v4, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lb/g/a/i/d;->H()V

    .line 9
    :cond_4
    iput-object p2, v3, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    .line 10
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/g/a/i/d;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/a/i/d;

    invoke-virtual {v0, p2, v1}, Lb/g/a/i/d;->k(Lb/g/a/i/d;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public c(Lb/g/a/i/e;Landroid/view/View;)Lb/g/a/i/d;
    .locals 4

    .line 1
    iget-object v0, p1, Lb/g/a/i/d;->m0:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/i/d;

    .line 4
    iget-object v3, v2, Lb/g/a/i/d;->m0:Ljava/lang/Object;

    if-ne v3, p2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lb/g/d/c;Lb/g/d/c;)V
    .locals 6

    sget-object v0, Lb/g/a/i/d$a;->d:Lb/g/a/i/d$a;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Lb/g/d/c;

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d:Lb/g/d/c;

    new-instance v1, Lb/g/a/i/e;

    invoke-direct {v1}, Lb/g/a/i/e;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    new-instance v1, Lb/g/a/i/e;

    invoke-direct {v1}, Lb/g/a/i/e;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->O0:Z

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 2
    iget-object v2, v2, Lb/g/a/i/e;->Q0:Lb/g/a/i/m/b$b;

    .line 3
    invoke-virtual {v1, v2}, Lb/g/a/i/e;->h0(Lb/g/a/i/m/b$b;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 4
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 5
    iget-object v2, v2, Lb/g/a/i/e;->Q0:Lb/g/a/i/m/b$b;

    .line 6
    invoke-virtual {v1, v2}, Lb/g/a/i/e;->h0(Lb/g/a/i/m/b$b;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    .line 7
    iget-object v1, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    .line 9
    iget-object v1, v1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 11
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 12
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b(Lb/g/a/i/e;Lb/g/a/i/e;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 13
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Lb/g/a/i/e;

    .line 14
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b(Lb/g/a/i/e;Lb/g/a/i/e;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    invoke-virtual {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->f(Lb/g/a/i/e;Lb/g/d/c;)V

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->f(Lb/g/a/i/e;Lb/g/d/c;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->f(Lb/g/a/i/e;Lb/g/d/c;)V

    if-eqz p1, :cond_2

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->f(Lb/g/a/i/e;Lb/g/d/c;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 15
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    move-result p2

    .line 16
    iput-boolean p2, p1, Lb/g/a/i/e;->R0:Z

    .line 17
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    .line 18
    iget-object p2, p1, Lb/g/a/i/e;->N0:Lb/g/a/i/m/b;

    invoke-virtual {p2, p1}, Lb/g/a/i/m/b;->c(Lb/g/a/i/e;)V

    .line 19
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 20
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    move-result p2

    .line 21
    iput-boolean p2, p1, Lb/g/a/i/e;->R0:Z

    .line 22
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    .line 23
    iget-object p2, p1, Lb/g/a/i/e;->N0:Lb/g/a/i/m/b;

    invoke-virtual {p2, p1}, Lb/g/a/i/m/b;->c(Lb/g/a/i/e;)V

    .line 24
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne p2, v1, :cond_3

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    .line 25
    iget-object p2, p2, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 v2, 0x0

    aput-object v0, p2, v2

    .line 26
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    .line 27
    iget-object p2, p2, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v0, p2, v2

    .line 28
    :cond_3
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    .line 29
    iget-object p1, p1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    const/4 p2, 0x1

    aput-object v0, p1, p2

    .line 30
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    .line 31
    iget-object p1, p1, Lb/g/a/i/d;->V:[Lb/g/a/i/d$a;

    aput-object v0, p1, p2

    :cond_4
    return-void
.end method

.method public e()V
    .locals 13

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 1
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:I

    .line 2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:I

    .line 3
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v0, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:I

    iput v1, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:I

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    move-result v4

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v5

    if-ne v6, v5, :cond_6

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d:Lb/g/d/c;

    if-eqz v7, :cond_1

    iget v8, v7, Lb/g/d/c;->c:I

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    move v8, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v2

    :goto_1
    if-eqz v7, :cond_3

    iget v7, v7, Lb/g/d/c;->c:I

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v3

    .line 4
    :goto_3
    invoke-virtual {v5, v6, v4, v8, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Lb/g/a/i/e;III)V

    .line 5
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Lb/g/d/c;

    if-eqz v5, :cond_e

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    iget v5, v5, Lb/g/d/c;->c:I

    if-nez v5, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_4
    if-nez v5, :cond_5

    move v5, v3

    goto :goto_5

    :cond_5
    move v5, v2

    .line 6
    :goto_5
    invoke-virtual {v6, v7, v4, v8, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Lb/g/a/i/e;III)V

    goto :goto_c

    .line 7
    :cond_6
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Lb/g/d/c;

    if-eqz v5, :cond_9

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    iget v5, v5, Lb/g/d/c;->c:I

    if-nez v5, :cond_7

    move v8, v2

    goto :goto_6

    :cond_7
    move v8, v3

    :goto_6
    if-nez v5, :cond_8

    move v5, v3

    goto :goto_7

    :cond_8
    move v5, v2

    .line 8
    :goto_7
    invoke-virtual {v6, v7, v4, v8, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Lb/g/a/i/e;III)V

    .line 9
    :cond_9
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d:Lb/g/d/c;

    if-eqz v7, :cond_b

    iget v8, v7, Lb/g/d/c;->c:I

    if-nez v8, :cond_a

    goto :goto_8

    :cond_a
    move v8, v3

    goto :goto_9

    :cond_b
    :goto_8
    move v8, v2

    :goto_9
    if-eqz v7, :cond_d

    iget v7, v7, Lb/g/d/c;->c:I

    if-nez v7, :cond_c

    goto :goto_a

    :cond_c
    move v7, v2

    goto :goto_b

    :cond_d
    :goto_a
    move v7, v3

    .line 10
    :goto_b
    invoke-virtual {v5, v6, v4, v8, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Lb/g/a/i/e;III)V

    .line 11
    :cond_e
    :goto_c
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_f

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_f

    if-ne v1, v5, :cond_f

    const/4 v5, 0x0

    goto :goto_d

    :cond_f
    const/4 v5, 0x1

    :goto_d
    if-eqz v5, :cond_1d

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v0, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:I

    iput v1, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:I

    iget v0, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d:Lb/g/d/c;

    iget v5, v5, Lb/g/d/c;->c:I

    if-nez v5, :cond_10

    move v6, v2

    goto :goto_e

    :cond_10
    move v6, v3

    :goto_e
    if-nez v5, :cond_11

    move v5, v3

    goto :goto_f

    :cond_11
    move v5, v2

    .line 12
    :goto_f
    invoke-virtual {v0, v1, v4, v6, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Lb/g/a/i/e;III)V

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Lb/g/d/c;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    iget v0, v0, Lb/g/d/c;->c:I

    if-nez v0, :cond_12

    move v6, v2

    goto :goto_10

    :cond_12
    move v6, v3

    :goto_10
    if-nez v0, :cond_13

    move v0, v3

    goto :goto_11

    :cond_13
    move v0, v2

    .line 14
    :goto_11
    invoke-virtual {v1, v5, v4, v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Lb/g/a/i/e;III)V

    goto :goto_16

    .line 15
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->c:Lb/g/d/c;

    if-eqz v0, :cond_17

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    iget v0, v0, Lb/g/d/c;->c:I

    if-nez v0, :cond_15

    move v6, v2

    goto :goto_12

    :cond_15
    move v6, v3

    :goto_12
    if-nez v0, :cond_16

    move v0, v3

    goto :goto_13

    :cond_16
    move v0, v2

    .line 16
    :goto_13
    invoke-virtual {v1, v5, v4, v6, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Lb/g/a/i/e;III)V

    .line 17
    :cond_17
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->d:Lb/g/d/c;

    iget v5, v5, Lb/g/d/c;->c:I

    if-nez v5, :cond_18

    move v6, v2

    goto :goto_14

    :cond_18
    move v6, v3

    :goto_14
    if-nez v5, :cond_19

    move v5, v3

    goto :goto_15

    :cond_19
    move v5, v2

    .line 18
    :goto_15
    invoke-virtual {v0, v1, v4, v6, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Lb/g/a/i/e;III)V

    .line 19
    :cond_1a
    :goto_16
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    invoke-virtual {v1}, Lb/g/a/i/d;->w()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    invoke-virtual {v1}, Lb/g/a/i/d;->q()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    invoke-virtual {v1}, Lb/g/a/i/d;->w()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    invoke-virtual {v1}, Lb/g/a/i/d;->q()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:I

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:I

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:I

    if-ne v1, v4, :cond_1c

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:I

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:I

    if-eq v1, v4, :cond_1b

    goto :goto_17

    :cond_1b
    const/4 v1, 0x0

    goto :goto_18

    :cond_1c
    :goto_17
    const/4 v1, 0x1

    :goto_18
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:Z

    :cond_1d
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:I

    iget v4, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:I

    iget v5, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_1e

    if-nez v5, :cond_1f

    :cond_1e
    int-to-float v5, v0

    iget v7, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:F

    iget v10, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:I

    sub-int/2addr v10, v0

    int-to-float v0, v10

    mul-float v7, v7, v0

    add-float/2addr v7, v5

    float-to-int v0, v7

    :cond_1f
    iget v5, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:I

    if-eq v5, v6, :cond_20

    if-nez v5, :cond_21

    :cond_20
    int-to-float v5, v4

    iget v6, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:F

    iget v7, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:I

    sub-int/2addr v7, v4

    int-to-float v4, v7

    mul-float v6, v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    :cond_21
    move v5, v4

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a:Lb/g/a/i/e;

    .line 20
    iget-boolean v6, v4, Lb/g/a/i/e;->a1:Z

    if-nez v6, :cond_23

    .line 21
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    .line 22
    iget-boolean v6, v6, Lb/g/a/i/e;->a1:Z

    if-eqz v6, :cond_22

    goto :goto_19

    :cond_22
    const/4 v6, 0x0

    goto :goto_1a

    :cond_23
    :goto_19
    const/4 v6, 0x1

    .line 23
    :goto_1a
    iget-boolean v4, v4, Lb/g/a/i/e;->b1:Z

    if-nez v4, :cond_25

    .line 24
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    .line 25
    iget-boolean v4, v4, Lb/g/a/i/e;->b1:Z

    if-eqz v4, :cond_24

    goto :goto_1b

    :cond_24
    const/4 v7, 0x0

    goto :goto_1c

    :cond_25
    :goto_1b
    const/4 v7, 0x1

    :goto_1c
    move v4, v0

    .line 26
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->p(IIIIZZ)V

    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 28
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->a()V

    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v1, :cond_26

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/c/b/n;

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    .line 29
    iget-object v4, v4, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    const/4 v5, -0x1

    if-eqz v4, :cond_27

    .line 30
    iget v4, v4, Lb/g/c/b/q$b;->p:I

    goto :goto_1e

    :cond_27
    const/4 v4, -0x1

    :goto_1e
    if-eq v4, v5, :cond_29

    const/4 v6, 0x0

    :goto_1f
    if-ge v6, v1, :cond_29

    .line 31
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/c/b/n;

    if-eqz v7, :cond_28

    .line 32
    iput v4, v7, Lb/g/c/b/n;->B:I

    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 33
    :cond_29
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_20
    if-ge v7, v1, :cond_2b

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/g/c/b/n;

    .line 34
    iget-object v12, v11, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget v12, v12, Lb/g/c/b/p;->m:I

    if-eq v12, v5, :cond_2a

    .line 35
    invoke-virtual {v4, v12, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v12, v10, 0x1

    .line 36
    iget-object v11, v11, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    iget v11, v11, Lb/g/c/b/p;->m:I

    .line 37
    aput v11, v6, v10

    move v10, v12

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_2b
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Ljava/util/ArrayList;

    if-eqz v5, :cond_30

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v10, :cond_2d

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    aget v11, v6, v5

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/c/b/n;

    if-nez v7, :cond_2c

    goto :goto_22

    :cond_2c
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v11, v7}, Lb/g/c/b/q;->g(Lb/g/c/b/n;)V

    :goto_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_2d
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionHelper;

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v11}, Landroidx/constraintlayout/motion/widget/MotionHelper;->z(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    goto :goto_23

    :cond_2e
    const/4 v5, 0x0

    :goto_24
    if-ge v5, v10, :cond_32

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    aget v11, v6, v5

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/c/b/n;

    if-nez v7, :cond_2f

    goto :goto_25

    :cond_2f
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v11

    invoke-virtual {v7, v2, v3, v11, v12}, Lb/g/c/b/n;->g(IIJ)V

    :goto_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_30
    const/4 v5, 0x0

    :goto_26
    if-ge v5, v10, :cond_32

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    aget v11, v6, v5

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/c/b/n;

    if-nez v7, :cond_31

    goto :goto_27

    :cond_31
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v11, v7}, Lb/g/c/b/q;->g(Lb/g/c/b/n;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v11

    invoke-virtual {v7, v2, v3, v11, v12}, Lb/g/c/b/n;->g(IIJ)V

    :goto_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_32
    const/4 v5, 0x0

    :goto_28
    if-ge v5, v1, :cond_35

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/c/b/n;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_33

    goto :goto_29

    :cond_33
    if-eqz v7, :cond_34

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-virtual {v6, v7}, Lb/g/c/b/q;->g(Lb/g/c/b/n;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v10

    invoke-virtual {v7, v2, v3, v10, v11}, Lb/g/c/b/n;->g(IIJ)V

    :cond_34
    :goto_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_35
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    .line 38
    iget-object v2, v2, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_36

    .line 39
    iget v2, v2, Lb/g/c/b/q$b;->i:F

    goto :goto_2a

    :cond_36
    const/4 v2, 0x0

    :goto_2a
    cmpl-float v3, v2, v3

    if-eqz v3, :cond_41

    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_37

    const/4 v3, 0x1

    goto :goto_2b

    :cond_37
    const/4 v3, 0x0

    .line 40
    :goto_2b
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, -0x800001

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const v10, -0x800001

    :goto_2c
    if-ge v6, v1, :cond_3a

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/g/c/b/n;

    iget v12, v11, Lb/g/c/b/n;->k:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_38

    goto :goto_2e

    .line 41
    :cond_38
    iget-object v11, v11, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget v12, v11, Lb/g/c/b/p;->g:F

    .line 42
    iget v11, v11, Lb/g/c/b/p;->h:F

    if-eqz v3, :cond_39

    sub-float/2addr v11, v12

    goto :goto_2d

    :cond_39
    add-float/2addr v11, v12

    .line 43
    :goto_2d
    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_3a
    const/4 v9, 0x0

    :goto_2e
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v9, :cond_3f

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v1, :cond_3c

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/g/c/b/n;

    iget v10, v9, Lb/g/c/b/n;->k:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_3b

    iget v10, v9, Lb/g/c/b/n;->k:F

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v9, v9, Lb/g/c/b/n;->k:F

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_3b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_3c
    :goto_30
    if-ge v8, v1, :cond_41

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/c/b/n;

    iget v9, v7, Lb/g/c/b/n;->k:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_3e

    sub-float v9, v6, v2

    div-float v9, v6, v9

    iput v9, v7, Lb/g/c/b/n;->m:F

    iget v9, v7, Lb/g/c/b/n;->k:F

    if-eqz v3, :cond_3d

    sub-float v9, v4, v9

    sub-float v10, v4, v5

    div-float/2addr v9, v10

    mul-float v9, v9, v2

    goto :goto_31

    :cond_3d
    sub-float/2addr v9, v5

    mul-float v9, v9, v2

    sub-float v10, v4, v5

    div-float/2addr v9, v10

    :goto_31
    sub-float v9, v2, v9

    iput v9, v7, Lb/g/c/b/n;->l:F

    :cond_3e
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    :cond_3f
    :goto_32
    if-ge v8, v1, :cond_41

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/c/b/n;

    .line 44
    iget-object v5, v4, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    iget v9, v5, Lb/g/c/b/p;->g:F

    .line 45
    iget v5, v5, Lb/g/c/b/p;->h:F

    if-eqz v3, :cond_40

    sub-float/2addr v5, v9

    goto :goto_33

    :cond_40
    add-float/2addr v5, v9

    :goto_33
    sub-float v9, v6, v2

    div-float v9, v6, v9

    .line 46
    iput v9, v4, Lb/g/c/b/n;->m:F

    sub-float/2addr v5, v7

    mul-float v5, v5, v2

    sub-float v9, v10, v7

    div-float/2addr v5, v9

    sub-float v5, v2, v5

    iput v5, v4, Lb/g/c/b/n;->l:F

    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    :cond_41
    return-void
.end method

.method public final f(Lb/g/a/i/e;Lb/g/d/c;)V
    .locals 11

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    new-instance v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v7, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    invoke-virtual {v6, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {v6, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    iget v0, p2, Lb/g/d/c;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->b:Lb/g/a/i/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1
    sget-boolean v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->O0:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Lb/g/a/i/e;III)V

    .line 2
    :cond_0
    iget-object v0, p1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/a/i/d;

    .line 4
    iget-object v2, v1, Lb/g/a/i/d;->m0:Ljava/lang/Object;

    .line 5
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v6, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lb/g/a/i/d;

    .line 8
    iget-object v0, v9, Lb/g/a/i/d;->m0:Ljava/lang/Object;

    .line 9
    move-object v10, v0

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v0

    .line 10
    iget-object v1, p2, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/d/c$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v7}, Lb/g/d/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 11
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v0

    .line 12
    invoke-virtual {p2, v0}, Lb/g/d/c;->h(I)Lb/g/d/c$a;

    move-result-object v0

    iget-object v0, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v0, v0, Lb/g/d/c$b;->c:I

    .line 13
    invoke-virtual {v9, v0}, Lb/g/a/i/d;->T(I)V

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v0

    .line 14
    invoke-virtual {p2, v0}, Lb/g/d/c;->h(I)Lb/g/d/c$a;

    move-result-object v0

    iget-object v0, v0, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iget v0, v0, Lb/g/d/c$b;->d:I

    .line 15
    invoke-virtual {v9, v0}, Lb/g/a/i/d;->O(I)V

    instance-of v0, v10, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_4

    move-object v0, v10

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p2, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p2, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/d/c$a;

    if-eqz v1, :cond_3

    instance-of v2, v9, Lb/g/a/i/i;

    if-eqz v2, :cond_3

    move-object v2, v9

    check-cast v2, Lb/g/a/i/i;

    invoke-virtual {v0, v1, v2, v7, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->o(Lb/g/d/c$a;Lb/g/a/i/i;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 17
    :cond_3
    instance-of v0, v10, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v0, :cond_4

    move-object v0, v10

    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->u()V

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveLayoutDirection(I)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$e;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    .line 18
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->O0:Z

    move-object v2, v10

    move-object v3, v9

    move-object v4, v7

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(ZLandroid/view/View;Lb/g/a/i/d;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 19
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v0

    .line 20
    invoke-virtual {p2, v0}, Lb/g/d/c;->h(I)Lb/g/d/c$a;

    move-result-object v0

    iget-object v0, v0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v0, v0, Lb/g/d/c$d;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 21
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v0

    .line 22
    invoke-virtual {p2, v0}, Lb/g/d/c;->h(I)Lb/g/d/c$a;

    move-result-object v0

    iget-object v0, v0, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget v0, v0, Lb/g/d/c$d;->b:I

    .line 23
    :goto_2
    iput v0, v9, Lb/g/a/i/d;->o0:I

    goto/16 :goto_1

    .line 24
    :cond_6
    iget-object p1, p1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/g/a/i/d;

    instance-of v0, p2, Lb/g/a/i/k;

    if-eqz v0, :cond_7

    .line 26
    iget-object v0, p2, Lb/g/a/i/d;->m0:Ljava/lang/Object;

    .line 27
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    check-cast p2, Lb/g/a/i/h;

    invoke-virtual {v0, p2, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->t(Lb/g/a/i/h;Landroid/util/SparseArray;)V

    check-cast p2, Lb/g/a/i/k;

    invoke-virtual {p2}, Lb/g/a/i/k;->X()V

    goto :goto_3

    :cond_8
    return-void
.end method
