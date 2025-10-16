.class public Lc/a/b/h;
.super Ljava/lang/Thread;
.source ""


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

.field public final d:Lc/a/b/g;

.field public final e:Lc/a/b/a;

.field public final f:Lc/a/b/m;

.field public volatile g:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lc/a/b/g;Lc/a/b/a;Lc/a/b/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/a/b/j<",
            "*>;>;",
            "Lc/a/b/g;",
            "Lc/a/b/a;",
            "Lc/a/b/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/b/h;->g:Z

    iput-object p1, p0, Lc/a/b/h;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lc/a/b/h;->d:Lc/a/b/g;

    iput-object p3, p0, Lc/a/b/h;->e:Lc/a/b/a;

    iput-object p4, p0, Lc/a/b/h;->f:Lc/a/b/m;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lc/a/b/h;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/b/j;

    const-string v1, "post-error"

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lc/a/b/j;->sendEvent(I)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_0
    const-string v4, "network-queue-take"

    invoke-virtual {v0, v4}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/a/b/j;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "network-discard-cancelled"

    invoke-virtual {v0, v4}, Lc/a/b/j;->finish(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lc/a/b/j;->notifyListenerResponseNotUsable()V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v0, v3}, Lc/a/b/j;->sendEvent(I)V

    goto/16 :goto_3

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lc/a/b/j;->getTrafficStatsTag()I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 3
    iget-object v4, p0, Lc/a/b/h;->d:Lc/a/b/g;
    :try_end_1
    .catch Lcom/android/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v4, Lc/a/b/q/b;

    :try_start_2
    invoke-virtual {v4, v0}, Lc/a/b/q/b;->a(Lc/a/b/j;)Lc/a/b/i;

    move-result-object v4

    const-string v5, "network-http-complete"

    invoke-virtual {v0, v5}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    iget-boolean v5, v4, Lc/a/b/i;->e:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lc/a/b/j;->hasHadResponseDelivered()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "not-modified"

    invoke-virtual {v0, v4}, Lc/a/b/j;->finish(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lc/a/b/j;->parseNetworkResponse(Lc/a/b/i;)Lc/a/b/l;

    move-result-object v4

    const-string v5, "network-parse-complete"

    invoke-virtual {v0, v5}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/a/b/j;->shouldCache()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lc/a/b/l;->b:Lc/a/b/a$a;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lc/a/b/h;->e:Lc/a/b/a;

    invoke-virtual {v0}, Lc/a/b/j;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lc/a/b/l;->b:Lc/a/b/a$a;
    :try_end_2
    .catch Lcom/android/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    check-cast v5, Lc/a/b/q/d;

    :try_start_3
    invoke-virtual {v5, v6, v7}, Lc/a/b/q/d;->f(Ljava/lang/String;Lc/a/b/a$a;)V

    const-string v5, "network-cache-written"

    invoke-virtual {v0, v5}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lc/a/b/j;->markDelivered()V

    iget-object v5, p0, Lc/a/b/h;->f:Lc/a/b/m;
    :try_end_3
    .catch Lcom/android/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    check-cast v5, Lc/a/b/e;

    :try_start_4
    invoke-virtual {v5, v0, v4}, Lc/a/b/e;->a(Lc/a/b/j;Lc/a/b/l;)V

    invoke-virtual {v0, v4}, Lc/a/b/j;->notifyListenerResponseReceived(Lc/a/b/l;)V
    :try_end_4
    .catch Lcom/android/volley/VolleyError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v4

    :try_start_5
    const-string v5, "Unhandled exception %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 4
    invoke-static {v5, v6}, Lc/a/b/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Volley"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    new-instance v5, Lcom/android/volley/VolleyError;

    invoke-direct {v5, v4}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v4, p0, Lc/a/b/h;->f:Lc/a/b/m;

    check-cast v4, Lc/a/b/e;

    .line 6
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    .line 7
    new-instance v1, Lc/a/b/l;

    invoke-direct {v1, v5}, Lc/a/b/l;-><init>(Lcom/android/volley/VolleyError;)V

    .line 8
    iget-object v4, v4, Lc/a/b/e;->a:Ljava/util/concurrent/Executor;

    new-instance v5, Lc/a/b/e$b;

    invoke-direct {v5, v0, v1, v2}, Lc/a/b/e$b;-><init>(Lc/a/b/j;Lc/a/b/l;Ljava/lang/Runnable;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :catch_1
    move-exception v4

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    invoke-virtual {v0, v4}, Lc/a/b/j;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object v4

    iget-object v5, p0, Lc/a/b/h;->f:Lc/a/b/m;

    check-cast v5, Lc/a/b/e;

    .line 11
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    .line 12
    new-instance v1, Lc/a/b/l;

    invoke-direct {v1, v4}, Lc/a/b/l;-><init>(Lcom/android/volley/VolleyError;)V

    .line 13
    iget-object v4, v5, Lc/a/b/e;->a:Ljava/util/concurrent/Executor;

    new-instance v5, Lc/a/b/e$b;

    invoke-direct {v5, v0, v1, v2}, Lc/a/b/e$b;-><init>(Lc/a/b/j;Lc/a/b/l;Ljava/lang/Runnable;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    :goto_2
    invoke-virtual {v0}, Lc/a/b/j;->notifyListenerResponseNotUsable()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-virtual {v0, v3}, Lc/a/b/j;->sendEvent(I)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lc/a/b/h;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lc/a/b/h;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lc/a/b/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
