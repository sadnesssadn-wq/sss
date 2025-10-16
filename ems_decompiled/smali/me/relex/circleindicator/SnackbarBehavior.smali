.class public Lme/relex/circleindicator/SnackbarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Lme/relex/circleindicator/BaseCircleIndicator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public B(Landroid/view/View;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    return p1
.end method

.method public C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lme/relex/circleindicator/BaseCircleIndicator;)Z
    .locals 11

    .line 1
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    instance-of v7, v6, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    if-eqz v7, :cond_4

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eq v8, p1, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p1, p2, v8, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(Landroid/view/View;ZLandroid/graphics/Rect;)V

    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eq v9, p1, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {p1, v6, v9, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(Landroid/view/View;ZLandroid/graphics/Rect;)V

    :try_start_0
    iget v9, v7, Landroid/graphics/Rect;->left:I

    iget v10, v8, Landroid/graphics/Rect;->right:I

    if-gt v9, v10, :cond_2

    iget v9, v7, Landroid/graphics/Rect;->top:I

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    if-gt v9, v10, :cond_2

    iget v9, v7, Landroid/graphics/Rect;->right:I

    iget v10, v8, Landroid/graphics/Rect;->left:I

    if-lt v9, v10, :cond_2

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v8, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v9, v10, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    .line 3
    :goto_3
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    sget-object v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->A:Lb/i/l/c;

    invoke-virtual {v9, v7}, Lb/i/l/c;->b(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v9, v8}, Lb/i/l/c;->b(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    sget-object p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->A:Lb/i/l/c;

    invoke-virtual {p2, v7}, Lb/i/l/c;->b(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p2, v8}, Lb/i/l/c;->b(Ljava/lang/Object;)Z

    .line 4
    throw p1

    :cond_3
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_4

    .line 5
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 6
    :cond_5
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return v5
.end method

.method public bridge synthetic d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    check-cast p2, Lme/relex/circleindicator/BaseCircleIndicator;

    invoke-virtual {p0, p3}, Lme/relex/circleindicator/SnackbarBehavior;->B(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    check-cast p2, Lme/relex/circleindicator/BaseCircleIndicator;

    invoke-virtual {p0, p1, p2}, Lme/relex/circleindicator/SnackbarBehavior;->C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lme/relex/circleindicator/BaseCircleIndicator;)Z

    move-result p1

    return p1
.end method
