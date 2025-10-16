.class public final synthetic Lc/d/b/k/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/b/k/c0;

.field public final synthetic d:Lc/d/b/r/b;


# direct methods
.method public synthetic constructor <init>(Lc/d/b/k/c0;Lc/d/b/r/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/k/g;->c:Lc/d/b/k/c0;

    iput-object p2, p0, Lc/d/b/k/g;->d:Lc/d/b/r/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lc/d/b/k/g;->c:Lc/d/b/k/c0;

    iget-object v1, p0, Lc/d/b/k/g;->d:Lc/d/b/r/b;

    .line 1
    iget-object v2, v0, Lc/d/b/k/c0;->b:Lc/d/b/r/b;

    sget-object v3, Lc/d/b/k/j;->a:Lc/d/b/k/j;

    if-ne v2, v3, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lc/d/b/k/c0;->a:Lc/d/b/r/a;

    const/4 v3, 0x0

    iput-object v3, v0, Lc/d/b/k/c0;->a:Lc/d/b/r/a;

    iput-object v1, v0, Lc/d/b/k/c0;->b:Lc/d/b/r/b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v2, Lc/d/b/k/k;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "provide() can be called only once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
