.class public Lb/v/a/a/c;
.super Lb/v/a/a/g;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/v/a/a/c$b;,
        Lb/v/a/a/c$c;
    }
.end annotation


# instance fields
.field public d:Lb/v/a/a/c$b;

.field public e:Landroid/content/Context;

.field public f:Landroid/animation/ArgbEvaluator;

.field public final g:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lb/v/a/a/c;-><init>(Landroid/content/Context;Lb/v/a/a/c$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb/v/a/a/c$b;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Lb/v/a/a/g;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lb/v/a/a/c;->f:Landroid/animation/ArgbEvaluator;

    new-instance p3, Lb/v/a/a/c$a;

    invoke-direct {p3, p0}, Lb/v/a/a/c$a;-><init>(Lb/v/a/a/c;)V

    iput-object p3, p0, Lb/v/a/a/c;->g:Landroid/graphics/drawable/Drawable$Callback;

    iput-object p1, p0, Lb/v/a/a/c;->e:Landroid/content/Context;

    new-instance p1, Lb/v/a/a/c$b;

    invoke-direct {p1, p2, p3, p2}, Lb/v/a/a/c$b;-><init>(Lb/v/a/a/c$b;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object p1, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/animation/Animator;)V
    .locals 3

    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {p0, v2}, Lb/v/a/a/c;->a(Landroid/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fillColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "strokeColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lb/v/a/a/c;->f:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_2

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lb/v/a/a/c;->f:Landroid/animation/ArgbEvaluator;

    :cond_2
    iget-object v0, p0, Lb/v/a/a/c;->f:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_3
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, La/a/a/a/a;->b(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, La/a/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0, p1}, Lb/v/a/a/h;->draw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object p1, p1, Lb/v/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0}, Lb/v/a/a/h;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget v1, v1, Lb/v/a/a/c$b;->a:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 3

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0}, Lb/v/a/a/h;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/v/a/a/c$c;

    iget-object v1, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/v/a/a/c$c;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0}, Lb/v/a/a/h;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0}, Lb/v/a/a/h;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0}, Lb/v/a/a/h;->getOpacity()I

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lb/v/a/a/c;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, v1, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0x15

    if-eqz v0, :cond_1

    if-lt v6, v7, :cond_0

    .line 1
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    :goto_0
    return-void

    .line 2
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    :goto_1
    if-eq v0, v9, :cond_11

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-ge v10, v8, :cond_2

    const/4 v10, 0x3

    if-eq v0, v10, :cond_11

    :cond_2
    const/4 v10, 0x2

    if-ne v0, v10, :cond_10

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "animated-vector"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/16 v12, 0x18

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v11, :cond_9

    sget-object v0, Lb/v/a/a/a;->e:[I

    invoke-static {v2, v5, v4, v0}, Lb/i/f/c/h;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    invoke-virtual {v11, v14, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_8

    .line 3
    sget-object v15, Lb/v/a/a/h;->l:Landroid/graphics/PorterDuff$Mode;

    if-lt v6, v12, :cond_4

    new-instance v10, Lb/v/a/a/h;

    invoke-direct {v10}, Lb/v/a/a/h;-><init>()V

    if-lt v6, v7, :cond_3

    .line 4
    invoke-virtual {v2, v0, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    :goto_2
    iput-object v0, v10, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lb/v/a/a/h$i;

    iget-object v12, v10, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v12

    invoke-direct {v0, v12}, Lb/v/a/a/h$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    goto :goto_5

    :cond_4
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    if-eq v15, v10, :cond_5

    if-eq v15, v9, :cond_5

    goto :goto_3

    :cond_5
    if-ne v15, v10, :cond_6

    invoke-static {v2, v0, v12, v5}, Lb/v/a/a/h;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/v/a/a/h;

    move-result-object v10

    goto :goto_5

    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "No start tag found"

    invoke-direct {v0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_4
    const-string v10, "VectorDrawableCompat"

    const-string v12, "parser error"

    invoke-static {v10, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v10, v13

    .line 6
    :goto_5
    iput-boolean v14, v10, Lb/v/a/a/h;->h:Z

    .line 7
    iget-object v0, v1, Lb/v/a/a/c;->g:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, v1, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_7
    iget-object v0, v1, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iput-object v10, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    :cond_8
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_c

    :cond_9
    const-string v10, "target"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lb/v/a/a/a;->f:[I

    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    if-eqz v11, :cond_f

    iget-object v14, v1, Lb/v/a/a/c;->e:Landroid/content/Context;

    if-eqz v14, :cond_e

    if-lt v6, v12, :cond_a

    .line 8
    invoke-static {v14, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v11

    goto :goto_6

    :cond_a
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v16

    const-string v12, "Can\'t load animation resource ID #0x"

    .line 9
    :try_start_1
    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v22
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :try_start_2
    invoke-static/range {v22 .. v22}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v17, v22

    invoke-static/range {v14 .. v21}, Lb/v/a/a/d;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v11
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    .line 12
    :goto_6
    iget-object v12, v1, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v12, v12, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    .line 13
    iget-object v12, v12, Lb/v/a/a/h;->d:Lb/v/a/a/h$h;

    iget-object v12, v12, Lb/v/a/a/h$h;->b:Lb/v/a/a/h$g;

    iget-object v12, v12, Lb/v/a/a/h$g;->p:Lb/f/a;

    .line 14
    invoke-virtual {v12, v10, v13}, Lb/f/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 15
    invoke-virtual {v11, v12}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    if-ge v6, v7, :cond_b

    invoke-virtual {v1, v11}, Lb/v/a/a/c;->a(Landroid/animation/Animator;)V

    :cond_b
    iget-object v12, v1, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v13, v12, Lb/v/a/a/c$b;->d:Ljava/util/ArrayList;

    if-nez v13, :cond_c

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lb/v/a/a/c$b;->d:Ljava/util/ArrayList;

    iget-object v12, v1, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    new-instance v13, Lb/f/a;

    invoke-direct {v13}, Lb/f/a;-><init>()V

    iput-object v13, v12, Lb/v/a/a/c$b;->e:Lb/f/a;

    :cond_c
    iget-object v12, v1, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v12, v12, Lb/v/a/a/c$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v12, v12, Lb/v/a/a/c$b;->e:Lb/f/a;

    invoke-virtual {v12, v11, v10}, Lb/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v13, v22

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v13, v22

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    .line 16
    :goto_7
    :try_start_3
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :catch_5
    move-exception v0

    :goto_8
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_9
    move-object/from16 v22, v13

    :goto_a
    if-eqz v22, :cond_d

    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_d
    throw v0

    .line 17
    :cond_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Context can\'t be null when inflating animators"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_10
    :goto_c
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_1

    :cond_11
    iget-object v0, v1, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    .line 18
    iget-object v2, v0, Lb/v/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_12

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lb/v/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    :cond_12
    iget-object v2, v0, Lb/v/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    iget-object v0, v0, Lb/v/a/a/c$b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0}, Lb/v/a/a/h;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0}, Lb/v/a/a/h;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLevelChange(I)Z
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1
.end method

.method public onStateChange([I)Z
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0, p1}, Lb/v/a/a/g;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0, p1}, Lb/v/a/a/h;->setAlpha(I)V

    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 2

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    .line 3
    iget-object v1, v0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v0, Lb/v/a/a/h;->d:Lb/v/a/a/h$h;

    iput-boolean p1, v0, Lb/v/a/a/h$h;->e:Z

    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    .line 1
    iget-object v1, v0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lb/v/a/a/h;->f:Landroid/graphics/ColorFilter;

    invoke-virtual {v0}, Lb/v/a/a/h;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method public setTint(I)V
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, La/a/a/a/a;->l0(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0, p1}, Lb/v/a/a/h;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, La/a/a/a/a;->m0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0, p1}, Lb/v/a/a/h;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, La/a/a/a/a;->n0(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0, p1}, Lb/v/a/a/h;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->b:Lb/v/a/a/h;

    invoke-virtual {v0, p1, p2}, Lb/v/a/a/h;->setVisible(ZZ)Z

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lb/v/a/a/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void

    :cond_0
    iget-object v0, p0, Lb/v/a/a/c;->d:Lb/v/a/a/c$b;

    iget-object v0, v0, Lb/v/a/a/c$b;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method
