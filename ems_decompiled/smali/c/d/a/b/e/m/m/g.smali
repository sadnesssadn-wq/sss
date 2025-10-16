.class public Lc/d/a/b/e/m/m/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/e/m/m/g$b;,
        Lc/d/a/b/e/m/m/g$c;,
        Lc/d/a/b/e/m/m/g$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/google/android/gms/common/api/Status;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final p:Lcom/google/android/gms/common/api/Status;

.field public static final q:Ljava/lang/Object;

.field public static r:Lc/d/a/b/e/m/m/g;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:Z

.field public c:Lc/d/a/b/e/p/u;

.field public d:Lc/d/a/b/e/p/w;

.field public final e:Landroid/content/Context;

.field public final f:Lc/d/a/b/e/d;

.field public final g:Lc/d/a/b/e/p/e0;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/m/b<",
            "*>;",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/d/a/b/e/m/m/b<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field public final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/d/a/b/e/m/m/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final m:Landroid/os/Handler;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field public volatile n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc/d/a/b/e/m/m/g;->o:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc/d/a/b/e/m/m/g;->p:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/d/a/b/e/m/m/g;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/d;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lc/d/a/b/e/m/m/g;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/b/e/m/m/g;->b:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lc/d/a/b/e/m/m/g;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lc/d/a/b/e/m/m/g;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    new-instance v1, Lb/f/c;

    .line 1
    invoke-direct {v1, v0}, Lb/f/c;-><init>(I)V

    .line 2
    iput-object v1, p0, Lc/d/a/b/e/m/m/g;->k:Ljava/util/Set;

    new-instance v1, Lb/f/c;

    .line 3
    invoke-direct {v1, v0}, Lb/f/c;-><init>(I)V

    .line 4
    iput-object v1, p0, Lc/d/a/b/e/m/m/g;->l:Ljava/util/Set;

    iput-boolean v2, p0, Lc/d/a/b/e/m/m/g;->n:Z

    iput-object p1, p0, Lc/d/a/b/e/m/m/g;->e:Landroid/content/Context;

    new-instance v1, Lc/d/a/b/i/d/e;

    invoke-direct {v1, p2, p0}, Lc/d/a/b/i/d/e;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    iput-object p3, p0, Lc/d/a/b/e/m/m/g;->f:Lc/d/a/b/e/d;

    new-instance p2, Lc/d/a/b/e/p/e0;

    invoke-direct {p2, p3}, Lc/d/a/b/e/p/e0;-><init>(Lc/d/a/b/e/e;)V

    iput-object p2, p0, Lc/d/a/b/e/m/m/g;->g:Lc/d/a/b/e/p/e0;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 6
    sget-object p2, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->e:Ljava/lang/Boolean;

    if-nez p2, :cond_1

    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h0()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->e:Ljava/lang/Boolean;

    :cond_1
    sget-object p1, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iput-boolean v0, p0, Lc/d/a/b/e/m/m/g;->n:Z

    :cond_2
    const/4 p1, 0x6

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lc/d/a/b/e/m/m/g;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lc/d/a/b/e/m/m/g;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/d/a/b/e/m/m/g;->r:Lc/d/a/b/e/m/m/g;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc/d/a/b/e/m/m/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, Lc/d/a/b/e/d;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lc/d/a/b/e/d;->d:Lc/d/a/b/e/d;

    :try_start_1
    invoke-direct {v2, p0, v1, v3}, Lc/d/a/b/e/m/m/g;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/d;)V

    sput-object v2, Lc/d/a/b/e/m/m/g;->r:Lc/d/a/b/e/m/m/g;

    :cond_0
    sget-object p0, Lc/d/a/b/e/m/m/g;->r:Lc/d/a/b/e/m/m/g;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static d(Lc/d/a/b/e/m/m/b;Lc/d/a/b/e/a;)Lcom/google/android/gms/common/api/Status;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/b<",
            "*>;",
            "Lc/d/a/b/e/a;",
            ")",
            "Lcom/google/android/gms/common/api/Status;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/gms/common/api/Status;

    .line 1
    iget-object p0, p0, Lc/d/a/b/e/m/m/b;->b:Lc/d/a/b/e/m/a;

    .line 2
    iget-object p0, p0, Lc/d/a/b/e/m/a;->c:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v4, p1, Lc/d/a/b/e/a;->e:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/16 v2, 0x11

    move-object v0, v6

    move-object v5, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Lc/d/a/b/e/a;)V

    return-object v6
