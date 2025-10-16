.class public final Lc/d/a/b/p/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/b/p/l;

.field public final synthetic d:Lc/d/a/b/p/x;


# direct methods
.method public constructor <init>(Lc/d/a/b/p/x;Lc/d/a/b/p/l;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/p/y;->d:Lc/d/a/b/p/x;

    iput-object p2, p0, Lc/d/a/b/p/y;->c:Lc/d/a/b/p/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/p/y;->d:Lc/d/a/b/p/x;

    .line 1
    iget-object v0, v0, Lc/d/a/b/p/x;->b:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/d/a/b/p/y;->d:Lc/d/a/b/p/x;

    .line 3
    iget-object v1, v1, Lc/d/a/b/p/x;->c:Lc/d/a/b/p/f;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lc/d/a/b/p/y;->c:Lc/d/a/b/p/l;

    invoke-interface {v1, v2}, Lc/d/a/b/p/f;->onComplete(Lc/d/a/b/p/l;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
