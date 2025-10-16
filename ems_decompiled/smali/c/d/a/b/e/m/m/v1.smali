.class public final Lc/d/a/b/e/m/m/v1;
.super Lc/d/a/b/e/m/m/j1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/m/m/j1<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lc/d/a/b/e/m/m/i1;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/i1;Lc/d/a/b/p/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/i1;",
            "Lc/d/a/b/p/m<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lc/d/a/b/e/m/m/j1;-><init>(ILc/d/a/b/p/m;)V

    iput-object p1, p0, Lc/d/a/b/e/m/m/v1;->c:Lc/d/a/b/e/m/m/i1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lc/d/a/b/e/m/m/h2;Z)V
    .locals 0

    return-void
.end method

.method public final f(Lc/d/a/b/e/m/m/g$a;)[Lc/d/a/b/e/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;)[",
            "Lc/d/a/b/e/c;"
        }
    .end annotation

    iget-object p1, p0, Lc/d/a/b/e/m/m/v1;->c:Lc/d/a/b/e/m/m/i1;

    iget-object p1, p1, Lc/d/a/b/e/m/m/i1;->a:Lc/d/a/b/e/m/m/n;

    .line 1
    iget-object p1, p1, Lc/d/a/b/e/m/m/n;->b:[Lc/d/a/b/e/c;

    return-object p1
.end method

.method public final g(Lc/d/a/b/e/m/m/g$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;)Z"
        }
    .end annotation

    iget-object p1, p0, Lc/d/a/b/e/m/m/v1;->c:Lc/d/a/b/e/m/m/i1;

    iget-object p1, p1, Lc/d/a/b/e/m/m/i1;->a:Lc/d/a/b/e/m/m/n;

    .line 1
    iget-boolean p1, p1, Lc/d/a/b/e/m/m/n;->c:Z

    return p1
.end method

.method public final h(Lc/d/a/b/e/m/m/g$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/v1;->c:Lc/d/a/b/e/m/m/i1;

    iget-object v0, v0, Lc/d/a/b/e/m/m/i1;->a:Lc/d/a/b/e/m/m/n;

    .line 1
    iget-object v1, p1, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    .line 2
    iget-object v2, p0, Lc/d/a/b/e/m/m/j1;->b:Lc/d/a/b/p/m;

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/e/m/m/n;->a(Lc/d/a/b/e/m/a$b;Lc/d/a/b/p/m;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/v1;->c:Lc/d/a/b/e/m/m/i1;

    iget-object v0, v0, Lc/d/a/b/e/m/m/i1;->a:Lc/d/a/b/e/m/m/n;

    .line 3
    iget-object v0, v0, Lc/d/a/b/e/m/m/n;->a:Lc/d/a/b/e/m/m/j;

    .line 4
    iget-object v0, v0, Lc/d/a/b/e/m/m/j;->c:Lc/d/a/b/e/m/m/j$a;

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Lc/d/a/b/e/m/m/g$a;->h:Ljava/util/Map;

    .line 6
    iget-object v1, p0, Lc/d/a/b/e/m/m/v1;->c:Lc/d/a/b/e/m/m/i1;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
