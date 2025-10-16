.class public abstract Lc/c/b/a/c/a;
.super Lc/c/b/a/c/b;
.source ""


# instance fields
.field public A:F

.field public B:F

.field public f:Lc/c/b/a/e/e;

.field public g:I

.field public h:F

.field public i:I

.field public j:F

.field public k:[F

.field public l:[F

.field public m:I

.field public n:I

.field public o:I

.field public p:F

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/a/c/g;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z

.field public w:F

.field public x:F

.field public y:Z

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lc/c/b/a/c/b;-><init>()V

    const v0, -0x777778

    iput v0, p0, Lc/c/b/a/c/a;->g:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lc/c/b/a/c/a;->h:F

    iput v0, p0, Lc/c/b/a/c/a;->i:I

    iput v1, p0, Lc/c/b/a/c/a;->j:F

    const/4 v0, 0x0

    new-array v2, v0, [F

    iput-object v2, p0, Lc/c/b/a/c/a;->k:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lc/c/b/a/c/a;->l:[F

    const/4 v2, 0x6

    iput v2, p0, Lc/c/b/a/c/a;->o:I

    iput v1, p0, Lc/c/b/a/c/a;->p:F

    iput-boolean v0, p0, Lc/c/b/a/c/a;->q:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/c/b/a/c/a;->r:Z

    iput-boolean v1, p0, Lc/c/b/a/c/a;->s:Z

    iput-boolean v1, p0, Lc/c/b/a/c/a;->t:Z

    iput-boolean v1, p0, Lc/c/b/a/c/a;->v:Z

    const/4 v1, 0x0

    iput v1, p0, Lc/c/b/a/c/a;->w:F

    iput v1, p0, Lc/c/b/a/c/a;->x:F

    iput-boolean v0, p0, Lc/c/b/a/c/a;->y:Z

    iput v1, p0, Lc/c/b/a/c/a;->z:F

    iput v1, p0, Lc/c/b/a/c/a;->A:F

    iput v1, p0, Lc/c/b/a/c/a;->B:F

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, p0, Lc/c/b/a/c/b;->d:F

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v1

    iput v1, p0, Lc/c/b/a/c/b;->b:F

    invoke-static {v0}, Lc/c/b/a/k/i;->d(F)F

    move-result v0

    iput v0, p0, Lc/c/b/a/c/b;->c:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/b/a/c/a;->u:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b(FF)V
    .locals 2

    iget-boolean v0, p0, Lc/c/b/a/c/a;->y:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lc/c/b/a/c/a;->A:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lc/c/b/a/c/a;->w:F

    sub-float/2addr p1, v0

    :goto_0
    iget v0, p0, Lc/c/b/a/c/a;->x:F

    add-float/2addr p2, v0

    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    sub-float/2addr p1, v0

    :cond_1
    iput p1, p0, Lc/c/b/a/c/a;->A:F

    iput p2, p0, Lc/c/b/a/c/a;->z:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lc/c/b/a/c/a;->B:F

    return-void
.end method

.method public c(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lc/c/b/a/c/a;->k:[F

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/c/b/a/c/a;->e()Lc/c/b/a/e/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/b/a/c/a;->k:[F

    aget p1, v1, p1

    .line 1
    invoke-virtual {v0, p1}, Lc/c/b/a/e/e;->b(F)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lc/c/b/a/c/a;->k:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lc/c/b/a/c/a;->c(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public e()Lc/c/b/a/e/e;
    .locals 2

    iget-object v0, p0, Lc/c/b/a/c/a;->f:Lc/c/b/a/e/e;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lc/c/b/a/e/a;

    if-eqz v1, :cond_1

    check-cast v0, Lc/c/b/a/e/a;

    .line 1
    iget v0, v0, Lc/c/b/a/e/a;->b:I

    .line 2
    iget v1, p0, Lc/c/b/a/c/a;->n:I

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lc/c/b/a/e/a;

    iget v1, p0, Lc/c/b/a/c/a;->n:I

    invoke-direct {v0, v1}, Lc/c/b/a/e/a;-><init>(I)V

    iput-object v0, p0, Lc/c/b/a/c/a;->f:Lc/c/b/a/e/e;

    :cond_1
    iget-object v0, p0, Lc/c/b/a/c/a;->f:Lc/c/b/a/e/e;

    return-object v0
.end method

.method public f(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/b/a/c/a;->y:Z

    iput p1, p0, Lc/c/b/a/c/a;->A:F

    iget v0, p0, Lc/c/b/a/c/a;->z:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lc/c/b/a/c/a;->B:F

    return-void
.end method

.method public g(F)V
    .locals 0

    iput p1, p0, Lc/c/b/a/c/a;->p:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/c/b/a/c/a;->q:Z

    return-void
.end method
