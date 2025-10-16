.class public abstract Lc/d/a/c/d0/e;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/c/d0/e$d;,
        Lc/d/a/c/d0/e$b;,
        Lc/d/a/c/d0/e$c;
    }
.end annotation


# instance fields
.field public final c:Lc/d/a/c/d0/b;

.field public final d:Lc/d/a/c/d0/c;

.field public final e:Lc/d/a/c/d0/d;

.field public f:Landroid/content/res/ColorStateList;

.field public g:Landroid/view/MenuInflater;

.field public h:Lc/d/a/c/d0/e$c;

.field public i:Lc/d/a/c/d0/e$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    invoke-static {p1, p2, p3, p4}, Lc/d/a/c/p0/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lc/d/a/c/d0/d;

    invoke-direct {p1}, Lc/d/a/c/d0/d;-><init>()V

    iput-object p1, p0, Lc/d/a/c/d0/e;->e:Lc/d/a/c/d0/d;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v2, Lc/d/a/c/l;->NavigationBarView:[I

    const/4 v0, 0x2

    new-array v5, v0, [I

    sget v7, Lc/d/a/c/l;->NavigationBarView_itemTextAppearanceInactive:I

    const/4 v8, 0x0

    aput v7, v5, v8

    sget v9, Lc/d/a/c/l;->NavigationBarView_itemTextAppearanceActive:I

    const/4 v10, 0x1

    aput v9, v5, v10

    move-object v0, v6

    move-object v1, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lc/d/a/c/c0/l;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lb/b/q/j0;

    move-result-object p2

    new-instance p3, Lc/d/a/c/d0/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0}, Lc/d/a/c/d0/e;->getMaxItemCount()I

    move-result v0

    invoke-direct {p3, v6, p4, v0}, Lc/d/a/c/d0/b;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    iput-object p3, p0, Lc/d/a/c/d0/e;->c:Lc/d/a/c/d0/b;

    invoke-virtual {p0, v6}, Lc/d/a/c/d0/e;->a(Landroid/content/Context;)Lc/d/a/c/d0/c;

    move-result-object p4

    iput-object p4, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    .line 1
    iput-object p4, p1, Lc/d/a/c/d0/d;->d:Lc/d/a/c/d0/c;

    .line 2
    iput v10, p1, Lc/d/a/c/d0/d;->f:I

    .line 3
    invoke-virtual {p4, p1}, Lc/d/a/c/d0/c;->setPresenter(Lc/d/a/c/d0/d;)V

    .line 4
    iget-object v0, p3, Lb/b/p/i/g;->a:Landroid/content/Context;

    invoke-virtual {p3, p1, v0}, Lb/b/p/i/g;->b(Lb/b/p/i/m;Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 6
    iput-object p3, p1, Lc/d/a/c/d0/d;->c:Lb/b/p/i/g;

    iget-object v0, p1, Lc/d/a/c/d0/d;->d:Lc/d/a/c/d0/c;

    .line 7
    iput-object p3, v0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    .line 8
    sget v0, Lc/d/a/c/l;->NavigationBarView_itemIconTint:I

    invoke-virtual {p2, v0}, Lb/b/q/j0;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x1010038

    invoke-virtual {p4, v0}, Lc/d/a/c/d0/c;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-virtual {p4, v0}, Lc/d/a/c/d0/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    sget v0, Lc/d/a/c/l;->NavigationBarView_itemIconSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lc/d/a/c/d;->mtrl_navigation_bar_item_default_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lb/b/q/j0;->f(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lc/d/a/c/d0/e;->setItemIconSize(I)V

    invoke-virtual {p2, v7}, Lb/b/q/j0;->p(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v7, v8}, Lb/b/q/j0;->m(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lc/d/a/c/d0/e;->setItemTextAppearanceInactive(I)V

    :cond_1
    invoke-virtual {p2, v9}, Lb/b/q/j0;->p(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v9, v8}, Lb/b/q/j0;->m(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lc/d/a/c/d0/e;->setItemTextAppearanceActive(I)V

    :cond_2
    sget v0, Lc/d/a/c/l;->NavigationBarView_itemTextColor:I

    invoke-virtual {p2, v0}, Lb/b/q/j0;->p(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/d/a/c/d0/e;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_6

    .line 9
    :cond_4
    new-instance v0, Lc/d/a/c/j0/h;

    invoke-direct {v0}, Lc/d/a/c/j0/h;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/c/j0/h;->q(Landroid/content/res/ColorStateList;)V

    .line 10
    :cond_5
    iget-object v1, v0, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    new-instance v2, Lc/d/a/c/z/a;

    invoke-direct {v2, v6}, Lc/d/a/c/z/a;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lc/d/a/c/j0/h$b;->b:Lc/d/a/c/z/a;

    invoke-virtual {v0}, Lc/d/a/c/j0/h;->C()V

    .line 11
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_6
    sget v0, Lc/d/a/c/l;->NavigationBarView_elevation:I

    invoke-virtual {p2, v0}, Lb/b/q/j0;->p(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2, v0, v8}, Lb/b/q/j0;->f(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lc/d/a/c/d0/e;->setElevation(F)V

    :cond_7
    sget v0, Lc/d/a/c/l;->NavigationBarView_backgroundTint:I

    invoke-static {v6, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V(Landroid/content/Context;Lb/b/q/j0;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, v0}, La/a/a/a/a;->m0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    sget v0, Lc/d/a/c/l;->NavigationBarView_labelVisibilityMode:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lb/b/q/j0;->k(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lc/d/a/c/d0/e;->setLabelVisibilityMode(I)V

    sget v0, Lc/d/a/c/l;->NavigationBarView_itemBackground:I

    invoke-virtual {p2, v0, v8}, Lb/b/q/j0;->m(II)I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p4, v0}, Lc/d/a/c/d0/c;->setItemBackgroundRes(I)V

    goto :goto_1

    :cond_8
    sget v0, Lc/d/a/c/l;->NavigationBarView_itemRippleColor:I

    invoke-static {v6, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V(Landroid/content/Context;Lb/b/q/j0;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/d/a/c/d0/e;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    sget v0, Lc/d/a/c/l;->NavigationBarView_menu:I

    invoke-virtual {p2, v0}, Lb/b/q/j0;->p(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2, v0, v8}, Lb/b/q/j0;->m(II)I

    move-result v0

    .line 13
    iput-boolean v10, p1, Lc/d/a/c/d0/d;->e:Z

    .line 14
    invoke-direct {p0}, Lc/d/a/c/d0/e;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 15
    iput-boolean v8, p1, Lc/d/a/c/d0/d;->e:Z

    .line 16
    invoke-virtual {p1, v10}, Lc/d/a/c/d0/d;->g(Z)V

    .line 17
    :cond_9
    iget-object p1, p2, Lb/b/q/j0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p1, Lc/d/a/c/d0/e$a;

    invoke-direct {p1, p0}, Lc/d/a/c/d0/e$a;-><init>(Lc/d/a/c/d0/e;)V

    .line 19
    iput-object p1, p3, Lb/b/p/i/g;->e:Lb/b/p/i/g$a;

    .line 20
    new-instance p1, Lc/d/a/c/d0/f;

    invoke-direct {p1, p0}, Lc/d/a/c/d0/f;-><init>(Lc/d/a/c/d0/e;)V

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->H(Landroid/view/View;Lc/d/a/c/c0/r;)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lc/d/a/c/d0/e;->g:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/p/f;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/p/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/d/a/c/d0/e;->g:Landroid/view/MenuInflater;

    :cond_0
    iget-object v0, p0, Lc/d/a/c/d0/e;->g:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Lc/d/a/c/d0/c;
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0}, Lc/d/a/c/d0/c;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackgroundResource()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0}, Lc/d/a/c/d0/c;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0}, Lc/d/a/c/d0/c;->getItemIconSize()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0}, Lc/d/a/c/d0/c;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0}, Lc/d/a/c/d0/c;->getItemTextAppearanceActive()I

    move-result v0

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0}, Lc/d/a/c/d0/c;->getItemTextAppearanceInactive()I

    move-result v0

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0}, Lc/d/a/c/d0/c;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0}, Lc/d/a/c/d0/c;->getLabelVisibilityMode()I

    move-result v0

    return v0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->c:Lc/d/a/c/d0/b;

    return-object v0
.end method

.method public getMenuView()Lb/b/p/i/n;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    return-object v0
.end method

.method public getPresenter()Lc/d/a/c/d0/d;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->e:Lc/d/a/c/d0/d;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0}, Lc/d/a/c/d0/c;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lc/d/a/c/j0/h;

    if-eqz v1, :cond_0

    check-cast v0, Lc/d/a/c/j0/h;

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->J0(Landroid/view/View;Lc/d/a/c/j0/h;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lc/d/a/c/d0/e$d;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lc/d/a/c/d0/e$d;

    .line 1
    iget-object v0, p1, Lb/k/a/a;->c:Landroid/os/Parcelable;

    .line 2
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lc/d/a/c/d0/e;->c:Lc/d/a/c/d0/b;

    iget-object p1, p1, Lc/d/a/c/d0/e$d;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lb/b/p/i/g;->w(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lc/d/a/c/d0/e$d;

    invoke-direct {v1, v0}, Lc/d/a/c/d0/e$d;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lc/d/a/c/d0/e$d;->e:Landroid/os/Bundle;

    iget-object v2, p0, Lc/d/a/c/d0/e;->c:Lc/d/a/c/d0/b;

    invoke-virtual {v2, v0}, Lb/b/p/i/g;->y(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setElevation(F)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    :cond_0
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->I0(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0, p1}, Lc/d/a/c/d0/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/c/d0/e;->f:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0, p1}, Lc/d/a/c/d0/c;->setItemBackgroundRes(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/c/d0/e;->f:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0, p1}, Lc/d/a/c/d0/c;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lc/d/a/c/d0/e;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0, p1}, Lc/d/a/c/d0/c;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    iget-object v0, p0, Lc/d/a/c/d0/e;->f:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {p1}, Lc/d/a/c/d0/c;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {p1, v1}, Lc/d/a/c/d0/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lc/d/a/c/d0/e;->f:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_2

    iget-object p1, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {p1, v1}, Lc/d/a/c/d0/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lc/d/a/c/h0/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v2, p1, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Lc/d/a/c/d0/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, 0x3727c5ac    # 1.0E-5f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {v0}, La/a/a/a/a;->u0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, La/a/a/a/a;->m0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {p1, v0}, Lc/d/a/c/d0/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0, p1}, Lc/d/a/c/d0/c;->setItemTextAppearanceActive(I)V

    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0, p1}, Lc/d/a/c/d0/c;->setItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0, p1}, Lc/d/a/c/d0/c;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0}, Lc/d/a/c/d0/c;->getLabelVisibilityMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lc/d/a/c/d0/e;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0, p1}, Lc/d/a/c/d0/c;->setLabelVisibilityMode(I)V

    iget-object p1, p0, Lc/d/a/c/d0/e;->e:Lc/d/a/c/d0/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/d/a/c/d0/d;->g(Z)V

    :cond_0
    return-void
.end method

.method public setOnItemReselectedListener(Lc/d/a/c/d0/e$b;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/d0/e;->i:Lc/d/a/c/d0/e$b;

    return-void
.end method

.method public setOnItemSelectedListener(Lc/d/a/c/d0/e$c;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/d0/e;->h:Lc/d/a/c/d0/e$c;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 3

    iget-object v0, p0, Lc/d/a/c/d0/e;->c:Lc/d/a/c/d0/b;

    invoke-virtual {v0, p1}, Lb/b/p/i/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/d/a/c/d0/e;->c:Lc/d/a/c/d0/b;

    iget-object v1, p0, Lc/d/a/c/d0/e;->e:Lc/d/a/c/d0/d;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lb/b/p/i/g;->s(Landroid/view/MenuItem;Lb/b/p/i/m;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
