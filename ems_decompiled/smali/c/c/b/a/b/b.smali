.class public Lc/c/b/a/b/b;
.super Lc/c/b/a/b/a;
.source ""


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc/c/b/a/b/a;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public b(Lc/c/b/a/g/b/a;)V
    .locals 11

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->y0()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lc/c/b/a/b/a;->c:F

    mul-float v0, v0, v1

    iget v1, p0, Lc/c/b/a/b/a;->g:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    int-to-float v4, v3

    cmpg-float v4, v4, v0

    if-gez v4, :cond_7

    invoke-interface {p1, v3}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v4

    check-cast v4, Lc/c/b/a/d/c;

    if-nez v4, :cond_0

    goto :goto_6

    .line 1
    :cond_0
    iget v5, v4, Lc/c/b/a/d/o;->f:F

    .line 2
    iget v4, v4, Lc/c/b/a/d/g;->c:F

    sub-float v6, v5, v1

    add-float/2addr v5, v1

    .line 3
    iget-boolean v7, p0, Lc/c/b/a/b/a;->f:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    cmpl-float v7, v4, v8

    if-ltz v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    cmpg-float v9, v4, v8

    if-gtz v9, :cond_2

    goto :goto_4

    :cond_2
    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    cmpl-float v7, v4, v8

    if-ltz v7, :cond_4

    move v7, v4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    cmpg-float v9, v4, v8

    if-gtz v9, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    move v10, v7

    move v7, v4

    move v4, v10

    :goto_4
    cmpl-float v8, v4, v8

    if-lez v8, :cond_6

    iget v8, p0, Lc/c/b/a/b/a;->d:F

    mul-float v4, v4, v8

    goto :goto_5

    :cond_6
    iget v8, p0, Lc/c/b/a/b/a;->d:F

    mul-float v7, v7, v8

    :goto_5
    invoke-virtual {p0, v7, v5, v4, v6}, Lc/c/b/a/b/a;->a(FFFF)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_7
    iput v2, p0, Lc/c/b/a/b/a;->a:I

    return-void
.end method
