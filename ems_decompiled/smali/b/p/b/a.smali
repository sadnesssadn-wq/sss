.class public abstract Lb/p/b/a;
.super Lb/p/b/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/p/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lb/p/b/b<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/concurrent/Executor;

.field public volatile h:Lb/p/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/p/b/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field public volatile i:Lb/p/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/p/b/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field public j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lb/p/b/c;->j:Ljava/util/concurrent/Executor;

    .line 1
    invoke-direct {p0, p1}, Lb/p/b/b;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, -0x2710

    iput-wide v1, p0, Lb/p/b/a;->j:J

    iput-object v0, p0, Lb/p/b/a;->g:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public c(Lb/p/b/a$a;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/p/b/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/p/b/a;->h:Lb/p/b/a$a;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 1
    iget-object p2, p0, Lb/p/b/a;->i:Lb/p/b/a$a;

    if-ne p2, p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lb/p/b/a;->j:J

    iput-object v1, p0, Lb/p/b/a;->i:Lb/p/b/a$a;

    invoke-virtual {p0}, Lb/p/b/a;->d()V

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lb/p/b/b;->d:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lb/p/b/a;->j:J

    iput-object v1, p0, Lb/p/b/a;->h:Lb/p/b/a$a;

    .line 4
    iget-object p1, p0, Lb/p/b/b;->b:Lb/p/b/b$a;

    if-eqz p1, :cond_3

    check-cast p1, Lb/p/a/b$a;

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, p2}, Lb/p/a/b$a;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Lb/o/o;->j(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lb/p/b/a;->i:Lb/p/b/a$a;

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/p/b/a;->h:Lb/p/b/a$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/p/b/a;->h:Lb/p/b/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lb/p/b/a;->h:Lb/p/b/a$a;

    iget-object v2, p0, Lb/p/b/a;->g:Ljava/util/concurrent/Executor;

    .line 1
    iget-object v3, v1, Lb/p/b/c;->e:Lb/p/b/c$f;

    sget-object v4, Lb/p/b/c$f;->c:Lb/p/b/c$f;

    if-eq v3, v4, :cond_2

    iget-object v0, v1, Lb/p/b/c;->e:Lb/p/b/c$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We should never reach this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v3, Lb/p/b/c$f;->d:Lb/p/b/c$f;

    iput-object v3, v1, Lb/p/b/c;->e:Lb/p/b/c$f;

    iget-object v3, v1, Lb/p/b/c;->c:Lb/p/b/c$g;

    iput-object v0, v3, Lb/p/b/c$g;->a:[Ljava/lang/Object;

    iget-object v0, v1, Lb/p/b/c;->d:Ljava/util/concurrent/FutureTask;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lc/d/a/b/a/a/e/b/e;

    .line 1
    iget-object v1, v0, Lc/d/a/b/a/a/e/b/e;->l:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/e/m/e;

    invoke-virtual {v3, v0}, Lc/d/a/b/e/m/e;->h(Lc/d/a/b/e/m/m/p;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, v0, Lc/d/a/b/a/a/e/b/e;->k:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "GACSignInLoader"

    const-string v2, "Unexpected InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
