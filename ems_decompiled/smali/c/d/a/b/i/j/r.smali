.class public final Lc/d/a/b/i/j/r;
.super Lc/d/a/b/i/j/y;
.source ""


# instance fields
.field public final H:Lc/d/a/b/i/j/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;Ljava/lang/String;Lc/d/a/b/e/p/d;)V
    .locals 0
    .param p6    # Lc/d/a/b/e/p/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p6}, Lc/d/a/b/i/j/y;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;Ljava/lang/String;Lc/d/a/b/e/p/d;)V

    new-instance p2, Lc/d/a/b/i/j/k;

    iget-object p3, p0, Lc/d/a/b/i/j/y;->G:Lc/d/a/b/i/j/z;

    invoke-direct {p2, p1, p3}, Lc/d/a/b/i/j/k;-><init>(Landroid/content/Context;Lc/d/a/b/i/j/z;)V

    iput-object p2, p0, Lc/d/a/b/i/j/r;->H:Lc/d/a/b/i/j/k;

    return-void
.end method


# virtual methods
.method public final M(Lc/d/a/b/e/m/m/j$a;Lc/d/a/b/i/j/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/j$a<",
            "Lc/d/a/b/j/b;",
            ">;",
            "Lc/d/a/b/i/j/f;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/j/r;->H:Lc/d/a/b/i/j/k;

    .line 1
    iget-object v1, v0, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {v1}, Lc/d/a/b/i/j/z;->a()V

    const-string v1, "Invalid null listener key"

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lc/d/a/b/i/j/k;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lc/d/a/b/i/j/k;->f:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/j/l;

    if-eqz p1, :cond_0

    .line 2
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p1, Lc/d/a/b/i/j/l;->d:Lc/d/a/b/e/m/m/j;

    invoke-virtual {v2}, Lc/d/a/b/e/m/m/j;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    .line 3
    iget-object v0, v0, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {v0}, Lc/d/a/b/i/j/z;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/j/i;

    invoke-static {p1, p2}, Lc/d/a/b/i/j/v;->v(Lc/d/a/b/j/t;Lc/d/a/b/i/j/f;)Lc/d/a/b/i/j/v;

    move-result-object p1

    invoke-interface {v0, p1}, Lc/d/a/b/i/j/i;->M(Lc/d/a/b/i/j/v;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 4
    monitor-exit p1

    throw p2

    .line 5
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lc/d/a/b/i/j/r;->H:Lc/d/a/b/i/j/k;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lc/d/a/b/e/p/b;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lc/d/a/b/i/j/r;->H:Lc/d/a/b/i/j/k;

    invoke-virtual {v1}, Lc/d/a/b/i/j/k;->a()V

    iget-object v1, p0, Lc/d/a/b/i/j/r;->H:Lc/d/a/b/i/j/k;

    invoke-virtual {v1}, Lc/d/a/b/i/j/k;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Lc/d/a/b/e/p/b;->s()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
