.class public final Lc/d/a/b/i/n/t1$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/n1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/i/n/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/a/b/i/n/n1<",
        "Lc/d/a/b/i/n/t1$e;",
        ">;"
    }
.end annotation


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lc/d/a/b/i/n/t1$e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i(Lc/d/a/b/i/n/j3;Lc/d/a/b/i/n/j3;)Lc/d/a/b/i/n/j3;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final p(Lc/d/a/b/i/n/f3;Lc/d/a/b/i/n/c3;)Lc/d/a/b/i/n/f3;
    .locals 0

    check-cast p1, Lc/d/a/b/i/n/t1$b;

    check-cast p2, Lc/d/a/b/i/n/t1;

    invoke-virtual {p1, p2}, Lc/d/a/b/i/n/t1$b;->j(Lc/d/a/b/i/n/t1;)Lc/d/a/b/i/n/t1$b;

    move-result-object p1

    return-object p1
.end method

.method public final zza()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Lc/d/a/b/i/n/v4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc()Lc/d/a/b/i/n/y4;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
