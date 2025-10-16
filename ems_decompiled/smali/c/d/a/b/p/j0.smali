.class public final Lc/d/a/b/p/j0;
.super Lc/d/a/b/p/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lc/d/a/b/p/l<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lc/d/a/b/p/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/p/f0<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field public c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public volatile d:Z

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public f:Ljava/lang/Exception;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/p/l;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/d/a/b/p/j0;->a:Ljava/lang/Object;

    new-instance v0, Lc/d/a/b/p/f0;

    invoke-direct {v0}, Lc/d/a/b/p/f0;-><init>()V

    iput-object v0, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lc/d/a/b/p/e;)Lc/d/a/b/p/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lc/d/a/b/p/e;",
            ")",
            "Lc/d/a/b/p/l<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    new-instance v1, Lc/d/a/b/p/w;

    .line 1
    sget v2, Lc/d/a/b/p/k0;->a:I

    .line 2
    invoke-direct {v1, p1, p2}, Lc/d/a/b/p/w;-><init>(Ljava/util/concurrent/Executor;Lc/d/a/b/p/e;)V

    invoke-virtual {v0, v1}, Lc/d/a/b/p/f0;->b(Lc/d/a/b/p/g0;)V

    invoke-virtual {p0}, Lc/d/a/b/p/j0;->x()V

    return-object p0
.end method

.method public final b(Lc/d/a/b/p/f;)Lc/d/a/b/p/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/f<",
            "TTResult;>;)",
            "Lc/d/a/b/p/l<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lc/d/a/b/p/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lc/d/a/b/p/j0;->r(Ljava/util/concurrent/Executor;Lc/d/a/b/p/f;)Lc/d/a/b/p/l;

    return-object p0
.end method

.method public final c(Ljava/util/concurrent/Executor;Lc/d/a/b/p/g;)Lc/d/a/b/p/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lc/d/a/b/p/g;",
            ")",
            "Lc/d/a/b/p/l<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    new-instance v1, Lc/d/a/b/p/a0;

    .line 1
    sget v2, Lc/d/a/b/p/k0;->a:I

    .line 2
    invoke-direct {v1, p1, p2}, Lc/d/a/b/p/a0;-><init>(Ljava/util/concurrent/Executor;Lc/d/a/b/p/g;)V

    invoke-virtual {v0, v1}, Lc/d/a/b/p/f0;->b(Lc/d/a/b/p/g0;)V

    invoke-virtual {p0}, Lc/d/a/b/p/j0;->x()V

    return-object p0
.end method

.method public final d(Lc/d/a/b/p/h;)Lc/d/a/b/p/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/h<",
            "-TTResult;>;)",
            "Lc/d/a/b/p/l<",
            "TTResult;>;"
        }
    .end annotation

    sget-object v0, Lc/d/a/b/p/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lc/d/a/b/p/j0;->e(Ljava/util/concurrent/Executor;Lc/d/a/b/p/h;)Lc/d/a/b/p/l;

    return-object p0
.end method

.method public final e(Ljava/util/concurrent/Executor;Lc/d/a/b/p/h;)Lc/d/a/b/p/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lc/d/a/b/p/h<",
            "-TTResult;>;)",
            "Lc/d/a/b/p/l<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    new-instance v1, Lc/d/a/b/p/b0;

    .line 1
    sget v2, Lc/d/a/b/p/k0;->a:I

    .line 2
    invoke-direct {v1, p1, p2}, Lc/d/a/b/p/b0;-><init>(Ljava/util/concurrent/Executor;Lc/d/a/b/p/h;)V

    invoke-virtual {v0, v1}, Lc/d/a/b/p/f0;->b(Lc/d/a/b/p/g0;)V

    invoke-virtual {p0}, Lc/d/a/b/p/j0;->x()V

    return-object p0
.end method

