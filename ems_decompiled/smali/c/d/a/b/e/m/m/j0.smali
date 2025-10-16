.class public final Lc/d/a/b/e/m/m/j0;
.super Lc/d/a/b/e/m/e;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/d1;


# instance fields
.field public final b:Ljava/util/concurrent/locks/Lock;

.field public final c:Lc/d/a/b/e/p/c0;

.field public d:Lc/d/a/b/e/m/m/e1;

.field public final e:I

.field public final f:Landroid/content/Context;

.field public final g:Landroid/os/Looper;

.field public final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lc/d/a/b/e/m/m/d<",
            "**>;>;"
        }
    .end annotation
.end field

.field public volatile i:Z

.field public j:J

.field public k:J

.field public final l:Lc/d/a/b/e/m/m/k0;

.field public final m:Lc/d/a/b/e/d;

.field public n:Lc/d/a/b/e/m/m/a1;

.field public final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a$c<",
            "*>;",
            "Lc/d/a/b/e/m/a$f;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lc/d/a/b/e/p/d;

.field public final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lc/d/a/b/e/m/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a$a<",
            "+",
            "Lc/d/a/b/n/g;",
            "Lc/d/a/b/n/a;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lc/d/a/b/e/m/m/k;

.field public final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/b/e/m/m/c2;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/Integer;

.field public final w:Lc/d/a/b/e/m/m/r1;

.field public final x:Lc/d/a/b/e/p/f0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lc/d/a/b/e/p/d;Lc/d/a/b/e/d;Lc/d/a/b/e/m/a$a;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lc/d/a/b/e/p/d;",
            "Lc/d/a/b/e/d;",
            "Lc/d/a/b/e/m/a$a<",
            "+",
            "Lc/d/a/b/n/g;",
            "Lc/d/a/b/n/a;",
            ">;",
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lc/d/a/b/e/m/e$b;",
            ">;",
            "Ljava/util/List<",
            "Lc/d/a/b/e/m/e$c;",
            ">;",
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a$c<",
            "*>;",
            "Lc/d/a/b/e/m/a$f;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Lc/d/a/b/e/m/m/c2;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p3

    move/from16 v2, p11

    invoke-direct {p0}, Lc/d/a/b/e/m/e;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v1, Lc/d/a/b/e/m/m/j0;->d:Lc/d/a/b/e/m/m/e1;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v1, Lc/d/a/b/e/m/m/j0;->h:Ljava/util/Queue;

    const-wide/32 v4, 0x1d4c0

    iput-wide v4, v1, Lc/d/a/b/e/m/m/j0;->j:J

    const-wide/16 v4, 0x1388

    iput-wide v4, v1, Lc/d/a/b/e/m/m/j0;->k:J

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v1, Lc/d/a/b/e/m/m/j0;->p:Ljava/util/Set;

    new-instance v4, Lc/d/a/b/e/m/m/k;

    invoke-direct {v4}, Lc/d/a/b/e/m/m/k;-><init>()V

    iput-object v4, v1, Lc/d/a/b/e/m/m/j0;->t:Lc/d/a/b/e/m/m/k;

    iput-object v3, v1, Lc/d/a/b/e/m/m/j0;->v:Ljava/lang/Integer;

    new-instance v3, Lc/d/a/b/e/m/m/i0;

    invoke-direct {v3, p0}, Lc/d/a/b/e/m/m/i0;-><init>(Lc/d/a/b/e/m/m/j0;)V

    iput-object v3, v1, Lc/d/a/b/e/m/m/j0;->x:Lc/d/a/b/e/p/f0;

    move-object v4, p1

    iput-object v4, v1, Lc/d/a/b/e/m/m/j0;->f:Landroid/content/Context;

    move-object v4, p2

    iput-object v4, v1, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    new-instance v4, Lc/d/a/b/e/p/c0;

    invoke-direct {v4, p3, v3}, Lc/d/a/b/e/p/c0;-><init>(Landroid/os/Looper;Lc/d/a/b/e/p/f0;)V

    iput-object v4, v1, Lc/d/a/b/e/m/m/j0;->c:Lc/d/a/b/e/p/c0;

    iput-object v0, v1, Lc/d/a/b/e/m/m/j0;->g:Landroid/os/Looper;

    new-instance v3, Lc/d/a/b/e/m/m/k0;

    invoke-direct {v3, p0, p3}, Lc/d/a/b/e/m/m/k0;-><init>(Lc/d/a/b/e/m/m/j0;Landroid/os/Looper;)V

    iput-object v3, v1, Lc/d/a/b/e/m/m/j0;->l:Lc/d/a/b/e/m/m/k0;

    move-object v0, p5

    iput-object v0, v1, Lc/d/a/b/e/m/m/j0;->m:Lc/d/a/b/e/d;

    iput v2, v1, Lc/d/a/b/e/m/m/j0;->e:I

    if-ltz v2, :cond_0

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lc/d/a/b/e/m/m/j0;->v:Ljava/lang/Integer;

    :cond_0
    move-object/from16 v0, p7

    iput-object v0, v1, Lc/d/a/b/e/m/m/j0;->r:Ljava/util/Map;

    move-object/from16 v0, p10

    iput-object v0, v1, Lc/d/a/b/e/m/m/j0;->o:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, v1, Lc/d/a/b/e/m/m/j0;->u:Ljava/util/ArrayList;

    new-instance v0, Lc/d/a/b/e/m/m/r1;

    invoke-direct {v0}, Lc/d/a/b/e/m/m/r1;-><init>()V

    iput-object v0, v1, Lc/d/a/b/e/m/m/j0;->w:Lc/d/a/b/e/m/m/r1;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/e/m/e$b;

    iget-object v3, v1, Lc/d/a/b/e/m/m/j0;->c:Lc/d/a/b/e/p/c0;

    .line 1
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "null reference"

    .line 2
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v4, v3, Lc/d/a/b/e/p/c0;->i:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v3, Lc/d/a/b/e/p/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "GmsClientEvents"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "registerConnectionCallbacks(): listener "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is already registered"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v5, v3, Lc/d/a/b/e/p/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v3, Lc/d/a/b/e/p/c0;->a:Lc/d/a/b/e/p/f0;

    invoke-interface {v4}, Lc/d/a/b/e/p/f0;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lc/d/a/b/e/p/c0;->h:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4
    :cond_3
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/e/m/e$c;

    iget-object v3, v1, Lc/d/a/b/e/m/m/j0;->c:Lc/d/a/b/e/p/c0;

    invoke-virtual {v3, v2}, Lc/d/a/b/e/p/c0;->b(Lc/d/a/b/e/m/e$c;)V

    goto :goto_2

    :cond_4
    move-object v2, p4

    iput-object v2, v1, Lc/d/a/b/e/m/m/j0;->q:Lc/d/a/b/e/p/d;

    move-object v0, p6

    iput-object v0, v1, Lc/d/a/b/e/m/m/j0;->s:Lc/d/a/b/e/m/a$a;

    return-void
