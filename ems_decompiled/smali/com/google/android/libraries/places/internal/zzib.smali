.class public abstract Lcom/google/android/libraries/places/internal/zzib;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static zza:Ljava/lang/String; = "com.google.android.libraries.places.internal.zzig"

.field private static zzb:Ljava/lang/String; = "com.google.common.flogger.backend.google.GooglePlatform"

.field private static zzc:Ljava/lang/String; = "com.google.common.flogger.backend.system.DefaultPlatform"

.field private static final zzd:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.libraries.places.internal.zzig"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.common.flogger.backend.google.GooglePlatform"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.common.flogger.backend.system.DefaultPlatform"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/libraries/places/internal/zzib;->zzd:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()I
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzjg;->zza()I

    move-result v0

    return v0
.end method

.method public static zzb()J
    .locals 2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzhz;->zza()Lcom/google/android/libraries/places/internal/zzib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzib;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzhl;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzhz;->zza()Lcom/google/android/libraries/places/internal/zzib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzib;->zze(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzhl;

    move-result-object p0

    return-object p0
.end method

.method public static zzf()Lcom/google/android/libraries/places/internal/zzhn;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzib;->zzi()Lcom/google/android/libraries/places/internal/zzip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzip;->zza()Lcom/google/android/libraries/places/internal/zzhn;

    move-result-object v0

    return-object v0
.end method

.method public static zzg()Lcom/google/android/libraries/places/internal/zzia;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzhz;->zza()Lcom/google/android/libraries/places/internal/zzib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzib;->zzh()Lcom/google/android/libraries/places/internal/zzia;

    move-result-object v0

    return-object v0
.end method

.method public static zzi()Lcom/google/android/libraries/places/internal/zzip;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzhz;->zza()Lcom/google/android/libraries/places/internal/zzib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzib;->zzj()Lcom/google/android/libraries/places/internal/zzip;

    move-result-object v0

    return-object v0
.end method

.method public static zzk()Lcom/google/android/libraries/places/internal/zzjc;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzib;->zzi()Lcom/google/android/libraries/places/internal/zzip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzip;->zzc()Lcom/google/android/libraries/places/internal/zzjc;

    move-result-object v0

    return-object v0
.end method

.method public static zzl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzhz;->zza()Lcom/google/android/libraries/places/internal/zzib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzib;->zzm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzn(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzib;->zzi()Lcom/google/android/libraries/places/internal/zzip;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzip;->zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic zzo()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzib;->zzd:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public zzc()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract zze(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzhl;
.end method

.method public abstract zzh()Lcom/google/android/libraries/places/internal/zzia;
.end method

.method public zzj()Lcom/google/android/libraries/places/internal/zzip;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzip;->zze()Lcom/google/android/libraries/places/internal/zzip;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzm()Ljava/lang/String;
.end method