.method public final f(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/d/a/b/p/c<",
            "TTResult;TTContinuationResult;>;)",
            "Lc/d/a/b/p/l<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lc/d/a/b/p/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lc/d/a/b/p/j0;->g(Ljava/util/concurrent/Executor;Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/util/concurrent/Executor;Lc/d/a/b/p/c;)Lc/d/a/b/p/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lc/d/a/b/p/c<",
            "TTResult;TTContinuationResult;>;)",
            "Lc/d/a/b/p/l<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lc/d/a/b/p/j0;

    invoke-direct {v0}, Lc/d/a/b/p/j0;-><init>()V

    iget-object v1, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    new-instance v2, Lc/d/a/b/p/r;

    .line 1
    sget v3, Lc/d/a/b/p/k0;->a:I

    .line 2
    invoke-direct {v2, p1, p2, v0}, Lc/d/a/b/p/r;-><init>(Ljava/util/concurrent/Executor;Lc/d/a/b/p/c;Lc/d/a/b/p/j0;)V

    invoke-virtual {v1, v2}, Lc/d/a/b/p/f0;->b(Lc/d/a/b/p/g0;)V

    invoke-virtual {p0}, Lc/d/a/b/p/j0;->x()V

    return-object v0
.end method

.method public final h(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/d/a/b/p/c<",
            "TTResult;",
            "Lc/d/a/b/p/l<",
            "TTContinuationResult;>;>;)",
            "Lc/d/a/b/p/l<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lc/d/a/b/p/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lc/d/a/b/p/j0;->i(Ljava/util/concurrent/Executor;Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/util/concurrent/Executor;Lc/d/a/b/p/c;)Lc/d/a/b/p/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lc/d/a/b/p/c<",
            "TTResult;",
            "Lc/d/a/b/p/l<",
            "TTContinuationResult;>;>;)",
            "Lc/d/a/b/p/l<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lc/d/a/b/p/j0;

    invoke-direct {v0}, Lc/d/a/b/p/j0;-><init>()V

    iget-object v1, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    new-instance v2, Lc/d/a/b/p/s;

    .line 1
    sget v3, Lc/d/a/b/p/k0;->a:I

    .line 2
    invoke-direct {v2, p1, p2, v0}, Lc/d/a/b/p/s;-><init>(Ljava/util/concurrent/Executor;Lc/d/a/b/p/c;Lc/d/a/b/p/j0;)V

    invoke-virtual {v1, v2}, Lc/d/a/b/p/f0;->b(Lc/d/a/b/p/g0;)V

    invoke-virtual {p0}, Lc/d/a/b/p/j0;->x()V

    return-object v0
.end method

.method public final j()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lc/d/a/b/p/j0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/d/a/b/p/j0;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/p/j0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lc/d/a/b/p/j0;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->o(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v1, p0, Lc/d/a/b/p/j0;->d:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lc/d/a/b/p/j0;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/d/a/b/p/j0;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lc/d/a/b/p/j;

    iget-object v2, p0, Lc/d/a/b/p/j0;->f:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lc/d/a/b/p/j;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Task is already canceled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/p/j0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lc/d/a/b/p/j0;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->o(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v1, p0, Lc/d/a/b/p/j0;->d:Z

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Lc/d/a/b/p/j0;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lc/d/a/b/p/j0;->f:Ljava/lang/Exception;

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/d/a/b/p/j0;->e:Ljava/lang/Object;

    monitor-exit v0

    return-object p1

    :cond_0
    new-instance p1, Lc/d/a/b/p/j;

    iget-object v1, p0, Lc/d/a/b/p/j0;->f:Ljava/lang/Exception;

    invoke-direct {p1, v1}, Lc/d/a/b/p/j;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lc/d/a/b/p/j0;->f:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 4
    :cond_2
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {p1, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lc/d/a/b/p/j0;->d:Z

    return v0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lc/d/a/b/p/j0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lc/d/a/b/p/j0;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lc/d/a/b/p/j0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lc/d/a/b/p/j0;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc/d/a/b/p/j0;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/d/a/b/p/j0;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p(Lc/d/a/b/p/k;)Lc/d/a/b/p/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/d/a/b/p/k<",
            "TTResult;TTContinuationResult;>;)",
            "Lc/d/a/b/p/l<",
            "TTContinuationResult;>;"
        }
    .end annotation

    sget-object v0, Lc/d/a/b/p/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lc/d/a/b/p/j0;->q(Ljava/util/concurrent/Executor;Lc/d/a/b/p/k;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/util/concurrent/Executor;Lc/d/a/b/p/k;)Lc/d/a/b/p/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lc/d/a/b/p/k<",
            "TTResult;TTContinuationResult;>;)",
            "Lc/d/a/b/p/l<",
            "TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lc/d/a/b/p/j0;

    invoke-direct {v0}, Lc/d/a/b/p/j0;-><init>()V

    iget-object v1, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    new-instance v2, Lc/d/a/b/p/e0;

    .line 1
    sget v3, Lc/d/a/b/p/k0;->a:I

    .line 2
    invoke-direct {v2, p1, p2, v0}, Lc/d/a/b/p/e0;-><init>(Ljava/util/concurrent/Executor;Lc/d/a/b/p/k;Lc/d/a/b/p/j0;)V

    invoke-virtual {v1, v2}, Lc/d/a/b/p/f0;->b(Lc/d/a/b/p/g0;)V

    invoke-virtual {p0}, Lc/d/a/b/p/j0;->x()V

    return-object v0
.end method

.method public final r(Ljava/util/concurrent/Executor;Lc/d/a/b/p/f;)Lc/d/a/b/p/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lc/d/a/b/p/f<",
            "TTResult;>;)",
            "Lc/d/a/b/p/l<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    new-instance v1, Lc/d/a/b/p/x;

    .line 1
    sget v2, Lc/d/a/b/p/k0;->a:I

    .line 2
    invoke-direct {v1, p1, p2}, Lc/d/a/b/p/x;-><init>(Ljava/util/concurrent/Executor;Lc/d/a/b/p/f;)V

    invoke-virtual {v0, v1}, Lc/d/a/b/p/f0;->b(Lc/d/a/b/p/g0;)V

    invoke-virtual {p0}, Lc/d/a/b/p/j0;->x()V

    return-object p0
.end method

.method public final s(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/d/a/b/p/j0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lc/d/a/b/p/j0;->w()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/d/a/b/p/j0;->c:Z

    iput-object p1, p0, Lc/d/a/b/p/j0;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    invoke-virtual {p1, p0}, Lc/d/a/b/p/f0;->a(Lc/d/a/b/p/l;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final t(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/p/j0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lc/d/a/b/p/j0;->w()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/d/a/b/p/j0;->c:Z

    iput-object p1, p0, Lc/d/a/b/p/j0;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    invoke-virtual {p1, p0}, Lc/d/a/b/p/f0;->a(Lc/d/a/b/p/l;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final u()Z
    .locals 2

    iget-object v0, p0, Lc/d/a/b/p/j0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lc/d/a/b/p/j0;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/d/a/b/p/j0;->c:Z

    iput-boolean v1, p0, Lc/d/a/b/p/j0;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    invoke-virtual {v0, p0}, Lc/d/a/b/p/f0;->a(Lc/d/a/b/p/l;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final v(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/p/j0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lc/d/a/b/p/j0;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/d/a/b/p/j0;->c:Z

    iput-object p1, p0, Lc/d/a/b/p/j0;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    invoke-virtual {p1, p0}, Lc/d/a/b/p/f0;->a(Lc/d/a/b/p/l;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final w()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Lc/d/a/b/p/j0;->c:Z

    if-eqz v0, :cond_5

    .line 1
    sget v0, Lc/d/a/b/p/d;->c:I

    invoke-virtual {p0}, Lc/d/a/b/p/j0;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lc/d/a/b/p/j0;->j()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "failure"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/p/j0;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc/d/a/b/p/j0;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "result "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc/d/a/b/p/j0;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cancellation"

    goto :goto_0

    :cond_2
    const-string v1, "unknown issue"

    :goto_0
    new-instance v2, Lc/d/a/b/p/d;

    const-string v3, "Complete with: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v2, v1, v0}, Lc/d/a/b/p/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v0, "DuplicateTaskCompletionException can only be created from completed Task."

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2
    :goto_2
    throw v2

    :cond_5
    return-void
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/p/j0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lc/d/a/b/p/j0;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    invoke-virtual {v0, p0}, Lc/d/a/b/p/f0;->a(Lc/d/a/b/p/l;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
