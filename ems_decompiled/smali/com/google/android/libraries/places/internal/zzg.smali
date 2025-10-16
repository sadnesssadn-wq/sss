.class public final Lcom/google/android/libraries/places/internal/zzg;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static zza:Lcom/google/android/libraries/places/internal/zzg;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzh;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzg;->zzb:Lcom/google/android/libraries/places/internal/zzh;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzg;
    .locals 2

    sget-object v0, Lcom/google/android/libraries/places/internal/zzg;->zza:Lcom/google/android/libraries/places/internal/zzg;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzg;->zzb:Lcom/google/android/libraries/places/internal/zzh;

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzg;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzf;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzf;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzg;-><init>(Lcom/google/android/libraries/places/internal/zzh;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzg;->zza:Lcom/google/android/libraries/places/internal/zzg;

    return-object v0
.end method
