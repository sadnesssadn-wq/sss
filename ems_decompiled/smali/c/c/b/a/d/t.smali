.class public Lc/c/b/a/d/t;
.super Lc/c/b/a/d/n;
.source ""

# interfaces
.implements Lc/c/b/a/g/b/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/b/a/d/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/d/n<",
        "Lc/c/b/a/d/u;",
        ">;",
        "Lc/c/b/a/g/b/i;"
    }
.end annotation


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:Z

.field public t:F

.field public u:F

.field public v:Lc/c/b/a/d/t$a;

.field public w:Lc/c/b/a/d/t$a;

.field public x:Z

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/b/a/d/u;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lc/c/b/a/d/n;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lc/c/b/a/d/t;->t:F

    const/high16 p1, 0x41900000    # 18.0f

    iput p1, p0, Lc/c/b/a/d/t;->u:F

    sget-object p1, Lc/c/b/a/d/t$a;->c:Lc/c/b/a/d/t$a;

    iput-object p1, p0, Lc/c/b/a/d/t;->v:Lc/c/b/a/d/t$a;

    iput-object p1, p0, Lc/c/b/a/d/t;->w:Lc/c/b/a/d/t$a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/c/b/a/d/t;->x:Z

    const/high16 p1, -0x1000000

    iput p1, p0, Lc/c/b/a/d/t;->y:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lc/c/b/a/d/t;->z:F

    const/high16 p1, 0x42960000    # 75.0f

    iput p1, p0, Lc/c/b/a/d/t;->A:F

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lc/c/b/a/d/t;->B:F

    const p1, 0x3ecccccd    # 0.4f

    iput p1, p0, Lc/c/b/a/d/t;->C:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/c/b/a/d/t;->D:Z

    return-void
.end method


# virtual methods
.method public A0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/b/a/d/t;->D:Z

    return v0
.end method

.method public M()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/t;->C:F

    return v0
.end method

.method public N0()I
    .locals 1

    iget v0, p0, Lc/c/b/a/d/t;->y:I

    return v0
.end method

.method public T()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/b/a/d/t;->x:Z

    return v0
.end method

.method public U0(Lc/c/b/a/d/o;)V
    .locals 0

    check-cast p1, Lc/c/b/a/d/u;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lc/c/b/a/d/n;->W0(Lc/c/b/a/d/o;)V

    :goto_0
    return-void
.end method

.method public Y0(F)V
    .locals 0

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lc/c/b/a/d/t;->u:F

    return-void
.end method

.method public Z0(F)V
    .locals 2

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/high16 p1, 0x41a00000    # 20.0f

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lc/c/b/a/d/t;->t:F

    return-void
.end method

.method public a()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/t;->z:F

    return v0
.end method

.method public a0()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/t;->u:F

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/t;->B:F

    return v0
.end method

.method public d()Lc/c/b/a/d/t$a;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/t;->v:Lc/c/b/a/d/t$a;

    return-object v0
.end method

.method public h0()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/t;->A:F

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/t;->t:F

    return v0
.end method

.method public z()Lc/c/b/a/d/t$a;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/t;->w:Lc/c/b/a/d/t$a;

    return-object v0
.end method
