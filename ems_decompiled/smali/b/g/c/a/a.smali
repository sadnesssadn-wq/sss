.class public Lb/g/c/a/a;
.super Lb/g/c/b/o;
.source ""


# instance fields
.field public a:Lb/g/a/h/a/n;

.field public b:Lb/g/a/h/a/k;

.field public c:Lb/g/a/h/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/g/c/b/o;-><init>()V

    new-instance v0, Lb/g/a/h/a/n;

    invoke-direct {v0}, Lb/g/a/h/a/n;-><init>()V

    iput-object v0, p0, Lb/g/c/a/a;->a:Lb/g/a/h/a/n;

    iput-object v0, p0, Lb/g/c/a/a;->c:Lb/g/a/h/a/m;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Lb/g/c/a/a;->c:Lb/g/a/h/a/m;

    invoke-interface {v0}, Lb/g/a/h/a/m;->b()F

    move-result v0

    return v0
.end method

.method public b(FFFFFF)V
    .locals 6

    iget-object v0, p0, Lb/g/c/a/a;->a:Lb/g/a/h/a/n;

    iput-object v0, p0, Lb/g/c/a/a;->c:Lb/g/a/h/a/m;

    .line 1
    iput p1, v0, Lb/g/a/h/a/n;->l:F

    cmpl-float v1, p1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lb/g/a/h/a/n;->k:Z

    if-eqz v1, :cond_1

    neg-float p3, p3

    sub-float/2addr p1, p2

    move v2, p1

    goto :goto_1

    :cond_1
    sub-float/2addr p2, p1

    move v2, p2

    :goto_1
    move v1, p3

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lb/g/a/h/a/n;->d(FFFFF)V

    return-void
.end method

.method public getInterpolation(F)F
    .locals 1

    iget-object v0, p0, Lb/g/c/a/a;->c:Lb/g/a/h/a/m;

    invoke-interface {v0, p1}, Lb/g/a/h/a/m;->getInterpolation(F)F

    move-result p1

    return p1
.end method
