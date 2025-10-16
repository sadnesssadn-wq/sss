.class public final Lc/d/a/b/e/m/m/f2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/d1;


# instance fields
.field public final synthetic a:Lc/d/a/b/e/m/m/e2;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/e2;Lc/d/a/b/e/m/m/d2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    .line 3
    iget-boolean v1, v0, Lc/d/a/b/e/m/m/e2;->n:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lc/d/a/b/e/m/m/e2;->n:Z

    .line 5
    iget-object v1, v0, Lc/d/a/b/e/m/m/e2;->d:Lc/d/a/b/e/m/m/j0;

    invoke-virtual {v1, p1, p2}, Lc/d/a/b/e/m/m/j0;->a(IZ)V

    const/4 p1, 0x0

    iput-object p1, v0, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    iput-object p1, v0, Lc/d/a/b/e/m/m/e2;->l:Lc/d/a/b/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object p1, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    .line 7
    iget-object p1, p1, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 9
    :try_start_1
    iput-boolean p2, v0, Lc/d/a/b/e/m/m/e2;->n:Z

    .line 10
    iget-object p2, v0, Lc/d/a/b/e/m/m/e2;->f:Lc/d/a/b/e/m/m/o0;

    .line 11
    invoke-virtual {p2, p1}, Lc/d/a/b/e/m/m/o0;->onConnectionSuspended(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    .line 12
    iget-object p2, p2, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    .line 13
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final b(Lc/d/a/b/e/a;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    .line 3
    iput-object p1, v0, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    .line 4
    invoke-static {v0}, Lc/d/a/b/e/m/m/e2;->h(Lc/d/a/b/e/m/m/e2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    .line 5
    iget-object p1, p1, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    .line 7
    iget-object v0, v0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    .line 1
    iget-object p1, p1, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    sget-object v0, Lc/d/a/b/e/a;->g:Lc/d/a/b/e/a;

    .line 3
    iput-object v0, p1, Lc/d/a/b/e/m/m/e2;->m:Lc/d/a/b/e/a;

    .line 4
    invoke-static {p1}, Lc/d/a/b/e/m/m/e2;->h(Lc/d/a/b/e/m/m/e2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    .line 5
    iget-object p1, p1, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/d/a/b/e/m/m/f2;->a:Lc/d/a/b/e/m/m/e2;

    .line 7
    iget-object v0, v0, Lc/d/a/b/e/m/m/e2;->o:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
