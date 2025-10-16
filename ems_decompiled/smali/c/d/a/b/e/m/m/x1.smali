.class public final Lc/d/a/b/e/m/m/x1;
.super Lc/d/a/b/e/m/m/j1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/m/m/j1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lc/d/a/b/e/m/m/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/j$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/j$a;Lc/d/a/b/p/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/j$a<",
            "*>;",
            "Lc/d/a/b/p/m<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lc/d/a/b/e/m/m/j1;-><init>(ILc/d/a/b/p/m;)V

    iput-object p1, p0, Lc/d/a/b/e/m/m/x1;->c:Lc/d/a/b/e/m/m/j$a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lc/d/a/b/e/m/m/h2;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lc/d/a/b/e/m/m/g$a;)[Lc/d/a/b/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;)[",
            "Lc/d/a/b/e/c;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lc/d/a/b/e/m/m/g$a;->h:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lc/d/a/b/e/m/m/x1;->c:Lc/d/a/b/e/m/m/j$a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/e/m/m/i1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lc/d/a/b/e/m/m/i1;->a:Lc/d/a/b/e/m/m/n;

    .line 3
    iget-object p1, p1, Lc/d/a/b/e/m/m/n;->b:[Lc/d/a/b/e/c;

    return-object p1
.end method

.method public final g(Lc/d/a/b/e/m/m/g$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lc/d/a/b/e/m/m/g$a;->h:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lc/d/a/b/e/m/m/x1;->c:Lc/d/a/b/e/m/m/j$a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/e/m/m/i1;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lc/d/a/b/e/m/m/i1;->a:Lc/d/a/b/e/m/m/n;

    .line 3
    iget-boolean p1, p1, Lc/d/a/b/e/m/m/n;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Lc/d/a/b/e/m/m/g$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lc/d/a/b/e/m/m/g$a;->h:Ljava/util/Map;

    .line 2
    iget-object v1, p0, Lc/d/a/b/e/m/m/x1;->c:Lc/d/a/b/e/m/m/j$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/i1;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lc/d/a/b/e/m/m/i1;->b:Lc/d/a/b/e/m/m/s;

    .line 3
    iget-object p1, p1, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    .line 4
    iget-object v2, p0, Lc/d/a/b/e/m/m/j1;->b:Lc/d/a/b/p/m;

    check-cast v1, Lc/d/a/b/j/o;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/d/a/b/i/j/r;

    iget-object v3, v1, Lc/d/a/b/j/o;->b:Lc/d/a/b/j/a;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lc/d/a/b/j/p;

    invoke-direct {v3, v2}, Lc/d/a/b/j/p;-><init>(Lc/d/a/b/p/m;)V

    .line 7
    :try_start_0
    iget-object v1, v1, Lc/d/a/b/e/m/m/s;->a:Lc/d/a/b/e/m/m/j$a;

    .line 8
    invoke-virtual {p1, v1, v3}, Lc/d/a/b/i/j/r;->M(Lc/d/a/b/e/m/m/j$a;Lc/d/a/b/i/j/f;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {v2, p1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    .line 9
    :goto_0
    iget-object p1, v0, Lc/d/a/b/e/m/m/i1;->a:Lc/d/a/b/e/m/m/n;

    .line 10
    iget-object p1, p1, Lc/d/a/b/e/m/m/n;->a:Lc/d/a/b/e/m/m/j;

    invoke-virtual {p1}, Lc/d/a/b/e/m/m/j;->a()V

    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lc/d/a/b/e/m/m/j1;->b:Lc/d/a/b/p/m;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lc/d/a/b/p/m;->b(Ljava/lang/Object;)Z

    return-void
.end method
