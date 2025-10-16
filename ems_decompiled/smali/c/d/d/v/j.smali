.class public final Lc/d/d/v/j;
.super Lc/d/d/v/k;
.source ""


# instance fields
.field public final a:[Lc/d/d/v/p;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lc/d/d/e;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/d/v/k;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lc/d/d/e;->e:Lc/d/d/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    sget-object v1, Lc/d/d/a;->j:Lc/d/d/a;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lc/d/d/v/e;

    invoke-direct {v1}, Lc/d/d/v/e;-><init>()V

    goto :goto_1

    :cond_1
    sget-object v1, Lc/d/d/a;->q:Lc/d/d/a;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lc/d/d/v/l;

    invoke-direct {v1}, Lc/d/d/v/l;-><init>()V

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v1, Lc/d/d/a;->i:Lc/d/d/a;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lc/d/d/v/f;

    invoke-direct {v1}, Lc/d/d/v/f;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v1, Lc/d/d/a;->r:Lc/d/d/a;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lc/d/d/v/q;

    invoke-direct {p1}, Lc/d/d/v/q;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lc/d/d/v/e;

    invoke-direct {p1}, Lc/d/d/v/e;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lc/d/d/v/f;

    invoke-direct {p1}, Lc/d/d/v/f;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lc/d/d/v/q;

    invoke-direct {p1}, Lc/d/d/v/q;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lc/d/d/v/p;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lc/d/d/v/p;

    iput-object p1, p0, Lc/d/d/v/j;->a:[Lc/d/d/v/p;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    iget-object v0, p0, Lc/d/d/v/j;->a:[Lc/d/d/v/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(ILc/d/d/s/a;Ljava/util/Map;)Lc/d/d/n;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/d/d/s/a;",
            "Ljava/util/Map<",
            "Lc/d/d/e;",
            "*>;)",
            "Lc/d/d/n;"
        }
    .end annotation

    sget-object v0, Lc/d/d/a;->q:Lc/d/d/a;

    invoke-static {p2}, Lc/d/d/v/p;->n(Lc/d/d/s/a;)[I

    move-result-object v1

    iget-object v2, p0, Lc/d/d/v/j;->a:[Lc/d/d/v/p;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    :try_start_0
    invoke-virtual {v6, p1, p2, v1, p3}, Lc/d/d/v/p;->l(ILc/d/d/s/a;[ILjava/util/Map;)Lc/d/d/n;

    move-result-object p1
    :try_end_0
    .catch Lc/d/d/m; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    iget-object p2, p1, Lc/d/d/n;->d:Lc/d/d/a;

    .line 2
    sget-object v1, Lc/d/d/a;->j:Lc/d/d/a;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 3
    iget-object p2, p1, Lc/d/d/n;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x30

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    if-nez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_2

    :cond_1
    sget-object v1, Lc/d/d/e;->e:Lc/d/d/e;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    :goto_2
    if-eqz p3, :cond_2

    invoke-interface {p3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    if-eqz p2, :cond_4

    if-eqz v4, :cond_4

    new-instance p2, Lc/d/d/n;

    .line 5
    iget-object p3, p1, Lc/d/d/n;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 7
    iget-object v1, p1, Lc/d/d/n;->b:[B

    .line 8
    iget-object v2, p1, Lc/d/d/n;->c:[Lc/d/d/p;

    .line 9
    invoke-direct {p2, p3, v1, v2, v0}, Lc/d/d/n;-><init>(Ljava/lang/String;[B[Lc/d/d/p;Lc/d/d/a;)V

    .line 10
    iget-object p1, p1, Lc/d/d/n;->e:Ljava/util/Map;

    .line 11
    invoke-virtual {p2, p1}, Lc/d/d/n;->a(Ljava/util/Map;)V

    return-object p2

    :cond_4
    return-object p1

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_5
    sget-object p1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 13
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
