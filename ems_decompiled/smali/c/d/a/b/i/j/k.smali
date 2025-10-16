.class public final Lc/d/a/b/i/j/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/a/b/i/j/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/j/z<",
            "Lc/d/a/b/i/j/i;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public c:Z

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/m/j$a<",
            "Lc/d/a/b/j/c;",
            ">;",
            "Lc/d/a/b/i/j/p;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/m/j$a<",
            "Ljava/lang/Object;",
            ">;",
            "Lc/d/a/b/i/j/o;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/m/j$a<",
            "Lc/d/a/b/j/b;",
            ">;",
            "Lc/d/a/b/i/j/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/d/a/b/i/j/z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/d/a/b/i/j/z<",
            "Lc/d/a/b/i/j/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/b/i/j/k;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/d/a/b/i/j/k;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/d/a/b/i/j/k;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/d/a/b/i/j/k;->f:Ljava/util/Map;

    iput-object p1, p0, Lc/d/a/b/i/j/k;->b:Landroid/content/Context;

    iput-object p2, p0, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    iget-object v0, p0, Lc/d/a/b/i/j/k;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/d/a/b/i/j/k;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lc/d/a/b/i/j/p;

    if-eqz v6, :cond_0

    iget-object v2, p0, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {v2}, Lc/d/a/b/i/j/z;->b()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lc/d/a/b/i/j/i;

    .line 1
    new-instance v10, Lc/d/a/b/i/j/v;

    const/4 v9, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lc/d/a/b/i/j/v;-><init>(ILc/d/a/b/i/j/t;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 2
    invoke-interface {v2, v10}, Lc/d/a/b/i/j/i;->M(Lc/d/a/b/i/j/v;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lc/d/a/b/i/j/k;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lc/d/a/b/i/j/k;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lc/d/a/b/i/j/k;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/i/j/l;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {v4}, Lc/d/a/b/i/j/z;->b()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lc/d/a/b/i/j/i;

    invoke-static {v2, v3}, Lc/d/a/b/i/j/v;->v(Lc/d/a/b/j/t;Lc/d/a/b/i/j/f;)Lc/d/a/b/i/j/v;

    move-result-object v2

    invoke-interface {v4, v2}, Lc/d/a/b/i/j/i;->M(Lc/d/a/b/i/j/v;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lc/d/a/b/i/j/k;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lc/d/a/b/i/j/k;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lc/d/a/b/i/j/k;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/i/j/o;

    if-eqz v2, :cond_4

    iget-object v4, p0, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {v4}, Lc/d/a/b/i/j/z;->b()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lc/d/a/b/i/j/i;

    new-instance v5, Lc/d/a/b/i/j/c0;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v3, v2, v3}, Lc/d/a/b/i/j/c0;-><init>(ILc/d/a/b/i/j/a0;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v4, v5}, Lc/d/a/b/i/j/i;->h0(Lc/d/a/b/i/j/c0;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lc/d/a/b/i/j/k;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public final b(Lc/d/a/b/i/j/t;Lc/d/a/b/e/m/m/j;Lc/d/a/b/i/j/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/i/j/t;",
            "Lc/d/a/b/e/m/m/j<",
            "Lc/d/a/b/j/b;",
            ">;",
            "Lc/d/a/b/i/j/f;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {v0}, Lc/d/a/b/i/j/z;->a()V

    .line 1
    iget-object v0, p0, Lc/d/a/b/i/j/k;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/d/a/b/i/j/k;->f:Ljava/util/Map;

    .line 2
    iget-object v2, p2, Lc/d/a/b/e/m/m/j;->c:Lc/d/a/b/e/m/m/j$a;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/i/j/l;

    if-nez v1, :cond_0

    new-instance v1, Lc/d/a/b/i/j/l;

    invoke-direct {v1, p2}, Lc/d/a/b/i/j/l;-><init>(Lc/d/a/b/e/m/m/j;)V

    :cond_0
    move-object v6, v1

    iget-object v1, p0, Lc/d/a/b/i/j/k;->f:Ljava/util/Map;

    .line 4
    iget-object p2, p2, Lc/d/a/b/e/m/m/j;->c:Lc/d/a/b/e/m/m/j$a;

    .line 5
    invoke-interface {v1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p2, p0, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {p2}, Lc/d/a/b/i/j/z;->b()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lc/d/a/b/i/j/i;

    new-instance v0, Lc/d/a/b/i/j/v;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    move-object v7, p3

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lc/d/a/b/i/j/v;-><init>(ILc/d/a/b/i/j/t;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {p2, v0}, Lc/d/a/b/i/j/i;->M(Lc/d/a/b/i/j/v;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Lcom/google/android/gms/location/LocationRequest;Lc/d/a/b/e/m/m/j;Lc/d/a/b/i/j/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lc/d/a/b/e/m/m/j<",
            "Lc/d/a/b/j/c;",
            ">;",
            "Lc/d/a/b/i/j/f;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {v0}, Lc/d/a/b/i/j/z;->a()V

    .line 1
    iget-object v0, p0, Lc/d/a/b/i/j/k;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/d/a/b/i/j/k;->d:Ljava/util/Map;

    .line 2
    iget-object v2, p2, Lc/d/a/b/e/m/m/j;->c:Lc/d/a/b/e/m/m/j$a;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/i/j/p;

    if-nez v1, :cond_0

    new-instance v1, Lc/d/a/b/i/j/p;

    invoke-direct {v1, p2}, Lc/d/a/b/i/j/p;-><init>(Lc/d/a/b/e/m/m/j;)V

    :cond_0
    move-object v4, v1

    iget-object v1, p0, Lc/d/a/b/i/j/k;->d:Ljava/util/Map;

    .line 4
    iget-object p2, p2, Lc/d/a/b/e/m/m/j;->c:Lc/d/a/b/e/m/m/j$a;

    .line 5
    invoke-interface {v1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p2, p0, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {p2}, Lc/d/a/b/i/j/z;->b()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lc/d/a/b/i/j/i;

    invoke-static {p1}, Lc/d/a/b/i/j/t;->v(Lcom/google/android/gms/location/LocationRequest;)Lc/d/a/b/i/j/t;

    move-result-object v3

    new-instance p1, Lc/d/a/b/i/j/v;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    move-object v7, p3

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lc/d/a/b/i/j/v;-><init>(ILc/d/a/b/i/j/t;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {p2, p1}, Lc/d/a/b/i/j/i;->M(Lc/d/a/b/i/j/v;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d()V
    .locals 2

    iget-boolean v0, p0, Lc/d/a/b/i/j/k;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {v1}, Lc/d/a/b/i/j/z;->a()V

    iget-object v1, p0, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {v1}, Lc/d/a/b/i/j/z;->b()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lc/d/a/b/i/j/i;

    invoke-interface {v1, v0}, Lc/d/a/b/i/j/i;->J(Z)V

    iput-boolean v0, p0, Lc/d/a/b/i/j/k;->c:Z

    :cond_0
    return-void
.end method