.end method

.method public static l(Ljava/lang/Iterable;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lc/d/a/b/e/m/a$f;",
            ">;Z)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/e/m/a$f;

    invoke-interface {v3}, Lc/d/a/b/e/m/a$f;->u()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v3}, Lc/d/a/b/e/m/a$f;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x3

    return p0
.end method

.method public static n(Lc/d/a/b/e/m/m/j0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lc/d/a/b/e/m/m/j0;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/j0;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static o(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "SIGN_IN_MODE_NONE"

    return-object p0

    :cond_1
    const-string p0, "SIGN_IN_MODE_OPTIONAL"

    return-object p0

    :cond_2
    const-string p0, "SIGN_IN_MODE_REQUIRED"

    return-object p0
.end method


# virtual methods
.method public final a(IZ)V
    .locals 9
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lc/d/a/b/e/m/m/j0;->i:Z

    if-nez p2, :cond_1

    iput-boolean v1, p0, Lc/d/a/b/e/m/m/j0;->i:Z

    iget-object p2, p0, Lc/d/a/b/e/m/m/j0;->n:Lc/d/a/b/e/m/m/a1;

    if-nez p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lc/d/a/b/e/m/m/j0;->m:Lc/d/a/b/e/d;

    iget-object v2, p0, Lc/d/a/b/e/m/m/j0;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lc/d/a/b/e/m/m/m0;

    invoke-direct {v3, p0}, Lc/d/a/b/e/m/m/m0;-><init>(Lc/d/a/b/e/m/m/j0;)V

    invoke-virtual {p2, v2, v3}, Lc/d/a/b/e/d;->g(Landroid/content/Context;Lc/d/a/b/e/m/m/c1;)Lc/d/a/b/e/m/m/a1;

    move-result-object p2

    iput-object p2, p0, Lc/d/a/b/e/m/m/j0;->n:Lc/d/a/b/e/m/m/a1;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p2, p0, Lc/d/a/b/e/m/m/j0;->l:Lc/d/a/b/e/m/m/k0;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lc/d/a/b/e/m/m/j0;->j:J

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p2, p0, Lc/d/a/b/e/m/m/j0;->l:Lc/d/a/b/e/m/m/k0;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lc/d/a/b/e/m/m/j0;->k:J

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget-object p2, p0, Lc/d/a/b/e/m/m/j0;->w:Lc/d/a/b/e/m/m/r1;

    iget-object p2, p2, Lc/d/a/b/e/m/m/r1;->a:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    sget-object v6, Lc/d/a/b/e/m/m/r1;->c:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lc/d/a/b/e/m/m/j0;->c:Lc/d/a/b/e/p/c0;

    .line 1
    iget-object v3, p2, Lc/d/a/b/e/p/c0;->h:Landroid/os/Handler;

    const-string v4, "onUnintentionalDisconnection must only be called on the Handler thread"

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i(Landroid/os/Handler;Ljava/lang/String;)V

    iget-object v3, p2, Lc/d/a/b/e/p/c0;->h:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p2, Lc/d/a/b/e/p/c0;->i:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iput-boolean v1, p2, Lc/d/a/b/e/p/c0;->g:Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p2, Lc/d/a/b/e/p/c0;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p2, Lc/d/a/b/e/p/c0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_3
    :goto_1
    if-ge v6, v5, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lc/d/a/b/e/m/e$b;

    iget-boolean v8, p2, Lc/d/a/b/e/p/c0;->e:Z

    if-eqz v8, :cond_4

    iget-object v8, p2, Lc/d/a/b/e/p/c0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-ne v8, v4, :cond_4

    iget-object v8, p2, Lc/d/a/b/e/p/c0;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7, p1}, Lc/d/a/b/e/m/m/f;->onConnectionSuspended(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p2, Lc/d/a/b/e/p/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p2, Lc/d/a/b/e/p/c0;->g:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2
    iget-object p2, p0, Lc/d/a/b/e/m/m/j0;->c:Lc/d/a/b/e/p/c0;

    invoke-virtual {p2}, Lc/d/a/b/e/p/c0;->a()V

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/j0;->q()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final b(Lc/d/a/b/e/a;)V
    .locals 8
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->m:Lc/d/a/b/e/d;

    iget-object v1, p0, Lc/d/a/b/e/m/m/j0;->f:Landroid/content/Context;

    .line 1
    iget v2, p1, Lc/d/a/b/e/a;->d:I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Lc/d/a/b/e/i;->c(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/j0;->p()Z

    :cond_0
    iget-boolean v0, p0, Lc/d/a/b/e/m/m/j0;->i:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->c:Lc/d/a/b/e/p/c0;

    .line 4
    iget-object v1, v0, Lc/d/a/b/e/p/c0;->h:Landroid/os/Handler;

    const-string v2, "onConnectionFailure must only be called on the Handler thread"

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i(Landroid/os/Handler;Ljava/lang/String;)V

    iget-object v1, v0, Lc/d/a/b/e/p/c0;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lc/d/a/b/e/p/c0;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lc/d/a/b/e/p/c0;->d:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lc/d/a/b/e/p/c0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_1
    :goto_0
    if-ge v5, v4, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lc/d/a/b/e/m/e$c;

    iget-boolean v7, v0, Lc/d/a/b/e/p/c0;->e:Z

    if-eqz v7, :cond_3

    iget-object v7, v0, Lc/d/a/b/e/p/c0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-eq v7, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, v0, Lc/d/a/b/e/p/c0;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6, p1}, Lc/d/a/b/e/m/m/m;->onConnectionFailed(Lc/d/a/b/e/a;)V

    goto :goto_0

    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lc/d/a/b/e/m/m/j0;->c:Lc/d/a/b/e/p/c0;

    invoke-virtual {p1}, Lc/d/a/b/e/p/c0;->a()V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 9
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    :goto_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/d;

    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/j0;->f(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->c:Lc/d/a/b/e/p/c0;

    .line 1
    iget-object v1, v0, Lc/d/a/b/e/p/c0;->h:Landroid/os/Handler;

    const-string v2, "onConnectionSuccess must only be called on the Handler thread"

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i(Landroid/os/Handler;Ljava/lang/String;)V

    iget-object v1, v0, Lc/d/a/b/e/p/c0;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lc/d/a/b/e/p/c0;->g:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n(Z)V

    iget-object v2, v0, Lc/d/a/b/e/p/c0;->h:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, v0, Lc/d/a/b/e/p/c0;->g:Z

    iget-object v2, v0, Lc/d/a/b/e/p/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->n(Z)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lc/d/a/b/e/p/c0;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lc/d/a/b/e/p/c0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_3
    :goto_3
    if-ge v6, v5, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lc/d/a/b/e/m/e$b;

    iget-boolean v8, v0, Lc/d/a/b/e/p/c0;->e:Z

    if-eqz v8, :cond_4

    iget-object v8, v0, Lc/d/a/b/e/p/c0;->a:Lc/d/a/b/e/p/f0;

    invoke-interface {v8}, Lc/d/a/b/e/p/f0;->b()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lc/d/a/b/e/p/c0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-ne v8, v3, :cond_4

    iget-object v8, v0, Lc/d/a/b/e/p/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v7, p1}, Lc/d/a/b/e/m/m/f;->onConnected(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lc/d/a/b/e/p/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v4, v0, Lc/d/a/b/e/p/c0;->g:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lc/d/a/b/e/m/m/j0;->e:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->o(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->v:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1}, Lc/d/a/b/e/m/m/j0;->l(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e/m/m/j0;->v:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    :goto_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->v:Ljava/lang/Integer;

    const-string v1, "null reference"

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/j0;->j(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->w:Lc/d/a/b/e/m/m/r1;

    invoke-virtual {v0}, Lc/d/a/b/e/m/m/r1;->a()V

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->d:Lc/d/a/b/e/m/m/e1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/d/a/b/e/m/m/e1;->b()V

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->t:Lc/d/a/b/e/m/m/k;

    .line 1
    iget-object v1, v0, Lc/d/a/b/e/m/m/k;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/e/m/m/j;

    invoke-virtual {v2}, Lc/d/a/b/e/m/m/j;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lc/d/a/b/e/m/m/k;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/e/m/m/d;

    const/4 v2, 0x0

    .line 3
    iget-object v3, v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->d:Lc/d/a/b/e/m/m/e1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/j0;->p()Z

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->c:Lc/d/a/b/e/p/c0;

    invoke-virtual {v0}, Lc/d/a/b/e/p/c0;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final f(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lc/d/a/b/e/m/a$b;",
            "T:",
            "Lc/d/a/b/e/m/m/d<",
            "+",
            "Lc/d/a/b/e/m/j;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lc/d/a/b/e/m/m/d;->o:Lc/d/a/b/e/m/a;

    .line 2
    iget-object v1, p0, Lc/d/a/b/e/m/m/j0;->o:Ljava/util/Map;

    .line 3
    iget-object v2, p1, Lc/d/a/b/e/m/m/d;->n:Lc/d/a/b/e/m/a$c;

    .line 4
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lc/d/a/b/e/m/a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "the API"

    .line 6
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " required for this call."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f(ZLjava/lang/Object;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->d:Lc/d/a/b/e/m/m/e1;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lc/d/a/b/e/m/m/j0;->i:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/d;

    iget-object v1, p0, Lc/d/a/b/e/m/m/j0;->w:Lc/d/a/b/e/m/m/r1;

    .line 7
    iget-object v2, v1, Lc/d/a/b/e/m/m/r1;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lc/d/a/b/e/m/m/r1;->b:Lc/d/a/b/e/m/m/s1;

    .line 8
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    sget-object v1, Lcom/google/android/gms/common/api/Status;->j:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lc/d/a/b/e/m/m/d;->n(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lc/d/a/b/e/m/m/e1;->o(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final g()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->g:Landroid/os/Looper;

    return-object v0
.end method

.method public final h(Lc/d/a/b/e/m/m/p;)Z
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->d:Lc/d/a/b/e/m/m/e1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/d/a/b/e/m/m/e1;->c(Lc/d/a/b/e/m/m/p;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->d:Lc/d/a/b/e/m/m/e1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/d/a/b/e/m/m/e1;->d()V

    :cond_0
    return-void
.end method

.method public final j(I)V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/16 v0, 0x21

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal sign-in mode: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/j0;->m(I)V

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/j0;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final k(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/e/m/m/j0;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lc/d/a/b/e/m/m/j0;->i:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/e/m/m/j0;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->w:Lc/d/a/b/e/m/m/r1;

    const-string v1, " mUnconsumedApiCalls.size()="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lc/d/a/b/e/m/m/r1;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->d:Lc/d/a/b/e/m/m/e1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lc/d/a/b/e/m/m/e1;->f(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final m(I)V
    .locals 18

    move-object/from16 v15, p0

    iget-object v0, v15, Lc/d/a/b/e/m/m/j0;->v:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v15, Lc/d/a/b/e/m/m/j0;->v:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v1, p1

    if-ne v0, v1, :cond_13

    :goto_0
    iget-object v0, v15, Lc/d/a/b/e/m/m/j0;->d:Lc/d/a/b/e/m/m/e1;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v15, Lc/d/a/b/e/m/m/j0;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/e/m/a$f;

    invoke-interface {v4}, Lc/d/a/b/e/m/a$f;->u()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-interface {v4}, Lc/d/a/b/e/m/a$f;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v15, Lc/d/a/b/e/m/m/j0;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_10

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    :cond_5
    move-object v12, v15

    goto/16 :goto_7

    :cond_6
    if-eqz v2, :cond_5

    iget-object v2, v15, Lc/d/a/b/e/m/m/j0;->f:Landroid/content/Context;

    iget-object v3, v15, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    iget-object v4, v15, Lc/d/a/b/e/m/m/j0;->g:Landroid/os/Looper;

    iget-object v6, v15, Lc/d/a/b/e/m/m/j0;->m:Lc/d/a/b/e/d;

    iget-object v0, v15, Lc/d/a/b/e/m/m/j0;->o:Ljava/util/Map;

    iget-object v8, v15, Lc/d/a/b/e/m/m/j0;->q:Lc/d/a/b/e/p/d;

    iget-object v7, v15, Lc/d/a/b/e/m/m/j0;->r:Ljava/util/Map;

    iget-object v9, v15, Lc/d/a/b/e/m/m/j0;->s:Lc/d/a/b/e/m/a$a;

    iget-object v10, v15, Lc/d/a/b/e/m/m/j0;->u:Ljava/util/ArrayList;

    .line 1
    new-instance v11, Lb/f/a;

    invoke-direct {v11}, Lb/f/a;-><init>()V

    new-instance v12, Lb/f/a;

    invoke-direct {v12}, Lb/f/a;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v13, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lc/d/a/b/e/m/a$f;

    invoke-interface {v1}, Lc/d/a/b/e/m/a$f;->e()Z

    move-result v16

    if-eqz v16, :cond_7

    move-object v13, v1

    :cond_7
    invoke-interface {v1}, Lc/d/a/b/e/m/a$f;->u()Z

    move-result v16

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc/d/a/b/e/m/a$c;

    if-eqz v16, :cond_8

    invoke-virtual {v11, v14, v1}, Lb/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-virtual {v12, v14, v1}, Lb/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    invoke-virtual {v11}, Lb/f/h;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v5

    const-string v1, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->o(ZLjava/lang/Object;)V

    new-instance v14, Lb/f/a;

    invoke-direct {v14}, Lb/f/a;-><init>()V

    new-instance v5, Lb/f/a;

    invoke-direct {v5}, Lb/f/a;-><init>()V

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/e/m/a;

    move-object/from16 v16, v0

    .line 2
    iget-object v0, v1, Lc/d/a/b/e/m/a;->b:Lc/d/a/b/e/m/a$g;

    .line 3
    invoke-virtual {v11, v0}, Lb/f/h;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v14, v1, v0}, Lb/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object/from16 v0, v16

    goto :goto_3

    :cond_a
    invoke-virtual {v12, v0}, Lb/f/h;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v5, v1, v0}, Lb/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v0, :cond_f

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move/from16 p1, v0

    move-object/from16 v0, v16

    check-cast v0, Lc/d/a/b/e/m/m/c2;

    move-object/from16 v16, v10

    iget-object v10, v0, Lc/d/a/b/e/m/m/c2;->c:Lc/d/a/b/e/m/a;

    invoke-virtual {v14, v10}, Lb/f/h;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    iget-object v10, v0, Lc/d/a/b/e/m/m/c2;->c:Lc/d/a/b/e/m/a;

    invoke-virtual {v5, v10}, Lb/f/h;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    move/from16 v0, p1

    move-object/from16 v10, v16

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v15, Lc/d/a/b/e/m/m/e2;

    move-object v0, v15

    move-object/from16 v16, v1

    move-object v1, v2

    move-object/from16 v2, p0

    move-object/from16 v17, v5

    move-object v5, v6

    move-object v6, v11

    move-object v11, v7

    move-object v7, v12

    move-object v10, v13

    move-object/from16 v12, v16

    move-object v13, v14

    move-object/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lc/d/a/b/e/m/m/e2;-><init>(Landroid/content/Context;Lc/d/a/b/e/m/m/j0;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lc/d/a/b/e/e;Ljava/util/Map;Ljava/util/Map;Lc/d/a/b/e/p/d;Lc/d/a/b/e/m/a$a;Lc/d/a/b/e/m/a$f;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v12, p0

    .line 4
    iput-object v15, v12, Lc/d/a/b/e/m/m/j0;->d:Lc/d/a/b/e/m/m/e1;

    return-void

    :cond_10
    move-object v12, v15

    if-eqz v2, :cond_12

    if-nez v3, :cond_11

    :goto_7
    new-instance v13, Lc/d/a/b/e/m/m/o0;

    iget-object v1, v12, Lc/d/a/b/e/m/m/j0;->f:Landroid/content/Context;

    iget-object v3, v12, Lc/d/a/b/e/m/m/j0;->b:Ljava/util/concurrent/locks/Lock;

    iget-object v4, v12, Lc/d/a/b/e/m/m/j0;->g:Landroid/os/Looper;

    iget-object v5, v12, Lc/d/a/b/e/m/m/j0;->m:Lc/d/a/b/e/d;

    iget-object v6, v12, Lc/d/a/b/e/m/m/j0;->o:Ljava/util/Map;

    iget-object v7, v12, Lc/d/a/b/e/m/m/j0;->q:Lc/d/a/b/e/p/d;

    iget-object v8, v12, Lc/d/a/b/e/m/m/j0;->r:Ljava/util/Map;

    iget-object v9, v12, Lc/d/a/b/e/m/m/j0;->s:Lc/d/a/b/e/m/a$a;

    iget-object v10, v12, Lc/d/a/b/e/m/m/j0;->u:Ljava/util/ArrayList;

    move-object v0, v13

    move-object/from16 v2, p0

    move-object/from16 v11, p0

    invoke-direct/range {v0 .. v11}, Lc/d/a/b/e/m/m/o0;-><init>(Landroid/content/Context;Lc/d/a/b/e/m/m/j0;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lc/d/a/b/e/e;Ljava/util/Map;Lc/d/a/b/e/p/d;Ljava/util/Map;Lc/d/a/b/e/m/a$a;Ljava/util/ArrayList;Lc/d/a/b/e/m/m/d1;)V

    iput-object v13, v12, Lc/d/a/b/e/m/m/j0;->d:Lc/d/a/b/e/m/m/e1;

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object v12, v15

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static/range {p1 .. p1}, Lc/d/a/b/e/m/m/j0;->o(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v12, Lc/d/a/b/e/m/m/j0;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lc/d/a/b/e/m/m/j0;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Cannot use sign-in mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Mode was already set to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public final p()Z
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Lc/d/a/b/e/m/m/j0;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lc/d/a/b/e/m/m/j0;->i:Z

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->l:Lc/d/a/b/e/m/m/k0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->l:Lc/d/a/b/e/m/m/k0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->n:Lc/d/a/b/e/m/m/a1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/d/a/b/e/m/m/a1;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/b/e/m/m/j0;->n:Lc/d/a/b/e/m/m/a1;

    :cond_1
    return v1
.end method

.method public final q()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->c:Lc/d/a/b/e/p/c0;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lc/d/a/b/e/p/c0;->e:Z

    .line 2
    iget-object v0, p0, Lc/d/a/b/e/m/m/j0;->d:Lc/d/a/b/e/m/m/e1;

    const-string v1, "null reference"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Lc/d/a/b/e/m/m/e1;->a()V

    return-void
.end method
