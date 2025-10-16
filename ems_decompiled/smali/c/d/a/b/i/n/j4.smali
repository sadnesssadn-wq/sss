.class public final Lc/d/a/b/i/n/j4;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/m2;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lc/d/a/b/i/n/m2;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final c:Lc/d/a/b/i/n/m2;


# direct methods
.method public constructor <init>(Lc/d/a/b/i/n/m2;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/n/j4;->c:Lc/d/a/b/i/n/m2;

    return-void
.end method


# virtual methods
.method public final b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/j4;->c:Lc/d/a/b/i/n/m2;

    invoke-interface {v0, p1}, Lc/d/a/b/i/n/m2;->b(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lc/d/a/b/i/n/t0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/j4;->c:Lc/d/a/b/i/n/m2;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final h()Lc/d/a/b/i/n/m2;
    .locals 0

    return-object p0
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

    new-instance v0, Lc/d/a/b/i/n/m4;

    invoke-direct {v0, p0}, Lc/d/a/b/i/n/m4;-><init>(Lc/d/a/b/i/n/j4;)V

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

    new-instance v0, Lc/d/a/b/i/n/i4;

    invoke-direct {v0, p0, p1}, Lc/d/a/b/i/n/i4;-><init>(Lc/d/a/b/i/n/j4;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/j4;->c:Lc/d/a/b/i/n/m2;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/n/j4;->c:Lc/d/a/b/i/n/m2;

    invoke-interface {v0}, Lc/d/a/b/i/n/m2;->zzd()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
