.class public Lcom/google/android/material/card/MaterialCardView;
.super Landroidx/cardview/widget/CardView;
.source ""

# interfaces
.implements Landroid/widget/Checkable;
.implements Lc/d/a/c/j0/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/card/MaterialCardView$a;
    }
.end annotation


# static fields
.field public static final q:[I

.field public static final r:[I

.field public static final s:[I

.field public static final t:I


# instance fields
.field public final l:Lc/d/a/c/u/a;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Lcom/google/android/material/card/MaterialCardView$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x101009f

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/card/MaterialCardView;->q:[I

    new-array v1, v0, [I

    const v2, 0x10100a0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/card/MaterialCardView;->r:[I

    new-array v0, v0, [I

    sget v1, Lc/d/a/c/b;->state_dragged:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->s:[I

    sget v0, Lc/d/a/c/k;->Widget_MaterialComponents_CardView:I

    sput v0, Lcom/google/android/material/card/MaterialCardView;->t:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lc/d/a/c/b;->materialCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    sget v6, Lcom/google/android/material/card/MaterialCardView;->t:I

    invoke-static {p1, p2, p3, v6}, Lc/d/a/c/p0/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->n:Z

    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->m:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lc/d/a/c/l;->MaterialCardView:[I

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    move v4, v6

    invoke-static/range {v0 .. v5}, Lc/d/a/c/c0/l;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Lc/d/a/c/u/a;

    invoke-direct {v1, p0, p2, p3, v6}, Lc/d/a/c/u/a;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 1
    iget-object p3, v1, Lc/d/a/c/u/a;->c:Lc/d/a/c/j0/h;

    invoke-virtual {p3, p2}, Lc/d/a/c/j0/h;->q(Landroid/content/res/ColorStateList;)V

    .line 2
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result p2

    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result p3

    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v2

    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v3

    .line 3
    iget-object v4, v1, Lc/d/a/c/u/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v4, p2, p3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1}, Lc/d/a/c/u/a;->l()V

    .line 4
    iget-object p2, v1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lc/d/a/c/l;->MaterialCardView_strokeColor:I

    invoke-static {p2, v0, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lc/d/a/c/u/a;->m:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lc/d/a/c/u/a;->m:Landroid/content/res/ColorStateList;

    :cond_0
    sget p2, Lc/d/a/c/l;->MaterialCardView_strokeWidth:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, v1, Lc/d/a/c/u/a;->g:I

    sget p2, Lc/d/a/c/l;->MaterialCardView_android_checkable:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v1, Lc/d/a/c/u/a;->s:Z

    iget-object p3, v1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    iget-object p2, v1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lc/d/a/c/l;->MaterialCardView_checkedIconTint:I

    invoke-static {p2, v0, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lc/d/a/c/u/a;->k:Landroid/content/res/ColorStateList;

    iget-object p2, v1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lc/d/a/c/l;->MaterialCardView_checkedIcon:I

    invoke-static {p2, v0, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Z(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Lc/d/a/c/u/a;->h(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lc/d/a/c/l;->MaterialCardView_checkedIconSize:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 5
    iput p2, v1, Lc/d/a/c/u/a;->f:I

    .line 6
    sget p2, Lc/d/a/c/l;->MaterialCardView_checkedIconMargin:I

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 7
    iput p2, v1, Lc/d/a/c/u/a;->e:I

    .line 8
    iget-object p2, v1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lc/d/a/c/l;->MaterialCardView_rippleColor:I

    invoke-static {p2, v0, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lc/d/a/c/u/a;->j:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_1

    iget-object p2, v1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    sget p3, Lc/d/a/c/b;->colorControlHighlight:I

    invoke-static {p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->T(Landroid/view/View;I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, v1, Lc/d/a/c/u/a;->j:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object p2, v1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lc/d/a/c/l;->MaterialCardView_cardForegroundColor:I

    invoke-static {p2, v0, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 9
    iget-object p3, v1, Lc/d/a/c/u/a;->d:Lc/d/a/c/j0/h;

    if-nez p2, :cond_2

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :cond_2
    invoke-virtual {p3, p2}, Lc/d/a/c/j0/h;->q(Landroid/content/res/ColorStateList;)V

    .line 10
    invoke-virtual {v1}, Lc/d/a/c/u/a;->n()V

    .line 11
    iget-object p1, v1, Lc/d/a/c/u/a;->c:Lc/d/a/c/j0/h;

    iget-object p2, v1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p2}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    move-result p2

    invoke-virtual {p1, p2}, Lc/d/a/c/j0/h;->p(F)V

    .line 12
    invoke-virtual {v1}, Lc/d/a/c/u/a;->o()V

    iget-object p1, v1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    iget-object p2, v1, Lc/d/a/c/u/a;->c:Lc/d/a/c/j0/h;

    invoke-virtual {v1, p2}, Lc/d/a/c/u/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, v1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lc/d/a/c/u/a;->f()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, v1, Lc/d/a/c/u/a;->d:Lc/d/a/c/j0/h;

    :goto_0
    iput-object p1, v1, Lc/d/a/c/u/a;->h:Landroid/graphics/drawable/Drawable;

    iget-object p2, v1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1, p1}, Lc/d/a/c/u/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v1, v1, Lc/d/a/c/u/a;->c:Lc/d/a/c/j0/h;

    .line 2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->c:Lc/d/a/c/j0/h;

    .line 2
    iget-object v0, v0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v0, v0, Lc/d/a/c/j0/h$b;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCardForegroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->d:Lc/d/a/c/j0/h;

    .line 2
    iget-object v0, v0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object v0, v0, Lc/d/a/c/j0/h$b;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCardViewRadius()F
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result v0

    return v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckedIconMargin()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget v0, v0, Lc/d/a/c/u/a;->e:I

    return v0
.end method

.method public getCheckedIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget v0, v0, Lc/d/a/c/u/a;->f:I

    return v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->b:Landroid/graphics/Rect;

    .line 2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->b:Landroid/graphics/Rect;

    .line 2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->b:Landroid/graphics/Rect;

    .line 2
    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->b:Landroid/graphics/Rect;

    .line 2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->c:Lc/d/a/c/j0/h;

    .line 2
    iget-object v0, v0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget v0, v0, Lc/d/a/c/j0/h$b;->k:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->c:Lc/d/a/c/j0/h;

    invoke-virtual {v0}, Lc/d/a/c/j0/h;->l()F

    move-result v0

    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getShapeAppearanceModel()Lc/d/a/c/j0/l;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->l:Lc/d/a/c/j0/l;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->m:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeWidth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget v0, v0, Lc/d/a/c/u/a;->g:I

    return v0
.end method

.method public final h()V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v1, v0, Lc/d/a/c/u/a;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lc/d/a/c/u/a;->n:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, v0, Lc/d/a/c/u/a;->n:Landroid/graphics/drawable/Drawable;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v0, v0, Lc/d/a/c/u/a;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->n:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->c:Lc/d/a/c/j0/h;

    .line 2
    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->J0(Landroid/view/View;Lc/d/a/c/j0/h;)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->q:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->r:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    .line 1
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->o:Z

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->s:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.cardview.widget.CardView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.cardview.widget.CardView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 10

    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 1
    iget-object v1, p1, Lc/d/a/c/u/a;->o:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_4

    iget v1, p1, Lc/d/a/c/u/a;->e:I

    sub-int/2addr p2, v1

    iget v2, p1, Lc/d/a/c/u/a;->f:I

    sub-int/2addr p2, v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lc/d/a/c/u/a;->d()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lc/d/a/c/u/a;->c()F

    move-result v1

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr p2, v1

    :cond_2
    move v9, v0

    iget v0, p1, Lc/d/a/c/u/a;->e:I

    iget-object v1, p1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 2
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_3

    move v8, p2

    move v6, v0

    goto :goto_1

    :cond_3
    move v6, p2

    move v8, v0

    .line 3
    :goto_1
    iget-object v4, p1, Lc/d/a/c/u/a;->o:Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x2

    iget v7, p1, Lc/d/a/c/u/a;->e:I

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_4
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-boolean v0, v0, Lc/d/a/c/u/a;->r:Z

    if-nez v0, :cond_0

    const-string v0, "MaterialCardView"

    const-string v1, "Setting a custom background is not supported."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lc/d/a/c/u/a;->r:Z

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->c:Lc/d/a/c/j0/h;

    invoke-virtual {v0, p1}, Lc/d/a/c/j0/h;->q(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 2
    iget-object v0, v0, Lc/d/a/c/u/a;->c:Lc/d/a/c/j0/h;

    invoke-virtual {v0, p1}, Lc/d/a/c/j0/h;->q(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, p1, Lc/d/a/c/u/a;->c:Lc/d/a/c/j0/h;

    iget-object p1, p1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    move-result p1

    invoke-virtual {v0, p1}, Lc/d/a/c/j0/h;->p(F)V

    return-void
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/u/a;->d:Lc/d/a/c/j0/h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lc/d/a/c/j0/h;->q(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iput-boolean p1, v0, Lc/d/a/c/u/a;->s:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->n:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->toggle()V

    :cond_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-virtual {v0, p1}, Lc/d/a/c/u/a;->h(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iput p1, v0, Lc/d/a/c/u/a;->e:I

    return-void
.end method

.method public setCheckedIconMarginResource(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1
    iput p1, v0, Lc/d/a/c/u/a;->e:I

    :cond_0
    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/d/a/c/u/a;->h(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iput p1, v0, Lc/d/a/c/u/a;->f:I

    return-void
.end method

.method public setCheckedIconSizeResource(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1
    iput p1, v0, Lc/d/a/c/u/a;->f:I

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iput-object p1, v0, Lc/d/a/c/u/a;->k:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lc/d/a/c/u/a;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, La/a/a/a/a;->m0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p1, Lc/d/a/c/u/a;->h:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc/d/a/c/u/a;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lc/d/a/c/u/a;->d:Lc/d/a/c/j0/h;

    :goto_0
    iput-object v1, p1, Lc/d/a/c/u/a;->h:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    iget-object v0, p1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lc/d/a/c/u/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p1, v1}, Lc/d/a/c/u/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setDragged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->o:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->o:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->h()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-virtual {p1}, Lc/d/a/c/u/a;->m()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/card/MaterialCardView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->p:Lcom/google/android/material/card/MaterialCardView$a;

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-virtual {p1}, Lc/d/a/c/u/a;->m()V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-virtual {p1}, Lc/d/a/c/u/a;->l()V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v1, v0, Lc/d/a/c/u/a;->c:Lc/d/a/c/j0/h;

    invoke-virtual {v1, p1}, Lc/d/a/c/j0/h;->r(F)V

    iget-object v1, v0, Lc/d/a/c/u/a;->d:Lc/d/a/c/j0/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lc/d/a/c/j0/h;->r(F)V

    :cond_0
    iget-object v0, v0, Lc/d/a/c/u/a;->q:Lc/d/a/c/j0/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lc/d/a/c/j0/h;->r(F)V

    :cond_1
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget-object v1, v0, Lc/d/a/c/u/a;->l:Lc/d/a/c/j0/l;

    invoke-virtual {v1, p1}, Lc/d/a/c/j0/l;->e(F)Lc/d/a/c/j0/l;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/d/a/c/u/a;->i(Lc/d/a/c/j0/l;)V

    iget-object p1, v0, Lc/d/a/c/u/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {v0}, Lc/d/a/c/u/a;->k()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lc/d/a/c/u/a;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lc/d/a/c/u/a;->l()V

    :cond_1
    invoke-virtual {v0}, Lc/d/a/c/u/a;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lc/d/a/c/u/a;->m()V

    :cond_2
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iput-object p1, v0, Lc/d/a/c/u/a;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Lc/d/a/c/u/a;->n()V

    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lb/b/l/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1
    iput-object p1, v0, Lc/d/a/c/u/a;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Lc/d/a/c/u/a;->n()V

    return-void
.end method

.method public setShapeAppearanceModel(Lc/d/a/c/j0/l;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/card/MaterialCardView;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/d/a/c/j0/l;->d(Landroid/graphics/RectF;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-virtual {v0, p1}, Lc/d/a/c/u/a;->i(Lc/d/a/c/j0/l;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1
    iget-object v1, v0, Lc/d/a/c/u/a;->m:Landroid/content/res/ColorStateList;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lc/d/a/c/u/a;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Lc/d/a/c/u/a;->o()V

    :goto_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 2
    iget-object v1, v0, Lc/d/a/c/u/a;->m:Landroid/content/res/ColorStateList;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lc/d/a/c/u/a;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Lc/d/a/c/u/a;->o()V

    :goto_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    .line 1
    iget v1, v0, Lc/d/a/c/u/a;->g:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Lc/d/a/c/u/a;->g:I

    invoke-virtual {v0}, Lc/d/a/c/u/a;->o()V

    :goto_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-virtual {p1}, Lc/d/a/c/u/a;->m()V

    iget-object p1, p0, Lcom/google/android/material/card/MaterialCardView;->l:Lc/d/a/c/u/a;

    invoke-virtual {p1}, Lc/d/a/c/u/a;->l()V

    return-void
.end method

.method public toggle()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->n:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->n:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->h()V

    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->p:Lcom/google/android/material/card/MaterialCardView$a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/card/MaterialCardView;->n:Z

    invoke-interface {v0, p0, v1}, Lcom/google/android/material/card/MaterialCardView$a;->a(Lcom/google/android/material/card/MaterialCardView;Z)V

    :cond_0
    return-void
.end method
