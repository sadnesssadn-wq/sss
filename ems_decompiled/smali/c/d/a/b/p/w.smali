.class public final Lc/d/a/b/p/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/d/a/b/p/g0<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public c:Lc/d/a/b/p/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lc/d/a/b/p/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/d/a/b/p/w;->b:Ljava/lang/Object;

    iput-object p1, p0, Lc/d/a/b/p/w;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lc/d/a/b/p/w;->c:Lc/d/a/b/p/e;

    return-void
.end method


# virtual methods
.method public final b(Lc/d/a/b/p/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/l<",
            "TTResult;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lc/d/a/b/p/l;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/d/a/b/p/w;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/p/w;->c:Lc/d/a/b/p/e;

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/d/a/b/p/w;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lc/d/a/b/p/v;

    invoke-direct {v0, p0}, Lc/d/a/b/p/v;-><init>(Lc/d/a/b/p/w;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
