.class public Lc/d/b/s/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/s/h;


# static fields
.field public static final m:Ljava/lang/Object;

.field public static final n:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final a:Lc/d/b/g;

.field public final b:Lc/d/b/s/r/c;

.field public final c:Lc/d/b/s/q/c;

.field public final d:Lc/d/b/s/o;

.field public final e:Lc/d/b/s/q/b;

.field public final f:Lc/d/b/s/m;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/d/b/s/p/a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/b/s/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/d/b/s/g;->m:Ljava/lang/Object;

    new-instance v0, Lc/d/b/s/g$a;

    invoke-direct {v0}, Lc/d/b/s/g$a;-><init>()V

    sput-object v0, Lc/d/b/s/g;->n:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lc/d/b/g;Lc/d/b/r/b;Lc/d/b/r/b;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/b/g;",
            "Lc/d/b/r/b<",
            "Lc/d/b/v/h;",
            ">;",
            "Lc/d/b/r/b<",
            "Lc/d/b/p/f;",
            ">;)V"
        }
    .end annotation

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v10, Lc/d/b/s/g;->n:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    move-object v5, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lc/d/b/s/r/c;

    .line 1
    invoke-virtual {p1}, Lc/d/b/g;->a()V

    iget-object v1, p1, Lc/d/b/g;->a:Landroid/content/Context;

    .line 2
    invoke-direct {v0, v1, p2, p3}, Lc/d/b/s/r/c;-><init>(Landroid/content/Context;Lc/d/b/r/b;Lc/d/b/r/b;)V

    new-instance p2, Lc/d/b/s/q/c;

    invoke-direct {p2, p1}, Lc/d/b/s/q/c;-><init>(Lc/d/b/g;)V

    invoke-static {}, Lc/d/b/s/o;->c()Lc/d/b/s/o;

    move-result-object p3

    new-instance v1, Lc/d/b/s/q/b;

    invoke-direct {v1, p1}, Lc/d/b/s/q/b;-><init>(Lc/d/b/g;)V

    new-instance v2, Lc/d/b/s/m;

    invoke-direct {v2}, Lc/d/b/s/m;-><init>()V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lc/d/b/s/g;->g:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lc/d/b/s/g;->k:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lc/d/b/s/g;->l:Ljava/util/List;

    iput-object p1, p0, Lc/d/b/s/g;->a:Lc/d/b/g;

    iput-object v0, p0, Lc/d/b/s/g;->b:Lc/d/b/s/r/c;

    iput-object p2, p0, Lc/d/b/s/g;->c:Lc/d/b/s/q/c;

    iput-object p3, p0, Lc/d/b/s/g;->d:Lc/d/b/s/o;

    iput-object v1, p0, Lc/d/b/s/g;->e:Lc/d/b/s/q/b;

    iput-object v2, p0, Lc/d/b/s/g;->f:Lc/d/b/s/m;

    iput-object v8, p0, Lc/d/b/s/g;->h:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, p1

    move-object v5, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lc/d/b/s/g;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static f(Lc/d/b/g;)Lc/d/b/s/g;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "Null is not a valid value of FirebaseApp."

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f(ZLjava/lang/Object;)V

    const-class v0, Lc/d/b/s/h;

    .line 1
    invoke-virtual {p0}, Lc/d/b/g;->a()V

    iget-object p0, p0, Lc/d/b/g;->d:Lc/d/b/k/q;

    invoke-virtual {p0, v0}, Lc/d/b/k/l;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    check-cast p0, Lc/d/b/s/g;

    return-object p0
.end method


