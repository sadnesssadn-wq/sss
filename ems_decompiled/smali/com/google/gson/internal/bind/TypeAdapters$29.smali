.class public Lcom/google/gson/internal/bind/TypeAdapters$29;
.super Lc/d/c/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/c/t<",
        "Lc/d/c/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/c/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lc/d/c/y/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;->c(Lc/d/c/y/a;)Lc/d/c/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lc/d/c/y/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lc/d/c/j;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$29;->d(Lc/d/c/y/c;Lc/d/c/j;)V

    return-void
.end method

.method public c(Lc/d/c/y/a;)Lc/d/c/j;
    .locals 4

    sget-object v0, Lc/d/c/l;->a:Lc/d/c/l;

    invoke-virtual {p1}, Lc/d/c/y/a;->E()Lc/d/c/y/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lc/d/c/y/a;->A()V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance v0, Lc/d/c/o;

    invoke-virtual {p1}, Lc/d/c/y/a;->u()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/d/c/o;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lc/d/c/y/a;->C()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lc/d/c/o;

    new-instance v1, Lc/d/c/w/q;

    invoke-direct {v1, p1}, Lc/d/c/w/q;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lc/d/c/o;-><init>(Ljava/lang/Number;)V

    return-object v0

    :cond_3
    new-instance v0, Lc/d/c/o;

    invoke-virtual {p1}, Lc/d/c/y/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/d/c/o;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v0, Lc/d/c/m;

    invoke-direct {v0}, Lc/d/c/m;-><init>()V

    invoke-virtual {p1}, Lc/d/c/y/a;->d()V

    :goto_0
    invoke-virtual {p1}, Lc/d/c/y/a;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lc/d/c/y/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;->c(Lc/d/c/y/a;)Lc/d/c/j;

    move-result-object v2

    .line 1
    iget-object v3, v0, Lc/d/c/m;->a:Lc/d/c/w/r;

    invoke-virtual {v3, v1, v2}, Lc/d/c/w/r;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2
    :cond_5
    invoke-virtual {p1}, Lc/d/c/y/a;->k()V

    return-object v0

    :cond_6
    new-instance v0, Lc/d/c/g;

    invoke-direct {v0}, Lc/d/c/g;-><init>()V

    invoke-virtual {p1}, Lc/d/c/y/a;->c()V

    :goto_1
    invoke-virtual {p1}, Lc/d/c/y/a;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$29;->c(Lc/d/c/y/a;)Lc/d/c/j;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lc/d/c/g;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4
    :cond_7
    invoke-virtual {p1}, Lc/d/c/y/a;->j()V

    return-object v0
.end method

.method public d(Lc/d/c/y/c;Lc/d/c/j;)V
    .locals 4

    if-eqz p2, :cond_d

    .line 1
    instance-of v0, p2, Lc/d/c/l;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    instance-of v0, p2, Lc/d/c/o;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Lc/d/c/j;->j()Lc/d/c/o;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lc/d/c/o;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2}, Lc/d/c/o;->l()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/d/c/y/c;->y(Ljava/lang/Number;)Lc/d/c/y/c;

    goto/16 :goto_4

    .line 6
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Lc/d/c/o;->k()Z

    move-result p2

    invoke-virtual {p1, p2}, Lc/d/c/y/c;->A(Z)Lc/d/c/y/c;

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p2}, Lc/d/c/o;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/d/c/y/c;->z(Ljava/lang/String;)Lc/d/c/y/c;

    goto/16 :goto_4

    .line 8
    :cond_3
    instance-of v0, p2, Lc/d/c/g;

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p1}, Lc/d/c/y/c;->d()Lc/d/c/y/c;

    if-eqz v0, :cond_5

    .line 10
    check-cast p2, Lc/d/c/g;

    .line 11
    invoke-virtual {p2}, Lc/d/c/g;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/c/j;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$29;->d(Lc/d/c/y/c;Lc/d/c/j;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lc/d/c/y/c;->j()Lc/d/c/y/c;

    goto/16 :goto_4

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    instance-of v0, p2, Lc/d/c/m;

    if-eqz v0, :cond_c

    .line 14
    invoke-virtual {p1}, Lc/d/c/y/c;->e()Lc/d/c/y/c;

    if-eqz v0, :cond_b

    .line 15
    check-cast p2, Lc/d/c/m;

    .line 16
    iget-object p2, p2, Lc/d/c/m;->a:Lc/d/c/w/r;

    invoke-virtual {p2}, Lc/d/c/w/r;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 17
    check-cast p2, Lc/d/c/w/r$b;

    .line 18
    iget-object p2, p2, Lc/d/c/w/r$b;->c:Lc/d/c/w/r;

    .line 19
    iget-object v0, p2, Lc/d/c/w/r;->g:Lc/d/c/w/r$e;

    iget-object v0, v0, Lc/d/c/w/r$e;->f:Lc/d/c/w/r$e;

    iget v1, p2, Lc/d/c/w/r;->f:I

    .line 20
    :goto_1
    iget-object v2, p2, Lc/d/c/w/r;->g:Lc/d/c/w/r$e;

    if-eq v0, v2, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_a

    if-eq v0, v2, :cond_9

    .line 21
    iget v2, p2, Lc/d/c/w/r;->f:I

    if-ne v2, v1, :cond_8

    iget-object v2, v0, Lc/d/c/w/r$e;->f:Lc/d/c/w/r$e;

    .line 22
    iget-object v3, v0, Lc/d/c/w/r$e;->h:Ljava/lang/Object;

    .line 23
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lc/d/c/y/c;->l(Ljava/lang/String;)Lc/d/c/y/c;

    .line 24
    iget-object v0, v0, Lc/d/c/w/r$e;->i:Ljava/lang/Object;

    .line 25
    check-cast v0, Lc/d/c/j;

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/bind/TypeAdapters$29;->d(Lc/d/c/y/c;Lc/d/c/j;)V

    move-object v0, v2

    goto :goto_1

    .line 26
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_9
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 27
    :cond_a
    invoke-virtual {p1}, Lc/d/c/y/c;->k()Lc/d/c/y/c;

    goto :goto_4

    .line 28
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t write "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_3
    invoke-virtual {p1}, Lc/d/c/y/c;->o()Lc/d/c/y/c;

    :goto_4
    return-void
.end method
