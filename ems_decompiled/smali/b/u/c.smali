.class public Lb/u/c;
.super Lb/u/j0;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/u/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroidx/transition/Transition;Lb/u/x;Lb/u/x;)J
    .locals 9

    const-wide/16 v0, 0x0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    if-eqz p4, :cond_2

    invoke-virtual {p0, p3}, Lb/u/j0;->c(Lb/u/x;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p4

    const/4 p4, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p4, -0x1

    :goto_1
    const/4 v3, 0x0

    .line 1
    invoke-static {p3, v3}, Lb/u/j0;->b(Lb/u/x;I)I

    move-result v4

    .line 2
    invoke-static {p3, v2}, Lb/u/j0;->b(Lb/u/x;I)I

    move-result p3

    .line 3
    invoke-virtual {p2}, Landroidx/transition/Transition;->o()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    new-array v6, v5, [I

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v3, v6, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    div-int/2addr v7, v5

    add-int/2addr v7, v3

    int-to-float v3, v7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v7

    add-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    aget v2, v6, v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    add-int/2addr v6, v2

    int-to-float v2, v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    add-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_2
    int-to-float v4, v4

    int-to-float p3, p3

    int-to-float v2, v2

    int-to-float v3, v3

    sub-float/2addr v2, v4

    sub-float/2addr v3, p3

    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v3, v2

    float-to-double v2, v3

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p3, v2

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v3, 0x0

    sub-float/2addr v2, v3

    sub-float/2addr p1, v3

    mul-float v2, v2, v2

    mul-float p1, p1, p1

    add-float/2addr p1, v2

    float-to-double v2, p1

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    div-float/2addr p3, p1

    .line 7
    iget-wide p1, p2, Landroidx/transition/Transition;->e:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    const-wide/16 p1, 0x12c

    :cond_4
    int-to-long v0, p4

    mul-long p1, p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    mul-float p1, p1, p3

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method
