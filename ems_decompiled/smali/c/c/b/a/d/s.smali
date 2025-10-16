.class public Lc/c/b/a/d/s;
.super Lc/c/b/a/d/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/d/l<",
        "Lc/c/b/a/g/b/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c/b/a/d/l;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc/c/b/a/g/b/i;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lc/c/b/a/g/b/i;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lc/c/b/a/d/l;-><init>([Lc/c/b/a/g/b/e;)V

    return-void
.end method


# virtual methods
.method public c(I)Lc/c/b/a/g/b/e;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lc/c/b/a/d/s;->o()Lc/c/b/a/g/b/i;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public f(Lc/c/b/a/f/d;)Lc/c/b/a/d/o;
    .locals 1

    invoke-virtual {p0}, Lc/c/b/a/d/s;->o()Lc/c/b/a/g/b/i;

    move-result-object v0

    .line 1
    iget p1, p1, Lc/c/b/a/f/d;->a:F

    float-to-int p1, p1

    .line 2
    invoke-interface {v0, p1}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object p1

    return-object p1
.end method

.method public o()Lc/c/b/a/g/b/i;
    .locals 2

    iget-object v0, p0, Lc/c/b/a/d/l;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/b/a/g/b/i;

    return-object v0
.end method

.method public p()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lc/c/b/a/d/s;->o()Lc/c/b/a/g/b/i;

    move-result-object v2

    invoke-interface {v2}, Lc/c/b/a/g/b/e;->y0()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lc/c/b/a/d/s;->o()Lc/c/b/a/g/b/i;

    move-result-object v2

    invoke-interface {v2, v1}, Lc/c/b/a/g/b/e;->H0(I)Lc/c/b/a/d/o;

    move-result-object v2

    check-cast v2, Lc/c/b/a/d/u;

    .line 1
    iget v2, v2, Lc/c/b/a/d/g;->c:F

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
