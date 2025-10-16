.class public final Lc/d/b/n/j/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/f;
.implements Lc/d/b/n/h;


# instance fields
.field public a:Z

.field public final b:Landroid/util/JsonWriter;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/d/b/n/e<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/d/b/n/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Lc/d/b/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/b/n/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lc/d/b/n/e;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/d/b/n/e<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/d/b/n/g<",
            "*>;>;",
            "Lc/d/b/n/e<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/b/n/j/f;->a:Z

    new-instance v0, Landroid/util/JsonWriter;

    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    iput-object p2, p0, Lc/d/b/n/j/f;->c:Ljava/util/Map;

    iput-object p3, p0, Lc/d/b/n/j/f;->d:Ljava/util/Map;

    iput-object p4, p0, Lc/d/b/n/j/f;->e:Lc/d/b/n/e;

    iput-boolean p5, p0, Lc/d/b/n/j/f;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lc/d/b/n/d;J)Lc/d/b/n/f;
    .locals 1

    .line 1
    iget-object p1, p1, Lc/d/b/n/d;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lc/d/b/n/j/f;->h()V

    iget-object v0, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3
    invoke-virtual {p0}, Lc/d/b/n/j/f;->h()V

    iget-object p1, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1, p2, p3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public b(Lc/d/b/n/d;I)Lc/d/b/n/f;
    .locals 2

    .line 1
    iget-object p1, p1, Lc/d/b/n/d;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lc/d/b/n/j/f;->h()V

    iget-object v0, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3
    invoke-virtual {p0}, Lc/d/b/n/j/f;->h()V

    iget-object p1, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lc/d/b/n/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/b/n/j/f;->h()V

    iget-object v0, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public d(Z)Lc/d/b/n/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/d/b/n/j/f;->h()V

    iget-object v0, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;
    .locals 0

    .line 1
    iget-object p1, p1, Lc/d/b/n/d;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/d/b/n/j/f;->g(Ljava/lang/String;Ljava/lang/Object;)Lc/d/b/n/j/f;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;Z)Lc/d/b/n/j/f;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v2, p1, Ljava/util/Collection;

    if-nez v2, :cond_1

    instance-of v2, p1, Ljava/util/Date;

    if-nez v2, :cond_1

    instance-of v2, p1, Ljava/lang/Enum;

    if-nez v2, :cond_1

    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 2
    new-instance p2, Lc/d/b/n/c;

    new-array v1, v1, [Ljava/lang/Object;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_2
    aput-object p1, v1, v0

    const-string p1, "%s cannot be encoded inline"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lc/d/b/n/c;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    :cond_4
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_5

    iget-object p2, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    return-object p0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_d

    instance-of p2, p1, [B

    if-eqz p2, :cond_6

    check-cast p1, [B

    .line 3
    invoke-virtual {p0}, Lc/d/b/n/j/f;->h()V

    iget-object p2, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-object p0

    .line 4
    :cond_6
    iget-object p2, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    instance-of p2, p1, [I

    if-eqz p2, :cond_7

    check-cast p1, [I

    array-length p2, p1

    :goto_3
    if-ge v0, p2, :cond_c

    aget v1, p1, v0

    iget-object v2, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    instance-of p2, p1, [J

    if-eqz p2, :cond_8

    check-cast p1, [J

    array-length p2, p1

    :goto_4
    if-ge v0, p2, :cond_c

    aget-wide v1, p1, v0

    .line 5
    invoke-virtual {p0}, Lc/d/b/n/j/f;->h()V

    iget-object v3, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {v3, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6
    :cond_8
    instance-of p2, p1, [D

    if-eqz p2, :cond_9

    check-cast p1, [D

    array-length p2, p1

    :goto_5
    if-ge v0, p2, :cond_c

    aget-wide v1, p1, v0

    iget-object v3, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {v3, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    instance-of p2, p1, [Z

    if-eqz p2, :cond_a

    check-cast p1, [Z

    array-length p2, p1

    :goto_6
    if-ge v0, p2, :cond_c

    aget-boolean v1, p1, v0

    iget-object v2, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    instance-of p2, p1, [Ljava/lang/Number;

    if-eqz p2, :cond_b

    check-cast p1, [Ljava/lang/Number;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p2, :cond_c

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, v0}, Lc/d/b/n/j/f;->f(Ljava/lang/Object;Z)Lc/d/b/n/j/f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    check-cast p1, [Ljava/lang/Object;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p2, :cond_c

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, v0}, Lc/d/b/n/j/f;->f(Ljava/lang/Object;Z)Lc/d/b/n/j/f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    iget-object p1, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    :cond_d
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_f

    check-cast p1, Ljava/util/Collection;

    iget-object p2, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lc/d/b/n/j/f;->f(Ljava/lang/Object;Z)Lc/d/b/n/j/f;

    goto :goto_9

    :cond_e
    iget-object p1, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    :cond_f
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_11

    check-cast p1, Ljava/util/Map;

    iget-object p2, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v4, p2}, Lc/d/b/n/j/f;->g(Ljava/lang/String;Ljava/lang/Object;)Lc/d/b/n/j/f;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception p1

    new-instance p2, Lc/d/b/n/c;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Only String keys are currently supported in maps, got %s of type %s instead."

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lc/d/b/n/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_10
    iget-object p1, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-object p0

    :cond_11
    iget-object v0, p0, Lc/d/b/n/j/f;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/b/n/e;

    if-eqz v0, :cond_14

    if-nez p2, :cond_12

    .line 7
    iget-object v1, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    :cond_12
    invoke-interface {v0, p1, p0}, Lc/d/b/n/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p2, :cond_13

    iget-object p1, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_13
    return-object p0

    .line 8
    :cond_14
    iget-object v0, p0, Lc/d/b/n/j/f;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/b/n/g;

    if-eqz v0, :cond_15

    invoke-interface {v0, p1, p0}, Lc/d/b/n/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_15
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lc/d/b/n/j/f;->h()V

    iget-object p2, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-object p0

    .line 10
    :cond_16
    iget-object v0, p0, Lc/d/b/n/j/f;->e:Lc/d/b/n/e;

    if-nez p2, :cond_17

    .line 11
    iget-object v1, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    :cond_17
    invoke-interface {v0, p1, p0}, Lc/d/b/n/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p2, :cond_18

    iget-object p1, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_18
    return-object p0
.end method

.method public g(Ljava/lang/String;Ljava/lang/Object;)Lc/d/b/n/j/f;
    .locals 2

    iget-boolean v0, p0, Lc/d/b/n/j/f;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lc/d/b/n/j/f;->h()V

    iget-object v0, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {p0, p2, v1}, Lc/d/b/n/j/f;->f(Ljava/lang/Object;Z)Lc/d/b/n/j/f;

    move-result-object p1

    :goto_0
    return-object p1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lc/d/b/n/j/f;->h()V

    iget-object v0, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    if-nez p2, :cond_2

    iget-object p1, p0, Lc/d/b/n/j/f;->b:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    move-object p1, p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2, v1}, Lc/d/b/n/j/f;->f(Ljava/lang/Object;Z)Lc/d/b/n/j/f;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final h()V
    .locals 2

    iget-boolean v0, p0, Lc/d/b/n/j/f;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent context used since this context was created. Cannot use this context anymore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
