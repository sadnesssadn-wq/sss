.class public abstract Lcom/google/android/libraries/places/internal/zzdw;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/zzdw;"
        }
    .end annotation
.end method

.method public abstract zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzdw;
.end method

.method public abstract zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzdw;
.end method

.method public abstract zzd(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/internal/zzdw;
.end method

.method public abstract zze(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/internal/zzdw;
.end method

.method public abstract zzf(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/internal/zzdw;
.end method

.method public abstract zzg(Lcom/google/android/libraries/places/internal/zzdv;)Lcom/google/android/libraries/places/internal/zzdw;
.end method

.method public abstract zzh(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/zzdw;"
        }
    .end annotation
.end method

.method public abstract zzi(I)Lcom/google/android/libraries/places/internal/zzdw;
.end method

.method public abstract zzj(I)Lcom/google/android/libraries/places/internal/zzdw;
.end method

.method public abstract zzk(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/internal/zzdw;
.end method

.method public abstract zzl()Lcom/google/android/libraries/places/internal/zzdx;
.end method

.method public final zzm(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzge;->zzm()Lcom/google/android/libraries/places/internal/zzge;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzge;->zzn(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzge;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzdw;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzdw;

    move-result-object p1

    return-object p1
.end method
