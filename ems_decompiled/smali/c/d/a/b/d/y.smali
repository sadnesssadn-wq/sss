.class public final synthetic Lc/d/a/b/d/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/f;


# instance fields
.field public final synthetic a:Lc/d/a/b/d/c;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/b/d/c;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/d/y;->a:Lc/d/a/b/d/c;

    iput-object p2, p0, Lc/d/a/b/d/y;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/d/a/b/d/y;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final onComplete(Lc/d/a/b/p/l;)V
    .locals 3

    iget-object p1, p0, Lc/d/a/b/d/y;->a:Lc/d/a/b/d/c;

    iget-object v0, p0, Lc/d/a/b/d/y;->b:Ljava/lang/String;

    iget-object v1, p0, Lc/d/a/b/d/y;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 1
    iget-object v2, p1, Lc/d/a/b/d/c;->a:Lb/f/h;

    monitor-enter v2

    :try_start_0
    iget-object p1, p1, Lc/d/a/b/d/c;->a:Lb/f/h;

    invoke-virtual {p1, v0}, Lb/f/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