.end method


# virtual methods
.method public final b(Lc/d/a/b/p/m;ILc/d/a/b/e/m/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/d/a/b/p/m<",
            "TT;>;I",
            "Lc/d/a/b/e/m/d<",
            "*>;)V"
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 1
    iget-object v3, p3, Lc/d/a/b/e/m/d;->e:Lc/d/a/b/e/m/m/b;

    .line 2
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g;->f()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lc/d/a/b/e/p/p;->a()Lc/d/a/b/e/p/p;

    move-result-object p3

    .line 3
    iget-object p3, p3, Lc/d/a/b/e/p/p;->a:Lc/d/a/b/e/p/q;

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    .line 4
    iget-boolean v2, p3, Lc/d/a/b/e/p/q;->d:Z

    if-nez v2, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    iget-boolean p3, p3, Lc/d/a/b/e/p/q;->e:Z

    .line 6
    iget-object v2, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/e/m/m/g$a;

    if-eqz v2, :cond_3

    .line 7
    iget-object v4, v2, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    .line 8
    invoke-interface {v4}, Lc/d/a/b/e/m/a$f;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    iget-object v4, v2, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    .line 10
    instance-of v4, v4, Lc/d/a/b/e/p/b;

    if-eqz v4, :cond_3

    invoke-static {v2, p2}, Lc/d/a/b/e/m/m/g1;->a(Lc/d/a/b/e/m/m/g$a;I)Lc/d/a/b/e/p/e;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    iget v0, v2, Lc/d/a/b/e/m/m/g$a;->n:I

    add-int/2addr v0, v1

    iput v0, v2, Lc/d/a/b/e/m/m/g$a;->n:I

    .line 12
    iget-boolean v1, p3, Lc/d/a/b/e/p/e;->e:Z

    goto :goto_0

    :cond_3
    move v1, p3

    .line 13
    :cond_4
    :goto_0
    new-instance p3, Lc/d/a/b/e/m/m/g1;

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_5
    const-wide/16 v0, 0x0

    :goto_1
    move-wide v4, v0

    move-object v0, p3

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lc/d/a/b/e/m/m/g1;-><init>(Lc/d/a/b/e/m/m/g;ILc/d/a/b/e/m/m/b;J)V

    :goto_2
    if-eqz v0, :cond_6

    .line 14
    iget-object p1, p1, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    .line 15
    iget-object p2, p0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance p3, Lc/d/a/b/e/m/m/s0;

    invoke-direct {p3, p2}, Lc/d/a/b/e/m/m/s0;-><init>(Landroid/os/Handler;)V

    .line 17
    iget-object p2, p1, Lc/d/a/b/p/j0;->b:Lc/d/a/b/p/f0;

    new-instance v1, Lc/d/a/b/p/x;

    .line 18
    sget v2, Lc/d/a/b/p/k0;->a:I

    .line 19
    invoke-direct {v1, p3, v0}, Lc/d/a/b/p/x;-><init>(Ljava/util/concurrent/Executor;Lc/d/a/b/p/f;)V

    invoke-virtual {p2, v1}, Lc/d/a/b/p/f0;->b(Lc/d/a/b/p/g0;)V

    invoke-virtual {p1}, Lc/d/a/b/p/j0;->x()V

    :cond_6
    return-void
.end method

.method public final c(Lc/d/a/b/e/a;I)Z
    .locals 7

    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->f:Lc/d/a/b/e/d;

    iget-object v1, p0, Lc/d/a/b/e/m/m/g;->e:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lc/d/a/b/e/a;->v()Z

    move-result v2

    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p1, Lc/d/a/b/e/a;->e:Landroid/app/PendingIntent;

    goto :goto_0

    .line 4
    :cond_0
    iget v2, p1, Lc/d/a/b/e/a;->d:I

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v5}, Lc/d/a/b/e/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v5

    goto :goto_0

    :cond_1
    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 6
    iget p1, p1, Lc/d/a/b/e/a;->d:I

    .line 7
    sget v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->d:I

    .line 8
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v5, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "pending_intent"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "failing_client_id"

    invoke-virtual {v5, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string v2, "notify_manager"

    invoke-virtual {v5, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-static {v1, v4, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, p1, v2}, Lc/d/a/b/e/d;->i(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method public final e(Lc/d/a/b/e/m/d;)Lc/d/a/b/e/m/m/g$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/d<",
            "*>;)",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lc/d/a/b/e/m/d;->e:Lc/d/a/b/e/m/m/b;

    .line 2
    iget-object v1, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/e/m/m/g$a;

    if-nez v1, :cond_0

    new-instance v1, Lc/d/a/b/e/m/m/g$a;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/e/m/m/g$a;-><init>(Lc/d/a/b/e/m/m/g;Lc/d/a/b/e/m/d;)V

    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lc/d/a/b/e/m/m/g$a;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->l:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Lc/d/a/b/e/m/m/g$a;->m()V

    return-object v1
.end method

.method public final f()Z
    .locals 4

    iget-boolean v0, p0, Lc/d/a/b/e/m/m/g;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lc/d/a/b/e/p/p;->a()Lc/d/a/b/e/p/p;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/p/p;->a:Lc/d/a/b/e/p/q;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, v0, Lc/d/a/b/e/p/q;->d:Z

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->g:Lc/d/a/b/e/p/e0;

    const v2, 0xc1f7c30

    .line 4
    iget-object v0, v0, Lc/d/a/b/e/p/e0;->a:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v3, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->c:Lc/d/a/b/e/p/u;

    if-eqz v0, :cond_3

    .line 1
    iget v1, v0, Lc/d/a/b/e/p/u;->c:I

    if-gtz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    iget-object v1, p0, Lc/d/a/b/e/m/m/g;->d:Lc/d/a/b/e/p/w;

    if-nez v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/e/m/m/g;->e:Landroid/content/Context;

    new-instance v2, Lc/d/a/b/e/p/s/d;

    invoke-direct {v2, v1}, Lc/d/a/b/e/p/s/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc/d/a/b/e/m/m/g;->d:Lc/d/a/b/e/p/w;

    :cond_1
    iget-object v1, p0, Lc/d/a/b/e/m/m/g;->d:Lc/d/a/b/e/p/w;

    .line 4
    check-cast v1, Lc/d/a/b/e/p/s/d;

    invoke-virtual {v1, v0}, Lc/d/a/b/e/p/s/d;->d(Lc/d/a/b/e/p/u;)Lc/d/a/b/p/l;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/b/e/m/m/g;->c:Lc/d/a/b/e/p/u;

    :cond_3
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/32 v3, 0x493e0

    const/16 v5, 0x11

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    const-string p1, "GoogleApiManager"

    const/16 v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown message id: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_0
    iput-boolean v1, p0, Lc/d/a/b/e/m/m/g;->b:Z

    goto/16 :goto_c

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/d/a/b/e/m/m/f1;

    iget-wide v3, p1, Lc/d/a/b/e/m/m/f1;->c:J

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-nez v0, :cond_1

    new-instance v0, Lc/d/a/b/e/p/u;

    iget v3, p1, Lc/d/a/b/e/m/m/f1;->b:I

    new-array v4, v2, [Lc/d/a/b/e/p/j0;

    iget-object p1, p1, Lc/d/a/b/e/m/m/f1;->a:Lc/d/a/b/e/p/j0;

    aput-object p1, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lc/d/a/b/e/p/u;-><init>(ILjava/util/List;)V

    .line 1
    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->d:Lc/d/a/b/e/p/w;

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->e:Landroid/content/Context;

    new-instance v1, Lc/d/a/b/e/p/s/d;

    invoke-direct {v1, p1}, Lc/d/a/b/e/p/s/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc/d/a/b/e/m/m/g;->d:Lc/d/a/b/e/p/w;

    :cond_0
    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->d:Lc/d/a/b/e/p/w;

    .line 2
    check-cast p1, Lc/d/a/b/e/p/s/d;

    invoke-virtual {p1, v0}, Lc/d/a/b/e/p/s/d;->d(Lc/d/a/b/e/p/u;)Lc/d/a/b/p/l;

    goto/16 :goto_c

    :cond_1
    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->c:Lc/d/a/b/e/p/u;

    if-eqz v0, :cond_5

    .line 3
    iget-object v1, v0, Lc/d/a/b/e/p/u;->d:Ljava/util/List;

    .line 4
    iget v0, v0, Lc/d/a/b/e/p/u;->c:I

    .line 5
    iget v3, p1, Lc/d/a/b/e/m/m/f1;->b:I

    if-ne v0, v3, :cond_4

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Lc/d/a/b/e/m/m/f1;->d:I

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->c:Lc/d/a/b/e/p/u;

    iget-object v1, p1, Lc/d/a/b/e/m/m/f1;->a:Lc/d/a/b/e/p/j0;

    .line 6
    iget-object v3, v0, Lc/d/a/b/e/p/u;->d:Ljava/util/List;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lc/d/a/b/e/p/u;->d:Ljava/util/List;

    :cond_3
    iget-object v0, v0, Lc/d/a/b/e/p/u;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_4
    :goto_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g;->g()V

    :cond_5
    :goto_1
    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->c:Lc/d/a/b/e/p/u;

    if-nez v0, :cond_19

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lc/d/a/b/e/m/m/f1;->a:Lc/d/a/b/e/p/j0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc/d/a/b/e/p/u;

    iget v3, p1, Lc/d/a/b/e/m/m/f1;->b:I

    invoke-direct {v1, v3, v0}, Lc/d/a/b/e/p/u;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Lc/d/a/b/e/m/m/g;->c:Lc/d/a/b/e/p/u;

    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p1, Lc/d/a/b/e/m/m/f1;->c:J

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_c

    :pswitch_2
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g;->g()V

    goto/16 :goto_c

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/d/a/b/e/m/m/g$b;

    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    .line 8
    iget-object v3, p1, Lc/d/a/b/e/m/m/g$b;->a:Lc/d/a/b/e/m/m/b;

    .line 9
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    .line 10
    iget-object v3, p1, Lc/d/a/b/e/m/m/g$b;->a:Lc/d/a/b/e/m/m/b;

    .line 11
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/g$a;

    .line 12
    iget-object v3, v0, Lc/d/a/b/e/m/m/g$a;->l:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 13
    iget-object v3, v3, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/16 v4, 0xf

    .line 14
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v3, v0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 15
    iget-object v3, v3, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/16 v4, 0x10

    .line 16
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 17
    iget-object p1, p1, Lc/d/a/b/e/m/m/g$b;->b:Lc/d/a/b/e/c;

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lc/d/a/b/e/m/m/g$a;->c:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v0, Lc/d/a/b/e/m/m/g$a;->c:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/b/e/m/m/p0;

    instance-of v6, v5, Lc/d/a/b/e/m/m/u1;

    if-eqz v6, :cond_6

    move-object v6, v5

    check-cast v6, Lc/d/a/b/e/m/m/u1;

    invoke-virtual {v6, v0}, Lc/d/a/b/e/m/m/u1;->f(Lc/d/a/b/e/m/m/g$a;)[Lc/d/a/b/e/c;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 19
    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_8

    aget-object v9, v6, v8

    invoke-static {v9, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    const/4 v8, -0x1

    :goto_4
    if-ltz v8, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_6

    .line 20
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_6
    if-ge v1, v4, :cond_19

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Lc/d/a/b/e/m/m/p0;

    iget-object v6, v0, Lc/d/a/b/e/m/m/g$a;->c:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    new-instance v6, Lc/d/a/b/e/m/l;

    invoke-direct {v6, p1}, Lc/d/a/b/e/m/l;-><init>(Lc/d/a/b/e/c;)V

    invoke-virtual {v5, v6}, Lc/d/a/b/e/m/m/p0;->e(Ljava/lang/Exception;)V

    goto :goto_6

    .line 21
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/d/a/b/e/m/m/g$b;

    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    .line 22
    iget-object v1, p1, Lc/d/a/b/e/m/m/g$b;->a:Lc/d/a/b/e/m/m/b;

    .line 23
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    .line 24
    iget-object v1, p1, Lc/d/a/b/e/m/m/g$b;->a:Lc/d/a/b/e/m/m/b;

    .line 25
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/g$a;

    .line 26
    iget-object v1, v0, Lc/d/a/b/e/m/m/g$a;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_c

    :cond_b
    iget-boolean p1, v0, Lc/d/a/b/e/m/m/g$a;->k:Z

    if-nez p1, :cond_19

    iget-object p1, v0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-interface {p1}, Lc/d/a/b/e/m/a$f;->b()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {v0}, Lc/d/a/b/e/m/m/g$a;->m()V

    goto/16 :goto_c

    :cond_c
    invoke-virtual {v0}, Lc/d/a/b/e/m/m/g$a;->q()V

    goto/16 :goto_c

    .line 27
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/d/a/b/e/m/m/k2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    throw v6

    :cond_d
    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/e/m/m/g$a;

    .line 28
    invoke-virtual {p1, v1}, Lc/d/a/b/e/m/m/g$a;->g(Z)Z

    .line 29
    throw v6

    :pswitch_6
    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/e/m/m/g$a;

    .line 30
    invoke-virtual {p1, v2}, Lc/d/a/b/e/m/m/g$a;->g(Z)Z

    goto/16 :goto_c

    .line 31
    :pswitch_7
    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/e/m/m/g$a;

    .line 32
    iget-object v0, p1, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 33
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 34
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lc/d/a/b/e/m/m/g$a;->k:Z

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lc/d/a/b/e/m/m/g$a;->r()V

    iget-object v0, p1, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 35
    iget-object v3, v0, Lc/d/a/b/e/m/m/g;->f:Lc/d/a/b/e/d;

    .line 36
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->e:Landroid/content/Context;

    .line 37
    invoke-virtual {v3, v0}, Lc/d/a/b/e/d;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x12

    if-ne v0, v3, :cond_e

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x15

    const-string v4, "Connection timed out waiting for Google Play services update to complete."

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_7

    :cond_e
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x16

    const-string v4, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 38
    :goto_7
    iget-object v3, p1, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 39
    iget-object v3, v3, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 40
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    invoke-virtual {p1, v0, v6, v1}, Lc/d/a/b/e/m/m/g$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 41
    iget-object p1, p1, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    const-string v0, "Timing out connection while resuming."

    invoke-interface {p1, v0}, Lc/d/a/b/e/m/a$f;->i(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 42
    :pswitch_8
    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/b;

    iget-object v1, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/g$a;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lc/d/a/b/e/m/m/g$a;->b()V

    goto :goto_8

    :cond_10
    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_c

    :pswitch_9
    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/e/m/m/g$a;

    .line 43
    iget-object v0, p1, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 44
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 45
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lc/d/a/b/e/m/m/g$a;->k:Z

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lc/d/a/b/e/m/m/g$a;->m()V

    goto/16 :goto_c

    .line 46
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/d/a/b/e/m/d;

    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/g;->e(Lc/d/a/b/e/m/d;)Lc/d/a/b/e/m/m/g$a;

    goto/16 :goto_c

    :pswitch_b
    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lc/d/a/b/e/m/m/c;->a(Landroid/app/Application;)V

    .line 47
    sget-object p1, Lc/d/a/b/e/m/m/c;->g:Lc/d/a/b/e/m/m/c;

    .line 48
    new-instance v0, Lc/d/a/b/e/m/m/t0;

    invoke-direct {v0, p0}, Lc/d/a/b/e/m/m/t0;-><init>(Lc/d/a/b/e/m/m/g;)V

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lc/d/a/b/e/m/m/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p1, Lc/d/a/b/e/m/m/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget-object v1, p1, Lc/d/a/b/e/m/m/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_11

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_11

    iget-object v0, p1, Lc/d/a/b/e/m/m/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    :cond_11
    iget-object p1, p1, Lc/d/a/b/e/m/m/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_19

    .line 52
    iput-wide v3, p0, Lc/d/a/b/e/m/m/g;->a:J

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    .line 53
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 54
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/d/a/b/e/a;

    iget-object v3, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/e/m/m/g$a;

    .line 55
    iget v7, v4, Lc/d/a/b/e/m/m/g$a;->i:I

    if-ne v7, v0, :cond_12

    goto :goto_9

    :cond_13
    move-object v4, v6

    :goto_9
    if-eqz v4, :cond_15

    .line 56
    iget v0, p1, Lc/d/a/b/e/a;->d:I

    const/16 v3, 0xd

    if-ne v0, v3, :cond_14

    .line 57
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    iget-object v7, p0, Lc/d/a/b/e/m/m/g;->f:Lc/d/a/b/e/d;

    .line 58
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-boolean v7, Lc/d/a/b/e/i;->a:Z

    invoke-static {v0}, Lc/d/a/b/e/a;->x(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object p1, p1, Lc/d/a/b/e/a;->f:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x45

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v5, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 62
    iget-object p1, v4, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 63
    iget-object p1, p1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 64
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    invoke-virtual {v4, v3, v6, v1}, Lc/d/a/b/e/m/m/g$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    goto/16 :goto_c

    .line 65
    :cond_14
    iget-object v0, v4, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    .line 66
    invoke-static {v0, p1}, Lc/d/a/b/e/m/m/g;->d(Lc/d/a/b/e/m/m/b;Lc/d/a/b/e/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 67
    iget-object v0, v4, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 68
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 69
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    invoke-virtual {v4, p1, v6, v1}, Lc/d/a/b/e/m/m/g$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    goto/16 :goto_c

    :cond_15
    const-string p1, "GoogleApiManager"

    const/16 v1, 0x4c

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/d/a/b/e/m/m/h1;

    iget-object v0, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    iget-object v1, p1, Lc/d/a/b/e/m/m/h1;->c:Lc/d/a/b/e/m/d;

    .line 71
    iget-object v1, v1, Lc/d/a/b/e/m/d;->e:Lc/d/a/b/e/m/m/b;

    .line 72
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/g$a;

    if-nez v0, :cond_16

    iget-object v0, p1, Lc/d/a/b/e/m/m/h1;->c:Lc/d/a/b/e/m/d;

    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/g;->e(Lc/d/a/b/e/m/d;)Lc/d/a/b/e/m/m/g$a;

    move-result-object v0

    :cond_16
    invoke-virtual {v0}, Lc/d/a/b/e/m/m/g$a;->o()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lc/d/a/b/e/m/m/g;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v3, p1, Lc/d/a/b/e/m/m/h1;->b:I

    if-eq v1, v3, :cond_17

    iget-object p1, p1, Lc/d/a/b/e/m/m/h1;->a:Lc/d/a/b/e/m/m/p0;

    sget-object v1, Lc/d/a/b/e/m/m/g;->o:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lc/d/a/b/e/m/m/p0;->b(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lc/d/a/b/e/m/m/g$a;->b()V

    goto :goto_c

    :cond_17
    iget-object p1, p1, Lc/d/a/b/e/m/m/h1;->a:Lc/d/a/b/e/m/m/p0;

    invoke-virtual {v0, p1}, Lc/d/a/b/e/m/m/g$a;->f(Lc/d/a/b/e/m/m/p0;)V

    goto :goto_c

    :pswitch_e
    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/g$a;

    invoke-virtual {v0}, Lc/d/a/b/e/m/m/g$a;->l()V

    invoke-virtual {v0}, Lc/d/a/b/e/m/m/g$a;->m()V

    goto :goto_a

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/d/a/b/e/m/m/z1;

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v6

    .line 74
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    const-wide/16 v3, 0x2710

    :cond_18
    iput-wide v3, p0, Lc/d/a/b/e/m/m/g;->a:J

    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/e/m/m/b;

    iget-object v3, p0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v4, p0, Lc/d/a/b/e/m/m/g;->a:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    :cond_19
    :goto_c
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
