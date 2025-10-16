.class public Lb/g/c/b/v;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/c/b/v$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:Lb/g/c/b/g;

.field public g:Lb/g/d/c$a;

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Landroid/content/Context;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/g/c/b/v;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/g/c/b/v;->c:Z

    iput v1, p0, Lb/g/c/b/v;->d:I

    iput v0, p0, Lb/g/c/b/v;->h:I

    iput v0, p0, Lb/g/c/b/v;->i:I

    iput v1, p0, Lb/g/c/b/v;->l:I

    const/4 v2, 0x0

    iput-object v2, p0, Lb/g/c/b/v;->m:Ljava/lang/String;

    iput v0, p0, Lb/g/c/b/v;->n:I

    iput v0, p0, Lb/g/c/b/v;->p:I

    iput v0, p0, Lb/g/c/b/v;->q:I

    iput v0, p0, Lb/g/c/b/v;->r:I

    iput v0, p0, Lb/g/c/b/v;->s:I

    iput v0, p0, Lb/g/c/b/v;->t:I

    iput v0, p0, Lb/g/c/b/v;->u:I

    iput-object p1, p0, Lb/g/c/b/v;->o:Landroid/content/Context;

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const-string v4, "ViewTransition"

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v2, v5, :cond_1

    if-eq v2, v6, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "CustomAttribute"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    goto :goto_2

    :sswitch_1
    const-string v7, "CustomMethod"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x4

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_3
    const-string v7, "KeyFrameSet"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :sswitch_4
    const-string v7, "ConstraintOverride"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, -0x1

    :goto_2
    if-eqz v7, :cond_6

    if-eq v7, v3, :cond_5

    if-eq v7, v5, :cond_4

    if-eq v7, v6, :cond_3

    if-eq v7, v8, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La/a/a/a/a;->F()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " unknown tag "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".xml:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lb/g/c/b/v;->g:Lb/g/d/c$a;

    iget-object v2, v2, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-static {p1, p2, v2}, Lb/g/d/a;->f(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_3

    :cond_4
    invoke-static {p1, p2}, Lb/g/d/c;->d(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lb/g/d/c$a;

    move-result-object v2

    iput-object v2, p0, Lb/g/c/b/v;->g:Lb/g/d/c$a;

    goto :goto_3

    :cond_5
    new-instance v2, Lb/g/c/b/g;

    invoke-direct {v2, p1, p2}, Lb/g/c/b/g;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v2, p0, Lb/g/c/b/v;->f:Lb/g/c/b/g;

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1, p2}, Lb/g/c/b/v;->d(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_7
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_8
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74f4db17 -> :sswitch_4
        -0x49df9cec -> :sswitch_3
        0x3b205fa -> :sswitch_2
        0x15d883d2 -> :sswitch_1
        0x6acd460b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public varargs a(Lb/g/c/b/w;Landroidx/constraintlayout/motion/widget/MotionLayout;ILb/g/d/c;[Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    iget-boolean v5, v0, Lb/g/c/b/v;->c:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget v5, v0, Lb/g/c/b/v;->e:I

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v5, v6, :cond_9

    aget-object v2, v4, v8

    .line 1
    new-instance v12, Lb/g/c/b/n;

    invoke-direct {v12, v2}, Lb/g/c/b/n;-><init>(Landroid/view/View;)V

    .line 2
    iget-object v3, v12, Lb/g/c/b/n;->e:Lb/g/c/b/p;

    const/4 v4, 0x0

    iput v4, v3, Lb/g/c/b/p;->e:F

    iput v4, v3, Lb/g/c/b/p;->f:F

    iput-boolean v9, v12, Lb/g/c/b/n;->H:Z

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3, v4, v5, v8, v10}, Lb/g/c/b/p;->g(FFFF)V

    iget-object v3, v12, Lb/g/c/b/n;->f:Lb/g/c/b/p;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3, v4, v5, v8, v10}, Lb/g/c/b/p;->g(FFFF)V

    iget-object v3, v12, Lb/g/c/b/n;->g:Lb/g/c/b/l;

    invoke-virtual {v3, v2}, Lb/g/c/b/l;->j(Landroid/view/View;)V

    iget-object v3, v12, Lb/g/c/b/n;->h:Lb/g/c/b/l;

    invoke-virtual {v3, v2}, Lb/g/c/b/l;->j(Landroid/view/View;)V

    .line 3
    iget-object v2, v0, Lb/g/c/b/v;->f:Lb/g/c/b/g;

    invoke-virtual {v2, v12}, Lb/g/c/b/g;->a(Lb/g/c/b/n;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v12, v2, v3, v4, v5}, Lb/g/c/b/n;->g(IIJ)V

    new-instance v10, Lb/g/c/b/v$a;

    iget v13, v0, Lb/g/c/b/v;->h:I

    iget v14, v0, Lb/g/c/b/v;->i:I

    iget v15, v0, Lb/g/c/b/v;->b:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    iget v2, v0, Lb/g/c/b/v;->l:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_8

    if-eq v2, v7, :cond_7

    if-eqz v2, :cond_6

    if-eq v2, v9, :cond_5

    if-eq v2, v6, :cond_4

    const/4 v1, 0x4

    if-eq v2, v1, :cond_3

    const/4 v1, 0x5

    if-eq v2, v1, :cond_2

    const/4 v1, 0x6

    if-eq v2, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_0

    :cond_6
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_0

    :cond_7
    iget-object v1, v0, Lb/g/c/b/v;->m:Ljava/lang/String;

    invoke-static {v1}, Lb/g/a/h/a/c;->c(Ljava/lang/String;)Lb/g/a/h/a/c;

    move-result-object v1

    new-instance v2, Lb/g/c/b/u;

    invoke-direct {v2, v0, v1}, Lb/g/c/b/u;-><init>(Lb/g/c/b/v;Lb/g/a/h/a/c;)V

    move-object/from16 v16, v2

    goto :goto_1

    :cond_8
    iget v2, v0, Lb/g/c/b/v;->n:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    :goto_0
    move-object/from16 v16, v1

    .line 5
    :goto_1
    iget v1, v0, Lb/g/c/b/v;->p:I

    iget v2, v0, Lb/g/c/b/v;->q:I

    move-object/from16 v11, p1

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-direct/range {v10 .. v18}, Lb/g/c/b/v$a;-><init>(Lb/g/c/b/w;Lb/g/c/b/n;IIILandroid/view/animation/Interpolator;II)V

    return-void

    :cond_9
    if-ne v5, v9, :cond_e

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v5

    const/4 v6, 0x0

    :goto_2
    array-length v9, v5

    if-ge v6, v9, :cond_e

    aget v9, v5, v6

    if-ne v9, v2, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->A(I)Lb/g/d/c;

    move-result-object v9

    array-length v10, v4

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_d

    aget-object v12, v4, v11

    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v12

    invoke-virtual {v9, v12}, Lb/g/d/c;->i(I)Lb/g/d/c$a;

    move-result-object v12

    iget-object v13, v0, Lb/g/c/b/v;->g:Lb/g/d/c$a;

    if-eqz v13, :cond_c

    .line 7
    iget-object v13, v13, Lb/g/d/c$a;->h:Lb/g/d/c$a$a;

    if-eqz v13, :cond_b

    invoke-virtual {v13, v12}, Lb/g/d/c$a$a;->e(Lb/g/d/c$a;)V

    .line 8
    :cond_b
    iget-object v12, v12, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    iget-object v13, v0, Lb/g/c/b/v;->g:Lb/g/d/c$a;

    iget-object v13, v13, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_e
    new-instance v5, Lb/g/d/c;

    invoke-direct {v5}, Lb/g/d/c;-><init>()V

    .line 9
    iget-object v6, v5, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v6, v3, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v3, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/g/d/c$a;

    if-nez v10, :cond_f

    goto :goto_5

    :cond_f
    iget-object v11, v5, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-virtual {v10}, Lb/g/d/c$a;->b()Lb/g/d/c$a;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 10
    :cond_10
    array-length v6, v4

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v6, :cond_13

    aget-object v10, v4, v9

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v5, v10}, Lb/g/d/c;->i(I)Lb/g/d/c$a;

    move-result-object v10

    iget-object v11, v0, Lb/g/c/b/v;->g:Lb/g/d/c$a;

    if-eqz v11, :cond_12

    .line 11
    iget-object v11, v11, Lb/g/d/c$a;->h:Lb/g/d/c$a$a;

    if-eqz v11, :cond_11

    invoke-virtual {v11, v10}, Lb/g/d/c$a$a;->e(Lb/g/d/c$a;)V

    .line 12
    :cond_11
    iget-object v10, v10, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    iget-object v11, v0, Lb/g/c/b/v;->g:Lb/g/d/c$a;

    iget-object v11, v11, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_13
    invoke-virtual {v1, v2, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->O(ILb/g/d/c;)V

    sget v5, Lb/g/d/e;->view_transition:I

    invoke-virtual {v1, v5, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->O(ILb/g/d/c;)V

    invoke-virtual {v1, v5, v7, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->H(III)V

    new-instance v3, Lb/g/c/b/q$b;

    iget-object v6, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:Lb/g/c/b/q;

    invoke-direct {v3, v7, v6, v5, v2}, Lb/g/c/b/q$b;-><init>(ILb/g/c/b/q;II)V

    array-length v2, v4

    :goto_7
    if-ge v8, v2, :cond_17

    aget-object v5, v4, v8

    .line 13
    iget v6, v0, Lb/g/c/b/v;->h:I

    if-eq v6, v7, :cond_14

    const/16 v9, 0x8

    .line 14
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v3, Lb/g/c/b/q$b;->h:I

    .line 15
    :cond_14
    iget v6, v0, Lb/g/c/b/v;->d:I

    .line 16
    iput v6, v3, Lb/g/c/b/q$b;->p:I

    .line 17
    iget v6, v0, Lb/g/c/b/v;->l:I

    iget-object v9, v0, Lb/g/c/b/v;->m:Ljava/lang/String;

    iget v10, v0, Lb/g/c/b/v;->n:I

    .line 18
    iput v6, v3, Lb/g/c/b/q$b;->e:I

    iput-object v9, v3, Lb/g/c/b/q$b;->f:Ljava/lang/String;

    iput v10, v3, Lb/g/c/b/q$b;->g:I

    .line 19
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, v0, Lb/g/c/b/v;->f:Lb/g/c/b/g;

    if-eqz v6, :cond_16

    .line 20
    iget-object v6, v6, Lb/g/c/b/g;->a:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 21
    new-instance v9, Lb/g/c/b/g;

    invoke-direct {v9}, Lb/g/c/b/g;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/g/c/b/d;

    invoke-virtual {v10}, Lb/g/c/b/d;->b()Lb/g/c/b/d;

    move-result-object v10

    .line 22
    iput v5, v10, Lb/g/c/b/d;->b:I

    .line 23
    invoke-virtual {v9, v10}, Lb/g/c/b/g;->c(Lb/g/c/b/d;)V

    goto :goto_8

    .line 24
    :cond_15
    iget-object v5, v3, Lb/g/c/b/q$b;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 25
    :cond_17
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lb/g/c/b/q$b;)V

    new-instance v2, Lb/g/c/b/a;

    invoke-direct {v2, v0, v4}, Lb/g/c/b/a;-><init>(Lb/g/c/b/v;[Landroid/view/View;)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u(F)V

    iput-object v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:Ljava/lang/Runnable;

    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 5

    iget v0, p0, Lb/g/c/b/v;->r:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lb/g/c/b/v;->s:I

    if-ne v4, v1, :cond_2

    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public c(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lb/g/c/b/v;->j:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lb/g/c/b/v;->k:Ljava/lang/String;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lb/g/c/b/v;->b(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget v2, p0, Lb/g/c/b/v;->j:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Lb/g/c/b/v;->k:Ljava/lang/String;

    if-nez v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lb/g/c/b/v;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v0
.end method

.method public final d(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lb/g/d/f;->ViewTransition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_14

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v2, Lb/g/d/f;->ViewTransition_android_id:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lb/g/c/b/v;->a:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->a:I

    goto/16 :goto_3

    :cond_0
    sget v2, Lb/g/d/f;->ViewTransition_motionTarget:I

    const/4 v3, 0x3

    const/4 v4, -0x1

    if-ne v1, v2, :cond_3

    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->O0:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lb/g/c/b/v;->j:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lb/g/c/b/v;->j:I

    if-ne v2, v4, :cond_13

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/g/c/b/v;->k:Ljava/lang/String;

    goto/16 :goto_3

    :cond_2
    iget v2, p0, Lb/g/c/b/v;->j:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->j:I

    goto/16 :goto_3

    :cond_3
    sget v2, Lb/g/d/f;->ViewTransition_onStateTransition:I

    if-ne v1, v2, :cond_4

    iget v2, p0, Lb/g/c/b/v;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->b:I

    goto/16 :goto_3

    :cond_4
    sget v2, Lb/g/d/f;->ViewTransition_transitionDisable:I

    if-ne v1, v2, :cond_5

    iget-boolean v2, p0, Lb/g/c/b/v;->c:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lb/g/c/b/v;->c:Z

    goto/16 :goto_3

    :cond_5
    sget v2, Lb/g/d/f;->ViewTransition_pathMotionArc:I

    if-ne v1, v2, :cond_6

    iget v2, p0, Lb/g/c/b/v;->d:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->d:I

    goto/16 :goto_3

    :cond_6
    sget v2, Lb/g/d/f;->ViewTransition_duration:I

    if-ne v1, v2, :cond_7

    iget v2, p0, Lb/g/c/b/v;->h:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->h:I

    goto/16 :goto_3

    :cond_7
    sget v2, Lb/g/d/f;->ViewTransition_upDuration:I

    if-ne v1, v2, :cond_8

    iget v2, p0, Lb/g/c/b/v;->i:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->i:I

    goto/16 :goto_3

    :cond_8
    sget v2, Lb/g/d/f;->ViewTransition_viewTransitionMode:I

    if-ne v1, v2, :cond_9

    iget v2, p0, Lb/g/c/b/v;->e:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->e:I

    goto/16 :goto_3

    :cond_9
    sget v2, Lb/g/d/f;->ViewTransition_motionInterpolator:I

    if-ne v1, v2, :cond_d

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v5, -0x2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->n:I

    if-eq v1, v4, :cond_13

    goto :goto_2

    :cond_a
    if-ne v2, v3, :cond_c

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lb/g/c/b/v;->m:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->n:I

    :goto_2
    iput v5, p0, Lb/g/c/b/v;->l:I

    goto :goto_3

    :cond_b
    iput v4, p0, Lb/g/c/b/v;->l:I

    goto :goto_3

    :cond_c
    iget v2, p0, Lb/g/c/b/v;->l:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->l:I

    goto :goto_3

    :cond_d
    sget v2, Lb/g/d/f;->ViewTransition_setsTag:I

    if-ne v1, v2, :cond_e

    iget v2, p0, Lb/g/c/b/v;->p:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->p:I

    goto :goto_3

    :cond_e
    sget v2, Lb/g/d/f;->ViewTransition_clearsTag:I

    if-ne v1, v2, :cond_f

    iget v2, p0, Lb/g/c/b/v;->q:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->q:I

    goto :goto_3

    :cond_f
    sget v2, Lb/g/d/f;->ViewTransition_ifTagSet:I

    if-ne v1, v2, :cond_10

    iget v2, p0, Lb/g/c/b/v;->r:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->r:I

    goto :goto_3

    :cond_10
    sget v2, Lb/g/d/f;->ViewTransition_ifTagNotSet:I

    if-ne v1, v2, :cond_11

    iget v2, p0, Lb/g/c/b/v;->s:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->s:I

    goto :goto_3

    :cond_11
    sget v2, Lb/g/d/f;->ViewTransition_SharedValueId:I

    if-ne v1, v2, :cond_12

    iget v2, p0, Lb/g/c/b/v;->u:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->u:I

    goto :goto_3

    :cond_12
    sget v2, Lb/g/d/f;->ViewTransition_SharedValue:I

    if-ne v1, v2, :cond_13

    iget v2, p0, Lb/g/c/b/v;->t:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lb/g/c/b/v;->t:I

    :cond_13
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ViewTransition("

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/g/c/b/v;->o:Landroid/content/Context;

    iget v2, p0, Lb/g/c/b/v;->a:I

    invoke-static {v1, v2}, La/a/a/a/a;->H(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
