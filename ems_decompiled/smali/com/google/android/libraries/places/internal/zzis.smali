.class public final Lcom/google/android/libraries/places/internal/zzis;
.super Lcom/google/android/libraries/places/internal/zzip;
.source ""


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzip;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzit;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzis;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzis;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzis;->zza:Lcom/google/android/libraries/places/internal/zzip;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzip;-><init>()V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzir;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzir;-><init>(Lcom/google/android/libraries/places/internal/zziq;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzis;->zzb:Lcom/google/android/libraries/places/internal/zzit;

    return-void
.end method

.method public static final zzb()Lcom/google/android/libraries/places/internal/zzip;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzis;->zza:Lcom/google/android/libraries/places/internal/zzip;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "No-op Provider"

    return-object v0
.end method
