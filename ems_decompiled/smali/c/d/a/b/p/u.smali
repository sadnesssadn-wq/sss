.class public final Lc/d/a/b/p/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/b/p/l;

.field public final synthetic d:Lc/d/a/b/p/s;


# direct methods
.method public constructor <init>(Lc/d/a/b/p/s;Lc/d/a/b/p/l;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/p/u;->d:Lc/d/a/b/p/s;

    iput-object p2, p0, Lc/d/a/b/p/u;->c:Lc/d/a/b/p/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/p/u;->d:Lc/d/a/b/p/s;

    .line 1
    iget-object v0, v0, Lc/d/a/b/p/s;->b:Lc/d/a/b/p/c;

    .line 2
    iget-object v1, p0, Lc/d/a/b/p/u;->c:Lc/d/a/b/p/l;

    invoke-interface {v0, v1}, Lc/d/a/b/p/c;->then(Lc/d/a/b/p/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/p/l;
    :try_end_0
    .catch Lc/d/a/b/p/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/p/u;->d:Lc/d/a/b/p/s;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lc/d/a/b/p/s;->c:Lc/d/a/b/p/j0;

    invoke-virtual {v0, v1}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_0
    sget-object v1, Lc/d/a/b/p/n;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lc/d/a/b/p/u;->d:Lc/d/a/b/p/s;

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/p/l;->e(Ljava/util/concurrent/Executor;Lc/d/a/b/p/h;)Lc/d/a/b/p/l;

    iget-object v2, p0, Lc/d/a/b/p/u;->d:Lc/d/a/b/p/s;

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/p/l;->c(Ljava/util/concurrent/Executor;Lc/d/a/b/p/g;)Lc/d/a/b/p/l;

    iget-object v2, p0, Lc/d/a/b/p/u;->d:Lc/d/a/b/p/s;

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/p/l;->a(Ljava/util/concurrent/Executor;Lc/d/a/b/p/e;)Lc/d/a/b/p/l;

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lc/d/a/b/p/u;->d:Lc/d/a/b/p/s;

    .line 5
    iget-object v1, v1, Lc/d/a/b/p/s;->c:Lc/d/a/b/p/j0;

    .line 6
    invoke-virtual {v1, v0}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/p/u;->d:Lc/d/a/b/p/s;

    .line 7
    iget-object v1, v1, Lc/d/a/b/p/s;->c:Lc/d/a/b/p/j0;

    .line 8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v1, p0, Lc/d/a/b/p/u;->d:Lc/d/a/b/p/s;

    .line 9
    iget-object v1, v1, Lc/d/a/b/p/s;->c:Lc/d/a/b/p/j0;

    .line 10
    invoke-virtual {v1, v0}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void
.end method
