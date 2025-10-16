.class public abstract Lcom/google/android/libraries/places/internal/zzdz;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzg()Lcom/google/android/libraries/places/internal/zzdz;
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdz;->zzr(I)Lcom/google/android/libraries/places/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzdy;->zzf()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object v0

    return-object v0
.end method

.method public static zzh(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzdz;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdz;->zzr(I)Lcom/google/android/libraries/places/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzdy;->zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzdy;->zzf()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p0

    return-object p0
.end method

.method public static zzi(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzdz;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdz;->zzr(I)Lcom/google/android/libraries/places/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzdy;->zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzdy;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzdy;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzdy;->zzf()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p0

    return-object p0
.end method

.method public static zzj(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzdz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/zzdz;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdz;->zzr(I)Lcom/google/android/libraries/places/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzdy;->zzc(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzdy;->zzf()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p0

    return-object p0
.end method

.method public static zzk()Lcom/google/android/libraries/places/internal/zzdz;
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdz;->zzr(I)Lcom/google/android/libraries/places/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzdy;->zzf()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object v0

    return-object v0
.end method

.method public static zzl()Lcom/google/android/libraries/places/internal/zzdz;
    .locals 4

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdz;->zzr(I)Lcom/google/android/libraries/places/internal/zzdy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 1
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzdy;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzdy;->zzf()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object v0

    return-object v0
.end method

.method public static zzm(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzdz;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdz;->zzr(I)Lcom/google/android/libraries/places/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzdy;->zzb(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Lcom/google/android/libraries/places/internal/zzdy;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzdy;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzdy;->zzf()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p0

    return-object p0
.end method

.method public static zzn(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/internal/zzdz;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdz;->zzr(I)Lcom/google/android/libraries/places/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzdy;->zza(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzdy;->zzf()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p0

    return-object p0
.end method

.method public static zzo()Lcom/google/android/libraries/places/internal/zzdz;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdz;->zzr(I)Lcom/google/android/libraries/places/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzdy;->zzf()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object v0

    return-object v0
.end method

.method public static zzp()Lcom/google/android/libraries/places/internal/zzdz;
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdz;->zzr(I)Lcom/google/android/libraries/places/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzdy;->zzf()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object v0

    return-object v0
.end method

.method public static zzq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzdz;
    .locals 1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdz;->zzr(I)Lcom/google/android/libraries/places/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzdy;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzdy;->zzf()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p0

    return-object p0
.end method

.method private static zzr(I)Lcom/google/android/libraries/places/internal/zzdy;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzdr;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzdr;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzdr;->zzg(I)Lcom/google/android/libraries/places/internal/zzdy;

    return-object v0
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/gms/common/api/Status;
.end method

.method public abstract zzb()Lcom/google/android/libraries/places/api/model/AutocompletePrediction;
.end method

.method public abstract zzc()Lcom/google/android/libraries/places/api/model/Place;
.end method

.method public abstract zzd()Lcom/google/android/libraries/places/internal/zzge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzge<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zze()Ljava/lang/String;
.end method

.method public abstract zzf()I
.end method
