.class public final Lc/d/a/b/p/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/b/p/l;

.field public final synthetic d:Lc/d/a/b/p/e0;


# direct methods
.method public constructor <init>(Lc/d/a/b/p/e0;Lc/d/a/b/p/l;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/p/d0;->d:Lc/d/a/b/p/e0;

    iput-object p2, p0, Lc/d/a/b/p/d0;->c:Lc/d/a/b/p/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/p/d0;->d:Lc/d/a/b/p/e0;

    .line 1
    iget-object v0, v0, Lc/d/a/b/p/e0;->b:Lc/d/a/b/p/k;

    .line 2
    iget-object v1, p0, Lc/d/a/b/p/d0;->c:Lc/d/a/b/p/l;

    invoke-virtual {v1}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/d/a/b/p/k;->then(Ljava/lang/Object;)Lc/d/a/b/p/l;

    move-result-object v0
    :try_end_0
    .catch Lc/d/a/b/p/j; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/p/d0;->d:Lc/d/a/b/p/e0;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lc/d/a/b/p/e0;->c:Lc/d/a/b/p/j0;

    invoke-virtual {v0, v1}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_0
    sget-object v1, Lc/d/a/b/p/n;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lc/d/a/b/p/d0;->d:Lc/d/a/b/p/e0;

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/p/l;->e(Ljava/util/concurrent/Executor;Lc/d/a/b/p/h;)Lc/d/a/b/p/l;

    iget-object v2, p0, Lc/d/a/b/p/d0;->d:Lc/d/a/b/p/e0;

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/p/l;->c(Ljava/util/concurrent/Executor;Lc/d/a/b/p/g;)Lc/d/a/b/p/l;

    iget-object v2, p0, Lc/d/a/b/p/d0;->d:Lc/d/a/b/p/e0;

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/p/l;->a(Ljava/util/concurrent/Executor;Lc/d/a/b/p/e;)Lc/d/a/b/p/l;

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lc/d/a/b/p/d0;->d:Lc/d/a/b/p/e0;

    .line 5
    iget-object v1, v1, Lc/d/a/b/p/e0;->c:Lc/d/a/b/p/j0;

    invoke-virtual {v1, v0}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void

    .line 6
    :catch_1
    iget-object v0, p0, Lc/d/a/b/p/d0;->d:Lc/d/a/b/p/e0;

    .line 7
    iget-object v0, v0, Lc/d/a/b/p/e0;->c:Lc/d/a/b/p/j0;

    invoke-virtual {v0}, Lc/d/a/b/p/j0;->u()Z

    return-void

    :catch_2
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/p/d0;->d:Lc/d/a/b/p/e0;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 9
    iget-object v1, v1, Lc/d/a/b/p/e0;->c:Lc/d/a/b/p/j0;

    invoke-virtual {v1, v0}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lc/d/a/b/p/d0;->d:Lc/d/a/b/p/e0;

    .line 11
    iget-object v1, v1, Lc/d/a/b/p/e0;->c:Lc/d/a/b/p/j0;

    invoke-virtual {v1, v0}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void
.end method
