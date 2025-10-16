.class public abstract Lc/d/a/b/e/m/m/h0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/b/e/m/m/x;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/x;Lc/d/a/b/e/m/m/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/e/m/m/h0;->c:Lc/d/a/b/e/m/m/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lc/d/a/b/e/m/m/h0;->c:Lc/d/a/b/e/m/m/x;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/x;->b:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/e/m/m/h0;->c:Lc/d/a/b/e/m/m/x;

    .line 3
    iget-object v0, v0, Lc/d/a/b/e/m/m/x;->b:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/h0;->a()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lc/d/a/b/e/m/m/h0;->c:Lc/d/a/b/e/m/m/x;

    .line 5
    iget-object v0, v0, Lc/d/a/b/e/m/m/x;->b:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lc/d/a/b/e/m/m/h0;->c:Lc/d/a/b/e/m/m/x;

    .line 7
    iget-object v1, v1, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    .line 8
    iget-object v2, v1, Lc/d/a/b/e/m/m/o0;->g:Lc/d/a/b/e/m/m/r0;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v1, Lc/d/a/b/e/m/m/o0;->g:Lc/d/a/b/e/m/m/r0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    iget-object v0, p0, Lc/d/a/b/e/m/m/h0;->c:Lc/d/a/b/e/m/m/x;

    .line 10
    iget-object v0, v0, Lc/d/a/b/e/m/m/x;->b:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_0
    iget-object v1, p0, Lc/d/a/b/e/m/m/h0;->c:Lc/d/a/b/e/m/m/x;

    .line 12
    iget-object v1, v1, Lc/d/a/b/e/m/m/x;->b:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
