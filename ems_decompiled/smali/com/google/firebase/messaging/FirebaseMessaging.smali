.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessaging$a;
    }
.end annotation


# static fields
.field public static final l:J

.field public static m:Lc/d/b/u/p0;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "FirebaseMessaging.class"
    .end annotation
.end field

.field public static n:Lc/d/a/a/g;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FirebaseUnknownNullness"
        }
    .end annotation
.end field

.field public static o:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "FirebaseMessaging.class"
    .end annotation
.end field


# instance fields
.field public final a:Lc/d/b/g;

.field public final b:Lc/d/b/q/a/a;

.field public final c:Lc/d/b/s/h;

.field public final d:Landroid/content/Context;

.field public final e:Lc/d/b/u/z;

.field public final f:Lc/d/b/u/k0;

.field public final g:Lcom/google/firebase/messaging/FirebaseMessaging$a;

.field public final h:Lc/d/a/b/p/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/p/l<",
            "Lc/d/b/u/u0;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lc/d/b/u/d0;

.field public j:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final k:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:J

    return-void
.end method

.method public constructor <init>(Lc/d/b/g;Lc/d/b/q/a/a;Lc/d/b/r/b;Lc/d/b/r/b;Lc/d/b/s/h;Lc/d/a/a/g;Lc/d/b/o/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/b/g;",
            "Lc/d/b/q/a/a;",
            "Lc/d/b/r/b<",
            "Lc/d/b/v/h;",
            ">;",
            "Lc/d/b/r/b<",
            "Lc/d/b/p/f;",
            ">;",
            "Lc/d/b/s/h;",
            "Lc/d/a/a/g;",
            "Lc/d/b/o/d;",
            ")V"
        }
    .end annotation

    new-instance v6, Lc/d/b/u/d0;

    .line 1
    invoke-virtual {p1}, Lc/d/b/g;->a()V

    iget-object v0, p1, Lc/d/b/g;->a:Landroid/content/Context;

    .line 2
    invoke-direct {v6, v0}, Lc/d/b/u/d0;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v7, Lc/d/b/u/z;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v6

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lc/d/b/u/z;-><init>(Lc/d/b/g;Lc/d/b/u/d0;Lc/d/b/r/b;Lc/d/b/r/b;Lc/d/b/s/h;)V

    .line 4
    new-instance p3, Lc/d/a/b/e/t/g/a;

    const-string p4, "Firebase-Messaging-Task"

    invoke-direct {p3, p4}, Lc/d/a/b/e/t/g/a;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    .line 5
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p4, Lc/d/a/b/e/t/g/a;

    const-string v1, "Firebase-Messaging-Init"

    invoke-direct {p4, v1}, Lc/d/a/b/e/t/g/a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v0, v1, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Z

    sput-object p6, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Lc/d/a/a/g;

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lc/d/b/g;

    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lc/d/b/q/a/a;

    iput-object p5, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lc/d/b/s/h;

    new-instance p4, Lcom/google/firebase/messaging/FirebaseMessaging$a;

    invoke-direct {p4, p0, p7}, Lcom/google/firebase/messaging/FirebaseMessaging$a;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lc/d/b/o/d;)V

    iput-object p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 7
    invoke-virtual {p1}, Lc/d/b/g;->a()V

    iget-object p4, p1, Lc/d/b/g;->a:Landroid/content/Context;

    .line 8
    iput-object p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    new-instance p5, Lc/d/b/u/o;

    invoke-direct {p5}, Lc/d/b/u/o;-><init>()V

    iput-object p5, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    iput-object v6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lc/d/b/u/d0;

    iput-object v7, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lc/d/b/u/z;

    new-instance p6, Lc/d/b/u/k0;

    invoke-direct {p6, p3}, Lc/d/b/u/k0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lc/d/b/u/k0;

    .line 9
    invoke-virtual {p1}, Lc/d/b/g;->a()V

    iget-object p1, p1, Lc/d/b/g;->a:Landroid/content/Context;

    .line 10
    instance-of p3, p1, Landroid/app/Application;

    if-eqz p3, :cond_0

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    new-instance p5, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x7d

    invoke-direct {p5, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Context "

    const-string p6, " was not an application, can\'t register for lifecycle callbacks. Some notification events may be dropped as a result."

    const-string p7, "FirebaseMessaging"

    invoke-static {p5, p3, p1, p6, p7}, Lc/a/a/a/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    new-instance p1, Lc/d/b/u/s;

    invoke-direct {p1, p0}, Lc/d/b/u/s;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p2, p1}, Lc/d/b/q/a/a;->b(Lc/d/b/q/a/a$a;)V

    :cond_1
    new-instance p1, Lc/d/b/u/t;

    invoke-direct {p1, p0}, Lc/d/b/u/t;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 11
    new-instance p7, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance p1, Lc/d/a/b/e/t/g/a;

    const-string p2, "Firebase-Messaging-Topics-Io"

    invoke-direct {p1, p2}, Lc/d/a/b/e/t/g/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p7, v1, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 12
    sget p1, Lc/d/b/u/u0;->j:I

    new-instance v1, Lc/d/b/u/t0;

    move-object p1, v1

    move-object p2, p4

    move-object p3, p7

    move-object p4, p0

    move-object p5, v6

    move-object p6, v7

    invoke-direct/range {p1 .. p6}, Lc/d/b/u/t0;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/messaging/FirebaseMessaging;Lc/d/b/u/d0;Lc/d/b/u/z;)V

    invoke-static {p7, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lc/d/a/b/p/l;

    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Lc/d/a/b/p/l;

    new-instance p2, Lc/d/b/u/p;

    invoke-direct {p2, p0}, Lc/d/b/u/p;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-virtual {p1, v0, p2}, Lc/d/a/b/p/l;->e(Ljava/util/concurrent/Executor;Lc/d/a/b/p/h;)Lc/d/a/b/p/l;

    new-instance p1, Lc/d/b/u/u;

    invoke-direct {p1, p0}, Lc/d/b/u/u;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lc/d/b/u/p0;
    .locals 2

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lc/d/b/u/p0;

    if-nez v1, :cond_0

    new-instance v1, Lc/d/b/u/p0;

    invoke-direct {v1, p0}, Lc/d/b/u/p0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lc/d/b/u/p0;

    :cond_0
    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lc/d/b/u/p0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Lc/d/b/g;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lc/d/b/g;->a()V

    iget-object p0, p0, Lc/d/b/g;->d:Lc/d/b/k/q;

    invoke-virtual {p0, v0}, Lc/d/b/k/l;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-string v1, "Firebase Messaging component is not present"

    invoke-static {p0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
.method public a()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lc/d/b/q/a/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lc/d/b/q/a/a;->a()Lc/d/a/b/p/l;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->a(Lc/d/a/b/p/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Lc/d/b/u/p0$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->i(Lc/d/b/u/p0$a;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lc/d/b/u/p0$a;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lc/d/b/g;

    invoke-static {v1}, Lc/d/b/u/d0;->b(Lc/d/b/g;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lc/d/b/u/k0;

    .line 1
    monitor-enter v2

    :try_start_1
    iget-object v3, v2, Lc/d/b/u/k0;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/p/l;

    const/4 v4, 0x3

    if-eqz v3, :cond_4

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Joining ongoing request for: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v1, "FirebaseMessaging"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_2
    monitor-exit v2

    goto :goto_4

    :cond_4
    :try_start_2
    const-string v3, "FirebaseMessaging"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Making new request for: "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    const-string v4, "FirebaseMessaging"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_6
    iget-object v3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lc/d/b/u/z;

    .line 3
    iget-object v4, v3, Lc/d/b/u/z;->a:Lc/d/b/g;

    invoke-static {v4}, Lc/d/b/u/d0;->b(Lc/d/b/g;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "*"

    invoke-virtual {v3, v4, v6, v5}, Lc/d/b/u/z;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/d/a/b/p/l;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc/d/b/u/z;->a(Lc/d/a/b/p/l;)Lc/d/a/b/p/l;

    move-result-object v3

    .line 4
    sget-object v4, Lc/d/b/u/q;->a:Lc/d/b/u/q;

    new-instance v5, Lc/d/b/u/r;

    invoke-direct {v5, p0, v1, v0}, Lc/d/b/u/r;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lc/d/b/u/p0$a;)V

    invoke-virtual {v3, v4, v5}, Lc/d/a/b/p/l;->q(Ljava/util/concurrent/Executor;Lc/d/a/b/p/k;)Lc/d/a/b/p/l;

    move-result-object v0

    .line 5
    iget-object v3, v2, Lc/d/b/u/k0;->a:Ljava/util/concurrent/Executor;

    new-instance v4, Lc/d/b/u/j0;

    invoke-direct {v4, v2, v1}, Lc/d/b/u/j0;-><init>(Lc/d/b/u/k0;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lc/d/a/b/p/l;->i(Ljava/util/concurrent/Executor;Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object v3

    iget-object v0, v2, Lc/d/b/u/k0;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 6
    :goto_4
    :try_start_3
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->a(Lc/d/a/b/p/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_5
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit v2

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public b(Ljava/lang/Runnable;J)V
    .locals 4

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lc/d/a/b/e/t/g/a;

    const-string v3, "TAG"

    invoke-direct {v2, v3}, Lc/d/a/b/e/t/g/a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lc/d/b/g;

    .line 1
    invoke-virtual {v0}, Lc/d/b/g;->a()V

    iget-object v0, v0, Lc/d/b/g;->b:Ljava/lang/String;

    const-string v1, "[DEFAULT]"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lc/d/b/g;

    invoke-virtual {v0}, Lc/d/b/g;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e()Lc/d/b/u/p0$a;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->c(Landroid/content/Context;)Lc/d/b/u/p0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lc/d/b/g;

    invoke-static {v2}, Lc/d/b/u/d0;->b(Lc/d/b/g;)Ljava/lang/String;

    move-result-object v2

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lc/d/b/u/p0;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, v2}, Lc/d/b/u/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/d/b/u/p0$a;->b(Ljava/lang/String;)Lc/d/b/u/p0$a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public declared-synchronized f(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lc/d/b/q/a/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/d/b/q/a/a;->getToken()Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Lc/d/b/u/p0$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->i(Lc/d/b/u/p0$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->h(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    return-void
.end method

.method public declared-synchronized h(J)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x1e

    add-long v2, p1, p1

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/FirebaseMessaging;->l:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    new-instance v2, Lc/d/b/u/q0;

    invoke-direct {v2, p0, v0, v1}, Lc/d/b/u/q0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->b(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i(Lc/d/b/u/p0$a;)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lc/d/b/u/d0;

    invoke-virtual {v1}, Lc/d/b/u/d0;->a()Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lc/d/b/u/p0$a;->c:J

    sget-wide v6, Lc/d/b/u/p0$a;->d:J

    add-long/2addr v4, v6

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-gtz v7, :cond_1

    iget-object p1, p1, Lc/d/b/u/p0$a;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v6

    :cond_3
    :goto_2
    return v0
.end method
