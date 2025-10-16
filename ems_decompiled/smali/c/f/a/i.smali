.class public Lc/f/a/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/f/a/i$c;,
        Lc/f/a/i$b;,
        Lc/f/a/i$a;
    }
.end annotation


# instance fields
.field public final a:Lc/f/a/i$b;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Lc/f/a/j;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/f/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lc/f/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lc/f/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Landroid/os/Handler;

.field public final j:Landroid/os/Handler;

.field public final k:Lc/f/a/d;

.field public final l:Lc/f/a/a0;

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/f/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lc/f/a/i$c;

.field public final o:Z

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lc/f/a/j;Lc/f/a/d;Lc/f/a/a0;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/f/a/i$b;

    invoke-direct {v0}, Lc/f/a/i$b;-><init>()V

    iput-object v0, p0, Lc/f/a/i;->a:Lc/f/a/i$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1
    sget-object v2, Lc/f/a/f0;->a:Ljava/lang/StringBuilder;

    new-instance v2, Lc/f/a/e0;

    invoke-direct {v2, v1}, Lc/f/a/e0;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2
    iput-object p1, p0, Lc/f/a/i;->b:Landroid/content/Context;

    iput-object p2, p0, Lc/f/a/i;->c:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lc/f/a/i;->e:Ljava/util/Map;

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lc/f/a/i;->f:Ljava/util/Map;

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lc/f/a/i;->g:Ljava/util/Map;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lc/f/a/i;->h:Ljava/util/Set;

    new-instance p2, Lc/f/a/i$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lc/f/a/i$a;-><init>(Landroid/os/Looper;Lc/f/a/i;)V

    iput-object p2, p0, Lc/f/a/i;->i:Landroid/os/Handler;

    iput-object p4, p0, Lc/f/a/i;->d:Lc/f/a/j;

    iput-object p3, p0, Lc/f/a/i;->j:Landroid/os/Handler;

    iput-object p5, p0, Lc/f/a/i;->k:Lc/f/a/d;

    iput-object p6, p0, Lc/f/a/i;->l:Lc/f/a/a0;

    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lc/f/a/i;->m:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    :try_start_0
    const-string p5, "airplane_mode_on"

    invoke-static {p2, p5, p4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    iput-boolean p2, p0, Lc/f/a/i;->p:Z

    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 6
    :goto_1
    iput-boolean p3, p0, Lc/f/a/i;->o:Z

    new-instance p1, Lc/f/a/i$c;

    invoke-direct {p1, p0}, Lc/f/a/i$c;-><init>(Lc/f/a/i;)V

    iput-object p1, p0, Lc/f/a/i;->n:Lc/f/a/i$c;

    .line 7
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p3, p1, Lc/f/a/i$c;->a:Lc/f/a/i;

    iget-boolean p3, p3, Lc/f/a/i;->o:Z

    if-eqz p3, :cond_2

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object p3, p1, Lc/f/a/i$c;->a:Lc/f/a/i;

    iget-object p3, p3, Lc/f/a/i;->b:Landroid/content/Context;

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(Lc/f/a/c;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lc/f/a/c;->p:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lc/f/a/i;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/f/a/i;->i:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lc/f/a/i;->i:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public b(Lc/f/a/c;)V
    .locals 2

    iget-object v0, p0, Lc/f/a/i;->i:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public c(Lc/f/a/c;)V
    .locals 2

    iget-object v0, p0, Lc/f/a/i;->i:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final d(Lc/f/a/c;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lc/f/a/c;->m:Lc/f/a/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/f/a/a;->d()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-boolean v1, v0, Lc/f/a/a;->k:Z

    iget-object v3, p0, Lc/f/a/i;->f:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object p1, p1, Lc/f/a/c;->n:Ljava/util/List;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/f/a/a;

    .line 5
    invoke-virtual {v3}, Lc/f/a/a;->d()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-boolean v1, v3, Lc/f/a/a;->k:Z

    iget-object v5, p0, Lc/f/a/i;->f:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e(Lc/f/a/c;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Lc/f/a/c;->d:Lc/f/a/t;

    .line 2
    iget-boolean v0, v0, Lc/f/a/t;->n:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lc/f/a/f0;->f(Lc/f/a/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "for error"

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string p2, " (will replay)"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {v1, v2, v0, p2}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lc/f/a/i;->e:Ljava/util/Map;

    .line 3
    iget-object v0, p1, Lc/f/a/c;->h:Ljava/lang/String;

    .line 4
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lc/f/a/i;->a(Lc/f/a/c;)V

    return-void
.end method

.method public f(Lc/f/a/a;Z)V
    .locals 10

    iget-object v0, p0, Lc/f/a/i;->h:Ljava/util/Set;

    .line 1
    iget-object v1, p1, Lc/f/a/a;->j:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Dispatcher"

    if-eqz v0, :cond_1

    iget-object p2, p0, Lc/f/a/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lc/f/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p1, Lc/f/a/a;->a:Lc/f/a/t;

    .line 4
    iget-boolean p2, p2, Lc/f/a/t;->n:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lc/f/a/a;->b:Lc/f/a/w;

    invoke-virtual {p2}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "because tag \'"

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object p1, p1, Lc/f/a/a;->j:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is paused"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "paused"

    invoke-static {v1, v0, p2, p1}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lc/f/a/i;->e:Ljava/util/Map;

    .line 7
    iget-object v2, p1, Lc/f/a/a;->i:Ljava/lang/String;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/f/a/c;

    if-eqz v0, :cond_8

    .line 9
    iget-object p2, v0, Lc/f/a/c;->d:Lc/f/a/t;

    iget-boolean p2, p2, Lc/f/a/t;->n:Z

    iget-object v1, p1, Lc/f/a/a;->b:Lc/f/a/w;

    iget-object v2, v0, Lc/f/a/c;->m:Lc/f/a/a;

    const-string v3, "to "

    const-string v4, "joined"

    const-string v5, "Hunter"

    if-nez v2, :cond_4

    iput-object p1, v0, Lc/f/a/c;->m:Lc/f/a/a;

    if-eqz p2, :cond_7

    iget-object p1, v0, Lc/f/a/c;->n:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3}, Lc/f/a/f0;->g(Lc/f/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v1}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "to empty hunter"

    :goto_1
    invoke-static {v5, v4, p1, p2}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lc/f/a/c;->n:Ljava/util/List;

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lc/f/a/c;->n:Ljava/util/List;

    :cond_5
    iget-object v2, v0, Lc/f/a/c;->n:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v3}, Lc/f/a/f0;->g(Lc/f/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, p2, v1}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_6
    iget-object p1, p1, Lc/f/a/a;->b:Lc/f/a/w;

    iget-object p1, p1, Lc/f/a/w;->q:Lc/f/a/t$e;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iget-object v1, v0, Lc/f/a/c;->u:Lc/f/a/t$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le p2, v1, :cond_7

    iput-object p1, v0, Lc/f/a/c;->u:Lc/f/a/t$e;

    :cond_7
    :goto_2
    return-void

    .line 12
    :cond_8
    iget-object v0, p0, Lc/f/a/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 13
    iget-object p2, p1, Lc/f/a/a;->a:Lc/f/a/t;

    .line 14
    iget-boolean p2, p2, Lc/f/a/t;->n:Z

    if-eqz p2, :cond_9

    iget-object p1, p1, Lc/f/a/a;->b:Lc/f/a/w;

    invoke-virtual {p1}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ignored"

    const-string v0, "because shut down"

    invoke-static {v1, p2, p1, v0}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 15
    :cond_a
    iget-object v3, p1, Lc/f/a/a;->a:Lc/f/a/t;

    .line 16
    iget-object v5, p0, Lc/f/a/i;->k:Lc/f/a/d;

    iget-object v6, p0, Lc/f/a/i;->l:Lc/f/a/a0;

    .line 17
    sget-object v0, Lc/f/a/c;->v:Ljava/lang/Object;

    .line 18
    iget-object v0, p1, Lc/f/a/a;->b:Lc/f/a/w;

    .line 19
    iget-object v2, v3, Lc/f/a/t;->d:Ljava/util/List;

    const/4 v4, 0x0

    .line 20
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    :goto_3
    if-ge v4, v7, :cond_c

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/f/a/y;

    invoke-virtual {v8, v0}, Lc/f/a/y;->c(Lc/f/a/w;)Z

    move-result v9

    if-eqz v9, :cond_b

    new-instance v0, Lc/f/a/c;

    move-object v2, v0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lc/f/a/c;-><init>(Lc/f/a/t;Lc/f/a/i;Lc/f/a/d;Lc/f/a/a0;Lc/f/a/a;Lc/f/a/y;)V

    goto :goto_4

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    new-instance v0, Lc/f/a/c;

    sget-object v8, Lc/f/a/c;->y:Lc/f/a/y;

    move-object v2, v0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lc/f/a/c;-><init>(Lc/f/a/t;Lc/f/a/i;Lc/f/a/d;Lc/f/a/a0;Lc/f/a/a;Lc/f/a/y;)V

    .line 21
    :goto_4
    iget-object v2, p0, Lc/f/a/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lc/f/a/c;->p:Ljava/util/concurrent/Future;

    iget-object v2, p0, Lc/f/a/i;->e:Ljava/util/Map;

    .line 22
    iget-object v3, p1, Lc/f/a/a;->i:Ljava/lang/String;

    .line 23
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lc/f/a/i;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lc/f/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_d
    iget-object p2, p1, Lc/f/a/a;->a:Lc/f/a/t;

    .line 25
    iget-boolean p2, p2, Lc/f/a/t;->n:Z

    if-eqz p2, :cond_e

    iget-object p1, p1, Lc/f/a/a;->b:Lc/f/a/w;

    invoke-virtual {p1}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "enqueued"

    const-string v0, ""

    .line 26
    invoke-static {v1, p2, p1, v0}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method