# virtual methods
.method public a(Z)Lc/d/a/b/p/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc/d/a/b/p/l<",
            "Lc/d/b/s/l;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lc/d/b/s/g;->h()V

    .line 1
    new-instance v0, Lc/d/a/b/p/m;

    invoke-direct {v0}, Lc/d/a/b/p/m;-><init>()V

    new-instance v1, Lc/d/b/s/j;

    iget-object v2, p0, Lc/d/b/s/g;->d:Lc/d/b/s/o;

    invoke-direct {v1, v2, v0}, Lc/d/b/s/j;-><init>(Lc/d/b/s/o;Lc/d/a/b/p/m;)V

    .line 2
    iget-object v2, p0, Lc/d/b/s/g;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lc/d/b/s/g;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, v0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    .line 4
    iget-object v1, p0, Lc/d/b/s/g;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lc/d/b/s/c;

    invoke-direct {v2, p0, p1}, Lc/d/b/s/c;-><init>(Lc/d/b/s/g;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Z)V
    .locals 5

    .line 1
    sget-object v0, Lc/d/b/s/g;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/d/b/s/g;->a:Lc/d/b/g;

    .line 2
    invoke-virtual {v1}, Lc/d/b/g;->a()V

    iget-object v1, v1, Lc/d/b/g;->a:Landroid/content/Context;

    const-string v2, "generatefid.lock"

    .line 3
    invoke-static {v1, v2}, Lc/d/b/s/f;->a(Landroid/content/Context;Ljava/lang/String;)Lc/d/b/s/f;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lc/d/b/s/g;->c:Lc/d/b/s/q/c;

    invoke-virtual {v2}, Lc/d/b/s/q/c;->b()Lc/d/b/s/q/d;

    move-result-object v2

    invoke-virtual {v2}, Lc/d/b/s/q/d;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lc/d/b/s/g;->i(Lc/d/b/s/q/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc/d/b/s/g;->c:Lc/d/b/s/q/c;

    .line 4
    invoke-virtual {v2}, Lc/d/b/s/q/d;->k()Lc/d/b/s/q/d$a;

    move-result-object v2

    check-cast v2, Lc/d/b/s/q/a$b;

    .line 5
    iput-object v3, v2, Lc/d/b/s/q/a$b;->a:Ljava/lang/String;

    .line 6
    sget-object v3, Lc/d/b/s/q/c$a;->e:Lc/d/b/s/q/c$a;

    invoke-virtual {v2, v3}, Lc/d/b/s/q/a$b;->b(Lc/d/b/s/q/c$a;)Lc/d/b/s/q/d$a;

    invoke-virtual {v2}, Lc/d/b/s/q/a$b;->a()Lc/d/b/s/q/d;

    move-result-object v2

    .line 7
    invoke-virtual {v4, v2}, Lc/d/b/s/q/c;->a(Lc/d/b/s/q/d;)Lc/d/b/s/q/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lc/d/b/s/f;->b()V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v2}, Lc/d/b/s/q/d;->k()Lc/d/b/s/q/d$a;

    move-result-object v0

    check-cast v0, Lc/d/b/s/q/a$b;

    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lc/d/b/s/q/a$b;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lc/d/b/s/q/a$b;->a()Lc/d/b/s/q/d;

    move-result-object v2

    .line 11
    :cond_2
    invoke-virtual {p0, v2}, Lc/d/b/s/g;->l(Lc/d/b/s/q/d;)V

    iget-object v0, p0, Lc/d/b/s/g;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lc/d/b/s/a;

    invoke-direct {v1, p0, p1}, Lc/d/b/s/a;-><init>(Lc/d/b/s/g;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    .line 12
    :try_start_3
    invoke-virtual {v1}, Lc/d/b/s/f;->b()V

    :cond_3
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final c(Lc/d/b/s/q/d;)Lc/d/b/s/q/d;
    .locals 16

    move-object/from16 v1, p0

    sget-object v0, Lc/d/b/s/i$a;->d:Lc/d/b/s/i$a;

    iget-object v2, v1, Lc/d/b/s/g;->b:Lc/d/b/s/r/c;

    invoke-virtual/range {p0 .. p0}, Lc/d/b/s/g;->d()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    check-cast v4, Lc/d/b/s/q/a;

    .line 1
    iget-object v5, v4, Lc/d/b/s/q/a;->b:Ljava/lang/String;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lc/d/b/s/g;->g()Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v4, v4, Lc/d/b/s/q/a;->e:Ljava/lang/String;

    .line 4
    iget-object v7, v2, Lc/d/b/s/r/c;->d:Lc/d/b/s/r/e;

    invoke-virtual {v7}, Lc/d/b/s/r/e;->a()Z

    move-result v7

    const-string v8, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v7, :cond_a

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v11, 0x1

    aput-object v5, v9, v11

    const-string v5, "projects/%s/installations/%s/authTokens:generate"

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lc/d/b/s/r/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    const/4 v9, 0x0

    :goto_0
    if-gt v9, v11, :cond_9

    const v12, 0x8003

    invoke-static {v12}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v2, v5, v3}, Lc/d/b/s/r/c;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v12

    :try_start_0
    const-string v13, "POST"

    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v13, "Authorization"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FIS_v2 "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2, v12}, Lc/d/b/s/r/c;->h(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    iget-object v14, v2, Lc/d/b/s/r/c;->d:Lc/d/b/s/r/e;

    invoke-virtual {v14, v13}, Lc/d/b/s/r/e;->b(I)V

    const/16 v14, 0xc8

    if-lt v13, v14, :cond_0

    const/16 v14, 0x12c

    if-ge v13, v14, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    const/4 v15, 0x0

    if-eqz v14, :cond_1

    invoke-virtual {v2, v12}, Lc/d/b/s/r/c;->f(Ljava/net/HttpURLConnection;)Lc/d/b/s/r/f;

    move-result-object v2

    goto :goto_5

    :cond_1
    invoke-static {v12, v15, v3, v6}, Lc/d/b/s/r/c;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x191

    if-eq v13, v14, :cond_5

    const/16 v14, 0x194

    if-ne v13, v14, :cond_2

    goto :goto_3

    :cond_2
    const/16 v14, 0x1ad

    if-eq v13, v14, :cond_4

    const/16 v14, 0x1f4

    if-lt v13, v14, :cond_3

    const/16 v14, 0x258

    if-ge v13, v14, :cond_3

    goto/16 :goto_6

    :cond_3
    const-string v13, "Firebase-Installations"

    const-string v14, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 5
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lc/d/b/s/r/f;->a()Lc/d/b/s/r/f$a;

    move-result-object v13

    sget-object v14, Lc/d/b/s/r/f$b;->d:Lc/d/b/s/r/f$b;

    :goto_2
    check-cast v13, Lc/d/b/s/r/b$b;

    goto :goto_4

    :cond_4
    new-instance v13, Lc/d/b/s/i;

    const-string v14, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v15, Lc/d/b/s/i$a;->e:Lc/d/b/s/i$a;

    invoke-direct {v13, v14, v15}, Lc/d/b/s/i;-><init>(Ljava/lang/String;Lc/d/b/s/i$a;)V

    throw v13

    :cond_5
    :goto_3
    invoke-static {}, Lc/d/b/s/r/f;->a()Lc/d/b/s/r/f$a;

    move-result-object v13

    sget-object v14, Lc/d/b/s/r/f$b;->e:Lc/d/b/s/r/f$b;

    goto :goto_2

    .line 7
    :goto_4
    iput-object v14, v13, Lc/d/b/s/r/b$b;->c:Lc/d/b/s/r/f$b;

    .line 8
    invoke-virtual {v13}, Lc/d/b/s/r/b$b;->a()Lc/d/b/s/r/f;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_5
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 9
    check-cast v2, Lc/d/b/s/r/b;

    .line 10
    iget-object v3, v2, Lc/d/b/s/r/b;->c:Lc/d/b/s/r/f$b;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_8

    if-eq v3, v11, :cond_7

    if-ne v3, v7, :cond_6

    .line 12
    monitor-enter p0

    :try_start_1
    iput-object v15, v1, Lc/d/b/s/g;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 13
    invoke-virtual/range {p1 .. p1}, Lc/d/b/s/q/d;->k()Lc/d/b/s/q/d$a;

    move-result-object v0

    sget-object v2, Lc/d/b/s/q/c$a;->d:Lc/d/b/s/q/c$a;

    invoke-virtual {v0, v2}, Lc/d/b/s/q/d$a;->b(Lc/d/b/s/q/c$a;)Lc/d/b/s/q/d$a;

    invoke-virtual {v0}, Lc/d/b/s/q/d$a;->a()Lc/d/b/s/q/d;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 14
    monitor-exit p0

    throw v2

    .line 15
    :cond_6
    new-instance v2, Lc/d/b/s/i;

    const-string v3, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v2, v3, v0}, Lc/d/b/s/i;-><init>(Ljava/lang/String;Lc/d/b/s/i$a;)V

    throw v2

    :cond_7
    const-string v0, "BAD CONFIG"

    .line 16
    invoke-virtual/range {p1 .. p1}, Lc/d/b/s/q/d;->k()Lc/d/b/s/q/d$a;

    move-result-object v2

    check-cast v2, Lc/d/b/s/q/a$b;

    .line 17
    iput-object v0, v2, Lc/d/b/s/q/a$b;->g:Ljava/lang/String;

    .line 18
    sget-object v0, Lc/d/b/s/q/c$a;->g:Lc/d/b/s/q/c$a;

    invoke-virtual {v2, v0}, Lc/d/b/s/q/a$b;->b(Lc/d/b/s/q/c$a;)Lc/d/b/s/q/d$a;

    invoke-virtual {v2}, Lc/d/b/s/q/a$b;->a()Lc/d/b/s/q/d;

    move-result-object v0

    return-object v0

    .line 19
    :cond_8
    iget-object v0, v2, Lc/d/b/s/r/b;->a:Ljava/lang/String;

    .line 20
    iget-wide v2, v2, Lc/d/b/s/r/b;->b:J

    .line 21
    iget-object v4, v1, Lc/d/b/s/g;->d:Lc/d/b/s/o;

    invoke-virtual {v4}, Lc/d/b/s/o;->b()J

    move-result-wide v4

    .line 22
    invoke-virtual/range {p1 .. p1}, Lc/d/b/s/q/d;->k()Lc/d/b/s/q/d$a;

    move-result-object v6

    check-cast v6, Lc/d/b/s/q/a$b;

    .line 23
    iput-object v0, v6, Lc/d/b/s/q/a$b;->c:Ljava/lang/String;

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lc/d/b/s/q/a$b;->e:Ljava/lang/Long;

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lc/d/b/s/q/a$b;->f:Ljava/lang/Long;

    .line 26
    invoke-virtual {v6}, Lc/d/b/s/q/a$b;->a()Lc/d/b/s/q/d;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    .line 27
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0

    :catch_0
    :goto_6
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v2, Lc/d/b/s/i;

    invoke-direct {v2, v8, v0}, Lc/d/b/s/i;-><init>(Ljava/lang/String;Lc/d/b/s/i$a;)V

    throw v2

    :cond_a
    new-instance v2, Lc/d/b/s/i;

    invoke-direct {v2, v8, v0}, Lc/d/b/s/i;-><init>(Ljava/lang/String;Lc/d/b/s/i$a;)V

    goto :goto_8

    :goto_7
    throw v2

    :goto_8
    goto :goto_7
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/d/b/s/g;->a:Lc/d/b/g;

    .line 1
    invoke-virtual {v0}, Lc/d/b/g;->a()V

    iget-object v0, v0, Lc/d/b/g;->c:Lc/d/b/i;

    .line 2
    iget-object v0, v0, Lc/d/b/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/d/b/s/g;->a:Lc/d/b/g;

    .line 1
    invoke-virtual {v0}, Lc/d/b/g;->a()V

    iget-object v0, v0, Lc/d/b/g;->c:Lc/d/b/i;

    .line 2
    iget-object v0, v0, Lc/d/b/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/d/b/s/g;->a:Lc/d/b/g;

    .line 1
    invoke-virtual {v0}, Lc/d/b/g;->a()V

    iget-object v0, v0, Lc/d/b/g;->c:Lc/d/b/i;

    .line 2
    iget-object v0, v0, Lc/d/b/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lc/d/a/b/p/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/d/a/b/p/l<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lc/d/b/s/g;->h()V

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/d/b/s/g;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q(Ljava/lang/Object;)Lc/d/a/b/p/l;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lc/d/a/b/p/m;

    invoke-direct {v0}, Lc/d/a/b/p/m;-><init>()V

    new-instance v1, Lc/d/b/s/k;

    invoke-direct {v1, v0}, Lc/d/b/s/k;-><init>(Lc/d/a/b/p/m;)V

    .line 4
    iget-object v2, p0, Lc/d/b/s/g;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lc/d/b/s/g;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    iget-object v0, v0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    .line 6
    iget-object v1, p0, Lc/d/b/s/g;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lc/d/b/s/b;

    invoke-direct {v2, p0}, Lc/d/b/s/b;-><init>(Lc/d/b/s/g;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 8
    monitor-exit p0

    throw v0
.end method

.method public final h()V
    .locals 4

    invoke-virtual {p0}, Lc/d/b/s/g;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lc/d/b/s/g;->g()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lc/d/b/s/g;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lc/d/b/s/g;->e()Ljava/lang/String;

    move-result-object v0

    .line 1
    sget-object v3, Lc/d/b/s/o;->c:Ljava/util/regex/Pattern;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lc/d/b/s/g;->d()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lc/d/b/s/o;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 4
    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f(ZLjava/lang/Object;)V

    return-void
.end method

.method public final i(Lc/d/b/s/q/d;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lc/d/b/s/g;->a:Lc/d/b/g;

    .line 1
    invoke-virtual {v0}, Lc/d/b/g;->a()V

    iget-object v0, v0, Lc/d/b/g;->b:Ljava/lang/String;

    const-string v1, "CHIME_ANDROID_SDK"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d/b/s/g;->a:Lc/d/b/g;

    .line 3
    invoke-virtual {v0}, Lc/d/b/g;->a()V

    iget-object v0, v0, Lc/d/b/g;->b:Ljava/lang/String;

    const-string v1, "[DEFAULT]"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_0
    check-cast p1, Lc/d/b/s/q/a;

    .line 6
    iget-object p1, p1, Lc/d/b/s/q/a;->c:Lc/d/b/s/q/c$a;

    .line 7
    sget-object v0, Lc/d/b/s/q/c$a;->c:Lc/d/b/s/q/c$a;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 8
    :cond_2
    iget-object p1, p0, Lc/d/b/s/g;->f:Lc/d/b/s/m;

    invoke-virtual {p1}, Lc/d/b/s/m;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lc/d/b/s/g;->e:Lc/d/b/s/q/b;

    .line 9
    iget-object v0, p1, Lc/d/b/s/q/b;->a:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p1, Lc/d/b/s/q/b;->a:Landroid/content/SharedPreferences;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p1, Lc/d/b/s/q/b;->a:Landroid/content/SharedPreferences;

    const-string v3, "|S|id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lc/d/b/s/q/b;->a()Ljava/lang/String;

    move-result-object v2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lc/d/b/s/g;->f:Lc/d/b/s/m;

    invoke-virtual {p1}, Lc/d/b/s/m;->a()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2

    :catchall_0
    move-exception p1

    .line 13
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final j(Lc/d/b/s/q/d;)Lc/d/b/s/q/d;
    .locals 23

    move-object/from16 v1, p0

    sget-object v0, Lc/d/b/s/i$a;->d:Lc/d/b/s/i$a;

    move-object/from16 v2, p1

    check-cast v2, Lc/d/b/s/q/a;

    .line 1
    iget-object v3, v2, Lc/d/b/s/q/a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0xb

    if-ne v3, v6, :cond_3

    iget-object v3, v1, Lc/d/b/s/g;->e:Lc/d/b/s/q/b;

    .line 3
    iget-object v6, v3, Lc/d/b/s/q/b;->a:Landroid/content/SharedPreferences;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lc/d/b/s/q/b;->c:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    iget-object v11, v3, Lc/d/b/s/q/b;->b:Ljava/lang/String;

    .line 4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "|T|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "|"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5
    iget-object v11, v3, Lc/d/b/s/q/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v11, v10, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    const-string v3, "{"

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 6
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "token"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_0
    move-object v4, v10

    .line 7
    :catch_0
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 8
    :cond_3
    :goto_2
    iget-object v3, v1, Lc/d/b/s/g;->b:Lc/d/b/s/r/c;

    invoke-virtual/range {p0 .. p0}, Lc/d/b/s/g;->d()Ljava/lang/String;

    move-result-object v6

    .line 9
    iget-object v2, v2, Lc/d/b/s/q/a;->b:Ljava/lang/String;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lc/d/b/s/g;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lc/d/b/s/g;->e()Ljava/lang/String;

    move-result-object v8

    .line 11
    iget-object v9, v3, Lc/d/b/s/r/c;->d:Lc/d/b/s/r/e;

    invoke-virtual {v9}, Lc/d/b/s/r/e;->a()Z

    move-result v9

    const-string v10, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v7, v11, v5

    const-string v12, "projects/%s/installations"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lc/d/b/s/r/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    const/4 v12, 0x0

    :goto_3
    if-gt v12, v9, :cond_b

    const v13, 0x8001

    invoke-static {v13}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v3, v11, v6}, Lc/d/b/s/r/c;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v13

    :try_start_3
    const-string v14, "POST"

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz v4, :cond_4

    const-string v14, "x-goog-fis-android-iid-migration-auth"

    invoke-virtual {v13, v14, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3, v13, v2, v8}, Lc/d/b/s/r/c;->g(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    iget-object v15, v3, Lc/d/b/s/r/c;->d:Lc/d/b/s/r/e;

    invoke-virtual {v15, v14}, Lc/d/b/s/r/e;->b(I)V

    const/16 v15, 0xc8

    if-lt v14, v15, :cond_5

    const/16 v15, 0x12c

    if-ge v14, v15, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_6

    invoke-virtual {v3, v13}, Lc/d/b/s/r/c;->e(Ljava/net/HttpURLConnection;)Lc/d/b/s/r/d;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_5

    :cond_6
    :try_start_4
    invoke-static {v13, v8, v6, v7}, Lc/d/b/s/r/c;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v15, 0x1ad

    if-eq v14, v15, :cond_a

    const/16 v15, 0x1f4

    if-lt v14, v15, :cond_7

    const/16 v15, 0x258

    if-ge v14, v15, :cond_7

    goto/16 :goto_6

    :cond_7
    const-string v14, "Firebase-Installations"

    const-string v15, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 12
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    .line 13
    sget-object v21, Lc/d/b/s/r/d$a;->d:Lc/d/b/s/r/d$a;

    .line 14
    new-instance v14, Lc/d/b/s/r/a;

    const/16 v22, 0x0

    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v22}, Lc/d/b/s/r/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/d/b/s/r/f;Lc/d/b/s/r/d$a;Lc/d/b/s/r/a$a;)V
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 15
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    move-object v2, v14

    .line 16
    :goto_5
    check-cast v2, Lc/d/b/s/r/a;

    .line 17
    iget-object v3, v2, Lc/d/b/s/r/a;->e:Lc/d/b/s/r/d$a;

    .line 18
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_9

    if-ne v3, v9, :cond_8

    const-string v0, "BAD CONFIG"

    .line 19
    invoke-virtual/range {p1 .. p1}, Lc/d/b/s/q/d;->k()Lc/d/b/s/q/d$a;

    move-result-object v2

    check-cast v2, Lc/d/b/s/q/a$b;

    .line 20
    iput-object v0, v2, Lc/d/b/s/q/a$b;->g:Ljava/lang/String;

    .line 21
    sget-object v0, Lc/d/b/s/q/c$a;->g:Lc/d/b/s/q/c$a;

    invoke-virtual {v2, v0}, Lc/d/b/s/q/a$b;->b(Lc/d/b/s/q/c$a;)Lc/d/b/s/q/d$a;

    invoke-virtual {v2}, Lc/d/b/s/q/a$b;->a()Lc/d/b/s/q/d;

    move-result-object v0

    return-object v0

    .line 22
    :cond_8
    new-instance v2, Lc/d/b/s/i;

    const-string v3, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v2, v3, v0}, Lc/d/b/s/i;-><init>(Ljava/lang/String;Lc/d/b/s/i$a;)V

    throw v2

    .line 23
    :cond_9
    iget-object v0, v2, Lc/d/b/s/r/a;->b:Ljava/lang/String;

    .line 24
    iget-object v3, v2, Lc/d/b/s/r/a;->c:Ljava/lang/String;

    .line 25
    iget-object v4, v1, Lc/d/b/s/g;->d:Lc/d/b/s/o;

    invoke-virtual {v4}, Lc/d/b/s/o;->b()J

    move-result-wide v4

    .line 26
    iget-object v6, v2, Lc/d/b/s/r/a;->d:Lc/d/b/s/r/f;

    .line 27
    invoke-virtual {v6}, Lc/d/b/s/r/f;->c()Ljava/lang/String;

    move-result-object v6

    .line 28
    iget-object v2, v2, Lc/d/b/s/r/a;->d:Lc/d/b/s/r/f;

    .line 29
    invoke-virtual {v2}, Lc/d/b/s/r/f;->d()J

    move-result-wide v7

    .line 30
    invoke-virtual/range {p1 .. p1}, Lc/d/b/s/q/d;->k()Lc/d/b/s/q/d$a;

    move-result-object v2

    check-cast v2, Lc/d/b/s/q/a$b;

    .line 31
    iput-object v0, v2, Lc/d/b/s/q/a$b;->a:Ljava/lang/String;

    .line 32
    sget-object v0, Lc/d/b/s/q/c$a;->f:Lc/d/b/s/q/c$a;

    invoke-virtual {v2, v0}, Lc/d/b/s/q/a$b;->b(Lc/d/b/s/q/c$a;)Lc/d/b/s/q/d$a;

    .line 33
    iput-object v6, v2, Lc/d/b/s/q/a$b;->c:Ljava/lang/String;

    .line 34
    iput-object v3, v2, Lc/d/b/s/q/a$b;->d:Ljava/lang/String;

    .line 35
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lc/d/b/s/q/a$b;->e:Ljava/lang/Long;

    .line 36
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lc/d/b/s/q/a$b;->f:Ljava/lang/Long;

    .line 37
    invoke-virtual {v2}, Lc/d/b/s/q/a$b;->a()Lc/d/b/s/q/d;

    move-result-object v0

    return-object v0

    .line 38
    :cond_a
    :try_start_5
    new-instance v14, Lc/d/b/s/i;

    const-string v15, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v5, Lc/d/b/s/i$a;->e:Lc/d/b/s/i$a;

    invoke-direct {v14, v15, v5}, Lc/d/b/s/i;-><init>(Ljava/lang/String;Lc/d/b/s/i$a;)V

    throw v14
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0

    :catch_1
    :goto_6
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_b
    new-instance v2, Lc/d/b/s/i;

    invoke-direct {v2, v10, v0}, Lc/d/b/s/i;-><init>(Ljava/lang/String;Lc/d/b/s/i$a;)V

    throw v2

    :cond_c
    new-instance v2, Lc/d/b/s/i;

    invoke-direct {v2, v10, v0}, Lc/d/b/s/i;-><init>(Ljava/lang/String;Lc/d/b/s/i$a;)V

    goto :goto_8

    :goto_7
    throw v2

    :goto_8
    goto :goto_7
.end method

.method public final k(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lc/d/b/s/g;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/d/b/s/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/b/s/n;

    invoke-interface {v2, p1}, Lc/d/b/s/n;->a(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final l(Lc/d/b/s/q/d;)V
    .locals 3

    iget-object v0, p0, Lc/d/b/s/g;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/d/b/s/g;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/b/s/n;

    invoke-interface {v2, p1}, Lc/d/b/s/n;->b(Lc/d/b/s/q/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
