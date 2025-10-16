.class public Lc/c/b/a/c/j;
.super Lc/c/b/a/c/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/b/a/c/j$a;,
        Lc/c/b/a/c/j$b;
    }
.end annotation


# instance fields
.field public C:Z

.field public D:Z

.field public E:I

.field public F:F

.field public G:F

.field public H:F

.field public I:Lc/c/b/a/c/j$b;

.field public J:Lc/c/b/a/c/j$a;

.field public K:F


# direct methods
.method public constructor <init>(Lc/c/b/a/c/j$a;)V
    .locals 1

    invoke-direct {p0}, Lc/c/b/a/c/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/b/a/c/j;->C:Z

    iput-boolean v0, p0, Lc/c/b/a/c/j;->D:Z

    const v0, -0x777778

    iput v0, p0, Lc/c/b/a/c/j;->E:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc/c/b/a/c/j;->F:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lc/c/b/a/c/j;->G:F

    iput v0, p0, Lc/c/b/a/c/j;->H:F

    sget-object v0, Lc/c/b/a/c/j$b;->c:Lc/c/b/a/c/j$b;

    iput-object v0, p0, Lc/c/b/a/c/j;->I:Lc/c/b/a/c/j$b;

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lc/c/b/a/c/j;->K:F

    iput-object p1, p0, Lc/c/b/a/c/j;->J:Lc/c/b/a/c/j$a;

    const/4 p1, 0x0

    iput p1, p0, Lc/c/b/a/c/b;->c:F

    return-void
.end method


# virtual methods
.method public b(FF)V
    .locals 4

    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    sub-float/2addr p1, v0

    :cond_0
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-boolean v1, p0, Lc/c/b/a/c/a;->y:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_1

    iget p1, p0, Lc/c/b/a/c/a;->A:F

    goto :goto_0

    :cond_1
    div-float v1, v0, v2

    .line 1
    iget v3, p0, Lc/c/b/a/c/j;->H:F

    mul-float v1, v1, v3

    sub-float/2addr p1, v1

    .line 2
    :goto_0
    iput p1, p0, Lc/c/b/a/c/a;->A:F

    div-float/2addr v0, v2

    .line 3
    iget v1, p0, Lc/c/b/a/c/j;->G:F

    mul-float v0, v0, v1

    add-float/2addr v0, p2

    .line 4
    iput v0, p0, Lc/c/b/a/c/a;->z:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lc/c/b/a/c/a;->B:F

    return-void
.end method

.method public h(Landroid/graphics/Paint;)F
    .locals 2

    iget v0, p0, Lc/c/b/a/c/b;->d:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lc/c/b/a/c/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/b/a/k/i;->a(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    .line 1
    iget v0, p0, Lc/c/b/a/c/b;->c:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public i(Landroid/graphics/Paint;)F
    .locals 7

    iget v0, p0, Lc/c/b/a/c/b;->d:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lc/c/b/a/c/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 1
    sget-object v1, Lc/c/b/a/k/i;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 2
    iget v0, p0, Lc/c/b/a/c/b;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    add-float/2addr v0, p1

    .line 3
    iget p1, p0, Lc/c/b/a/c/j;->K:F

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    :cond_0
    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/c/b/a/c/b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lc/c/b/a/c/a;->t:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/c/b/a/c/j;->I:Lc/c/b/a/c/j$b;

    .line 4
    sget-object v1, Lc/c/b/a/c/j$b;->c:Lc/c/b/a/c/j$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
