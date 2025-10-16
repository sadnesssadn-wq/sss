.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Lc/d/a/c/d0/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lc/d/a/c/b;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    sget v4, Lc/d/a/c/k;->Widget_Design_BottomNavigationView:I

    .line 1
    invoke-direct {p0, p1, p2, p3, v4}, Lc/d/a/c/d0/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lc/d/a/c/l;->BottomNavigationView:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lc/d/a/c/c0/l;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lb/b/q/j0;

    move-result-object p2

    sget p3, Lc/d/a/c/l;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Lb/b/q/j0;->a(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 2
    iget-object p2, p2, Lb/b/q/j0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-ge p2, p3, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Lc/d/a/c/j0/h;

    if-nez p2, :cond_0

    const/4 v6, 0x1

    :cond_0
    if-eqz v6, :cond_1

    .line 4
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget p3, Lc/d/a/c/c;->design_bottom_navigation_shadow_color:I

    invoke-static {p1, p3}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lc/d/a/c/d;->design_bottom_navigation_shadow_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, -0x1

    invoke-direct {p1, v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lc/d/a/c/d0/c;
    .locals 1

    new-instance v0, Lc/d/a/c/r/b;

    invoke-direct {v0, p1}, Lc/d/a/c/r/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getMaxItemCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lc/d/a/c/d0/e;->getMenuView()Lb/b/p/i/n;

    move-result-object v0

    check-cast v0, Lc/d/a/c/r/b;

    .line 1
    iget-boolean v1, v0, Lc/d/a/c/r/b;->C:Z

    if-eq v1, p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lc/d/a/c/r/b;->setItemHorizontalTranslationEnabled(Z)V

    invoke-virtual {p0}, Lc/d/a/c/d0/e;->getPresenter()Lc/d/a/c/d0/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/d/a/c/d0/d;->g(Z)V

    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$a;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lc/d/a/c/d0/e;->setOnItemReselectedListener(Lc/d/a/c/d0/e$b;)V

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lc/d/a/c/d0/e;->setOnItemSelectedListener(Lc/d/a/c/d0/e$c;)V

    return-void
.end method
