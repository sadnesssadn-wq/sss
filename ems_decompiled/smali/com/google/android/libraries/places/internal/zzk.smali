.class public final Lcom/google/android/libraries/places/internal/zzk;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zza;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzk;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zze;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zze;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzk;->zza:Lcom/google/android/libraries/places/internal/zza;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzk;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzk;-><init>(J)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzk;->zzb:Lcom/google/android/libraries/places/internal/zzk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzk;
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzk;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzk;-><init>(J)V

    return-object v0
.end method
