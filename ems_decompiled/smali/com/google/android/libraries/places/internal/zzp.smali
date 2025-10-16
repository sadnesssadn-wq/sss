.class public final Lcom/google/android/libraries/places/internal/zzp;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zza:J

.field private static final zzb:J

.field private static final zzc:J


# instance fields
.field private final zzd:Lcom/google/android/libraries/places/internal/zza;

.field private final zze:Lc/d/a/b/j/a;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzcq;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/libraries/places/internal/zzp;->zza:J

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/libraries/places/internal/zzp;->zzb:J

    const-wide/16 v1, 0x3b

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/places/internal/zzp;->zzc:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/internal/zza;Lc/d/a/b/j/a;Lcom/google/android/libraries/places/internal/zzcq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzp;->zzd:Lcom/google/android/libraries/places/internal/zza;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzp;->zze:Lc/d/a/b/j/a;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzp;->zzf:Lcom/google/android/libraries/places/internal/zzcq;

    return-void
.end method


# virtual methods
.method public final zza(Lc/d/a/b/p/a;)Lc/d/a/b/p/l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/a;",
            ")",
            "Lc/d/a/b/p/l<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzp;->zzf:Lcom/google/android/libraries/places/internal/zzcq;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzp;->zze:Lc/d/a/b/j/a;

    .line 1
    new-instance v2, Lc/d/a/b/j/m;

    invoke-direct {v2}, Lc/d/a/b/j/m;-><init>()V

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v3, v2}, Lc/d/a/b/e/m/d;->c(ILc/d/a/b/e/m/m/r;)Lc/d/a/b/p/l;

    move-result-object v1

    .line 3
    sget-wide v2, Lcom/google/android/libraries/places/internal/zzp;->zza:J

    new-instance v4, Lc/d/a/b/p/m;

    if-nez p1, :cond_0

    invoke-direct {v4}, Lc/d/a/b/p/m;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {v4, p1}, Lc/d/a/b/p/m;-><init>(Lc/d/a/b/p/a;)V

    :goto_0
    const-string v5, "Location timeout."

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/google/android/libraries/places/internal/zzcq;->zza(Lc/d/a/b/p/m;JLjava/lang/String;)Z

    new-instance v2, Lcom/google/android/libraries/places/internal/zzcn;

    invoke-direct {v2, v0, v4}, Lcom/google/android/libraries/places/internal/zzcn;-><init>(Lcom/google/android/libraries/places/internal/zzcq;Lc/d/a/b/p/m;)V

    invoke-virtual {v1, v2}, Lc/d/a/b/p/l;->h(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    .line 4
    iget-object v1, v4, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    .line 5
    new-instance v2, Lcom/google/android/libraries/places/internal/zzco;

    invoke-direct {v2, v0, v4}, Lcom/google/android/libraries/places/internal/zzco;-><init>(Lcom/google/android/libraries/places/internal/zzcq;Lc/d/a/b/p/m;)V

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lc/d/a/b/p/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lc/d/a/b/p/j0;->r(Ljava/util/concurrent/Executor;Lc/d/a/b/p/f;)Lc/d/a/b/p/l;

    .line 7
    iget-object v0, v4, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    .line 8
    new-instance v1, Lcom/google/android/libraries/places/internal/zzl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzl;-><init>(Lcom/google/android/libraries/places/internal/zzp;Lc/d/a/b/p/a;)V

    invoke-virtual {v0, v1}, Lc/d/a/b/p/j0;->h(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lc/d/a/b/p/a;Lc/d/a/b/p/l;)Lc/d/a/b/p/l;
    .locals 10

    invoke-virtual {p2}, Lc/d/a/b/p/l;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzp;->zzd:Lcom/google/android/libraries/places/internal/zza;

    invoke-virtual {p2}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zza;->zzb()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v0

    sub-long/2addr v2, v0

    sget-wide v0, Lcom/google/android/libraries/places/internal/zzp;->zzb:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    :goto_0
    new-instance p2, Lc/d/a/b/p/m;

    if-eqz p1, :cond_2

    invoke-direct {p2, p1}, Lc/d/a/b/p/m;-><init>(Lc/d/a/b/p/a;)V

    goto :goto_1

    :cond_2
    invoke-direct {p2}, Lc/d/a/b/p/m;-><init>()V

    .line 1
    :goto_1
    new-instance p1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const/16 v0, 0x64

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->x(I)Lcom/google/android/gms/location/LocationRequest;

    sget-wide v0, Lcom/google/android/libraries/places/internal/zzp;->zza:J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    sub-long v6, v4, v2

    cmp-long v8, v0, v6

    if-lez v8, :cond_3

    iput-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->g:J

    goto :goto_2

    :cond_3
    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/google/android/gms/location/LocationRequest;->g:J

    :goto_2
    iget-wide v2, p1, Lcom/google/android/gms/location/LocationRequest;->g:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    iput-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->g:J

    .line 4
    :cond_4
    sget-wide v2, Lcom/google/android/libraries/places/internal/zzp;->zzc:J

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->v(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0xa

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/location/LocationRequest;->y(J)V

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/google/android/gms/location/LocationRequest;->f:Z

    iput-wide v2, p1, Lcom/google/android/gms/location/LocationRequest;->e:J

    .line 6
    invoke-virtual {p1, v4}, Lcom/google/android/gms/location/LocationRequest;->w(I)Lcom/google/android/gms/location/LocationRequest;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzo;

    invoke-direct {v2, p0, p2}, Lcom/google/android/libraries/places/internal/zzo;-><init>(Lcom/google/android/libraries/places/internal/zzp;Lc/d/a/b/p/m;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzp;->zze:Lc/d/a/b/j/a;

    .line 7
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lc/d/a/b/i/j/t;->v(Lcom/google/android/gms/location/LocationRequest;)Lc/d/a/b/i/j/t;

    move-result-object p1

    if-eqz v3, :cond_5

    goto :goto_3

    .line 8
    :cond_5
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V1()Landroid/os/Looper;

    move-result-object v3

    .line 9
    :goto_3
    const-class v5, Lc/d/a/b/j/b;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Listener must not be null"

    .line 10
    invoke-static {v2, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Looper must not be null"

    invoke-static {v3, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Listener type must not be null"

    invoke-static {v5, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lc/d/a/b/e/m/m/j;

    invoke-direct {v6, v3, v2, v5}, Lc/d/a/b/e/m/m/j;-><init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Lc/d/a/b/j/n;

    invoke-direct {v3, v6, p1, v6}, Lc/d/a/b/j/n;-><init>(Lc/d/a/b/e/m/m/j;Lc/d/a/b/i/j/t;Lc/d/a/b/e/m/m/j;)V

    new-instance p1, Lc/d/a/b/j/o;

    .line 12
    iget-object v5, v6, Lc/d/a/b/e/m/m/j;->c:Lc/d/a/b/e/m/m/j$a;

    .line 13
    invoke-direct {p1, v4, v5}, Lc/d/a/b/j/o;-><init>(Lc/d/a/b/j/a;Lc/d/a/b/e/m/m/j$a;)V

    .line 14
    iget-object v5, v3, Lc/d/a/b/e/m/m/n;->a:Lc/d/a/b/e/m/m/j;

    .line 15
    iget-object v5, v5, Lc/d/a/b/e/m/m/j;->c:Lc/d/a/b/e/m/m/j$a;

    const-string v6, "Listener has already been released."

    .line 16
    invoke-static {v5, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v5, p1, Lc/d/a/b/e/m/m/s;->a:Lc/d/a/b/e/m/m/j$a;

    .line 18
    invoke-static {v5, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v5, v3, Lc/d/a/b/e/m/m/n;->a:Lc/d/a/b/e/m/m/j;

    .line 20
    iget-object v5, v5, Lc/d/a/b/e/m/m/j;->c:Lc/d/a/b/e/m/m/j$a;

    .line 21
    iget-object v6, p1, Lc/d/a/b/e/m/m/s;->a:Lc/d/a/b/e/m/m/j$a;

    .line 22
    invoke-static {v5, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Listener registration and unregistration methods must be constructed with the same ListenerHolder."

    invoke-static {v5, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f(ZLjava/lang/Object;)V

    iget-object v5, v4, Lc/d/a/b/e/m/d;->j:Lc/d/a/b/e/m/m/g;

    sget-object v6, Lc/d/a/b/e/m/o;->c:Ljava/lang/Runnable;

    .line 23
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lc/d/a/b/p/m;

    invoke-direct {v7}, Lc/d/a/b/p/m;-><init>()V

    .line 24
    iget v8, v3, Lc/d/a/b/e/m/m/n;->d:I

    .line 25
    invoke-virtual {v5, v7, v8, v4}, Lc/d/a/b/e/m/m/g;->b(Lc/d/a/b/p/m;ILc/d/a/b/e/m/d;)V

    new-instance v8, Lc/d/a/b/e/m/m/v1;

    new-instance v9, Lc/d/a/b/e/m/m/i1;

    invoke-direct {v9, v3, p1, v6}, Lc/d/a/b/e/m/m/i1;-><init>(Lc/d/a/b/e/m/m/n;Lc/d/a/b/e/m/m/s;Ljava/lang/Runnable;)V

    invoke-direct {v8, v9, v7}, Lc/d/a/b/e/m/m/v1;-><init>(Lc/d/a/b/e/m/m/i1;Lc/d/a/b/p/m;)V

    iget-object p1, v5, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/16 v3, 0x8

    new-instance v6, Lc/d/a/b/e/m/m/h1;

    iget-object v5, v5, Lc/d/a/b/e/m/m/g;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v6, v8, v5, v4}, Lc/d/a/b/e/m/m/h1;-><init>(Lc/d/a/b/e/m/m/p0;ILc/d/a/b/e/m/d;)V

    invoke-virtual {p1, v3, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    iget-object p1, v7, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    .line 27
    new-instance v3, Lcom/google/android/libraries/places/internal/zzm;

    invoke-direct {v3, p0, p2}, Lcom/google/android/libraries/places/internal/zzm;-><init>(Lcom/google/android/libraries/places/internal/zzp;Lc/d/a/b/p/m;)V

    invoke-virtual {p1, v3}, Lc/d/a/b/p/j0;->h(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzp;->zzf:Lcom/google/android/libraries/places/internal/zzcq;

    const-string v3, "Location timeout."

    invoke-virtual {p1, p2, v0, v1, v3}, Lcom/google/android/libraries/places/internal/zzcq;->zza(Lc/d/a/b/p/m;JLjava/lang/String;)Z

    .line 28
    iget-object p1, p2, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    .line 29
    new-instance v0, Lcom/google/android/libraries/places/internal/zzn;

    invoke-direct {v0, p0, v2, p2}, Lcom/google/android/libraries/places/internal/zzn;-><init>(Lcom/google/android/libraries/places/internal/zzp;Lc/d/a/b/j/b;Lc/d/a/b/p/m;)V

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lc/d/a/b/p/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v0}, Lc/d/a/b/p/j0;->r(Ljava/util/concurrent/Executor;Lc/d/a/b/p/f;)Lc/d/a/b/p/l;

    .line 31
    iget-object p2, p2, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    :goto_4
    return-object p2
.end method

.method public final zzc(Lc/d/a/b/j/b;Lc/d/a/b/p/m;Lc/d/a/b/p/l;)V
    .locals 4

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzp;->zze:Lc/d/a/b/j/a;

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lc/d/a/b/j/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Listener must not be null"

    .line 2
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Listener type must not be null"

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Listener type must not be empty"

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v1, Lc/d/a/b/e/m/m/j$a;

    invoke-direct {v1, p1, v0}, Lc/d/a/b/e/m/m/j$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Listener key cannot be null."

    .line 3
    invoke-static {v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p3, Lc/d/a/b/e/m/d;->j:Lc/d/a/b/e/m/m/g;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/d/a/b/p/m;

    invoke-direct {v0}, Lc/d/a/b/p/m;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p3}, Lc/d/a/b/e/m/m/g;->b(Lc/d/a/b/p/m;ILc/d/a/b/e/m/d;)V

    new-instance v2, Lc/d/a/b/e/m/m/x1;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/e/m/m/x1;-><init>(Lc/d/a/b/e/m/m/j$a;Lc/d/a/b/p/m;)V

    iget-object v1, p1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    new-instance v3, Lc/d/a/b/e/m/m/h1;

    iget-object p1, p1, Lc/d/a/b/e/m/m/g;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-direct {v3, v2, p1, p3}, Lc/d/a/b/e/m/m/h1;-><init>(Lc/d/a/b/e/m/m/p0;ILc/d/a/b/e/m/d;)V

    const/16 p1, 0xd

    invoke-virtual {v1, p1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5
    iget-object p1, v0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    .line 6
    new-instance p3, Lc/d/a/b/e/m/m/q1;

    invoke-direct {p3}, Lc/d/a/b/e/m/m/q1;-><init>()V

    invoke-virtual {p1, p3}, Lc/d/a/b/p/j0;->f(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    .line 7
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzp;->zzf:Lcom/google/android/libraries/places/internal/zzcq;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzcq;->zzb(Lc/d/a/b/p/m;)Z

    return-void
.end method
