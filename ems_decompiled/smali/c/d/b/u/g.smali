.class public abstract Lc/d/b/u/g;
.super Landroid/app/Service;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnwrappedWakefulBroadcastReceiver"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/ExecutorService;

.field public d:Landroid/os/Binder;

.field public final e:Ljava/lang/Object;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 1
    new-instance v7, Lc/d/a/b/e/t/g/a;

    const-string v0, "Firebase-Messaging-Intent-Handle"

    invoke-direct {v7, v0}, Lc/d/a/b/e/t/g/a;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v8}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lc/d/b/u/g;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/d/b/u/g;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lc/d/b/u/g;->g:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Lc/d/b/u/w0;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/d/b/u/w0;->c:Lc/d/a/b/o/a;

    if-eqz v1, :cond_0

    const-string v1, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    sget-object p1, Lc/d/b/u/w0;->c:Lc/d/a/b/o/a;

    invoke-virtual {p1}, Lc/d/a/b/o/a;->b()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lc/d/b/u/g;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget v0, p0, Lc/d/b/u/g;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/d/b/u/g;->g:I

    if-nez v0, :cond_2

    iget v0, p0, Lc/d/b/u/g;->f:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelfResult(I)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public abstract b(Landroid/content/Intent;)V
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic d(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc/d/b/u/g;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public final e(Landroid/content/Intent;)Lc/d/a/b/p/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lc/d/a/b/p/l<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lc/d/b/u/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q(Ljava/lang/Object;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lc/d/a/b/p/m;

    invoke-direct {v0}, Lc/d/a/b/p/m;-><init>()V

    iget-object v1, p0, Lc/d/b/u/g;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lc/d/b/u/e;

    invoke-direct {v2, p0, p1, v0}, Lc/d/b/u/e;-><init>(Lc/d/b/u/g;Landroid/content/Intent;Lc/d/a/b/p/m;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1
    iget-object p1, v0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    return-object p1
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "EnhancedIntentService"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "EnhancedIntentService"

    const-string v0, "Service received bind request"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lc/d/b/u/g;->d:Landroid/os/Binder;

    if-nez p1, :cond_1

    new-instance p1, Lc/d/b/u/z0;

    new-instance v0, Lc/d/b/u/g$a;

    invoke-direct {v0, p0}, Lc/d/b/u/g$a;-><init>(Lc/d/b/u/g;)V

    invoke-direct {p1, v0}, Lc/d/b/u/z0;-><init>(Lc/d/b/u/z0$a;)V

    iput-object p1, p0, Lc/d/b/u/g;->d:Landroid/os/Binder;

    :cond_1
    iget-object p1, p0, Lc/d/b/u/g;->d:Landroid/os/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lc/d/b/u/g;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    iget-object p2, p0, Lc/d/b/u/g;->e:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iput p3, p0, Lc/d/b/u/g;->f:I

    iget p3, p0, Lc/d/b/u/g;->g:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lc/d/b/u/g;->g:I

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    invoke-static {}, Lc/d/b/u/m0;->a()Lc/d/b/u/m0;

    move-result-object p2

    .line 2
    iget-object p2, p2, Lc/d/b/u/m0;->d:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    const/4 p3, 0x2

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lc/d/b/u/g;->a(Landroid/content/Intent;)V

    return p3

    :cond_0
    invoke-virtual {p0, p2}, Lc/d/b/u/g;->e(Landroid/content/Intent;)Lc/d/a/b/p/l;

    move-result-object p2

    invoke-virtual {p2}, Lc/d/a/b/p/l;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lc/d/b/u/g;->a(Landroid/content/Intent;)V

    return p3

    :cond_1
    sget-object p3, Lc/d/b/u/f;->a:Lc/d/b/u/f;

    new-instance v0, Lc/d/b/u/d;

    invoke-direct {v0, p0, p1}, Lc/d/b/u/d;-><init>(Lc/d/b/u/g;Landroid/content/Intent;)V

    check-cast p2, Lc/d/a/b/p/j0;

    .line 4
    iget-object p1, p2, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    new-instance v1, Lc/d/a/b/p/x;

    .line 5
    sget v2, Lc/d/a/b/p/k0;->a:I

    .line 6
    invoke-direct {v1, p3, v0}, Lc/d/a/b/p/x;-><init>(Ljava/util/concurrent/Executor;Lc/d/a/b/p/f;)V

    invoke-virtual {p1, v1}, Lc/d/a/b/p/f0;->b(Lc/d/a/b/p/g0;)V

    invoke-virtual {p2}, Lc/d/a/b/p/j0;->x()V

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
