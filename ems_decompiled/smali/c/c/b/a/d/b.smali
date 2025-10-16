.class public Lc/c/b/a/d/b;
.super Lc/c/b/a/d/e;
.source ""

# interfaces
.implements Lc/c/b/a/g/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/d/e<",
        "Lc/c/b/a/d/c;",
        ">;",
        "Lc/c/b/a/g/b/a;"
    }
.end annotation


# instance fields
.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/b/a/d/c;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lc/c/b/a/d/e;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 p2, 0x1

    iput p2, p0, Lc/c/b/a/d/b;->u:I

    const/16 v0, 0xd7

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lc/c/b/a/d/b;->v:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lc/c/b/a/d/b;->w:I

    const/16 v0, 0x78

    iput v0, p0, Lc/c/b/a/d/b;->x:I

    const/4 v0, 0x0

    iput v0, p0, Lc/c/b/a/d/b;->y:I

    const-string v1, "Stack"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/c/b/a/d/b;->z:[Ljava/lang/String;

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lc/c/b/a/d/e;->t:I

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/a/d/c;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iput v0, p0, Lc/c/b/a/d/b;->y:I

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/a/d/c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lc/c/b/a/d/b;->y:I

    add-int/2addr v1, p2

    iput v1, p0, Lc/c/b/a/d/b;->y:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public H()I
    .locals 1

    iget v0, p0, Lc/c/b/a/d/b;->u:I

    return v0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Lc/c/b/a/d/b;->w:I

    return v0
.end method

.method public U()I
    .locals 1

    iget v0, p0, Lc/c/b/a/d/b;->x:I

    return v0
.end method

.method public U0(Lc/c/b/a/d/o;)V
    .locals 2

    check-cast p1, Lc/c/b/a/d/c;

    if-eqz p1, :cond_2

    .line 1
    iget v0, p1, Lc/c/b/a/d/g;->c:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget v0, p1, Lc/c/b/a/d/g;->c:F

    .line 4
    iget v1, p0, Lc/c/b/a/d/n;->q:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iput v0, p0, Lc/c/b/a/d/n;->q:F

    :cond_0
    iget v1, p0, Lc/c/b/a/d/n;->p:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iput v0, p0, Lc/c/b/a/d/n;->p:F

    :cond_1
    invoke-virtual {p0, p1}, Lc/c/b/a/d/n;->V0(Lc/c/b/a/d/o;)V

    :cond_2
    return-void
.end method

.method public Y()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lc/c/b/a/d/b;->v:I

    return v0
.end method

.method public i0()Z
    .locals 2

    iget v0, p0, Lc/c/b/a/d/b;->u:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k0()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/b;->z:[Ljava/lang/String;

    return-object v0
.end method
