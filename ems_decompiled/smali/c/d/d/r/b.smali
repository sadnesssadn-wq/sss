.class public final Lc/d/d/r/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/d/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d/d/c;Ljava/util/Map;)Lc/d/d/n;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/d/c;",
            "Ljava/util/Map<",
            "Lc/d/d/e;",
            "*>;)",
            "Lc/d/d/n;"
        }
    .end annotation

    new-instance v0, Lc/d/d/r/d/a;

    invoke-virtual {p1}, Lc/d/d/c;->a()Lc/d/d/s/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/d/d/r/d/a;-><init>(Lc/d/d/s/b;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Lc/d/d/r/d/a;->a(Z)Lc/d/d/r/a;

    move-result-object v2

    .line 1
    iget-object v3, v2, Lc/d/d/s/g;->b:[Lc/d/d/p;
    :try_end_0
    .catch Lc/d/d/j; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lc/d/d/f; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    new-instance v4, Lc/d/d/r/c/a;

    invoke-direct {v4}, Lc/d/d/r/c/a;-><init>()V

    invoke-virtual {v4, v2}, Lc/d/d/r/c/a;->a(Lc/d/d/r/a;)Lc/d/d/s/e;

    move-result-object v2
    :try_end_1
    .catch Lc/d/d/j; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lc/d/d/f; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v3, v1

    :goto_0
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v3, v1

    :goto_1
    move-object v4, v3

    move-object v3, v1

    :goto_2
    if-nez v1, :cond_2

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v0, v1}, Lc/d/d/r/d/a;->a(Z)Lc/d/d/r/a;

    move-result-object v0

    .line 3
    iget-object v4, v0, Lc/d/d/s/g;->b:[Lc/d/d/p;

    .line 4
    new-instance v1, Lc/d/d/r/c/a;

    invoke-direct {v1}, Lc/d/d/r/c/a;-><init>()V

    invoke-virtual {v1, v0}, Lc/d/d/r/c/a;->a(Lc/d/d/r/a;)Lc/d/d/s/e;

    move-result-object v1
    :try_end_2
    .catch Lc/d/d/j; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lc/d/d/f; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    goto :goto_3

    :catch_5
    move-exception p1

    :goto_3
    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    throw v3

    :cond_0
    throw p1

    :cond_1
    throw v2

    :cond_2
    :goto_4
    move-object v6, v4

    if-eqz p2, :cond_3

    sget-object v0, Lc/d/d/e;->l:Lc/d/d/e;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/d/q;

    if-eqz p2, :cond_3

    array-length v0, v6

    :goto_5
    if-ge p1, v0, :cond_3

    aget-object v2, v6, p1

    invoke-interface {p2, v2}, Lc/d/d/q;->a(Lc/d/d/p;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_3
    new-instance p1, Lc/d/d/n;

    .line 5
    iget-object v3, v1, Lc/d/d/s/e;->c:Ljava/lang/String;

    .line 6
    iget-object v4, v1, Lc/d/d/s/e;->a:[B

    .line 7
    iget v5, v1, Lc/d/d/s/e;->b:I

    .line 8
    sget-object v7, Lc/d/d/a;->c:Lc/d/d/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lc/d/d/n;-><init>(Ljava/lang/String;[BI[Lc/d/d/p;Lc/d/d/a;J)V

    .line 9
    iget-object p2, v1, Lc/d/d/s/e;->d:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 10
    sget-object v0, Lc/d/d/o;->e:Lc/d/d/o;

    invoke-virtual {p1, v0, p2}, Lc/d/d/n;->b(Lc/d/d/o;Ljava/lang/Object;)V

    .line 11
    :cond_4
    iget-object p2, v1, Lc/d/d/s/e;->e:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 12
    sget-object v0, Lc/d/d/o;->f:Lc/d/d/o;

    invoke-virtual {p1, v0, p2}, Lc/d/d/n;->b(Lc/d/d/o;Ljava/lang/Object;)V

    :cond_5
    return-object p1
.end method

.method public b()V
    .locals 0

    return-void
.end method
