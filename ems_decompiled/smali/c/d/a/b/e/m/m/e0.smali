.class public final Lc/d/a/b/e/m/m/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/e$b;
.implements Lc/d/a/b/e/m/e$c;


# instance fields
.field public final synthetic c:Lc/d/a/b/e/m/m/x;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/x;Lc/d/a/b/e/m/m/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/e/m/m/e0;->c:Lc/d/a/b/e/m/m/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lc/d/a/b/e/m/m/e0;->c:Lc/d/a/b/e/m/m/x;

    .line 1
    iget-object p1, p1, Lc/d/a/b/e/m/m/x;->r:Lc/d/a/b/e/p/d;

    const-string v0, "null reference"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lc/d/a/b/e/m/m/e0;->c:Lc/d/a/b/e/m/m/x;

    .line 4
    iget-object p1, p1, Lc/d/a/b/e/m/m/x;->k:Lc/d/a/b/n/g;

    .line 5
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lc/d/a/b/e/m/m/c0;

    iget-object v1, p0, Lc/d/a/b/e/m/m/e0;->c:Lc/d/a/b/e/m/m/x;

    invoke-direct {v0, v1}, Lc/d/a/b/e/m/m/c0;-><init>(Lc/d/a/b/e/m/m/x;)V

    invoke-interface {p1, v0}, Lc/d/a/b/n/g;->q(Lc/d/a/b/n/b/f;)V

    return-void
.end method

.method public final onConnectionFailed(Lc/d/a/b/e/a;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/e0;->c:Lc/d/a/b/e/m/m/x;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/x;->b:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/e0;->c:Lc/d/a/b/e/m/m/x;

    .line 3
    iget-boolean v0, v0, Lc/d/a/b/e/m/m/x;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc/d/a/b/e/a;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lc/d/a/b/e/m/m/e0;->c:Lc/d/a/b/e/m/m/x;

    .line 5
    invoke-virtual {p1}, Lc/d/a/b/e/m/m/x;->m()V

    .line 6
    iget-object p1, p0, Lc/d/a/b/e/m/m/e0;->c:Lc/d/a/b/e/m/m/x;

    .line 7
    invoke-virtual {p1}, Lc/d/a/b/e/m/m/x;->i()V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lc/d/a/b/e/m/m/e0;->c:Lc/d/a/b/e/m/m/x;

    .line 9
    invoke-virtual {v0, p1}, Lc/d/a/b/e/m/m/x;->e(Lc/d/a/b/e/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_1
    iget-object p1, p0, Lc/d/a/b/e/m/m/e0;->c:Lc/d/a/b/e/m/m/x;

    .line 11
    iget-object p1, p1, Lc/d/a/b/e/m/m/x;->b:Ljava/util/concurrent/locks/Lock;

    .line 12
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/d/a/b/e/m/m/e0;->c:Lc/d/a/b/e/m/m/x;

    .line 13
    iget-object v0, v0, Lc/d/a/b/e/m/m/x;->b:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
