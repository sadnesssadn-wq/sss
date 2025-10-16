.class public final Lc/d/a/b/p/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/b/p/l;

.field public final synthetic d:Lc/d/a/b/p/r;


# direct methods
.method public constructor <init>(Lc/d/a/b/p/r;Lc/d/a/b/p/l;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/p/t;->d:Lc/d/a/b/p/r;

    iput-object p2, p0, Lc/d/a/b/p/t;->c:Lc/d/a/b/p/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/p/t;->c:Lc/d/a/b/p/l;

    invoke-virtual {v0}, Lc/d/a/b/p/l;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/p/t;->d:Lc/d/a/b/p/r;

    .line 1
    iget-object v0, v0, Lc/d/a/b/p/r;->c:Lc/d/a/b/p/j0;

    .line 2
    invoke-virtual {v0}, Lc/d/a/b/p/j0;->u()Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/p/t;->d:Lc/d/a/b/p/r;

    .line 3
    iget-object v0, v0, Lc/d/a/b/p/r;->b:Lc/d/a/b/p/c;

    .line 4
    iget-object v1, p0, Lc/d/a/b/p/t;->c:Lc/d/a/b/p/l;

    invoke-interface {v0, v1}, Lc/d/a/b/p/c;->then(Lc/d/a/b/p/l;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lc/d/a/b/p/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lc/d/a/b/p/t;->d:Lc/d/a/b/p/r;

    .line 5
    iget-object v1, v1, Lc/d/a/b/p/r;->c:Lc/d/a/b/p/j0;

    .line 6
    invoke-virtual {v1, v0}, Lc/d/a/b/p/j0;->t(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lc/d/a/b/p/t;->d:Lc/d/a/b/p/r;

    .line 7
    iget-object v1, v1, Lc/d/a/b/p/r;->c:Lc/d/a/b/p/j0;

    .line 8
    invoke-virtual {v1, v0}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/p/t;->d:Lc/d/a/b/p/r;

    .line 9
    iget-object v1, v1, Lc/d/a/b/p/r;->c:Lc/d/a/b/p/j0;

    .line 10
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v1, p0, Lc/d/a/b/p/t;->d:Lc/d/a/b/p/r;

    .line 11
    iget-object v1, v1, Lc/d/a/b/p/r;->c:Lc/d/a/b/p/j0;

    .line 12
    invoke-virtual {v1, v0}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void
.end method
