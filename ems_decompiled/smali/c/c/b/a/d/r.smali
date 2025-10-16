.class public abstract Lc/c/b/a/d/r;
.super Lc/c/b/a/d/e;
.source ""

# interfaces
.implements Lc/c/b/a/g/b/g;
.implements Lc/c/b/a/g/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc/c/b/a/d/o;",
        ">",
        "Lc/c/b/a/d/r<",
        "TT;>;",
        "Lc/c/b/a/g/b/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public u:Z

.field public v:Z

.field public w:F

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/b/a/d/e;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/c/b/a/d/r;->u:Z

    iput-boolean p1, p0, Lc/c/b/a/d/r;->v:Z

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lc/c/b/a/d/r;->w:F

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lc/c/b/a/d/r;->w:F

    const/16 p1, 0x8c

    const/16 p2, 0xea

    const/16 v0, 0xff

    .line 2
    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lc/c/b/a/d/r;->x:I

    const/16 p1, 0x55

    iput p1, p0, Lc/c/b/a/d/r;->y:I

    const/high16 p1, 0x40200000    # 2.5f

    iput p1, p0, Lc/c/b/a/d/r;->z:F

    return-void
.end method


# virtual methods
.method public E0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/b/a/d/r;->u:Z

    return v0
.end method

.method public I()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/r;->z:F

    return v0
.end method

.method public L0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public M0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/b/a/d/r;->v:Z

    return v0
.end method

.method public e0()F
    .locals 1

    .line 1
    iget v0, p0, Lc/c/b/a/d/r;->w:F

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lc/c/b/a/d/r;->x:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lc/c/b/a/d/r;->y:I

    return v0
.end method

.method public s0()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Landroid/graphics/DashPathEffect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
