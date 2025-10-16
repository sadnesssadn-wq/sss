.class public Lc/e/a/b/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/e/a/b/e;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc/e/a/b/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/g;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lc/e/a/b/g;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc/e/a/b/g;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc/e/a/b/g;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc/e/a/b/g;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/e/a/b/g;->j:Ljava/lang/Object;

    iput-object p1, p0, Lc/e/a/b/g;->a:Lc/e/a/b/e;

    iget-object v0, p1, Lc/e/a/b/e;->b:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lc/e/a/b/g;->b:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lc/e/a/b/e;->c:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lc/e/a/b/g;->c:Ljava/util/concurrent/Executor;

    .line 1
    new-instance p1, Lc/e/a/b/a;

    const/4 v0, 0x5

    const-string v1, "uil-pool-d-"

    invoke-direct {p1, v0, v1}, Lc/e/a/b/a;-><init>(ILjava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lc/e/a/b/g;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lc/e/a/b/g;->a:Lc/e/a/b/e;

    iget-boolean v0, v0, Lc/e/a/b/e;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/b/g;->b:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lc/e/a/b/g;->a:Lc/e/a/b/e;

    iget v1, v0, Lc/e/a/b/e;->f:I

    iget v2, v0, Lc/e/a/b/e;->g:I

    iget-object v0, v0, Lc/e/a/b/e;->h:Lc/e/a/b/m/g;

    invoke-static {v1, v2, v0}, Lc/d/b/u/n;->e(IILc/e/a/b/m/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lc/e/a/b/g;->b:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Lc/e/a/b/g;->a:Lc/e/a/b/e;

    iget-boolean v0, v0, Lc/e/a/b/e;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/e/a/b/g;->c:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/e/a/b/g;->a:Lc/e/a/b/e;

    iget v1, v0, Lc/e/a/b/e;->f:I

    iget v2, v0, Lc/e/a/b/e;->g:I

    iget-object v0, v0, Lc/e/a/b/e;->h:Lc/e/a/b/m/g;

    invoke-static {v1, v2, v0}, Lc/d/b/u/n;->e(IILc/e/a/b/m/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lc/e/a/b/g;->c:Ljava/util/concurrent/Executor;

    :cond_1
    return-void
.end method
