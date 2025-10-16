.class public final Lc/d/a/b/i/e/j3;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/n1;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lc/d/a/b/i/e/n1;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final c:Lc/d/a/b/i/e/n1;


# direct methods
.method public constructor <init>(Lc/d/a/b/i/e/n1;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/e/j3;->c:Lc/d/a/b/i/e/n1;

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/j3;->c:Lc/d/a/b/i/e/n1;

    invoke-interface {v0}, Lc/d/a/b/i/e/n1;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lc/d/a/b/i/e/n1;
    .locals 0

    return-object p0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/j3;->c:Lc/d/a/b/i/e/n1;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final i(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/j3;->c:Lc/d/a/b/i/e/n1;

    invoke-interface {v0, p1}, Lc/d/a/b/i/e/n1;->i(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lc/d/a/b/i/e/l3;

    invoke-direct {v0, p0}, Lc/d/a/b/i/e/l3;-><init>(Lc/d/a/b/i/e/j3;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lc/d/a/b/i/e/k3;

    invoke-direct {v0, p0, p1}, Lc/d/a/b/i/e/k3;-><init>(Lc/d/a/b/i/e/j3;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/j3;->c:Lc/d/a/b/i/e/n1;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
