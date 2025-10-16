.class public final Lcom/google/android/libraries/places/internal/zzadh;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzadh;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzadl;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/zzadk<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzadh;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzadh;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzadh;->zza:Lcom/google/android/libraries/places/internal/zzadh;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzadh;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzacr;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzacr;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzadh;->zzb:Lcom/google/android/libraries/places/internal/zzadl;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzadh;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzadh;->zza:Lcom/google/android/libraries/places/internal/zzadh;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzadk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/libraries/places/internal/zzadk<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzaca;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzadh;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzadk;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzadh;->zzb:Lcom/google/android/libraries/places/internal/zzadl;

    invoke-interface {v1, p1}, Lcom/google/android/libraries/places/internal/zzadl;->zza(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzadk;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzaca;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzaca;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzadh;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzadk;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method
