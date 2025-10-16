.class public final Lc/d/a/b/e/m/m/d0;
.super Lc/d/a/b/e/m/m/h0;
.source ""


# instance fields
.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/b/e/m/a$f;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:Lc/d/a/b/e/m/m/x;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/x;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lc/d/a/b/e/m/a$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lc/d/a/b/e/m/m/d0;->e:Lc/d/a/b/e/m/m/x;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/d/a/b/e/m/m/h0;-><init>(Lc/d/a/b/e/m/m/x;Lc/d/a/b/e/m/m/w;)V

    iput-object p2, p0, Lc/d/a/b/e/m/m/d0;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lc/d/a/b/e/m/m/d0;->e:Lc/d/a/b/e/m/m/x;

    .line 1
    iget-object v1, v0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    .line 2
    iget-object v1, v1, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    .line 3
    iget-object v2, v0, Lc/d/a/b/e/m/m/x;->r:Lc/d/a/b/e/p/d;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lc/d/a/b/e/m/m/x;->r:Lc/d/a/b/e/p/d;

    .line 4
    iget-object v3, v3, Lc/d/a/b/e/p/d;->b:Ljava/util/Set;

    .line 5
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lc/d/a/b/e/m/m/x;->r:Lc/d/a/b/e/p/d;

    .line 6
    iget-object v3, v3, Lc/d/a/b/e/p/d;->d:Ljava/util/Map;

    .line 7
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/b/e/m/a;

    iget-object v6, v0, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v6, v6, Lc/d/a/b/e/m/m/o0;->i:Ljava/util/Map;

    .line 8
    iget-object v7, v5, Lc/d/a/b/e/m/a;->b:Lc/d/a/b/e/m/a$g;

    .line 9
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/b/e/p/d$b;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 10
    :goto_1
    iput-object v0, v1, Lc/d/a/b/e/m/m/j0;->p:Ljava/util/Set;

    iget-object v0, p0, Lc/d/a/b/e/m/m/d0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lc/d/a/b/e/m/a$f;

    iget-object v4, p0, Lc/d/a/b/e/m/m/d0;->e:Lc/d/a/b/e/m/m/x;

    .line 11
    iget-object v5, v4, Lc/d/a/b/e/m/m/x;->o:Lc/d/a/b/e/p/j;

    .line 12
    iget-object v4, v4, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    .line 13
    iget-object v4, v4, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    iget-object v4, v4, Lc/d/a/b/e/m/m/j0;->p:Ljava/util/Set;

    invoke-interface {v3, v5, v4}, Lc/d/a/b/e/m/a$f;->g(Lc/d/a/b/e/p/j;Ljava/util/Set;)V

    goto :goto_2

    :cond_3
    return-void
.end method
