.class public Lb/b/q/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lb/b/q/h0;

.field public c:Lb/b/q/h0;

.field public d:Lb/b/q/h0;

.field public e:Lb/b/q/h0;

.field public f:Lb/b/q/h0;

.field public g:Lb/b/q/h0;

.field public h:Lb/b/q/h0;

.field public final i:Lb/b/q/p;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/b/q/n;->j:I

    const/4 v0, -0x1

    iput v0, p0, Lb/b/q/n;->k:I

    iput-object p1, p0, Lb/b/q/n;->a:Landroid/widget/TextView;

    new-instance v0, Lb/b/q/p;

    invoke-direct {v0, p1}, Lb/b/q/p;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lb/b/q/n;->i:Lb/b/q/p;

    return-void
.end method

.method public static c(Landroid/content/Context;Lb/b/q/g;I)Lb/b/q/h0;
    .locals 0

    invoke-virtual {p1, p0, p2}, Lb/b/q/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lb/b/q/h0;

    invoke-direct {p1}, Lb/b/q/h0;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lb/b/q/h0;->d:Z

    iput-object p0, p1, Lb/b/q/h0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Lb/b/q/h0;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Lb/b/q/g;->f(Landroid/graphics/drawable/Drawable;Lb/b/q/h0;[I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lb/b/q/n;->b:Lb/b/q/h0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/q/n;->c:Lb/b/q/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/q/n;->d:Lb/b/q/h0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/q/n;->e:Lb/b/q/h0;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v3, v0, v2

    iget-object v4, p0, Lb/b/q/n;->b:Lb/b/q/h0;

    invoke-virtual {p0, v3, v4}, Lb/b/q/n;->a(Landroid/graphics/drawable/Drawable;Lb/b/q/h0;)V

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Lb/b/q/n;->c:Lb/b/q/h0;

    invoke-virtual {p0, v3, v4}, Lb/b/q/n;->a(Landroid/graphics/drawable/Drawable;Lb/b/q/h0;)V

    aget-object v3, v0, v1

    iget-object v4, p0, Lb/b/q/n;->d:Lb/b/q/h0;

    invoke-virtual {p0, v3, v4}, Lb/b/q/n;->a(Landroid/graphics/drawable/Drawable;Lb/b/q/h0;)V

    const/4 v3, 0x3

    aget-object v0, v0, v3

    iget-object v3, p0, Lb/b/q/n;->e:Lb/b/q/h0;

    invoke-virtual {p0, v0, v3}, Lb/b/q/n;->a(Landroid/graphics/drawable/Drawable;Lb/b/q/h0;)V

    :cond_1
    iget-object v0, p0, Lb/b/q/n;->f:Lb/b/q/h0;

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/q/n;->g:Lb/b/q/h0;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Lb/b/q/n;->f:Lb/b/q/h0;

    invoke-virtual {p0, v2, v3}, Lb/b/q/n;->a(Landroid/graphics/drawable/Drawable;Lb/b/q/h0;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Lb/b/q/n;->g:Lb/b/q/h0;

    invoke-virtual {p0, v0, v1}, Lb/b/q/n;->a(Landroid/graphics/drawable/Drawable;Lb/b/q/h0;)V

    :cond_3
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lb/b/q/n;->i:Lb/b/q/p;

    .line 1
    invoke-virtual {v0}, Lb/b/q/p;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lb/b/q/p;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Landroid/util/AttributeSet;I)V
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Lb/b/q/g;->a()Lb/b/q/g;

    move-result-object v12

    sget-object v3, Lb/b/j;->AppCompatTextHelper:[I

    const/4 v13, 0x0

    invoke-static {v11, v8, v3, v9, v13}, Lb/b/q/j0;->r(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lb/b/q/j0;

    move-result-object v14

    iget-object v1, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1
    iget-object v5, v14, Lb/b/q/j0;->b:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move/from16 v6, p2

    .line 2
    invoke-static/range {v1 .. v7}, Lb/i/m/r;->A(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    sget v1, Lb/b/j;->AppCompatTextHelper_android_textAppearance:I

    const/4 v15, -0x1

    invoke-virtual {v14, v1, v15}, Lb/b/q/j0;->m(II)I

    move-result v1

    sget v2, Lb/b/j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v14, v2}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v14, v2, v13}, Lb/b/q/j0;->m(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Lb/b/q/n;->c(Landroid/content/Context;Lb/b/q/g;I)Lb/b/q/h0;

    move-result-object v2

    iput-object v2, v0, Lb/b/q/n;->b:Lb/b/q/h0;

    :cond_0
    sget v2, Lb/b/j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v14, v2}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v14, v2, v13}, Lb/b/q/j0;->m(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Lb/b/q/n;->c(Landroid/content/Context;Lb/b/q/g;I)Lb/b/q/h0;

    move-result-object v2

    iput-object v2, v0, Lb/b/q/n;->c:Lb/b/q/h0;

    :cond_1
    sget v2, Lb/b/j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v14, v2}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v14, v2, v13}, Lb/b/q/j0;->m(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Lb/b/q/n;->c(Landroid/content/Context;Lb/b/q/g;I)Lb/b/q/h0;

    move-result-object v2

    iput-object v2, v0, Lb/b/q/n;->d:Lb/b/q/h0;

    :cond_2
    sget v2, Lb/b/j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v14, v2}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v14, v2, v13}, Lb/b/q/j0;->m(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Lb/b/q/n;->c(Landroid/content/Context;Lb/b/q/g;I)Lb/b/q/h0;

    move-result-object v2

    iput-object v2, v0, Lb/b/q/n;->e:Lb/b/q/h0;

    :cond_3
    sget v2, Lb/b/j;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v14, v2}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v14, v2, v13}, Lb/b/q/j0;->m(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Lb/b/q/n;->c(Landroid/content/Context;Lb/b/q/g;I)Lb/b/q/h0;

    move-result-object v2

    iput-object v2, v0, Lb/b/q/n;->f:Lb/b/q/h0;

    :cond_4
    sget v2, Lb/b/j;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v14, v2}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v14, v2, v13}, Lb/b/q/j0;->m(II)I

    move-result v2

    invoke-static {v11, v12, v2}, Lb/b/q/n;->c(Landroid/content/Context;Lb/b/q/g;I)Lb/b/q/h0;

    move-result-object v2

    iput-object v2, v0, Lb/b/q/n;->g:Lb/b/q/h0;

    .line 3
    :cond_5
    iget-object v2, v14, Lb/b/q/j0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    iget-object v2, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    const/16 v3, 0x17

    const/16 v4, 0x1a

    if-eq v1, v15, :cond_d

    sget-object v5, Lb/b/j;->TextAppearance:[I

    .line 5
    new-instance v6, Lb/b/q/j0;

    invoke-virtual {v11, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {v6, v11, v1}, Lb/b/q/j0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v2, :cond_6

    .line 6
    sget v1, Lb/b/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v6, v1}, Lb/b/q/j0;->p(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v6, v1, v13}, Lb/b/q/j0;->a(IZ)Z

    move-result v1

    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v11, v6}, Lb/b/q/n;->m(Landroid/content/Context;Lb/b/q/j0;)V

    if-ge v10, v3, :cond_9

    sget v7, Lb/b/j;->TextAppearance_android_textColor:I

    invoke-virtual {v6, v7}, Lb/b/q/j0;->p(I)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v6, v7}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    :goto_1
    sget v14, Lb/b/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v6, v14}, Lb/b/q/j0;->p(I)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v6, v14}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    :goto_2
    sget v15, Lb/b/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v6, v15}, Lb/b/q/j0;->p(I)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual {v6, v15}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    const/4 v14, 0x0

    :cond_a
    const/4 v15, 0x0

    :goto_3
    sget v3, Lb/b/j;->TextAppearance_textLocale:I

    invoke-virtual {v6, v3}, Lb/b/q/j0;->p(I)Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-virtual {v6, v3}, Lb/b/q/j0;->n(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    :goto_4
    if-lt v10, v4, :cond_c

    sget v4, Lb/b/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v6, v4}, Lb/b/q/j0;->p(I)Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-virtual {v6, v4}, Lb/b/q/j0;->n(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    .line 7
    :goto_5
    iget-object v6, v6, Lb/b/q/j0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 8
    :goto_6
    sget-object v6, Lb/b/j;->TextAppearance:[I

    move/from16 v20, v1

    .line 9
    new-instance v1, Lb/b/q/j0;

    invoke-virtual {v11, v8, v6, v9, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-direct {v1, v11, v6}, Lb/b/q/j0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    if-nez v2, :cond_e

    .line 10
    sget v6, Lb/b/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v6}, Lb/b/q/j0;->p(I)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-virtual {v1, v6, v13}, Lb/b/q/j0;->a(IZ)Z

    move-result v5

    const/4 v6, 0x1

    goto :goto_7

    :cond_e
    move v6, v5

    move/from16 v5, v20

    :goto_7
    const/16 v13, 0x17

    if-ge v10, v13, :cond_11

    sget v13, Lb/b/j;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v13}, Lb/b/q/j0;->p(I)Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-virtual {v1, v13}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    :cond_f
    sget v13, Lb/b/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v1, v13}, Lb/b/q/j0;->p(I)Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-virtual {v1, v13}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    :cond_10
    sget v13, Lb/b/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v1, v13}, Lb/b/q/j0;->p(I)Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-virtual {v1, v13}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    :cond_11
    sget v13, Lb/b/j;->TextAppearance_textLocale:I

    invoke-virtual {v1, v13}, Lb/b/q/j0;->p(I)Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-virtual {v1, v13}, Lb/b/q/j0;->n(I)Ljava/lang/String;

    move-result-object v3

    :cond_12
    const/16 v13, 0x1a

    if-lt v10, v13, :cond_13

    sget v13, Lb/b/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v1, v13}, Lb/b/q/j0;->p(I)Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-virtual {v1, v13}, Lb/b/q/j0;->n(I)Ljava/lang/String;

    move-result-object v4

    :cond_13
    const/16 v13, 0x1c

    if-lt v10, v13, :cond_14

    sget v13, Lb/b/j;->TextAppearance_android_textSize:I

    invoke-virtual {v1, v13}, Lb/b/q/j0;->p(I)Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v19, v12

    const/4 v12, -0x1

    invoke-virtual {v1, v13, v12}, Lb/b/q/j0;->f(II)I

    move-result v13

    if-nez v13, :cond_15

    iget-object v12, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    const/4 v13, 0x0

    const/4 v8, 0x0

    invoke-virtual {v12, v8, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_8

    :cond_14
    move-object/from16 v19, v12

    :cond_15
    :goto_8
    invoke-virtual {v0, v11, v1}, Lb/b/q/n;->m(Landroid/content/Context;Lb/b/q/j0;)V

    .line 11
    iget-object v1, v1, Lb/b/q/j0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v7, :cond_16

    .line 12
    iget-object v1, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_16
    if-eqz v14, :cond_17

    iget-object v1, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_17
    if-eqz v15, :cond_18

    iget-object v1, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_18
    if-nez v2, :cond_19

    if-eqz v6, :cond_19

    .line 13
    iget-object v1, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 14
    :cond_19
    iget-object v1, v0, Lb/b/q/n;->l:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1b

    iget v2, v0, Lb/b/q/n;->k:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1a

    iget-object v2, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    iget v5, v0, Lb/b/q/n;->j:I

    invoke-virtual {v2, v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_9

    :cond_1a
    iget-object v2, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1b
    :goto_9
    if-eqz v4, :cond_1c

    iget-object v1, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_1c
    const/16 v8, 0x18

    if-eqz v3, :cond_1e

    if-lt v10, v8, :cond_1d

    iget-object v1, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    goto :goto_a

    :cond_1d
    const/16 v1, 0x15

    if-lt v10, v1, :cond_1e

    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    goto :goto_b

    :cond_1e
    :goto_a
    const/4 v2, 0x0

    :goto_b
    iget-object v12, v0, Lb/b/q/n;->i:Lb/b/q/p;

    .line 15
    iget-object v1, v12, Lb/b/q/p;->j:Landroid/content/Context;

    sget-object v3, Lb/b/j;->AppCompatTextView:[I

    move-object/from16 v13, p1

    invoke-virtual {v1, v13, v3, v9, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v14

    iget-object v1, v12, Lb/b/q/p;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object v5, v14

    move/from16 v6, p2

    const/4 v9, 0x0

    invoke-static/range {v1 .. v7}, Lb/i/m/r;->A(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    sget v1, Lb/b/j;->AppCompatTextView_autoSizeTextType:I

    invoke-virtual {v14, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v12, Lb/b/q/p;->a:I

    :cond_1f
    sget v1, Lb/b/j;->AppCompatTextView_autoSizeStepGranularity:I

    invoke-virtual {v14, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_20

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_c

    :cond_20
    const/high16 v1, -0x40800000    # -1.0f

    :goto_c
    sget v2, Lb/b/j;->AppCompatTextView_autoSizeMinTextSize:I

    invoke-virtual {v14, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v14, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_d

    :cond_21
    const/high16 v2, -0x40800000    # -1.0f

    :goto_d
    sget v4, Lb/b/j;->AppCompatTextView_autoSizeMaxTextSize:I

    invoke-virtual {v14, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v14, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto :goto_e

    :cond_22
    const/high16 v4, -0x40800000    # -1.0f

    :goto_e
    sget v5, Lb/b/j;->AppCompatTextView_autoSizePresetSizes:I

    invoke-virtual {v14, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v6, 0x0

    invoke-virtual {v14, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-lez v5, :cond_25

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    new-array v7, v6, [I

    if-lez v6, :cond_24

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v6, :cond_23

    const/4 v9, -0x1

    invoke-virtual {v5, v15, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    aput v20, v7, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_f

    :cond_23
    invoke-virtual {v12, v7}, Lb/b/q/p;->b([I)[I

    move-result-object v6

    iput-object v6, v12, Lb/b/q/p;->f:[I

    invoke-virtual {v12}, Lb/b/q/p;->h()Z

    .line 17
    :cond_24
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_25
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v12}, Lb/b/q/p;->i()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_2a

    iget v5, v12, Lb/b/q/p;->a:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2b

    iget-boolean v5, v12, Lb/b/q/p;->g:Z

    if-nez v5, :cond_29

    iget-object v5, v12, Lb/b/q/p;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    cmpl-float v7, v2, v3

    if-nez v7, :cond_26

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v6, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    :cond_26
    cmpl-float v7, v4, v3

    if-nez v7, :cond_27

    const/high16 v4, 0x42e00000    # 112.0f

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    :cond_27
    cmpl-float v5, v1, v3

    if-nez v5, :cond_28

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_28
    invoke-virtual {v12, v2, v4, v1}, Lb/b/q/p;->j(FFF)V

    :cond_29
    invoke-virtual {v12}, Lb/b/q/p;->g()Z

    goto :goto_10

    :cond_2a
    const/4 v1, 0x0

    iput v1, v12, Lb/b/q/p;->a:I

    .line 18
    :cond_2b
    :goto_10
    sget-boolean v1, Lb/i/n/b;->a:Z

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lb/b/q/n;->i:Lb/b/q/p;

    .line 19
    iget v2, v1, Lb/b/q/p;->a:I

    if-eqz v2, :cond_2d

    .line 20
    iget-object v1, v1, Lb/b/q/p;->f:[I

    .line 21
    array-length v2, v1

    if-lez v2, :cond_2d

    iget-object v2, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2c

    iget-object v1, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    iget-object v2, v0, Lb/b/q/n;->i:Lb/b/q/p;

    .line 22
    iget v2, v2, Lb/b/q/p;->d:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 23
    iget-object v3, v0, Lb/b/q/n;->i:Lb/b/q/p;

    .line 24
    iget v3, v3, Lb/b/q/p;->e:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 25
    iget-object v4, v0, Lb/b/q/n;->i:Lb/b/q/p;

    .line 26
    iget v4, v4, Lb/b/q/p;->c:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    .line 27
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_11

    :cond_2c
    const/4 v5, 0x0

    iget-object v2, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_2d
    :goto_11
    sget-object v1, Lb/b/j;->AppCompatTextView:[I

    .line 28
    invoke-virtual {v11, v13, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 29
    sget v2, Lb/b/j;->AppCompatTextView_drawableLeftCompat:I

    const/4 v3, -0x1

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v3, :cond_2e

    move-object/from16 v4, v19

    .line 31
    invoke-virtual {v4, v11, v2}, Lb/b/q/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_12

    :cond_2e
    move-object/from16 v4, v19

    const/4 v7, 0x0

    :goto_12
    sget v2, Lb/b/j;->AppCompatTextView_drawableTopCompat:I

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v3, :cond_2f

    .line 33
    invoke-virtual {v4, v11, v2}, Lb/b/q/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_13

    :cond_2f
    const/4 v2, 0x0

    :goto_13
    sget v5, Lb/b/j;->AppCompatTextView_drawableRightCompat:I

    .line 34
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eq v5, v3, :cond_30

    .line 35
    invoke-virtual {v4, v11, v5}, Lb/b/q/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_14

    :cond_30
    const/4 v5, 0x0

    :goto_14
    sget v9, Lb/b/j;->AppCompatTextView_drawableBottomCompat:I

    .line 36
    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    if-eq v9, v3, :cond_31

    .line 37
    invoke-virtual {v4, v11, v9}, Lb/b/q/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_15

    :cond_31
    const/4 v9, 0x0

    :goto_15
    sget v12, Lb/b/j;->AppCompatTextView_drawableStartCompat:I

    .line 38
    invoke-virtual {v1, v12, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    if-eq v12, v3, :cond_32

    .line 39
    invoke-virtual {v4, v11, v12}, Lb/b/q/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_16

    :cond_32
    const/4 v12, 0x0

    :goto_16
    sget v13, Lb/b/j;->AppCompatTextView_drawableEndCompat:I

    .line 40
    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    if-eq v13, v3, :cond_33

    .line 41
    invoke-virtual {v4, v11, v13}, Lb/b/q/g;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_17

    :cond_33
    const/4 v3, 0x0

    :goto_17
    const/4 v4, 0x3

    if-nez v12, :cond_3e

    if-eqz v3, :cond_34

    goto :goto_1f

    :cond_34
    if-nez v7, :cond_35

    if-nez v2, :cond_35

    if-nez v5, :cond_35

    if-eqz v9, :cond_43

    .line 42
    :cond_35
    iget-object v3, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v12, 0x0

    aget-object v13, v3, v12

    if-nez v13, :cond_3b

    aget-object v13, v3, v6

    if-eqz v13, :cond_36

    goto :goto_1c

    :cond_36
    iget-object v3, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v13, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    if-eqz v7, :cond_37

    goto :goto_18

    :cond_37
    aget-object v7, v3, v12

    :goto_18
    if-eqz v2, :cond_38

    goto :goto_19

    :cond_38
    const/4 v2, 0x1

    aget-object v2, v3, v2

    :goto_19
    if-eqz v5, :cond_39

    goto :goto_1a

    :cond_39
    aget-object v5, v3, v6

    :goto_1a
    if-eqz v9, :cond_3a

    goto :goto_1b

    :cond_3a
    aget-object v9, v3, v4

    :goto_1b
    invoke-virtual {v13, v7, v2, v5, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    :cond_3b
    :goto_1c
    iget-object v5, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v12, v3, v7

    if-eqz v2, :cond_3c

    goto :goto_1d

    :cond_3c
    const/4 v2, 0x1

    aget-object v2, v3, v2

    :goto_1d
    aget-object v6, v3, v6

    if-eqz v9, :cond_3d

    goto :goto_1e

    :cond_3d
    aget-object v9, v3, v4

    :goto_1e
    invoke-virtual {v5, v12, v2, v6, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_24

    :cond_3e
    :goto_1f
    iget-object v5, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v7, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    if-eqz v12, :cond_3f

    goto :goto_20

    :cond_3f
    const/4 v12, 0x0

    aget-object v13, v5, v12

    move-object v12, v13

    :goto_20
    if-eqz v2, :cond_40

    goto :goto_21

    :cond_40
    const/4 v2, 0x1

    aget-object v2, v5, v2

    :goto_21
    if-eqz v3, :cond_41

    goto :goto_22

    :cond_41
    aget-object v3, v5, v6

    :goto_22
    if-eqz v9, :cond_42

    goto :goto_23

    :cond_42
    aget-object v9, v5, v4

    :goto_23
    invoke-virtual {v7, v12, v2, v3, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 43
    :cond_43
    :goto_24
    sget v2, Lb/b/j;->AppCompatTextView_drawableTint:I

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_44

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_44

    invoke-static {v11, v3}, Lb/b/l/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_44

    goto :goto_25

    :cond_44
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 46
    :goto_25
    iget-object v2, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    .line 47
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v10, v8, :cond_45

    .line 48
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_26

    :cond_45
    instance-of v4, v2, Lb/i/n/g;

    if-eqz v4, :cond_46

    check-cast v2, Lb/i/n/g;

    invoke-interface {v2, v3}, Lb/i/n/g;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    :cond_46
    :goto_26
    sget v2, Lb/b/j;->AppCompatTextView_drawableTintMode:I

    .line 50
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, -0x1

    .line 51
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    .line 52
    invoke-static {v2, v3}, Lb/b/q/s;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iget-object v3, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    .line 53
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v10, v8, :cond_47

    .line 54
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_27

    :cond_47
    instance-of v4, v3, Lb/i/n/g;

    if-eqz v4, :cond_48

    check-cast v3, Lb/i/n/g;

    invoke-interface {v3, v2}, Lb/i/n/g;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 55
    :cond_48
    :goto_27
    sget v2, Lb/b/j;->AppCompatTextView_firstBaselineToTopHeight:I

    const/4 v3, -0x1

    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 57
    sget v4, Lb/b/j;->AppCompatTextView_lastBaselineToBottomHeight:I

    .line 58
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 59
    sget v5, Lb/b/j;->AppCompatTextView_lineHeight:I

    .line 60
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 61
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v2, v3, :cond_49

    .line 62
    iget-object v1, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-static {v1, v2}, La/a/a/a/a;->c0(Landroid/widget/TextView;I)V

    :cond_49
    if-eq v4, v3, :cond_4a

    iget-object v1, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-static {v1, v4}, La/a/a/a/a;->f0(Landroid/widget/TextView;I)V

    :cond_4a
    if-eq v5, v3, :cond_4b

    iget-object v1, v0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-static {v1, v5}, La/a/a/a/a;->h0(Landroid/widget/TextView;I)V

    :cond_4b
    return-void
.end method

.method public f(Landroid/content/Context;I)V
    .locals 4

    sget-object v0, Lb/b/j;->TextAppearance:[I

    .line 1
    new-instance v1, Lb/b/q/j0;

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lb/b/q/j0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 2
    sget p2, Lb/b/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, p2}, Lb/b/q/j0;->p(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2, v2}, Lb/b/q/j0;->a(IZ)Z

    move-result p2

    .line 3
    iget-object v0, p0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 4
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p2, v0, :cond_3

    sget v0, Lb/b/j;->TextAppearance_android_textColor:I

    invoke-virtual {v1, v0}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    sget v0, Lb/b/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v1, v0}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v0}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    sget v0, Lb/b/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v1, v0}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    sget v0, Lb/b/j;->TextAppearance_android_textSize:I

    invoke-virtual {v1, v0}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Lb/b/q/j0;->f(II)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lb/b/q/n;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    invoke-virtual {p0, p1, v1}, Lb/b/q/n;->m(Landroid/content/Context;Lb/b/q/j0;)V

    const/16 p1, 0x1a

    if-lt p2, p1, :cond_5

    sget p1, Lb/b/j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v1, p1}, Lb/b/q/j0;->p(I)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v1, p1}, Lb/b/q/j0;->n(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 5
    :cond_5
    iget-object p1, v1, Lb/b/q/j0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    iget-object p1, p0, Lb/b/q/n;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lb/b/q/n;->a:Landroid/widget/TextView;

    iget v0, p0, Lb/b/q/n;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_6
    return-void
.end method

.method public g(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_e

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x0

    if-lt v0, v1, :cond_0

    .line 1
    invoke-virtual {p3, p1, p2}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingSubText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v0, v1, :cond_1

    .line 3
    invoke-virtual {p3, p1, p2}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingSubText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_7

    .line 4
    :cond_1
    iget v0, p3, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v1, p3, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    if-le v0, v1, :cond_2

    add-int/lit8 v2, v1, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, 0x0

    :goto_0
    if-le v0, v1, :cond_3

    sub-int/2addr v0, p2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    if-ltz v2, :cond_d

    if-le v0, v1, :cond_4

    goto/16 :goto_6

    :cond_4
    iget v4, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v4, v4, 0xfff

    const/16 v5, 0x81

    const/4 v6, 0x1

    if-eq v4, v5, :cond_6

    const/16 v5, 0xe1

    if-eq v4, v5, :cond_6

    const/16 v5, 0x12

    if-ne v4, v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_7

    goto/16 :goto_6

    :cond_7
    const/16 v3, 0x800

    if-gt v1, v3, :cond_8

    invoke-static {p3, p1, v2, v0}, Lb/i/m/e0/a;->b(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto/16 :goto_7

    :cond_8
    sub-int v1, v0, v2

    const/16 v3, 0x400

    if-le v1, v3, :cond_9

    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    move v3, v1

    .line 5
    :goto_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v0

    rsub-int v5, v3, 0x800

    const-wide v7, 0x3fe999999999999aL    # 0.8

    int-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v7

    double-to-int v7, v9

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v7, v5, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {p1, v2, p2}, Lb/i/m/e0/a;->a(Ljava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, -0x1

    :cond_a
    add-int v7, v0, v4

    sub-int/2addr v7, v6

    invoke-static {p1, v7, v6}, Lb/i/m/e0/a;->a(Ljava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_b

    add-int/lit8 v4, v4, -0x1

    :cond_b
    add-int v7, v5, v3

    add-int/2addr v7, v4

    if-eq v3, v1, :cond_c

    add-int v1, v2, v5

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    add-int/2addr v4, v0

    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v1, v0, p2

    aput-object p1, v0, v6

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_5

    :cond_c
    add-int/2addr v7, v2

    invoke-interface {p1, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_5
    add-int/2addr v5, p2

    add-int/2addr v3, v5

    invoke-static {p3, p1, v5, v3}, Lb/i/m/e0/a;->b(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    goto :goto_7

    .line 6
    :cond_d
    :goto_6
    invoke-static {p3, v3, p2, p2}, Lb/i/m/e0/a;->b(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    :cond_e
    :goto_7
    return-void
.end method

.method public h(IIII)V
    .locals 2

    iget-object v0, p0, Lb/b/q/n;->i:Lb/b/q/p;

    .line 1
    invoke-virtual {v0}, Lb/b/q/p;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lb/b/q/p;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    int-to-float p1, p1

    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    int-to-float p2, p2

    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    int-to-float p3, p3

    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lb/b/q/p;->j(FFF)V

    invoke-virtual {v0}, Lb/b/q/p;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lb/b/q/p;->a()V

    :cond_0
    return-void
.end method

.method public i([II)V
    .locals 6

    iget-object v0, p0, Lb/b/q/n;->i:Lb/b/q/p;

    .line 1
    invoke-virtual {v0}, Lb/b/q/p;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    new-array v3, v1, [I

    if-nez p2, :cond_0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lb/b/q/p;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget v5, p1, v2

    int-to-float v5, v5

    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Lb/b/q/p;->b([I)[I

    move-result-object p2

    iput-object p2, v0, Lb/b/q/p;->f:[I

    invoke-virtual {v0}, Lb/b/q/p;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "None of the preset sizes is valid: "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    iput-boolean v2, v0, Lb/b/q/p;->g:Z

    :goto_2
    invoke-virtual {v0}, Lb/b/q/p;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lb/b/q/p;->a()V

    :cond_4
    return-void
.end method

.method public j(I)V
    .locals 4

    iget-object v0, p0, Lb/b/q/n;->i:Lb/b/q/p;

    .line 1
    invoke-virtual {v0}, Lb/b/q/p;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Lb/b/q/p;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x2

    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1, v2}, Lb/b/q/p;->j(FFF)V

    invoke-virtual {v0}, Lb/b/q/p;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lb/b/q/p;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown auto-size text type: "

    invoke-static {v1, p1}, Lc/a/a/a/a;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p1, 0x0

    .line 2
    iput p1, v0, Lb/b/q/p;->a:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lb/b/q/p;->d:F

    iput v1, v0, Lb/b/q/p;->e:F

    iput v1, v0, Lb/b/q/p;->c:F

    new-array v1, p1, [I

    iput-object v1, v0, Lb/b/q/p;->f:[I

    iput-boolean p1, v0, Lb/b/q/p;->b:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public k(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb/b/q/n;->h:Lb/b/q/h0;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/q/h0;

    invoke-direct {v0}, Lb/b/q/h0;-><init>()V

    iput-object v0, p0, Lb/b/q/n;->h:Lb/b/q/h0;

    :cond_0
    iget-object v0, p0, Lb/b/q/n;->h:Lb/b/q/h0;

    iput-object p1, v0, Lb/b/q/h0;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lb/b/q/h0;->d:Z

    .line 1
    iput-object v0, p0, Lb/b/q/n;->b:Lb/b/q/h0;

    iput-object v0, p0, Lb/b/q/n;->c:Lb/b/q/h0;

    iput-object v0, p0, Lb/b/q/n;->d:Lb/b/q/h0;

    iput-object v0, p0, Lb/b/q/n;->e:Lb/b/q/h0;

    iput-object v0, p0, Lb/b/q/n;->f:Lb/b/q/h0;

    iput-object v0, p0, Lb/b/q/n;->g:Lb/b/q/h0;

    return-void
.end method

.method public l(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lb/b/q/n;->h:Lb/b/q/h0;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/q/h0;

    invoke-direct {v0}, Lb/b/q/h0;-><init>()V

    iput-object v0, p0, Lb/b/q/n;->h:Lb/b/q/h0;

    :cond_0
    iget-object v0, p0, Lb/b/q/n;->h:Lb/b/q/h0;

    iput-object p1, v0, Lb/b/q/h0;->b:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lb/b/q/h0;->c:Z

    .line 1
    iput-object v0, p0, Lb/b/q/n;->b:Lb/b/q/h0;

    iput-object v0, p0, Lb/b/q/n;->c:Lb/b/q/h0;

    iput-object v0, p0, Lb/b/q/n;->d:Lb/b/q/h0;

    iput-object v0, p0, Lb/b/q/n;->e:Lb/b/q/h0;

    iput-object v0, p0, Lb/b/q/n;->f:Lb/b/q/h0;

    iput-object v0, p0, Lb/b/q/n;->g:Lb/b/q/h0;

    return-void
.end method

.method public final m(Landroid/content/Context;Lb/b/q/j0;)V
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lb/b/j;->TextAppearance_android_textStyle:I

    iget v2, p0, Lb/b/q/n;->j:I

    invoke-virtual {p2, v1, v2}, Lb/b/q/j0;->j(II)I

    move-result v1

    iput v1, p0, Lb/b/q/n;->j:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-lt v0, v2, :cond_0

    sget v5, Lb/b/j;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v5, v4}, Lb/b/q/j0;->j(II)I

    move-result v5

    iput v5, p0, Lb/b/q/n;->k:I

    if-eq v5, v4, :cond_0

    iget v5, p0, Lb/b/q/n;->j:I

    and-int/2addr v5, v3

    or-int/2addr v5, v1

    iput v5, p0, Lb/b/q/n;->j:I

    :cond_0
    sget v5, Lb/b/j;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v5}, Lb/b/q/j0;->p(I)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_6

    sget v6, Lb/b/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v6}, Lb/b/q/j0;->p(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    sget p1, Lb/b/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Lb/b/q/j0;->p(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lb/b/q/n;->m:Z

    invoke-virtual {p2, p1, v7}, Lb/b/q/j0;->j(II)I

    move-result p1

    if-eq p1, v7, :cond_4

    if-eq p1, v3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    iput-object p1, p0, Lb/b/q/n;->l:Landroid/graphics/Typeface;

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const/4 v6, 0x0

    iput-object v6, p0, Lb/b/q/n;->l:Landroid/graphics/Typeface;

    sget v6, Lb/b/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v6}, Lb/b/q/j0;->p(I)Z

    move-result v8

    if-eqz v8, :cond_7

    move v5, v6

    :cond_7
    iget v6, p0, Lb/b/q/n;->k:I

    iget v8, p0, Lb/b/q/n;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Lb/b/q/n;->a:Landroid/widget/TextView;

    invoke-direct {p1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v9, Lb/b/q/n$a;

    invoke-direct {v9, p0, v6, v8, p1}, Lb/b/q/n$a;-><init>(Lb/b/q/n;IILjava/lang/ref/WeakReference;)V

    :try_start_0
    iget p1, p0, Lb/b/q/n;->j:I

    invoke-virtual {p2, v5, p1, v9}, Lb/b/q/j0;->i(IILb/i/f/c/g;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    if-lt v0, v2, :cond_9

    iget v6, p0, Lb/b/q/n;->k:I

    if-eq v6, v4, :cond_9

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v6, p0, Lb/b/q/n;->k:I

    iget v8, p0, Lb/b/q/n;->j:I

    and-int/2addr v8, v3

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    :goto_3
    invoke-static {p1, v6, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_9
    iput-object p1, p0, Lb/b/q/n;->l:Landroid/graphics/Typeface;

    :cond_a
    iget-object p1, p0, Lb/b/q/n;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, p0, Lb/b/q/n;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    :cond_c
    :goto_5
    iget-object p1, p0, Lb/b/q/n;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    invoke-virtual {p2, v5}, Lb/b/q/j0;->n(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    if-lt v0, v2, :cond_e

    iget p2, p0, Lb/b/q/n;->k:I

    if-eq p2, v4, :cond_e

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Lb/b/q/n;->k:I

    iget v0, p0, Lb/b/q/n;->j:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    invoke-static {p1, p2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_6

    :cond_e
    iget p2, p0, Lb/b/q/n;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_6
    iput-object p1, p0, Lb/b/q/n;->l:Landroid/graphics/Typeface;

    :cond_f
    return-void
.end method
