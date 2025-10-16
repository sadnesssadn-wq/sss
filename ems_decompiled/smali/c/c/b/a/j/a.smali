.class public abstract Lc/c/b/a/j/a;
.super Lc/c/b/a/j/o;
.source ""


# instance fields
.field public b:Lc/c/b/a/c/a;

.field public c:Lc/c/b/a/k/g;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lc/c/b/a/k/j;Lc/c/b/a/k/g;Lc/c/b/a/c/a;)V
    .locals 1

    invoke-direct {p0, p1}, Lc/c/b/a/j/o;-><init>(Lc/c/b/a/k/j;)V

    iput-object p2, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    iput-object p3, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/a;->e:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    const p3, -0x777778

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lc/c/b/a/j/a;->d:Landroid/graphics/Paint;

    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lc/c/b/a/j/a;->f:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lc/c/b/a/j/a;->g:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(FFZ)V
    .locals 2

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/b/a/k/j;->a()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    invoke-virtual {v0}, Lc/c/b/a/k/j;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    iget-object p2, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 1
    iget-object p2, p2, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 2
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 3
    invoke-virtual {p1, v0, p2}, Lc/c/b/a/k/g;->c(FF)Lc/c/b/a/k/d;

    move-result-object p1

    iget-object p2, p0, Lc/c/b/a/j/a;->c:Lc/c/b/a/k/g;

    iget-object v0, p0, Lc/c/b/a/j/o;->a:Lc/c/b/a/k/j;

    .line 4
    iget-object v0, v0, Lc/c/b/a/k/j;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 5
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 6
    invoke-virtual {p2, v1, v0}, Lc/c/b/a/k/g;->c(FF)Lc/c/b/a/k/d;

    move-result-object p2

    if-nez p3, :cond_0

    iget-wide v0, p2, Lc/c/b/a/k/d;->c:D

    double-to-float p3, v0

    iget-wide v0, p1, Lc/c/b/a/k/d;->c:D

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lc/c/b/a/k/d;->c:D

    double-to-float p3, v0

    iget-wide v0, p2, Lc/c/b/a/k/d;->c:D

    :goto_0
    double-to-float v0, v0

    .line 7
    sget-object v1, Lc/c/b/a/k/d;->d:Lc/c/b/a/k/f;

    invoke-virtual {v1, p1}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    sget-object p1, Lc/c/b/a/k/d;->d:Lc/c/b/a/k/f;

    invoke-virtual {p1, p2}, Lc/c/b/a/k/f;->c(Lc/c/b/a/k/f$a;)V

    move p1, p3

    move p2, v0

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2}, Lc/c/b/a/j/a;->b(FF)V

    return-void
.end method

.method public b(FF)V
    .locals 12

    iget-object v0, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    .line 1
    iget v0, v0, Lc/c/b/a/c/a;->o:I

    sub-float v1, p2, p1

    .line 2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    const-wide/16 v4, 0x0

    cmpg-double v6, v1, v4

    if-lez v6, :cond_b

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_5

    :cond_0
    int-to-double v6, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v6

    invoke-static {v1, v2}, Lc/c/b/a/k/i;->j(D)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    .line 3
    iget-boolean v6, v2, Lc/c/b/a/c/a;->q:Z

    if-eqz v6, :cond_1

    .line 4
    iget v2, v2, Lc/c/b/a/c/a;->p:F

    float-to-double v6, v2

    cmpg-double v2, v0, v6

    if-gez v2, :cond_1

    move-wide v0, v6

    .line 5
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-int v2, v6

    int-to-double v6, v2

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lc/c/b/a/k/i;->j(D)F

    move-result v2

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double v10, v0, v6

    double-to-int v2, v10

    const/4 v10, 0x5

    if-le v2, v10, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :cond_2
    iget-object v2, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    cmpl-double v2, v0, v4

    if-nez v2, :cond_3

    move-wide v6, v4

    goto :goto_0

    :cond_3
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    mul-double v6, v6, v0

    :goto_0
    iget-object p1, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    cmpl-double p1, v0, v4

    if-nez p1, :cond_4

    move-wide p1, v4

    goto :goto_1

    :cond_4
    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Lc/c/b/a/k/i;->i(D)D

    move-result-wide p1

    :goto_1
    cmpl-double v2, v0, v4

    if-eqz v2, :cond_5

    move-wide v8, v6

    const/4 v2, 0x0

    :goto_2
    cmpg-double v10, v8, p1

    if-gtz v10, :cond_6

    add-int/lit8 v2, v2, 0x1

    add-double/2addr v8, v0

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    iget-object p1, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    iput v2, p1, Lc/c/b/a/c/a;->m:I

    iget-object p2, p1, Lc/c/b/a/c/a;->k:[F

    array-length p2, p2

    if-ge p2, v2, :cond_7

    new-array p2, v2, [F

    iput-object p2, p1, Lc/c/b/a/c/a;->k:[F

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-ge p1, v2, :cond_9

    cmpl-double p2, v6, v4

    if-nez p2, :cond_8

    move-wide v6, v4

    :cond_8
    iget-object p2, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    iget-object p2, p2, Lc/c/b/a/c/a;->k:[F

    double-to-float v8, v6

    aput v8, p2, p1

    add-double/2addr v6, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_9
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, p1

    iget-object p1, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    if-gez v2, :cond_a

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    iput p2, p1, Lc/c/b/a/c/a;->n:I

    goto :goto_4

    :cond_a
    iput v3, p1, Lc/c/b/a/c/a;->n:I

    :goto_4
    iget-object p1, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_b
    :goto_5
    iget-object p1, p0, Lc/c/b/a/j/a;->b:Lc/c/b/a/c/a;

    new-array p2, v3, [F

    iput-object p2, p1, Lc/c/b/a/c/a;->k:[F

    new-array p2, v3, [F

    iput-object p2, p1, Lc/c/b/a/c/a;->l:[F

    iput v3, p1, Lc/c/b/a/c/a;->m:I

    return-void
.end method
