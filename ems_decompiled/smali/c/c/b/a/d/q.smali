.class public Lc/c/b/a/d/q;
.super Lc/c/b/a/d/r;
.source ""

# interfaces
.implements Lc/c/b/a/g/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/b/a/d/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/d/r<",
        "Lc/c/b/a/d/o;",
        ">;",
        "Lc/c/b/a/g/b/f;"
    }
.end annotation


# instance fields
.field public A:Lc/c/b/a/d/q$a;

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public C:I

.field public D:F

.field public E:F

.field public F:F

.field public G:Lc/c/b/a/e/b;

.field public H:Z

.field public I:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/b/a/d/o;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lc/c/b/a/d/r;-><init>(Ljava/util/List;Ljava/lang/String;)V

    sget-object p1, Lc/c/b/a/d/q$a;->c:Lc/c/b/a/d/q$a;

    iput-object p1, p0, Lc/c/b/a/d/q;->A:Lc/c/b/a/d/q$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/c/b/a/d/q;->B:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lc/c/b/a/d/q;->C:I

    const/high16 p1, 0x41000000    # 8.0f

    iput p1, p0, Lc/c/b/a/d/q;->D:F

    const/high16 p1, 0x40800000    # 4.0f

    iput p1, p0, Lc/c/b/a/d/q;->E:F

    const p1, 0x3e4ccccd    # 0.2f

    iput p1, p0, Lc/c/b/a/d/q;->F:F

    new-instance p1, Lc/c/b/a/e/b;

    invoke-direct {p1}, Lc/c/b/a/e/b;-><init>()V

    iput-object p1, p0, Lc/c/b/a/d/q;->G:Lc/c/b/a/e/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/c/b/a/d/q;->H:Z

    iput-boolean p1, p0, Lc/c/b/a/d/q;->I:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/c/b/a/d/q;->B:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lc/c/b/a/d/q;->B:Ljava/util/List;

    const/16 p2, 0x8c

    const/16 v0, 0xea

    const/16 v1, 0xff

    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public C0()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/b/a/d/q;->H:Z

    return v0
.end method

.method public I0()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/q;->E:F

    return v0
.end method

.method public J0()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/q;->D:F

    return v0
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public P0()Lc/c/b/a/d/q$a;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/q;->A:Lc/c/b/a/d/q$a;

    return-object v0
.end method

.method public R0()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/b/a/d/q;->I:Z

    return v0
.end method

.method public X()I
    .locals 1

    iget v0, p0, Lc/c/b/a/d/q;->C:I

    return v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/q;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public l0()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/q;->F:F

    return v0
.end method

.method public p0()Landroid/graphics/DashPathEffect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q0(I)I
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/q;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public v()Lc/c/b/a/e/b;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/q;->G:Lc/c/b/a/e/b;

    return-object v0
.end method
