.class public Lc/c/b/a/f/c;
.super Lc/c/b/a/f/b;
.source ""

# interfaces
.implements Lc/c/b/a/f/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/f/b<",
        "Lc/c/b/a/g/a/f;",
        ">;",
        "Lc/c/b/a/f/f;"
    }
.end annotation


# instance fields
.field public c:Lc/c/b/a/f/a;


# direct methods
.method public constructor <init>(Lc/c/b/a/g/a/f;Lc/c/b/a/g/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c/b/a/f/b;-><init>(Lc/c/b/a/g/a/b;)V

    invoke-interface {p2}, Lc/c/b/a/g/a/a;->getBarData()Lc/c/b/a/d/a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lc/c/b/a/f/a;

    invoke-direct {p1, p2}, Lc/c/b/a/f/a;-><init>(Lc/c/b/a/g/a/a;)V

    :goto_0
    iput-object p1, p0, Lc/c/b/a/f/c;->c:Lc/c/b/a/f/a;

    return-void
.end method


# virtual methods
.method public f(FFF)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/List<",
            "Lc/c/b/a/f/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/b/a/f/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lc/c/b/a/f/b;->a:Lc/c/b/a/g/a/b;

    check-cast v0, Lc/c/b/a/g/a/f;

    invoke-interface {v0}, Lc/c/b/a/g/a/f;->getCombinedData()Lc/c/b/a/d/m;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/b/a/d/m;->o()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/b/a/d/l;

    iget-object v5, p0, Lc/c/b/a/f/c;->c:Lc/c/b/a/f/a;

    if-eqz v5, :cond_0

    instance-of v6, v4, Lc/c/b/a/d/a;

    if-eqz v6, :cond_0

    invoke-virtual {v5, p2, p3}, Lc/c/b/a/f/a;->a(FF)Lc/c/b/a/f/d;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1
    iput v2, v3, Lc/c/b/a/f/d;->e:I

    .line 2
    iget-object v4, p0, Lc/c/b/a/f/b;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_0
    invoke-virtual {v4}, Lc/c/b/a/d/l;->d()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c/b/a/d/d;

    invoke-virtual {v6, v5}, Lc/c/b/a/d/l;->c(I)Lc/c/b/a/g/b/e;

    move-result-object v6

    invoke-interface {v6}, Lc/c/b/a/g/b/e;->D0()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    sget-object v7, Lc/c/b/a/d/n$a;->e:Lc/c/b/a/d/n$a;

    invoke-virtual {p0, v6, v5, p1, v7}, Lc/c/b/a/f/b;->b(Lc/c/b/a/g/b/e;IFLc/c/b/a/d/n$a;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/c/b/a/f/d;

    .line 3
    iput v2, v7, Lc/c/b/a/f/d;->e:I

    .line 4
    iget-object v8, p0, Lc/c/b/a/f/b;->b:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lc/c/b/a/f/b;->b:Ljava/util/List;

    return-object p1
.end method
