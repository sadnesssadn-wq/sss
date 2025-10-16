.class public Lb/g/a/h/a/p;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFII[F)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x0

    aget v3, p5, v2

    const/4 v4, 0x1

    aget v5, p5, v4

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v7, p1, v6

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    sub-float v6, p2, v6

    mul-float v6, v6, v8

    iget v8, v0, Lb/g/a/h/a/p;->c:F

    add-float/2addr v3, v8

    iget v8, v0, Lb/g/a/h/a/p;->d:F

    add-float/2addr v5, v8

    iget v8, v0, Lb/g/a/h/a/p;->a:F

    mul-float v8, v8, v7

    add-float/2addr v8, v3

    iget v3, v0, Lb/g/a/h/a/p;->b:F

    mul-float v3, v3, v6

    add-float/2addr v3, v5

    iget v5, v0, Lb/g/a/h/a/p;->f:F

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float v5, v9

    iget v9, v0, Lb/g/a/h/a/p;->e:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float v9, v9

    neg-int v10, v1

    int-to-float v10, v10

    mul-float v10, v10, v7

    float-to-double v10, v10

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v10

    move/from16 v5, p4

    int-to-float v5, v5

    mul-float v5, v5, v6

    float-to-double v5, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v5

    sub-double/2addr v14, v10

    double-to-float v10, v14

    mul-float v10, v10, v9

    add-float/2addr v10, v8

    int-to-float v1, v1

    mul-float v1, v1, v7

    float-to-double v7, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    sub-double/2addr v14, v7

    double-to-float v1, v14

    mul-float v9, v9, v1

    add-float/2addr v9, v3

    aput v10, p5, v2

    aput v9, p5, v4

    return-void
.end method

.method public b(Lb/g/a/h/a/j;F)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lb/g/a/h/a/j;->a:Lb/g/a/h/a/b;

    float-to-double v1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lb/g/a/h/a/b;->e(DI)D

    move-result-wide v3

    double-to-float v0, v3

    .line 2
    iput v0, p0, Lb/g/a/h/a/p;->e:F

    .line 3
    iget-object p1, p1, Lb/g/a/h/a/j;->a:Lb/g/a/h/a/b;

    invoke-virtual {p1, v1, v2, p2}, Lb/g/a/h/a/b;->b(DI)D

    move-result-wide p1

    double-to-float p1, p1

    .line 4
    iput p1, p0, Lb/g/a/h/a/p;->f:F

    :cond_0
    return-void
.end method

.method public c(Lb/g/a/h/a/j;Lb/g/a/h/a/j;F)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lb/g/a/h/a/j;->a:Lb/g/a/h/a/b;

    float-to-double v1, p3

    invoke-virtual {p1, v1, v2, v0}, Lb/g/a/h/a/b;->e(DI)D

    move-result-wide v1

    double-to-float p1, v1

    .line 2
    iput p1, p0, Lb/g/a/h/a/p;->a:F

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p2, Lb/g/a/h/a/j;->a:Lb/g/a/h/a/b;

    float-to-double p2, p3

    invoke-virtual {p1, p2, p3, v0}, Lb/g/a/h/a/b;->e(DI)D

    move-result-wide p1

    double-to-float p1, p1

    .line 4
    iput p1, p0, Lb/g/a/h/a/p;->b:F

    :cond_1
    return-void
.end method

.method public d(Lb/g/a/h/a/j;Lb/g/a/h/a/j;F)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lb/g/a/h/a/j;->a:Lb/g/a/h/a/b;

    float-to-double v1, p3

    invoke-virtual {p1, v1, v2, v0}, Lb/g/a/h/a/b;->e(DI)D

    move-result-wide v1

    double-to-float p1, v1

    .line 2
    iput p1, p0, Lb/g/a/h/a/p;->c:F

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p2, Lb/g/a/h/a/j;->a:Lb/g/a/h/a/b;

    float-to-double p2, p3

    invoke-virtual {p1, p2, p3, v0}, Lb/g/a/h/a/b;->e(DI)D

    move-result-wide p1

    double-to-float p1, p1

    .line 4
    iput p1, p0, Lb/g/a/h/a/p;->d:F

    :cond_1
    return-void
.end method
