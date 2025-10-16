.class public abstract Lc/d/a/c/d0/a;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lb/b/p/i/n$a;


# static fields
.field public static final s:[I


# instance fields
.field public final c:I

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public h:Z

.field public i:Landroid/widget/ImageView;

.field public final j:Landroid/view/ViewGroup;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;

.field public m:I

.field public n:Lb/b/p/i/i;

.field public o:Landroid/content/res/ColorStateList;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Lc/d/a/c/o/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lc/d/a/c/d0/a;->s:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lc/d/a/c/d0/a;->m:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lc/d/a/c/d0/a;->getItemLayoutResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lc/d/a/c/f;->navigation_bar_item_icon_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    sget p1, Lc/d/a/c/f;->navigation_bar_item_labels_group:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/d/a/c/d0/a;->j:Landroid/view/ViewGroup;

    sget v0, Lc/d/a/c/f;->navigation_bar_item_small_label_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    sget v2, Lc/d/a/c/f;->navigation_bar_item_large_label_view:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc/d/a/c/d0/a;->getItemBackgroundResId()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lc/d/a/c/d0/a;->getItemDefaultMarginResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lc/d/a/c/d0/a;->c:I

    sget v3, Lc/d/a/c/f;->mtrl_view_tag_bottom_padding:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 1
    sget-object p1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/d/a/c/d0/a;->a(FF)V

    iget-object p1, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance v0, Lc/d/a/c/d0/a$a;

    invoke-direct {v0, p0}, Lc/d/a/c/d0/a$a;-><init>(Lc/d/a/c/d0/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static e(Landroid/view/View;FFI)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static f(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private getItemVisiblePosition()I
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lc/d/a/c/d0/a;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private getSuggestedIconHeight()I
    .locals 3

    iget-object v0, p0, Lc/d/a/c/d0/a;->r:Lc/d/a/c/o/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2
.end method

.method private getSuggestedIconWidth()I
    .locals 4

    iget-object v0, p0, Lc/d/a/c/d0/a;->r:Lc/d/a/c/o/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget-object v1, p0, Lc/d/a/c/d0/a;->r:Lc/d/a/c/o/a;

    .line 1
    iget-object v1, v1, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 2
    iget v1, v1, Lc/d/a/c/o/a$a;->m:I

    sub-int/2addr v0, v1

    .line 3
    :goto_0
    iget-object v1, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    return v0
.end method


# virtual methods
.method public final a(FF)V
    .locals 2

    sub-float v0, p1, p2

    iput v0, p0, Lc/d/a/c/d0/a;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p2, v0

    div-float/2addr v1, p1

    iput v1, p0, Lc/d/a/c/d0/a;->e:F

    mul-float p1, p1, v0

    div-float/2addr p1, p2

    iput p1, p0, Lc/d/a/c/d0/a;->f:F

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/a;->r:Lc/d/a/c/o/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lb/b/p/i/i;I)V
    .locals 2

    iput-object p1, p0, Lc/d/a/c/d0/a;->n:Lb/b/p/i/i;

    invoke-virtual {p1}, Lb/b/p/i/i;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lc/d/a/c/d0/a;->setCheckable(Z)V

    invoke-virtual {p1}, Lb/b/p/i/i;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lc/d/a/c/d0/a;->setChecked(Z)V

    invoke-virtual {p1}, Lb/b/p/i/i;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lc/d/a/c/d0/a;->setEnabled(Z)V

    invoke-virtual {p1}, Lb/b/p/i/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lc/d/a/c/d0/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1
    iget-object p2, p1, Lb/b/p/i/i;->e:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0, p2}, Lc/d/a/c/d0/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    iget p2, p1, Lb/b/p/i/i;->a:I

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 5
    iget-object p2, p1, Lb/b/p/i/i;->q:Ljava/lang/CharSequence;

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    iget-object p2, p1, Lb/b/p/i/i;->q:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    :cond_0
    iget-object p2, p1, Lb/b/p/i/i;->r:Ljava/lang/CharSequence;

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 11
    iget-object p2, p1, Lb/b/p/i/i;->r:Ljava/lang/CharSequence;

    goto :goto_0

    .line 12
    :cond_1
    iget-object p2, p1, Lb/b/p/i/i;->e:Ljava/lang/CharSequence;

    .line 13
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const/16 v1, 0x17

    if-le v0, v1, :cond_3

    :cond_2
    invoke-static {p0, p2}, La/a/a/a/a;->o0(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p1}, Lb/b/p/i/i;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public getBadge()Lc/d/a/c/o/a;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/a;->r:Lc/d/a/c/o/a;

    return-object v0
.end method

.method public getItemBackgroundResId()I
    .locals 1

    sget v0, Lc/d/a/c/e;->mtrl_navigation_bar_item_background:I

    return v0
.end method

.method public getItemData()Lb/b/p/i/i;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/a;->n:Lb/b/p/i/i;

    return-object v0
.end method

.method public getItemDefaultMarginResId()I
    .locals 1

    sget v0, Lc/d/a/c/d;->mtrl_navigation_bar_item_default_margin:I

    return v0
.end method

.method public abstract getItemLayoutResId()I
.end method

.method public getItemPosition()I
    .locals 1

    iget v0, p0, Lc/d/a/c/d0/a;->m:I

    return v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 3

    iget-object v0, p0, Lc/d/a/c/d0/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lc/d/a/c/d0/a;->getSuggestedIconHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lc/d/a/c/d0/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    return v2
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    iget-object v0, p0, Lc/d/a/c/d0/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lc/d/a/c/d0/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    invoke-direct {p0}, Lc/d/a/c/d0/a;->getSuggestedIconWidth()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lc/d/a/c/d0/a;->n:Lb/b/p/i/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/p/i/i;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/d0/a;->n:Lb/b/p/i/i;

    invoke-virtual {v0}, Lb/b/p/i/i;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc/d/a/c/d0/a;->s:[I

    invoke-static {p1, v0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->r:Lc/d/a/c/o/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/c/d0/a;->n:Lb/b/p/i/i;

    .line 1
    iget-object v1, v0, Lb/b/p/i/i;->e:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, v0, Lb/b/p/i/i;->q:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/d0/a;->n:Lb/b/p/i/i;

    .line 4
    iget-object v1, v0, Lb/b/p/i/i;->q:Ljava/lang/CharSequence;

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/c/d0/a;->r:Lc/d/a/c/o/a;

    invoke-virtual {v1}, Lc/d/a/c/o/a;->c()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lc/d/a/c/d0/a;->getItemVisiblePosition()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lb/i/m/d0/b$c;->a(IIIIZZ)Lb/i/m/d0/b$c;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lb/i/m/d0/b$c;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 9
    sget-object v0, Lb/i/m/d0/b$a;->g:Lb/i/m/d0/b$a;

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    iget-object v0, v0, Lb/i/m/d0/b$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lc/d/a/c/j;->item_view_role_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBadge(Lc/d/a/c/o/a;)V
    .locals 2

    iput-object p1, p0, Lc/d/a/c/d0/a;->r:Lc/d/a/c/o/a;

    iget-object p1, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lc/d/a/c/d0/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->r:Lc/d/a/c/o/a;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lc/d/a/c/o/b;->a(Lc/d/a/c/o/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 8

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    iget v0, p0, Lc/d/a/c/d0/a;->g:I

    const/4 v1, -0x1

    const/16 v3, 0x11

    const/16 v4, 0x31

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    iget v1, p0, Lc/d/a/c/d0/a;->c:I

    invoke-static {v0, v1, v3}, Lc/d/a/c/d0/a;->c(Landroid/view/View;II)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lc/d/a/c/d0/a;->j:Landroid/view/ViewGroup;

    sget v1, Lc/d/a/c/f;->mtrl_view_tag_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lc/d/a/c/d0/a;->f(Landroid/view/View;I)V

    if-eqz p1, :cond_2

    :goto_0
    iget-object v0, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    iget v1, p0, Lc/d/a/c/d0/a;->c:I

    int-to-float v1, v1

    iget v2, p0, Lc/d/a/c/d0/a;->d:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1, v4}, Lc/d/a/c/d0/a;->c(Landroid/view/View;II)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    invoke-static {v0, v5, v5, v7}, Lc/d/a/c/d0/a;->e(Landroid/view/View;FFI)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    iget v1, p0, Lc/d/a/c/d0/a;->e:F

    invoke-static {v0, v1, v1, v6}, Lc/d/a/c/d0/a;->e(Landroid/view/View;FFI)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    iget v1, p0, Lc/d/a/c/d0/a;->c:I

    invoke-static {v0, v1, v4}, Lc/d/a/c/d0/a;->c(Landroid/view/View;II)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    iget v1, p0, Lc/d/a/c/d0/a;->f:F

    invoke-static {v0, v1, v1, v6}, Lc/d/a/c/d0/a;->e(Landroid/view/View;FFI)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    invoke-static {v0, v5, v5, v7}, Lc/d/a/c/d0/a;->e(Landroid/view/View;FFI)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    iget v1, p0, Lc/d/a/c/d0/a;->c:I

    if-eqz p1, :cond_4

    :goto_1
    invoke-static {v0, v1, v4}, Lc/d/a/c/d0/a;->c(Landroid/view/View;II)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->j:Landroid/view/ViewGroup;

    sget v1, Lc/d/a/c/f;->mtrl_view_tag_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lc/d/a/c/d0/a;->f(Landroid/view/View;I)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-static {v0, v1, v3}, Lc/d/a/c/d0/a;->c(Landroid/view/View;II)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->j:Landroid/view/ViewGroup;

    invoke-static {v0, v7}, Lc/d/a/c/d0/a;->f(Landroid/view/View;I)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Lc/d/a/c/d0/a;->h:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    iget v1, p0, Lc/d/a/c/d0/a;->c:I

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lc/d/a/c/d0/a;->j:Landroid/view/ViewGroup;

    sget v1, Lc/d/a/c/f;->mtrl_view_tag_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lc/d/a/c/d0/a;->f(Landroid/view/View;I)V

    if-eqz p1, :cond_2

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Lb/i/m/p;->a(Landroid/content/Context;I)Lb/i/m/p;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lb/i/m/r;->F(Landroid/view/View;Lb/i/m/p;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/a;->p:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lc/d/a/c/d0/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, La/a/a/a/a;->u0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/c/d0/a;->q:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lc/d/a/c/d0/a;->o:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, La/a/a/a/a;->m0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-object v0, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p1, p0, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lc/d/a/c/d0/a;->o:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lc/d/a/c/d0/a;->n:Lb/b/p/i/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/d0/a;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, La/a/a/a/a;->m0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lc/d/a/c/d0/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/i/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lc/d/a/c/d0/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1
    :cond_0
    sget-object v0, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    iput p1, p0, Lc/d/a/c/d0/a;->m:I

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    iget v0, p0, Lc/d/a/c/d0/a;->g:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lc/d/a/c/d0/a;->g:I

    iget-object p1, p0, Lc/d/a/c/d0/a;->n:Lb/b/p/i/i;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb/b/p/i/i;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lc/d/a/c/d0/a;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setShifting(Z)V
    .locals 1

    iget-boolean v0, p0, Lc/d/a/c/d0/a;->h:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lc/d/a/c/d0/a;->h:Z

    iget-object p1, p0, Lc/d/a/c/d0/a;->n:Lb/b/p/i/i;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb/b/p/i/i;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lc/d/a/c/d0/a;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    invoke-static {v0, p1}, La/a/a/a/a;->k0(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/d/a/c/d0/a;->a(FF)V

    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    invoke-static {v0, p1}, La/a/a/a/a;->k0(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc/d/a/c/d0/a;->a(FF)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/d0/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc/d/a/c/d0/a;->n:Lb/b/p/i/i;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/b/p/i/i;->q:Ljava/lang/CharSequence;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lc/d/a/c/d0/a;->n:Lb/b/p/i/i;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, v0, Lb/b/p/i/i;->r:Ljava/lang/CharSequence;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lc/d/a/c/d0/a;->n:Lb/b/p/i/i;

    .line 5
    iget-object p1, p1, Lb/b/p/i/i;->r:Ljava/lang/CharSequence;

    .line 6
    :cond_3
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    const/16 v1, 0x17

    if-le v0, v1, :cond_5

    :cond_4
    invoke-static {p0, p1}, La/a/a/a/a;->o0(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
