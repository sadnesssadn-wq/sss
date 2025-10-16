.class public final Lcom/google/android/libraries/places/internal/zze;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zza;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()J
    .locals 2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzd;->zza()J

    move-result-wide v0

    return-wide v0
.end method
