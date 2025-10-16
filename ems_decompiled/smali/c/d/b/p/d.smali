.class public Lc/d/b/p/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/p/f;


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Lc/d/b/r/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/b/r/b<",
            "Lc/d/b/p/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lc/d/b/p/e;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Lc/d/b/k/z;

    new-instance v0, Lc/d/b/p/b;

    invoke-direct {v0, p1}, Lc/d/b/p/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lc/d/b/k/z;-><init>(Lc/d/b/r/b;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lc/d/b/p/a;->a:Lc/d/b/p/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1e

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/d/b/p/d;->a:Lc/d/b/r/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lc/d/b/p/f$a;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lc/d/b/p/d;->a:Lc/d/b/r/b;

    invoke-interface {v2}, Lc/d/b/r/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/b/p/g;

    invoke-virtual {v2, p1, v0, v1}, Lc/d/b/p/g;->a(Ljava/lang/String;J)Z

    move-result p1

    iget-object v2, p0, Lc/d/b/p/d;->a:Lc/d/b/r/b;

    invoke-interface {v2}, Lc/d/b/r/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/b/p/g;

    .line 1
    monitor-enter v2

    :try_start_0
    const-string v3, "fire-global"

    invoke-virtual {v2, v3, v0, v1}, Lc/d/b/p/g;->a(Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lc/d/b/p/f$a;->g:Lc/d/b/p/f$a;

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    sget-object p1, Lc/d/b/p/f$a;->f:Lc/d/b/p/f$a;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lc/d/b/p/f$a;->e:Lc/d/b/p/f$a;

    return-object p1

    :cond_2
    sget-object p1, Lc/d/b/p/f$a;->d:Lc/d/b/p/f$a;

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v2

    throw p1
.end method
