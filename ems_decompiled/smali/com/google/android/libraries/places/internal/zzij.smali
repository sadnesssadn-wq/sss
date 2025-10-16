.class public final Lcom/google/android/libraries/places/internal/zzij;
.super Lcom/google/android/libraries/places/internal/zzid;
.source ""


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/libraries/places/internal/zzif;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/android/libraries/places/internal/zzii;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile zzd:Lcom/google/android/libraries/places/internal/zzhl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzij;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzij;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzij;->zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzid;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const-string v2, "robolectric"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "goldfish"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ranchu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "userdebug"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_4
    if-nez p1, :cond_8

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    if-eqz v1, :cond_7

    new-instance p1, Lcom/google/android/libraries/places/internal/zzil;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzil;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzil;->zzb(Z)Lcom/google/android/libraries/places/internal/zzil;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzid;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzil;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzhl;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzij;->zzd:Lcom/google/android/libraries/places/internal/zzhl;

    return-void

    :cond_7
    const/4 p1, 0x0

    goto :goto_5

    :cond_8
    :goto_6
    new-instance p1, Lcom/google/android/libraries/places/internal/zzie;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzie;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzid;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzie;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzhl;

    move-result-object p1

    goto :goto_5
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzhl;
    .locals 4

    sget-object v0, Lcom/google/android/libraries/places/internal/zzij;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzif;

    invoke-interface {v0, p0}, Lcom/google/android/libraries/places/internal/zzif;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzhl;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/libraries/places/internal/zzij;

    const/16 v2, 0x24

    const/16 v3, 0x2e

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzij;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/libraries/places/internal/zzih;->zza:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    :goto_0
    sget-object p0, Lcom/google/android/libraries/places/internal/zzih;->zza:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzij;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzij;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzif;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzid;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/libraries/places/internal/zzif;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzhl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzij;->zzd:Lcom/google/android/libraries/places/internal/zzhl;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/libraries/places/internal/zzij;->zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzii;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/google/android/libraries/places/internal/zzij;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    return-object v1
.end method
