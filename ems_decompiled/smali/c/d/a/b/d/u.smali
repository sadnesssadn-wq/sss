.class public final Lc/d/a/b/d/u;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static e:Lc/d/a/b/d/u;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "MessengerIpcClient.class"
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Lc/d/a/b/d/o;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public d:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/a/b/d/o;

    invoke-direct {v0, p0}, Lc/d/a/b/d/o;-><init>(Lc/d/a/b/d/u;)V

    iput-object v0, p0, Lc/d/a/b/d/u;->c:Lc/d/a/b/d/o;

    const/4 v0, 0x1

    iput v0, p0, Lc/d/a/b/d/u;->d:I

    iput-object p2, p0, Lc/d/a/b/d/u;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/d/u;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lc/d/a/b/d/u;
    .locals 4

    const-class v0, Lc/d/a/b/d/u;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/d/a/b/d/u;->e:Lc/d/a/b/d/u;

    if-nez v1, :cond_0

    new-instance v1, Lc/d/a/b/d/u;

    new-instance v2, Lc/d/a/b/e/t/g/a;

    const-string v3, "MessengerIpcClient"

    invoke-direct {v2, v3}, Lc/d/a/b/e/t/g/a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lc/d/a/b/d/u;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lc/d/a/b/d/u;->e:Lc/d/a/b/d/u;

    :cond_0
    sget-object p0, Lc/d/a/b/d/u;->e:Lc/d/a/b/d/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized b(Lc/d/a/b/d/r;)Lc/d/a/b/p/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/d/a/b/d/r<",
            "TT;>;)",
            "Lc/d/a/b/p/l<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x9

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Queueing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MessengerIpcClient"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lc/d/a/b/d/u;->c:Lc/d/a/b/d/o;

    invoke-virtual {v0, p1}, Lc/d/a/b/d/o;->d(Lc/d/a/b/d/r;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lc/d/a/b/d/o;

    invoke-direct {v0, p0}, Lc/d/a/b/d/o;-><init>(Lc/d/a/b/d/u;)V

    iput-object v0, p0, Lc/d/a/b/d/u;->c:Lc/d/a/b/d/o;

    invoke-virtual {v0, p1}, Lc/d/a/b/d/o;->d(Lc/d/a/b/d/r;)Z

    :cond_1
    iget-object p1, p1, Lc/d/a/b/d/r;->b:Lc/d/a/b/p/m;

    .line 1
    iget-object p1, p1, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
