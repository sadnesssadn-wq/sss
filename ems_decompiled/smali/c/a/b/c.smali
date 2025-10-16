.class public Lc/a/b/c;
.super Ljava/lang/Thread;
.source ""


# static fields
.field public static final i:Z


# instance fields
.field public final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/a/b/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/a/b/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Lc/a/b/a;

.field public final f:Lc/a/b/m;

.field public volatile g:Z

.field public final h:Lc/a/b/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lc/a/b/o;->a:Z

    sput-boolean v0, Lc/a/b/c;->i:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lc/a/b/a;Lc/a/b/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/a/b/j<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/a/b/j<",
            "*>;>;",
            "Lc/a/b/a;",
            "Lc/a/b/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/b/c;->g:Z

    iput-object p1, p0, Lc/a/b/c;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lc/a/b/c;->d:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lc/a/b/c;->e:Lc/a/b/a;

    iput-object p4, p0, Lc/a/b/c;->f:Lc/a/b/m;

    new-instance p1, Lc/a/b/p;

    invoke-direct {p1, p0, p2, p4}, Lc/a/b/p;-><init>(Lc/a/b/c;Ljava/util/concurrent/BlockingQueue;Lc/a/b/m;)V

    iput-object p1, p0, Lc/a/b/c;->h:Lc/a/b/p;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    iget-object v0, p0, Lc/a/b/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/b/j;

    const-string v1, "cache-queue-take"

    .line 1
    invoke-virtual {v0, v1}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/a/b/j;->sendEvent(I)V

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0}, Lc/a/b/j;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Lc/a/b/j;->finish(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    invoke-virtual {v0, v2}, Lc/a/b/j;->sendEvent(I)V

    goto/16 :goto_5

    :cond_1
    :try_start_1
    iget-object v3, p0, Lc/a/b/c;->e:Lc/a/b/a;

    invoke-virtual {v0}, Lc/a/b/j;->getCacheKey()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    check-cast v3, Lc/a/b/q/d;

    :try_start_2
    invoke-virtual {v3, v4}, Lc/a/b/q/d;->a(Ljava/lang/String;)Lc/a/b/a$a;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    iget-object v1, p0, Lc/a/b/c;->h:Lc/a/b/p;

    invoke-virtual {v1, v0}, Lc/a/b/p;->a(Lc/a/b/j;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/a/b/c;->d:Ljava/util/concurrent/BlockingQueue;

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    iget-wide v6, v3, Lc/a/b/a$a;->e:J

    const/4 v8, 0x0

    cmp-long v9, v6, v4

    if-gez v9, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    const-string v1, "cache-hit-expired"

    .line 3
    invoke-virtual {v0, v1}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lc/a/b/j;->setCacheEntry(Lc/a/b/a$a;)Lc/a/b/j;

    iget-object v1, p0, Lc/a/b/c;->h:Lc/a/b/p;

    invoke-virtual {v1, v0}, Lc/a/b/p;->a(Lc/a/b/j;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/a/b/c;->d:Ljava/util/concurrent/BlockingQueue;

    goto :goto_1

    :cond_4
    const-string v6, "cache-hit"

    invoke-virtual {v0, v6}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    new-instance v6, Lc/a/b/i;

    iget-object v7, v3, Lc/a/b/a$a;->a:[B

    iget-object v9, v3, Lc/a/b/a$a;->g:Ljava/util/Map;

    invoke-direct {v6, v7, v9}, Lc/a/b/i;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v6}, Lc/a/b/j;->parseNetworkResponse(Lc/a/b/i;)Lc/a/b/l;

    move-result-object v6

    const-string v7, "cache-hit-parsed"

    invoke-virtual {v0, v7}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    .line 4
    iget-object v7, v6, Lc/a/b/l;->c:Lcom/android/volley/VolleyError;

    if-nez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_7

    const-string v1, "cache-parsing-failed"

    .line 5
    invoke-virtual {v0, v1}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    iget-object v1, p0, Lc/a/b/c;->e:Lc/a/b/a;

    invoke-virtual {v0}, Lc/a/b/j;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lc/a/b/q/d;

    .line 6
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1, v3}, Lc/a/b/q/d;->a(Ljava/lang/String;)Lc/a/b/a$a;

    move-result-object v4

    if-eqz v4, :cond_6

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lc/a/b/a$a;->f:J

    iput-wide v5, v4, Lc/a/b/a$a;->e:J

    invoke-virtual {v1, v3, v4}, Lc/a/b/q/d;->f(Ljava/lang/String;Lc/a/b/a$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :try_start_4
    monitor-exit v1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lc/a/b/j;->setCacheEntry(Lc/a/b/a$a;)Lc/a/b/j;

    iget-object v1, p0, Lc/a/b/c;->h:Lc/a/b/p;

    invoke-virtual {v1, v0}, Lc/a/b/p;->a(Lc/a/b/j;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/a/b/c;->d:Ljava/util/concurrent/BlockingQueue;

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 8
    monitor-exit v1

    throw v3

    .line 9
    :cond_7
    iget-wide v9, v3, Lc/a/b/a$a;->f:J

    cmp-long v7, v9, v4

    if-gez v7, :cond_8

    const/4 v8, 0x1

    :cond_8
    if-nez v8, :cond_a

    .line 10
    :cond_9
    iget-object v1, p0, Lc/a/b/c;->f:Lc/a/b/m;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    check-cast v1, Lc/a/b/e;

    goto :goto_4

    :cond_a
    :try_start_5
    const-string v4, "cache-hit-refresh-needed"

    invoke-virtual {v0, v4}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lc/a/b/j;->setCacheEntry(Lc/a/b/a$a;)Lc/a/b/j;

    iput-boolean v1, v6, Lc/a/b/l;->d:Z

    iget-object v1, p0, Lc/a/b/c;->h:Lc/a/b/p;

    invoke-virtual {v1, v0}, Lc/a/b/p;->a(Lc/a/b/j;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lc/a/b/c;->f:Lc/a/b/m;

    new-instance v3, Lc/a/b/b;

    invoke-direct {v3, p0, v0}, Lc/a/b/b;-><init>(Lc/a/b/c;Lc/a/b/j;)V

    check-cast v1, Lc/a/b/e;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lc/a/b/j;->markDelivered()V

    const-string v4, "post-response"

    invoke-virtual {v0, v4}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    iget-object v1, v1, Lc/a/b/e;->a:Ljava/util/concurrent/Executor;

    new-instance v4, Lc/a/b/e$b;

    invoke-direct {v4, v0, v6, v3}, Lc/a/b/e$b;-><init>(Lc/a/b/j;Lc/a/b/l;Ljava/lang/Runnable;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 12
    :goto_4
    invoke-virtual {v1, v0, v6}, Lc/a/b/e;->a(Lc/a/b/j;Lc/a/b/l;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    :goto_5
    return-void

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v2}, Lc/a/b/j;->sendEvent(I)V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method public run()V
    .locals 3

    sget-boolean v0, Lc/a/b/c;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lc/a/b/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lc/a/b/c;->e:Lc/a/b/a;

    check-cast v0, Lc/a/b/q/d;

    invoke-virtual {v0}, Lc/a/b/q/d;->d()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lc/a/b/c;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lc/a/b/c;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    invoke-static {v2, v0}, Lc/a/b/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
