.class public Lb/b/m/a/a;
.super Lb/b/m/a/d;
.source ""

# interfaces
.implements Lb/i/g/l/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/m/a/a$f;,
        Lb/b/m/a/a$c;,
        Lb/b/m/a/a$d;,
        Lb/b/m/a/a$e;,
        Lb/b/m/a/a$b;,
        Lb/b/m/a/a$g;
    }
.end annotation


# instance fields
.field public r:Lb/b/m/a/a$c;

.field public s:Lb/b/m/a/a$g;

.field public t:I

.field public u:I

.field public v:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lb/b/m/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lb/b/m/a/a;-><init>(Lb/b/m/a/a$c;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lb/b/m/a/a$c;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/b/m/a/d;-><init>(Lb/b/m/a/d$a;)V

    const/4 v0, -0x1

    iput v0, p0, Lb/b/m/a/a;->t:I

    iput v0, p0, Lb/b/m/a/a;->u:I

    new-instance v0, Lb/b/m/a/a$c;

    invoke-direct {v0, p1, p0, p2}, Lb/b/m/a/a$c;-><init>(Lb/b/m/a/a$c;Lb/b/m/a/a;Landroid/content/res/Resources;)V

    .line 1
    invoke-super {p0, v0}, Lb/b/m/a/d;->e(Lb/b/m/a/b$c;)V

    iput-object v0, p0, Lb/b/m/a/a;->r:Lb/b/m/a/a$c;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/m/a/a;->onStateChange([I)Z

    invoke-virtual {p0}, Lb/b/m/a/a;->jumpToCurrentState()V

    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/b/m/a/a;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "animated-selector"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    new-instance v4, Lb/b/m/a/a;

    const/4 v5, 0x0

    .line 1
    invoke-direct {v4, v5, v5}, Lb/b/m/a/a;-><init>(Lb/b/m/a/a$c;Landroid/content/res/Resources;)V

    .line 2
    sget-object v5, Lb/b/n/b;->AnimatedStateListDrawableCompat:[I

    invoke-static {v0, v3, v2, v5}, Lb/i/f/c/h;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v6, Lb/b/n/b;->AnimatedStateListDrawableCompat_android_visible:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v4, v6, v7}, Lb/b/m/a/a;->setVisible(ZZ)Z

    .line 3
    iget-object v6, v4, Lb/b/m/a/a;->r:Lb/b/m/a/a$c;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    iget v9, v6, Lb/b/m/a/b$c;->d:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v6, Lb/b/m/a/b$c;->d:I

    :cond_0
    sget v9, Lb/b/n/b;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v10, v6, Lb/b/m/a/b$c;->i:Z

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 4
    iput-boolean v9, v6, Lb/b/m/a/b$c;->i:Z

    .line 5
    sget v9, Lb/b/n/b;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v10, v6, Lb/b/m/a/b$c;->l:Z

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 6
    iput-boolean v9, v6, Lb/b/m/a/b$c;->l:Z

    .line 7
    sget v9, Lb/b/n/b;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v10, v6, Lb/b/m/a/b$c;->A:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 8
    iput v9, v6, Lb/b/m/a/b$c;->A:I

    .line 9
    sget v9, Lb/b/n/b;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v10, v6, Lb/b/m/a/b$c;->B:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 10
    iput v9, v6, Lb/b/m/a/b$c;->B:I

    .line 11
    sget v9, Lb/b/n/b;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v6, v6, Lb/b/m/a/b$c;->x:Z

    invoke-virtual {v5, v9, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v4, v6}, Lb/b/m/a/b;->setDither(Z)V

    .line 12
    iget-object v6, v4, Lb/b/m/a/b;->c:Lb/b/m/a/b$c;

    invoke-virtual {v6, v0}, Lb/b/m/a/b$c;->f(Landroid/content/res/Resources;)V

    .line 13
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    add-int/2addr v5, v7

    move-object/from16 v9, p0

    move-object v6, v0

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v7, :cond_19

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ge v11, v5, :cond_1

    const/4 v12, 0x3

    if-eq v10, v12, :cond_19

    :cond_1
    const/4 v12, 0x2

    if-eq v10, v12, :cond_2

    goto :goto_0

    :cond_2
    if-le v11, v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "item"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_e

    .line 15
    sget-object v7, Lb/b/n/b;->AnimatedStateListDrawableItem:[I

    invoke-static {v6, v3, v2, v7}, Lb/i/f/c/h;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    sget v12, Lb/b/n/b;->AnimatedStateListDrawableItem_android_id:I

    invoke-virtual {v7, v12, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    sget v12, Lb/b/n/b;->AnimatedStateListDrawableItem_android_drawable:I

    invoke-virtual {v7, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-lez v10, :cond_4

    invoke-static {}, Lb/b/q/z;->d()Lb/b/q/z;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Lb/b/q/z;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    new-array v12, v7, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v13, v7, :cond_7

    invoke-interface {v2, v13}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v15

    if-eqz v15, :cond_6

    const v0, 0x10100d0

    if-eq v15, v0, :cond_6

    const v0, 0x1010199

    if-eq v15, v0, :cond_6

    add-int/lit8 v0, v14, 0x1

    move/from16 v16, v0

    const/4 v0, 0x0

    invoke-interface {v2, v13, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    neg-int v15, v15

    :goto_3
    aput v15, v12, v14

    move/from16 v14, v16

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    goto :goto_2

    :cond_7
    invoke-static {v12, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v0

    const-string v7, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v10, :cond_c

    .line 17
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v12, 0x4

    if-ne v10, v12, :cond_8

    goto :goto_4

    :cond_8
    const/4 v12, 0x2

    if-ne v10, v12, :cond_b

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "vector"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static/range {p1 .. p4}, Lb/v/a/a/h;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/v/a/a/h;

    move-result-object v10

    goto :goto_5

    :cond_9
    const/16 v10, 0x15

    if-lt v8, v10, :cond_a

    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_5

    :cond_a
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_5

    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2, v7}, Lc/a/a/a/a;->t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_5
    if-eqz v10, :cond_d

    iget-object v7, v4, Lb/b/m/a/a;->r:Lb/b/m/a/a$c;

    .line 18
    invoke-virtual {v7, v10}, Lb/b/m/a/b$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v10

    iget-object v12, v7, Lb/b/m/a/d$a;->J:[[I

    aput-object v0, v12, v10

    .line 19
    iget-object v0, v7, Lb/b/m/a/a$c;->L:Lb/f/i;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v10, v7}, Lb/f/i;->g(ILjava/lang/Object;)V

    goto/16 :goto_b

    .line 20
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2, v7}, Lc/a/a/a/a;->t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_e
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "transition"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 22
    sget-object v0, Lb/b/n/b;->AnimatedStateListDrawableTransition:[I

    invoke-static {v6, v3, v2, v0}, Lb/i/f/c/h;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v7, Lb/b/n/b;->AnimatedStateListDrawableTransition_android_fromId:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    sget v11, Lb/b/n/b;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v0, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    sget v12, Lb/b/n/b;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v0, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    if-lez v12, :cond_f

    invoke-static {}, Lb/b/q/z;->d()Lb/b/q/z;

    move-result-object v13

    invoke-virtual {v13, v9, v12}, Lb/b/q/z;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_6

    :cond_f
    const/4 v12, 0x0

    :goto_6
    sget v13, Lb/b/n/b;->AnimatedStateListDrawableTransition_android_reversible:I

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v12, :cond_14

    :goto_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x4

    if-ne v12, v14, :cond_10

    goto :goto_7

    :cond_10
    const/4 v14, 0x2

    if-ne v12, v14, :cond_13

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v14, "animated-vector"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 23
    new-instance v12, Lb/v/a/a/c;

    const/4 v14, 0x0

    .line 24
    invoke-direct {v12, v9, v14, v14}, Lb/v/a/a/c;-><init>(Landroid/content/Context;Lb/v/a/a/c$b;Landroid/content/res/Resources;)V

    .line 25
    invoke-virtual {v12, v6, v1, v2, v3}, Lb/v/a/a/c;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_8

    :cond_11
    const/16 v6, 0x15

    if-lt v8, v6, :cond_12

    .line 26
    invoke-static/range {p1 .. p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_8

    :cond_12
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_8

    :cond_13
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3, v0}, Lc/a/a/a/a;->t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    :goto_8
    if-eqz v12, :cond_17

    if-eq v7, v10, :cond_16

    if-eq v11, v10, :cond_16

    iget-object v0, v4, Lb/b/m/a/a;->r:Lb/b/m/a/a$c;

    .line 27
    invoke-virtual {v0, v12}, Lb/b/m/a/b$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    invoke-static {v7, v11}, Lb/b/m/a/a$c;->h(II)J

    move-result-wide v9

    if-eqz v13, :cond_15

    const-wide v14, 0x200000000L

    goto :goto_9

    :cond_15
    const-wide/16 v14, 0x0

    :goto_9
    iget-object v12, v0, Lb/b/m/a/a$c;->K:Lb/f/e;

    int-to-long v2, v6

    or-long v16, v2, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v9, v10, v6}, Lb/f/e;->a(JLjava/lang/Object;)V

    if-eqz v13, :cond_18

    invoke-static {v11, v7}, Lb/b/m/a/a$c;->h(II)J

    move-result-wide v6

    iget-object v0, v0, Lb/b/m/a/a$c;->K:Lb/f/e;

    const-wide v9, 0x100000000L

    or-long/2addr v2, v9

    or-long/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v6, v7, v2}, Lb/f/e;->a(JLjava/lang/Object;)V

    goto :goto_a

    .line 28
    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-static {v1, v2, v3}, Lc/a/a/a/a;->t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3, v0}, Lc/a/a/a/a;->t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18
    :goto_a
    move-object/from16 v9, p0

    move-object/from16 v6, p1

    :goto_b
    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_0

    .line 29
    :cond_19
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v4, v0}, Lb/b/m/a/a;->onStateChange([I)Z

    return-object v4

    .line 30
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": invalid animated-selector tag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method


# virtual methods
.method public b()Lb/b/m/a/b$c;
    .locals 3

    .line 1
    new-instance v0, Lb/b/m/a/a$c;

    iget-object v1, p0, Lb/b/m/a/a;->r:Lb/b/m/a/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lb/b/m/a/a$c;-><init>(Lb/b/m/a/a$c;Lb/b/m/a/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public e(Lb/b/m/a/b$c;)V
    .locals 1

    invoke-super {p0, p1}, Lb/b/m/a/d;->e(Lb/b/m/a/b$c;)V

    instance-of v0, p1, Lb/b/m/a/a$c;

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/m/a/a$c;

    iput-object p1, p0, Lb/b/m/a/a;->r:Lb/b/m/a/a$c;

    :cond_0
    return-void
.end method

.method public f()Lb/b/m/a/d$a;
    .locals 3

    .line 1
    new-instance v0, Lb/b/m/a/a$c;

    iget-object v1, p0, Lb/b/m/a/a;->r:Lb/b/m/a/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lb/b/m/a/a$c;-><init>(Lb/b/m/a/a$c;Lb/b/m/a/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    invoke-super {p0}, Lb/b/m/a/b;->jumpToCurrentState()V

    iget-object v0, p0, Lb/b/m/a/a;->s:Lb/b/m/a/a$g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/m/a/a$g;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/m/a/a;->s:Lb/b/m/a/a$g;

    iget v0, p0, Lb/b/m/a/a;->t:I

    invoke-virtual {p0, v0}, Lb/b/m/a/b;->d(I)Z

    const/4 v0, -0x1

    iput v0, p0, Lb/b/m/a/a;->t:I

    iput v0, p0, Lb/b/m/a/a;->u:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Lb/b/m/a/a;->v:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lb/b/m/a/d;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_0

    iget-object v0, p0, Lb/b/m/a/a;->r:Lb/b/m/a/a$c;

    invoke-virtual {v0}, Lb/b/m/a/a$c;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/m/a/a;->v:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lb/b/m/a/a;->r:Lb/b/m/a/a$c;

    .line 1
    invoke-virtual {v2, v1}, Lb/b/m/a/d$a;->g([I)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v3}, Lb/b/m/a/d$a;->g([I)I

    move-result v3

    .line 2
    :goto_0
    iget v2, v0, Lb/b/m/a/b;->i:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v2, :cond_c

    .line 3
    iget-object v6, v0, Lb/b/m/a/a;->s:Lb/b/m/a/a$g;

    if-eqz v6, :cond_3

    iget v2, v0, Lb/b/m/a/a;->t:I

    if-ne v3, v2, :cond_1

    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_6

    :cond_1
    iget v2, v0, Lb/b/m/a/a;->u:I

    if-ne v3, v2, :cond_2

    invoke-virtual {v6}, Lb/b/m/a/a$g;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lb/b/m/a/a$g;->b()V

    iget v2, v0, Lb/b/m/a/a;->u:I

    iput v2, v0, Lb/b/m/a/a;->t:I

    iput v3, v0, Lb/b/m/a/a;->u:I

    goto :goto_1

    :cond_2
    iget v2, v0, Lb/b/m/a/a;->t:I

    invoke-virtual {v6}, Lb/b/m/a/a$g;->d()V

    :cond_3
    const/4 v6, 0x0

    iput-object v6, v0, Lb/b/m/a/a;->s:Lb/b/m/a/a$g;

    const/4 v6, -0x1

    iput v6, v0, Lb/b/m/a/a;->u:I

    iput v6, v0, Lb/b/m/a/a;->t:I

    iget-object v6, v0, Lb/b/m/a/a;->r:Lb/b/m/a/a$c;

    invoke-virtual {v6, v2}, Lb/b/m/a/a$c;->i(I)I

    move-result v7

    invoke-virtual {v6, v3}, Lb/b/m/a/a$c;->i(I)I

    move-result v8

    if-eqz v8, :cond_a

    if-nez v7, :cond_4

    goto/16 :goto_5

    .line 4
    :cond_4
    invoke-static {v7, v8}, Lb/b/m/a/a$c;->h(II)J

    move-result-wide v9

    iget-object v11, v6, Lb/b/m/a/a$c;->K:Lb/f/e;

    const-wide/16 v12, -0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v9, v10, v14}, Lb/f/e;->g(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-int v10, v9

    if-gez v10, :cond_5

    goto/16 :goto_5

    .line 5
    :cond_5
    invoke-static {v7, v8}, Lb/b/m/a/a$c;->h(II)J

    move-result-wide v14

    iget-object v9, v6, Lb/b/m/a/a$c;->K:Lb/f/e;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v14, v15, v11}, Lb/f/e;->g(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide v16, 0x200000000L

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    .line 6
    :goto_2
    invoke-virtual {v0, v10}, Lb/b/m/a/b;->d(I)Z

    .line 7
    iget-object v10, v0, Lb/b/m/a/b;->e:Landroid/graphics/drawable/Drawable;

    .line 8
    instance-of v11, v10, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v11, :cond_8

    .line 9
    invoke-static {v7, v8}, Lb/b/m/a/a$c;->h(II)J

    move-result-wide v7

    iget-object v6, v6, Lb/b/m/a/a$c;->K:Lb/f/e;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v7, v8, v11}, Lb/f/e;->g(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v11, 0x100000000L

    and-long/2addr v6, v11

    cmp-long v8, v6, v16

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 10
    :goto_3
    new-instance v7, Lb/b/m/a/a$e;

    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v7, v10, v6, v9}, Lb/b/m/a/a$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_4

    :cond_8
    instance-of v6, v10, Lb/v/a/a/c;

    if-eqz v6, :cond_9

    new-instance v7, Lb/b/m/a/a$d;

    check-cast v10, Lb/v/a/a/c;

    invoke-direct {v7, v10}, Lb/b/m/a/a$d;-><init>(Lb/v/a/a/c;)V

    goto :goto_4

    :cond_9
    instance-of v6, v10, Landroid/graphics/drawable/Animatable;

    if-eqz v6, :cond_a

    new-instance v7, Lb/b/m/a/a$b;

    check-cast v10, Landroid/graphics/drawable/Animatable;

    invoke-direct {v7, v10}, Lb/b/m/a/a$b;-><init>(Landroid/graphics/drawable/Animatable;)V

    :goto_4
    invoke-virtual {v7}, Lb/b/m/a/a$g;->c()V

    iput-object v7, v0, Lb/b/m/a/a;->s:Lb/b/m/a/a$g;

    iput v2, v0, Lb/b/m/a/a;->u:I

    iput v3, v0, Lb/b/m/a/a;->t:I

    goto/16 :goto_1

    :cond_a
    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_b

    .line 11
    invoke-virtual {v0, v3}, Lb/b/m/a/b;->d(I)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const/4 v4, 0x1

    .line 12
    :cond_c
    iget-object v2, v0, Lb/b/m/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d

    .line 13
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v4, v1

    :cond_d
    return v4
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lb/b/m/a/b;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Lb/b/m/a/a;->s:Lb/b/m/a/a$g;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lb/b/m/a/a$g;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lb/b/m/a/a;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method
