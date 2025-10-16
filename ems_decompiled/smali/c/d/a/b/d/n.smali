.class public final synthetic Lc/d/a/b/d/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/b/d/o;

.field public final synthetic d:Lc/d/a/b/d/r;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/b/d/o;Lc/d/a/b/d/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/d/n;->c:Lc/d/a/b/d/o;

    iput-object p2, p0, Lc/d/a/b/d/n;->d:Lc/d/a/b/d/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lc/d/a/b/d/n;->c:Lc/d/a/b/d/o;

    iget-object v1, p0, Lc/d/a/b/d/n;->d:Lc/d/a/b/d/r;

    iget v1, v1, Lc/d/a/b/d/r;->a:I

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lc/d/a/b/d/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/d/r;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Timing out request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MessengerIpcClient"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lc/d/a/b/d/o;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    new-instance v1, Lc/d/a/b/d/s;

    const-string v3, "Timed out waiting for response"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lc/d/a/b/d/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1}, Lc/d/a/b/d/r;->c(Lc/d/a/b/d/s;)V

    invoke-virtual {v0}, Lc/d/a/b/d/o;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
