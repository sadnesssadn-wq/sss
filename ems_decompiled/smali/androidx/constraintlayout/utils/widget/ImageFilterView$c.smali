.class public Landroidx/constraintlayout/utils/widget/ImageFilterView$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/utils/widget/ImageFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:[F

.field public b:Landroid/graphics/ColorMatrix;

.field public c:Landroid/graphics/ColorMatrix;

.field public d:F

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->d:F

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->e:F

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->f:F

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->g:F

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->reset()V

    iget v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->e:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x12

    const/16 v6, 0x9

    const/16 v7, 0xa

    const/16 v8, 0xb

    const/16 v9, 0xc

    const/16 v10, 0xd

    const/16 v11, 0xe

    const/16 v12, 0xf

    const/16 v13, 0x10

    const/16 v14, 0x11

    const/4 v15, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v17, 0x8

    const/16 v18, 0x7

    const/16 v19, 0x6

    const/16 v20, 0x5

    const/16 v21, 0x4

    const/16 v22, 0x3

    const/16 v23, 0x2

    cmpl-float v24, v1, v4

    if-eqz v24, :cond_0

    sub-float v24, v4, v1

    const v25, 0x3e998c7e    # 0.2999f

    mul-float v25, v25, v24

    const v26, 0x3f1645a2    # 0.587f

    mul-float v26, v26, v24

    const v27, 0x3de978d5    # 0.114f

    mul-float v24, v24, v27

    .line 1
    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    add-float v28, v25, v1

    aput v28, v4, v2

    aput v26, v4, v15

    aput v24, v4, v23

    aput v3, v4, v22

    aput v3, v4, v21

    aput v25, v4, v20

    add-float v28, v26, v1

    aput v28, v4, v19

    aput v24, v4, v18

    aput v3, v4, v17

    aput v3, v4, v6

    aput v25, v4, v7

    aput v26, v4, v8

    add-float v24, v24, v1

    aput v24, v4, v9

    aput v3, v4, v10

    aput v3, v4, v11

    aput v3, v4, v12

    aput v3, v4, v13

    aput v3, v4, v14

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v4, v5

    const/16 v16, 0x13

    aput v3, v4, v16

    .line 2
    iget-object v5, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->f:F

    cmpl-float v25, v5, v1

    if-eqz v25, :cond_1

    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v4, v5, v5, v5, v1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    iget-object v5, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v4, v5}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/4 v4, 0x1

    :cond_1
    iget v5, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->g:F

    cmpl-float v25, v5, v1

    if-eqz v25, :cond_6

    cmpg-float v1, v5, v3

    if-gtz v1, :cond_2

    const v5, 0x3c23d70a    # 0.01f

    :cond_2
    const v1, 0x459c4000    # 5000.0f

    div-float/2addr v1, v5

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    const v4, 0x43211e9c

    const v5, 0x42c6f10d

    const/high16 v25, 0x42840000    # 66.0f

    const/high16 v14, 0x437f0000    # 255.0f

    cmpl-float v28, v1, v25

    if-lez v28, :cond_3

    const/high16 v28, 0x42700000    # 60.0f

    sub-float v13, v1, v28

    const v28, 0x43a4d970

    float-to-double v12, v13

    const-wide v10, -0x403ef32580000000L    # -0.13320475816726685

    .line 3
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float v10, v10, v28

    const v11, 0x43900fa3

    move/from16 v29, v10

    const-wide v9, 0x3fb354f0e0000000L

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, v11

    move/from16 v10, v29

    goto :goto_1

    :cond_3
    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, v5

    sub-float/2addr v9, v4

    const/high16 v10, 0x437f0000    # 255.0f

    :goto_1
    const v11, 0x439885bc

    const v12, 0x430a848a

    cmpg-float v13, v1, v25

    if-gez v13, :cond_5

    const/high16 v13, 0x41980000    # 19.0f

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    const/high16 v13, 0x41200000    # 10.0f

    sub-float/2addr v1, v13

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float v1, v1, v12

    sub-float/2addr v1, v11

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/high16 v1, 0x437f0000    # 255.0f

    :goto_2
    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v14, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v14, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v9, 0x42480000    # 50.0f

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, v5

    sub-float/2addr v9, v4

    const/high16 v4, 0x42200000    # 40.0f

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v12

    sub-float/2addr v4, v11

    invoke-static {v14, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v14, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v14, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v7, v5

    div-float/2addr v8, v9

    div-float/2addr v1, v4

    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    aput v7, v4, v2

    aput v3, v4, v15

    aput v3, v4, v23

    aput v3, v4, v22

    aput v3, v4, v21

    aput v3, v4, v20

    aput v8, v4, v19

    aput v3, v4, v18

    aput v3, v4, v17

    aput v3, v4, v6

    const/16 v5, 0xa

    aput v3, v4, v5

    const/16 v5, 0xb

    aput v3, v4, v5

    const/16 v5, 0xc

    aput v1, v4, v5

    const/16 v1, 0xd

    aput v3, v4, v1

    const/16 v1, 0xe

    aput v3, v4, v1

    const/16 v1, 0xf

    aput v3, v4, v1

    const/16 v1, 0x10

    aput v3, v4, v1

    const/16 v1, 0x11

    aput v3, v4, v1

    const/16 v1, 0x12

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v1

    const/16 v1, 0x13

    aput v3, v4, v1

    .line 4
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v4}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_3
    iget v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->d:F

    cmpl-float v7, v1, v5

    if-eqz v7, :cond_7

    .line 5
    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->a:[F

    aput v1, v4, v2

    aput v3, v4, v15

    aput v3, v4, v23

    aput v3, v4, v22

    aput v3, v4, v21

    aput v3, v4, v20

    aput v1, v4, v19

    aput v3, v4, v18

    aput v3, v4, v17

    aput v3, v4, v6

    const/16 v2, 0xa

    aput v3, v4, v2

    const/16 v2, 0xb

    aput v3, v4, v2

    const/16 v2, 0xc

    aput v1, v4, v2

    const/16 v1, 0xd

    aput v3, v4, v1

    const/16 v1, 0xe

    aput v3, v4, v1

    const/16 v1, 0xf

    aput v3, v4, v1

    const/16 v1, 0x10

    aput v3, v4, v1

    const/16 v1, 0x11

    aput v3, v4, v1

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v4, v1

    const/16 v1, 0x13

    aput v3, v4, v1

    .line 6
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    iget-object v2, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->c:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto :goto_4

    :cond_7
    move v15, v4

    :goto_4
    if-eqz v15, :cond_8

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$c;->b:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_5

    :cond_8
    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_5
    return-void
.end method
