.class public Lme/relex/circleindicator/BaseCircleIndicator;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/circleindicator/BaseCircleIndicator$b;,
        Lme/relex/circleindicator/BaseCircleIndicator$a;
    }
.end annotation


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/animation/Animator;

.field public i:Landroid/animation/Animator;

.field public j:Landroid/animation/Animator;

.field public k:Landroid/animation/Animator;

.field public l:I

.field public m:Lme/relex/circleindicator/BaseCircleIndicator$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->e:I

    iput v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->l:I

    invoke-virtual {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->e:I

    iput p3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->l:I

    invoke-virtual {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->l:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    iget v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->l:I

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:I

    invoke-virtual {p0, v0, v2, v1}, Lme/relex/circleindicator/BaseCircleIndicator;->b(Landroid/view/View;ILandroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->f:I

    invoke-virtual {p0, v0, v2, v1}, Lme/relex/circleindicator/BaseCircleIndicator;->b(Landroid/view/View;ILandroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_4
    iput p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->l:I

    return-void
.end method

.method public final b(Landroid/view/View;ILandroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public c(II)V
    .locals 7

    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    iget-object v0, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_2

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    goto :goto_2

    :cond_2
    if-le p1, v0, :cond_4

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    iget v6, p0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v6, p0, Lme/relex/circleindicator/BaseCircleIndicator;->e:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v6, p0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    if-nez v2, :cond_3

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_1
    invoke-virtual {p0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-ge v1, p1, :cond_7

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-ne p2, v1, :cond_5

    iget v3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->f:I

    invoke-virtual {p0, v0, v3, v2}, Lme/relex/circleindicator/BaseCircleIndicator;->b(Landroid/view/View;ILandroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    goto :goto_3

    :cond_5
    iget v3, p0, Lme/relex/circleindicator/BaseCircleIndicator;->g:I

    invoke-virtual {p0, v0, v3, v2}, Lme/relex/circleindicator/BaseCircleIndicator;->b(Landroid/view/View;ILandroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:Landroid/animation/Animator;

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->k:Landroid/animation/Animator;

    :goto_3
    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    iget-object v2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->m:Lme/relex/circleindicator/BaseCircleIndicator$a;

    if-eqz v2, :cond_6

    invoke-interface {v2, v0, v1}, Lme/relex/circleindicator/BaseCircleIndicator$a;->a(Landroid/view/View;I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iput p2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->l:I

    return-void
.end method

.method public final d(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    sget v2, Lg/b/a/a;->scale_with_alpha:I

    sget v3, Lg/b/a/b;->white_radius:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v1, :cond_0

    const/4 v1, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v2, Lg/b/a/c;->BaseCircleIndicator:[I

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lg/b/a/c;->BaseCircleIndicator_ci_width:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v3, Lg/b/a/c;->BaseCircleIndicator_ci_height:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    sget v7, Lg/b/a/c;->BaseCircleIndicator_ci_margin:I

    invoke-virtual {v1, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    sget v8, Lg/b/a/c;->BaseCircleIndicator_ci_animator:I

    sget v9, Lg/b/a/a;->scale_with_alpha:I

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    sget v9, Lg/b/a/c;->BaseCircleIndicator_ci_animator_reverse:I

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    sget v10, Lg/b/a/c;->BaseCircleIndicator_ci_drawable:I

    sget v11, Lg/b/a/b;->white_radius:I

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    sget v11, Lg/b/a/c;->BaseCircleIndicator_ci_drawable_unselected:I

    invoke-virtual {v1, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    sget v12, Lg/b/a/c;->BaseCircleIndicator_ci_orientation:I

    invoke-virtual {v1, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    sget v13, Lg/b/a/c;->BaseCircleIndicator_ci_gravity:I

    invoke-virtual {v1, v13, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v3

    move v3, v10

    move v15, v5

    move v5, v2

    move v2, v8

    move v8, v15

    .line 3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    const/high16 v13, 0x40a00000    # 5.0f

    const/4 v14, 0x1

    invoke-static {v14, v13, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v10, v13

    float-to-int v10, v10

    if-gez v5, :cond_1

    move v5, v10

    :cond_1
    iput v5, v0, Lme/relex/circleindicator/BaseCircleIndicator;->d:I

    if-gez v1, :cond_2

    move v1, v10

    :cond_2
    iput v1, v0, Lme/relex/circleindicator/BaseCircleIndicator;->e:I

    if-gez v7, :cond_3

    move v7, v10

    :cond_3
    iput v7, v0, Lme/relex/circleindicator/BaseCircleIndicator;->c:I

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lme/relex/circleindicator/BaseCircleIndicator;->h:Landroid/animation/Animator;

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 7
    iput-object v1, v0, Lme/relex/circleindicator/BaseCircleIndicator;->j:Landroid/animation/Animator;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v9, :cond_4

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    new-instance v10, Lme/relex/circleindicator/BaseCircleIndicator$b;

    invoke-direct {v10}, Lme/relex/circleindicator/BaseCircleIndicator$b;-><init>()V

    invoke-virtual {v1, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_4
    invoke-static {v1, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 9
    :goto_1
    iput-object v1, v0, Lme/relex/circleindicator/BaseCircleIndicator;->i:Landroid/animation/Animator;

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v9, :cond_5

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lme/relex/circleindicator/BaseCircleIndicator$b;

    invoke-direct {v2}, Lme/relex/circleindicator/BaseCircleIndicator$b;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    :cond_5
    invoke-static {v1, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 11
    :goto_2
    iput-object v1, v0, Lme/relex/circleindicator/BaseCircleIndicator;->k:Landroid/animation/Animator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-nez v3, :cond_6

    sget v1, Lg/b/a/b;->white_radius:I

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    iput v1, v0, Lme/relex/circleindicator/BaseCircleIndicator;->f:I

    if-nez v11, :cond_7

    goto :goto_4

    :cond_7
    move v3, v11

    :goto_4
    iput v3, v0, Lme/relex/circleindicator/BaseCircleIndicator;->g:I

    if-ne v12, v14, :cond_8

    const/4 v6, 0x1

    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-ltz v8, :cond_9

    move v4, v8

    goto :goto_5

    :cond_9
    const/16 v4, 0x11

    :goto_5
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v14}, Lme/relex/circleindicator/BaseCircleIndicator;->c(II)V

    :cond_a
    return-void
.end method

.method public setIndicatorCreatedListener(Lme/relex/circleindicator/BaseCircleIndicator$a;)V
    .locals 0

    iput-object p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->m:Lme/relex/circleindicator/BaseCircleIndicator$a;

    return-void
.end method
