.class public abstract Lc/c/b/a/j/c;
.super Lc/c/b/a/j/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/b/a/j/c$a;
    }
.end annotation


# instance fields
.field public f:Lc/c/b/a/j/c$a;


# direct methods
.method public constructor <init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/c/b/a/j/g;-><init>(Lc/c/b/a/a/a;Lc/c/b/a/k/j;)V

    new-instance p1, Lc/c/b/a/j/c$a;

    invoke-direct {p1, p0}, Lc/c/b/a/j/c$a;-><init>(Lc/c/b/a/j/c;)V

    iput-object p1, p0, Lc/c/b/a/j/c;->f:Lc/c/b/a/j/c$a;

    return-void
.end method


# virtual methods
.method public h(Lc/c/b/a/d/o;Lc/c/b/a/g/b/b;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2, p1}, Lc/c/b/a/g/b/e;->D(Lc/c/b/a/d/o;)I

    move-result p1

    int-to-float p1, p1

    invoke-interface {p2}, Lc/c/b/a/g/b/e;->y0()I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lc/c/b/a/j/g;->b:Lc/c/b/a/a/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p2, p2, v1

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public i(Lc/c/b/a/g/b/e;)Z
    .locals 1

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->j0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lc/c/b/a/g/b/e;->Q()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
