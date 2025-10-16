.class public Lc/d/a/b/p/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lc/d/a/b/p/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/p/j0<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/a/b/p/j0;

    invoke-direct {v0}, Lc/d/a/b/p/j0;-><init>()V

    iput-object v0, p0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/p/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/a/b/p/j0;

    invoke-direct {v0}, Lc/d/a/b/p/j0;-><init>()V

    iput-object v0, p0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    new-instance v0, Lc/d/a/b/p/h0;

    invoke-direct {v0, p0}, Lc/d/a/b/p/h0;-><init>(Lc/d/a/b/p/m;)V

    check-cast p1, Lc/d/a/b/p/p;

    .line 1
    iget-object p1, p1, Lc/d/a/b/p/p;->a:Lc/d/a/b/p/j0;

    new-instance v1, Lc/d/a/b/p/q;

    invoke-direct {v1, v0}, Lc/d/a/b/p/q;-><init>(Lc/d/a/b/p/i;)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lc/d/a/b/p/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lc/d/a/b/p/j0;->e(Ljava/util/concurrent/Executor;Lc/d/a/b/p/h;)Lc/d/a/b/p/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 3

    iget-object v0, p0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Exception must not be null"

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lc/d/a/b/p/j0;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lc/d/a/b/p/j0;->c:Z

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    monitor-exit v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lc/d/a/b/p/j0;->c:Z

    iput-object p1, v0, Lc/d/a/b/p/j0;->f:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    invoke-virtual {p1, v0}, Lc/d/a/b/p/f0;->a(Lc/d/a/b/p/l;)V

    const/4 p1, 0x1

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    invoke-virtual {v0, p1}, Lc/d/a/b/p/j0;->v(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
