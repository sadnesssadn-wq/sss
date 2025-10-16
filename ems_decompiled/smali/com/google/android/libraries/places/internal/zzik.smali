.class public final Lcom/google/android/libraries/places/internal/zzik;
.super Lcom/google/android/libraries/places/internal/zzip;
.source ""


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzik;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/libraries/places/internal/zzip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzik;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzip;->zze()Lcom/google/android/libraries/places/internal/zzip;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzik;-><init>(Lcom/google/android/libraries/places/internal/zzip;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzik;->zza:Lcom/google/android/libraries/places/internal/zzik;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzip;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzip;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzik;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final zzb()Lcom/google/android/libraries/places/internal/zzik;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzik;->zza:Lcom/google/android/libraries/places/internal/zzik;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzhn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzik;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzip;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzip;->zza()Lcom/google/android/libraries/places/internal/zzhn;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzjc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzik;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzip;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzip;->zzc()Lcom/google/android/libraries/places/internal/zzjc;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzik;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzip;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzip;->zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    const/4 p1, 0x0

    return p1
.end method
