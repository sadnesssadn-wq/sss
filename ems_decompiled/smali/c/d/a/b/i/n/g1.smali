.class public final Lc/d/a/b/i/n/g1;
.super Lc/d/a/b/i/n/h1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/i/n/h1<",
        "Lc/d/a/b/i/n/t1$e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/i/n/h1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/n/t1$e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Object;)Lc/d/a/b/i/n/l1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lc/d/a/b/i/n/l1<",
            "Lc/d/a/b/i/n/t1$e;",
            ">;"
        }
    .end annotation

    check-cast p1, Lc/d/a/b/i/n/t1$c;

    iget-object p1, p1, Lc/d/a/b/i/n/t1$c;->zzc:Lc/d/a/b/i/n/l1;

    return-object p1
.end method

.method public final c(Lc/d/a/b/i/n/f1;Lc/d/a/b/i/n/c3;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p1, Lc/d/a/b/i/n/f1;->a:Ljava/util/Map;

    new-instance v0, Lc/d/a/b/i/n/f1$a;

    invoke-direct {v0, p2, p3}, Lc/d/a/b/i/n/f1$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/n/t1$d;

    return-object p1
.end method

.method public final d(Lc/d/a/b/i/n/a5;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/i/n/a5;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/n/t1$e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lc/d/a/b/i/n/j1;->a:[I

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Lc/d/a/b/i/n/c3;)Z
    .locals 0

    instance-of p1, p1, Lc/d/a/b/i/n/t1$c;

    return p1
.end method

.method public final f(Ljava/lang/Object;)Lc/d/a/b/i/n/l1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lc/d/a/b/i/n/l1<",
            "Lc/d/a/b/i/n/t1$e;",
            ">;"
        }
    .end annotation

    check-cast p1, Lc/d/a/b/i/n/t1$c;

    invoke-virtual {p1}, Lc/d/a/b/i/n/t1$c;->p()Lc/d/a/b/i/n/l1;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/d/a/b/i/n/t1$c;

    iget-object p1, p1, Lc/d/a/b/i/n/t1$c;->zzc:Lc/d/a/b/i/n/l1;

    .line 2
    invoke-virtual {p1}, Lc/d/a/b/i/n/l1;->g()V

    return-void
.end method
