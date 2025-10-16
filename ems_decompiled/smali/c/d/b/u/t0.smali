.class public final synthetic Lc/d/b/u/t0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public synthetic a:Landroid/content/Context;

.field public synthetic b:Ljava/util/concurrent/ScheduledExecutorService;

.field public synthetic c:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public synthetic d:Lc/d/b/u/d0;

.field public synthetic e:Lc/d/b/u/z;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lc/d/b/u/d0;Lc/d/b/u/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/u/t0;->a:Landroid/content/Context;

    iput-object p2, p0, Lc/d/b/u/t0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lc/d/b/u/t0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p4, p0, Lc/d/b/u/t0;->d:Lc/d/b/u/d0;

    iput-object p5, p0, Lc/d/b/u/t0;->e:Lc/d/b/u/z;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v5, p0, Lc/d/b/u/t0;->a:Landroid/content/Context;

    iget-object v6, p0, Lc/d/b/u/t0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lc/d/b/u/t0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v2, p0, Lc/d/b/u/t0;->d:Lc/d/b/u/d0;

    iget-object v4, p0, Lc/d/b/u/t0;->e:Lc/d/b/u/z;

    .line 1
    const-class v0, Lc/d/b/u/s0;

    monitor-enter v0

    :try_start_0
    sget-object v3, Lc/d/b/u/s0;->d:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/b/u/s0;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    const-string v3, "com.google.android.gms.appid"

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v7, Lc/d/b/u/s0;

    invoke-direct {v7, v3, v6}, Lc/d/b/u/s0;-><init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V

    .line 2
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v7, Lc/d/b/u/s0;->a:Landroid/content/SharedPreferences;

    const-string v8, "topic_operation_queue"

    iget-object v9, v7, Lc/d/b/u/s0;->c:Ljava/util/concurrent/Executor;

    invoke-static {v3, v8, v9}, Lc/d/b/u/o0;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lc/d/b/u/o0;

    move-result-object v3

    iput-object v3, v7, Lc/d/b/u/s0;->b:Lc/d/b/u/o0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7

    .line 3
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lc/d/b/u/s0;->d:Ljava/lang/ref/WeakReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    move-object v3, v7

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 4
    :try_start_3
    monitor-exit v7

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5
    :cond_1
    monitor-exit v0

    .line 6
    :goto_1
    new-instance v7, Lc/d/b/u/u0;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lc/d/b/u/u0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lc/d/b/u/d0;Lc/d/b/u/s0;Lc/d/b/u/z;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v7

    :catchall_1
    move-exception v1

    .line 7
    monitor-exit v0

    throw v1
.end method
