.class public final Lcom/google/android/libraries/places/internal/zzdr;
.super Lcom/google/android/libraries/places/internal/zzdy;
.source ""


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/libraries/places/internal/zzge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzge<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Lcom/google/android/libraries/places/api/model/Place;

.field private zzd:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

.field private zze:Lcom/google/android/gms/common/api/Status;

.field private zzf:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzdy;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/internal/zzdy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdr;->zzc:Lcom/google/android/libraries/places/api/model/Place;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Lcom/google/android/libraries/places/internal/zzdy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdr;->zzd:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    return-object p0
.end method

.method public final zzc(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzdy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/zzdy;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzge;->zzk(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzge;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdr;->zzb:Lcom/google/android/libraries/places/internal/zzge;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzdy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdr;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzdy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdr;->zze:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/libraries/places/internal/zzdz;
    .locals 9

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzdr;->zzf:I

    if-eqz v1, :cond_0

    new-instance v8, Lcom/google/android/libraries/places/internal/zzdt;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdr;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzdr;->zzb:Lcom/google/android/libraries/places/internal/zzge;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzdr;->zzc:Lcom/google/android/libraries/places/api/model/Place;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzdr;->zzd:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzdr;->zze:Lcom/google/android/gms/common/api/Status;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzdt;-><init>(ILjava/lang/String;Lcom/google/android/libraries/places/internal/zzge;Lcom/google/android/libraries/places/api/model/Place;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/common/api/Status;Lcom/google/android/libraries/places/internal/zzds;)V

    return-object v8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzg(I)Lcom/google/android/libraries/places/internal/zzdy;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzdr;->zzf:I

    return-object p0
.end method
