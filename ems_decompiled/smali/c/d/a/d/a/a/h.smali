.class public final Lc/d/a/d/a/a/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/d/a/a/b;


# instance fields
.field public final a:Lc/d/a/d/a/a/p;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lc/d/a/d/a/a/p;Lc/d/a/d/a/a/f;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lc/d/a/d/a/a/h;->a:Lc/d/a/d/a/a/p;

    iput-object p3, p0, Lc/d/a/d/a/a/h;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lc/d/a/b/p/l;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/d/a/b/p/l<",
            "Lc/d/a/d/a/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/d/a/a/h;->a:Lc/d/a/d/a/a/p;

    iget-object v1, p0, Lc/d/a/d/a/a/h;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1
    iget-object v2, v0, Lc/d/a/d/a/a/p;->a:Lc/d/a/d/a/a/d/w;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 2
    sget-object v0, Lc/d/a/d/a/a/p;->e:Lc/d/a/d/a/a/d/m;

    new-array v1, v3, [Ljava/lang/Object;

    const/16 v2, -0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v1}, Lc/d/a/d/a/a/d/m;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lc/d/a/d/a/b/a;

    invoke-direct {v0, v2}, Lc/d/a/d/a/b/a;-><init>(I)V

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->P(Ljava/lang/Exception;)Lc/d/a/b/p/l;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lc/d/a/d/a/a/p;->e:Lc/d/a/d/a/a/d/m;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "requestUpdateInfo(%s)"

    invoke-virtual {v2, v5, v3}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Lc/d/a/b/p/m;

    invoke-direct {v2}, Lc/d/a/b/p/m;-><init>()V

    iget-object v3, v0, Lc/d/a/d/a/a/p;->a:Lc/d/a/d/a/a/d/w;

    new-instance v5, Lc/d/a/d/a/a/n;

    invoke-direct {v5, v0, v2, v1, v2}, Lc/d/a/d/a/a/n;-><init>(Lc/d/a/d/a/a/p;Lc/d/a/b/p/m;Ljava/lang/String;Lc/d/a/b/p/m;)V

    .line 4
    iget-object v0, v3, Lc/d/a/d/a/a/d/w;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, v3, Lc/d/a/d/a/a/d/w;->e:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, v2, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    .line 6
    new-instance v6, Lc/d/a/d/a/a/d/o;

    invoke-direct {v6, v3, v2}, Lc/d/a/d/a/a/d/o;-><init>(Lc/d/a/d/a/a/d/w;Lc/d/a/b/p/m;)V

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lc/d/a/b/p/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v7, v6}, Lc/d/a/b/p/j0;->r(Ljava/util/concurrent/Executor;Lc/d/a/b/p/f;)Lc/d/a/b/p/l;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, v3, Lc/d/a/d/a/a/d/w;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, v3, Lc/d/a/d/a/a/d/w;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v3, Lc/d/a/d/a/a/d/w;->b:Lc/d/a/d/a/a/d/m;

    const-string v6, "Already connected to the service."

    new-array v4, v4, [Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "PlayCore"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v0, v0, Lc/d/a/d/a/a/d/m;->a:Ljava/lang/String;

    invoke-static {v0, v6, v4}, Lc/d/a/d/a/a/d/m;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lc/d/a/d/a/a/d/q;

    .line 11
    iget-object v1, v5, Lc/d/a/d/a/a/d/n;->c:Lc/d/a/b/p/m;

    .line 12
    invoke-direct {v0, v3, v1, v5}, Lc/d/a/d/a/a/d/q;-><init>(Lc/d/a/d/a/a/d/w;Lc/d/a/b/p/m;Lc/d/a/d/a/a/d/n;)V

    invoke-virtual {v3}, Lc/d/a/d/a/a/d/w;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    iget-object v0, v2, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final b(Lc/d/a/d/a/a/a;ILandroid/app/Activity;I)Z
    .locals 10

    invoke-static {p2}, Lc/d/a/d/a/a/c;->c(I)Lc/d/a/d/a/a/c;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1, p2}, Lc/d/a/d/a/a/a;->a(Lc/d/a/d/a/a/c;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 2
    iget-boolean v2, p1, Lc/d/a/d/a/a/a;->h:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iput-boolean v1, p1, Lc/d/a/d/a/a/a;->h:Z

    .line 4
    invoke-virtual {p1, p2}, Lc/d/a/d/a/a/a;->a(Lc/d/a/d/a/a/c;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p3

    move v4, p4

    .line 5
    invoke-virtual/range {v2 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method
