.class public final Lc/d/a/b/a/a/e/b/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lc/d/a/b/e/q/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/d/a/b/e/q/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GoogleSignInCommon"

    invoke-direct {v0, v2, v1}, Lc/d/a/b/e/q/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lc/d/a/b/a/a/e/b/h;->a:Lc/d/a/b/e/q/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lc/d/a/b/a/a/e/b/n;->b(Landroid/content/Context;)Lc/d/a/b/a/a/e/b/n;

    move-result-object p0

    invoke-virtual {p0}, Lc/d/a/b/a/a/e/b/n;->a()V

    .line 1
    sget-object p0, Lc/d/a/b/e/m/e;->a:Ljava/util/Set;

    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/e;

    invoke-virtual {v0}, Lc/d/a/b/e/m/e;->i()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lc/d/a/b/e/m/m/g;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object p0, Lc/d/a/b/e/m/m/g;->r:Lc/d/a/b/e/m/m/g;

    if-eqz p0, :cond_1

    iget-object v1, p0, Lc/d/a/b/e/m/m/g;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p0, p0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    .line 4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
