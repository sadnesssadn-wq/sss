.class public Lcom/google/android/material/navigationrail/NavigationRailView;
.super Lc/d/a/c/d0/e;
.source ""


# instance fields
.field public final j:I

.field public k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lc/d/a/c/b;->navigationRailStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    sget v4, Lc/d/a/c/k;->Widget_MaterialComponents_NavigationRailView:I

    .line 1
    invoke-direct {p0, p1, p2, p3, v4}, Lc/d/a/c/d0/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lc/d/a/c/d;->mtrl_navigation_rail_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->j:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lc/d/a/c/l;->NavigationRailView:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lc/d/a/c/c0/l;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lb/b/q/j0;

    move-result-object p2

    sget p3, Lc/d/a/c/l;->NavigationRailView_headerLayout:I

    invoke-virtual {p2, p3, v6}, Lb/b/q/j0;->m(II)I

    move-result p3

    const/16 v0, 0x31

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 3
    iget-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->k:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->k:Landroid/view/View;

    .line 4
    :cond_0
    iput-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->k:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, p3, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5
    :cond_1
    sget p1, Lc/d/a/c/l;->NavigationRailView_menuGravity:I

    invoke-virtual {p2, p1, v0}, Lb/b/q/j0;->j(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->setMenuGravity(I)V

    .line 6
    iget-object p1, p2, Lb/b/q/j0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getNavigationRailMenuView()Lc/d/a/c/e0/b;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/c/d0/e;->getMenuView()Lb/b/p/i/n;

    move-result-object v0

    check-cast v0, Lc/d/a/c/e0/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lc/d/a/c/d0/c;
    .locals 1

    .line 1
    new-instance v0, Lc/d/a/c/e0/b;

    invoke-direct {v0, p1}, Lc/d/a/c/e0/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->k:Landroid/view/View;

    return-object v0
.end method

.method public getMaxItemCount()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getMenuGravity()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lc/d/a/c/e0/b;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/c/e0/b;->getMenuGravity()I

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lc/d/a/c/e0/b;

    move-result-object p1

    .line 1
    iget-object p2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->k:Landroid/view/View;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 p5, 0x8

    if-eq p2, p5, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->k:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->j:I

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p3

    if-ge p3, p2, :cond_3

    sub-int p4, p2, p3

    goto :goto_2

    .line 3
    :cond_1
    iget-object p2, p1, Lc/d/a/c/e0/b;->x:Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 p2, p2, 0x70

    const/16 p5, 0x30

    if-ne p2, p5, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_3

    .line 4
    iget p4, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->j:I

    :cond_3
    :goto_2
    if-lez p4, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p3

    add-int/2addr p3, p4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p1, p2, p3, p5, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3
    iget-object p2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->k:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->j:I

    sub-int/2addr p2, v0

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lc/d/a/c/e0/b;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method public setMenuGravity(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lc/d/a/c/e0/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/d/a/c/e0/b;->setMenuGravity(I)V

    return-void
.end method
