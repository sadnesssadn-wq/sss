.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$c;,
        Lcom/google/android/material/navigation/NavigationView$b;
    }
.end annotation


# static fields
.field public static final o:[I

.field public static final p:[I

.field public static final q:I


# instance fields
.field public final h:Lc/d/a/c/c0/c;

.field public final i:Lc/d/a/c/c0/d;

.field public j:Lcom/google/android/material/navigation/NavigationView$b;

.field public final k:I

.field public final l:[I

.field public m:Landroid/view/MenuInflater;

.field public n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/navigation/NavigationView;->o:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->p:[I

    sget v0, Lc/d/a/c/k;->Widget_Design_NavigationView:I

    sput v0, Lcom/google/android/material/navigation/NavigationView;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lc/d/a/c/b;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    sget v9, Lcom/google/android/material/navigation/NavigationView;->q:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lc/d/a/c/p0/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v10, Lc/d/a/c/c0/d;

    invoke-direct {v10}, Lc/d/a/c/c0/d;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->l:[I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Lc/d/a/c/c0/c;

    invoke-direct {v12, v11}, Lc/d/a/c/c0/c;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/google/android/material/navigation/NavigationView;->h:Lc/d/a/c/c0/c;

    sget-object v3, Lc/d/a/c/l;->NavigationView:[I

    const/4 v13, 0x0

    new-array v6, v13, [I

    move-object v1, v11

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v9

    invoke-static/range {v1 .. v6}, Lc/d/a/c/c0/l;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lb/b/q/j0;

    move-result-object v1

    sget v2, Lc/d/a/c/l;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lb/b/q/j0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1
    sget-object v3, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    .line 3
    :cond_1
    new-instance v2, Lc/d/a/c/j0/a;

    int-to-float v3, v13

    invoke-direct {v2, v3}, Lc/d/a/c/j0/a;-><init>(F)V

    invoke-static {v11, v7, v8, v9, v2}, Lc/d/a/c/j0/l;->b(Landroid/content/Context;Landroid/util/AttributeSet;IILc/d/a/c/j0/c;)Lc/d/a/c/j0/l$b;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lc/d/a/c/j0/l$b;->a()Lc/d/a/c/j0/l;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lc/d/a/c/j0/h;

    invoke-direct {v4, v2}, Lc/d/a/c/j0/h;-><init>(Lc/d/a/c/j0/l;)V

    instance-of v2, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v4, v2}, Lc/d/a/c/j0/h;->q(Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_2
    iget-object v2, v4, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    new-instance v3, Lc/d/a/c/z/a;

    invoke-direct {v3, v11}, Lc/d/a/c/z/a;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lc/d/a/c/j0/h$b;->b:Lc/d/a/c/z/a;

    invoke-virtual {v4}, Lc/d/a/c/j0/h;->C()V

    .line 6
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_3
    sget v2, Lc/d/a/c/l;->NavigationView_elevation:I

    invoke-virtual {v1, v2}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2, v13}, Lb/b/q/j0;->f(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    :cond_4
    sget v2, Lc/d/a/c/l;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v1, v2, v13}, Lb/b/q/j0;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    sget v2, Lc/d/a/c/l;->NavigationView_android_maxWidth:I

    invoke-virtual {v1, v2, v13}, Lb/b/q/j0;->f(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->k:I

    sget v2, Lc/d/a/c/l;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v2}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_0

    :cond_5
    const v2, 0x1010038

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    :goto_0
    sget v3, Lc/d/a/c/l;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v3}, Lb/b/q/j0;->p(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, v3, v13}, Lb/b/q/j0;->m(II)I

    move-result v3

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    sget v6, Lc/d/a/c/l;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v6}, Lb/b/q/j0;->p(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v1, v6, v13}, Lb/b/q/j0;->f(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    :cond_7
    const/4 v6, 0x0

    sget v7, Lc/d/a/c/l;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v7}, Lb/b/q/j0;->p(I)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v1, v7}, Lb/b/q/j0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_8
    if-nez v4, :cond_9

    if-nez v6, :cond_9

    const v6, 0x1010036

    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_9
    sget v7, Lc/d/a/c/l;->NavigationView_itemBackground:I

    invoke-virtual {v1, v7}, Lb/b/q/j0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_c

    .line 8
    sget v8, Lc/d/a/c/l;->NavigationView_itemShapeAppearance:I

    invoke-virtual {v1, v8}, Lb/b/q/j0;->p(I)Z

    move-result v9

    if-nez v9, :cond_b

    sget v9, Lc/d/a/c/l;->NavigationView_itemShapeAppearanceOverlay:I

    invoke-virtual {v1, v9}, Lb/b/q/j0;->p(I)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_2

    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_c

    .line 9
    invoke-virtual {v1, v8, v13}, Lb/b/q/j0;->m(II)I

    move-result v7

    sget v8, Lc/d/a/c/l;->NavigationView_itemShapeAppearanceOverlay:I

    invoke-virtual {v1, v8, v13}, Lb/b/q/j0;->m(II)I

    move-result v8

    new-instance v15, Lc/d/a/c/j0/h;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 10
    new-instance v14, Lc/d/a/c/j0/a;

    int-to-float v5, v13

    invoke-direct {v14, v5}, Lc/d/a/c/j0/a;-><init>(F)V

    invoke-static {v9, v7, v8, v14}, Lc/d/a/c/j0/l;->a(Landroid/content/Context;IILc/d/a/c/j0/c;)Lc/d/a/c/j0/l$b;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Lc/d/a/c/j0/l$b;->a()Lc/d/a/c/j0/l;

    move-result-object v5

    invoke-direct {v15, v5}, Lc/d/a/c/j0/h;-><init>(Lc/d/a/c/j0/l;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lc/d/a/c/l;->NavigationView_itemShapeFillColor:I

    invoke-static {v5, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V(Landroid/content/Context;Lb/b/q/j0;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v15, v5}, Lc/d/a/c/j0/h;->q(Landroid/content/res/ColorStateList;)V

    sget v5, Lc/d/a/c/l;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {v1, v5, v13}, Lb/b/q/j0;->f(II)I

    move-result v16

    sget v5, Lc/d/a/c/l;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {v1, v5, v13}, Lb/b/q/j0;->f(II)I

    move-result v17

    sget v5, Lc/d/a/c/l;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {v1, v5, v13}, Lb/b/q/j0;->f(II)I

    move-result v18

    sget v5, Lc/d/a/c/l;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {v1, v5, v13}, Lb/b/q/j0;->f(II)I

    move-result v19

    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 12
    :cond_c
    sget v5, Lc/d/a/c/l;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v1, v5}, Lb/b/q/j0;->p(I)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v1, v5, v13}, Lb/b/q/j0;->f(II)I

    move-result v5

    invoke-virtual {v10, v5}, Lc/d/a/c/c0/d;->a(I)V

    :cond_d
    sget v5, Lc/d/a/c/l;->NavigationView_itemIconPadding:I

    invoke-virtual {v1, v5, v13}, Lb/b/q/j0;->f(II)I

    move-result v5

    sget v8, Lc/d/a/c/l;->NavigationView_itemMaxLines:I

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Lb/b/q/j0;->j(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    new-instance v8, Lcom/google/android/material/navigation/NavigationView$a;

    invoke-direct {v8, v0}, Lcom/google/android/material/navigation/NavigationView$a;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    .line 13
    iput-object v8, v12, Lb/b/p/i/g;->e:Lb/b/p/i/g$a;

    .line 14
    iput v9, v10, Lc/d/a/c/c0/d;->f:I

    .line 15
    invoke-virtual {v10, v11, v12}, Lc/d/a/c/c0/d;->d(Landroid/content/Context;Lb/b/p/i/g;)V

    .line 16
    iput-object v2, v10, Lc/d/a/c/c0/d;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v13}, Lc/d/a/c/c0/d;->g(Z)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v2

    .line 18
    iput v2, v10, Lc/d/a/c/c0/d;->v:I

    iget-object v8, v10, Lc/d/a/c/c0/d;->c:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v8, :cond_e

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_e
    if-eqz v4, :cond_f

    .line 19
    iput v3, v10, Lc/d/a/c/c0/d;->i:I

    const/4 v2, 0x1

    iput-boolean v2, v10, Lc/d/a/c/c0/d;->j:Z

    invoke-virtual {v10, v13}, Lc/d/a/c/c0/d;->g(Z)V

    .line 20
    :cond_f
    iput-object v6, v10, Lc/d/a/c/c0/d;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v13}, Lc/d/a/c/c0/d;->g(Z)V

    .line 21
    iput-object v7, v10, Lc/d/a/c/c0/d;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v13}, Lc/d/a/c/c0/d;->g(Z)V

    .line 22
    invoke-virtual {v10, v5}, Lc/d/a/c/c0/d;->c(I)V

    .line 23
    iget-object v2, v12, Lb/b/p/i/g;->a:Landroid/content/Context;

    invoke-virtual {v12, v10, v2}, Lb/b/p/i/g;->b(Lb/b/p/i/m;Landroid/content/Context;)V

    .line 24
    iget-object v2, v10, Lc/d/a/c/c0/d;->c:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v2, :cond_12

    iget-object v2, v10, Lc/d/a/c/c0/d;->h:Landroid/view/LayoutInflater;

    sget v3, Lc/d/a/c/h;->design_navigation_menu:I

    invoke-virtual {v2, v3, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object v2, v10, Lc/d/a/c/c0/d;->c:Lcom/google/android/material/internal/NavigationMenuView;

    new-instance v3, Lc/d/a/c/c0/d$h;

    iget-object v4, v10, Lc/d/a/c/c0/d;->c:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v3, v10, v4}, Lc/d/a/c/c0/d$h;-><init>(Lc/d/a/c/c0/d;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lb/r/d/w;)V

    iget-object v2, v10, Lc/d/a/c/c0/d;->g:Lc/d/a/c/c0/d$c;

    if-nez v2, :cond_10

    new-instance v2, Lc/d/a/c/c0/d$c;

    invoke-direct {v2, v10}, Lc/d/a/c/c0/d$c;-><init>(Lc/d/a/c/c0/d;)V

    iput-object v2, v10, Lc/d/a/c/c0/d;->g:Lc/d/a/c/c0/d$c;

    :cond_10
    iget v2, v10, Lc/d/a/c/c0/d;->v:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    iget-object v3, v10, Lc/d/a/c/c0/d;->c:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_11
    iget-object v2, v10, Lc/d/a/c/c0/d;->h:Landroid/view/LayoutInflater;

    sget v3, Lc/d/a/c/h;->design_navigation_item_header:I

    iget-object v4, v10, Lc/d/a/c/c0/d;->c:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v3, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v10, Lc/d/a/c/c0/d;->d:Landroid/widget/LinearLayout;

    iget-object v2, v10, Lc/d/a/c/c0/d;->c:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v3, v10, Lc/d/a/c/c0/d;->g:Lc/d/a/c/c0/d$c;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    :cond_12
    iget-object v2, v10, Lc/d/a/c/c0/d;->c:Lcom/google/android/material/internal/NavigationMenuView;

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget v2, Lc/d/a/c/l;->NavigationView_menu:I

    invoke-virtual {v1, v2}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1, v2, v13}, Lb/b/q/j0;->m(II)I

    move-result v2

    const/4 v3, 0x1

    .line 26
    invoke-virtual {v10, v3}, Lc/d/a/c/c0/d;->h(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v12}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v10, v13}, Lc/d/a/c/c0/d;->h(Z)V

    invoke-virtual {v10, v13}, Lc/d/a/c/c0/d;->g(Z)V

    .line 27
    :cond_13
    sget v2, Lc/d/a/c/l;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2}, Lb/b/q/j0;->p(I)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1, v2, v13}, Lb/b/q/j0;->m(II)I

    move-result v2

    .line 28
    iget-object v3, v10, Lc/d/a/c/c0/d;->h:Landroid/view/LayoutInflater;

    iget-object v4, v10, Lc/d/a/c/c0/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 29
    iget-object v3, v10, Lc/d/a/c/c0/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v10, Lc/d/a/c/c0/d;->c:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v13, v13, v13, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 30
    :cond_14
    iget-object v1, v1, Lb/b/q/j0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    new-instance v1, Lc/d/a/c/d0/g;

    invoke-direct {v1, v0}, Lc/d/a/c/d0/g;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationView;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->m:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/p/f;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/p/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->m:Landroid/view/MenuInflater;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->m:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public a(Lb/i/m/c0;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lb/i/m/c0;->e()I

    move-result v1

    iget v2, v0, Lc/d/a/c/c0/d;->t:I

    if-eq v2, v1, :cond_0

    iput v1, v0, Lc/d/a/c/c0/d;->t:I

    invoke-virtual {v0}, Lc/d/a/c/c0/d;->n()V

    :cond_0
    iget-object v1, v0, Lc/d/a/c/c0/d;->c:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Lb/i/m/c0;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, v0, Lc/d/a/c/c0/d;->d:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lb/i/m/r;->e(Landroid/view/View;Lb/i/m/c0;)Lb/i/m/c0;

    return-void
.end method

.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 10

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Lb/b/l/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lb/b/a;->colorPrimary:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->p:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lcom/google/android/material/navigation/NavigationView;->o:[I

    aput-object v8, v5, v2

    sget-object v8, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    const/4 v9, 0x2

    aput-object v8, v5, v9

    new-array v4, v4, [I

    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v9

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iget-object v0, v0, Lc/d/a/c/c0/d;->g:Lc/d/a/c/c0/d$c;

    .line 2
    iget-object v0, v0, Lc/d/a/c/c0/d$c;->b:Lb/b/p/i/i;

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iget-object v0, v0, Lc/d/a/c/c0/d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iget-object v0, v0, Lc/d/a/c/c0/d;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iget v0, v0, Lc/d/a/c/c0/d;->n:I

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iget v0, v0, Lc/d/a/c/c0/d;->o:I

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iget-object v0, v0, Lc/d/a/c/c0/d;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iget v0, v0, Lc/d/a/c/c0/d;->s:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iget-object v0, v0, Lc/d/a/c/c0/d;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lc/d/a/c/c0/c;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

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

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/google/android/material/navigation/NavigationView;->k:I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$c;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$c;

    .line 1
    iget-object v0, p1, Lb/k/a/a;->c:Landroid/os/Parcelable;

    .line 2
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lc/d/a/c/c0/c;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$c;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lb/b/p/i/g;->w(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/navigation/NavigationView$c;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$c;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$c;->e:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lc/d/a/c/c0/c;

    invoke-virtual {v2, v0}, Lb/b/p/i/g;->y(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setCheckedItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lc/d/a/c/c0/c;

    invoke-virtual {v0, p1}, Lb/b/p/i/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    check-cast p1, Lb/b/p/i/i;

    .line 1
    iget-object v0, v0, Lc/d/a/c/c0/d;->g:Lc/d/a/c/c0/d$c;

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d$c;->b(Lb/b/p/i/i;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lc/d/a/c/c0/c;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lb/b/p/i/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    check-cast p1, Lb/b/p/i/i;

    .line 2
    iget-object v0, v0, Lc/d/a/c/c0/d;->g:Lc/d/a/c/c0/d$c;

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d$c;->b(Lb/b/p/i/i;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iput-object p1, v0, Lc/d/a/c/c0/d;->m:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d;->g(Z)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/i/f/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iput p1, v0, Lc/d/a/c/c0/d;->n:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d;->g(Z)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d;->a(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iput p1, v0, Lc/d/a/c/c0/d;->o:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d;->g(Z)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d;->c(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iget v1, v0, Lc/d/a/c/c0/d;->p:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lc/d/a/c/c0/d;->p:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lc/d/a/c/c0/d;->q:Z

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d;->g(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iput-object p1, v0, Lc/d/a/c/c0/d;->l:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d;->g(Z)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iput p1, v0, Lc/d/a/c/c0/d;->s:I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d;->g(Z)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iput p1, v0, Lc/d/a/c/c0/d;->i:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lc/d/a/c/c0/d;->j:Z

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d;->g(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    .line 1
    iput-object p1, v0, Lc/d/a/c/c0/d;->k:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lc/d/a/c/c0/d;->g(Z)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->j:Lcom/google/android/material/navigation/NavigationView$b;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Lc/d/a/c/c0/d;

    if-eqz v0, :cond_0

    .line 1
    iput p1, v0, Lc/d/a/c/c0/d;->v:I

    iget-object v0, v0, Lc/d/a/c/c0/d;->c:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method
