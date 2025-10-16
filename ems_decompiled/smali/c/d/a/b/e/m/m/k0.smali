.class public final Lc/d/a/b/e/m/m/k0;
.super Lc/d/a/b/i/d/e;
.source ""


# instance fields
.field public final synthetic a:Lc/d/a/b/e/m/m/j0;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/j0;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/k0;->a:Lc/d/a/b/e/m/m/j0;

    invoke-direct {p0, p2}, Lc/d/a/b/i/d/e;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown message id: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiClientImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lc/d/a/b/e/m/m/k0;->a:Lc/d/a/b/e/m/m/j0;

    invoke-static {p1}, Lc/d/a/b/e/m/m/j0;->n(Lc/d/a/b/e/m/m/j0;)V

    return-void

    :cond_1
    iget-object p1, p0, Lc/d/a/b/e/m/m/k0;->a:Lc/d/a/b/e/m/m/j0;

    .line 1
    iget-object v0, p1, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p1}, Lc/d/a/b/e/m/m/j0;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lc/d/a/b/e/m/m/j0;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p1, p1, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p1, p1, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
