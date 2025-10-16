.class public abstract Lcom/google/android/libraries/places/internal/zzdx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzm(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;Lcom/google/android/libraries/places/internal/zzdv;)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;",
            "Lcom/google/android/libraries/places/internal/zzdv;",
            ")",
            "Lcom/google/android/libraries/places/internal/zzdw;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/internal/zzdn;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzdn;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzdn;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzdw;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzdn;->zzf(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/internal/zzdw;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzdn;->zzh(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzdw;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzdn;->zzg(Lcom/google/android/libraries/places/internal/zzdv;)Lcom/google/android/libraries/places/internal/zzdw;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzdn;->zzi(I)Lcom/google/android/libraries/places/internal/zzdw;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzdn;->zzj(I)Lcom/google/android/libraries/places/internal/zzdw;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()I
.end method

.method public abstract zzc()Lcom/google/android/libraries/places/api/model/LocationBias;
.end method

.method public abstract zzd()Lcom/google/android/libraries/places/api/model/LocationRestriction;
.end method

.method public abstract zze()Lcom/google/android/libraries/places/api/model/TypeFilter;
.end method

.method public abstract zzf()Lcom/google/android/libraries/places/internal/zzdv;
.end method

.method public abstract zzg()Lcom/google/android/libraries/places/internal/zzdw;
.end method

.method public abstract zzh()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;
.end method

.method public abstract zzi()Lcom/google/android/libraries/places/internal/zzge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzge<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zzj()Lcom/google/android/libraries/places/internal/zzge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzge<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zzk()Ljava/lang/String;
.end method

.method public abstract zzl()Ljava/lang/String;
.end method
