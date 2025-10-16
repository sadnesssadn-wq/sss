.class public final Lcom/google/android/libraries/places/internal/zzdn;
.super Lcom/google/android/libraries/places/internal/zzdw;
.source ""


# instance fields
.field private zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

.field private zzb:Lcom/google/android/libraries/places/internal/zzge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzge<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Lcom/google/android/libraries/places/internal/zzdv;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

.field private zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

.field private zzh:Lcom/google/android/libraries/places/internal/zzge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzge<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

.field private zzj:Ljava/lang/Integer;

.field private zzk:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzdw;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzdx;Lcom/google/android/libraries/places/internal/zzdm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzdw;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzdx;->zzh()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzdn;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzdx;->zzj()Lcom/google/android/libraries/places/internal/zzge;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzb:Lcom/google/android/libraries/places/internal/zzge;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzdx;->zzf()Lcom/google/android/libraries/places/internal/zzdv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzc:Lcom/google/android/libraries/places/internal/zzdv;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzdx;->zzl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzd:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzdx;->zzk()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzdn;->zze:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzdx;->zzc()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzdx;->zzd()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzdx;->zzi()Lcom/google/android/libraries/places/internal/zzge;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzh:Lcom/google/android/libraries/places/internal/zzge;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzdx;->zze()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzdx;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzj:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzdx;->zzb()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzk:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/zzdw;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzge;->zzk(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzge;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzh:Lcom/google/android/libraries/places/internal/zzge;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object p0
.end method

.method public final zze(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 1

    const-string v0, "Null mode"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    return-object p0
.end method

.method public final zzg(Lcom/google/android/libraries/places/internal/zzdv;)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 1

    const-string v0, "Null origin"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzc:Lcom/google/android/libraries/places/internal/zzdv;

    return-object p0
.end method

.method public final zzh(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/zzdw;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzge;->zzk(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzge;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzb:Lcom/google/android/libraries/places/internal/zzge;

    return-object p0
.end method

.method public final zzi(I)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzj:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzj(I)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzk:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzk(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/internal/zzdw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-object p0
.end method

.method public final zzl()Lcom/google/android/libraries/places/internal/zzdx;
    .locals 13

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzb:Lcom/google/android/libraries/places/internal/zzge;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzc:Lcom/google/android/libraries/places/internal/zzdv;

    if-eqz v3, :cond_1

    iget-object v8, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzh:Lcom/google/android/libraries/places/internal/zzge;

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzj:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzk:Ljava/lang/Integer;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v12, Lcom/google/android/libraries/places/internal/zzdq;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzdn;->zze:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    iget-object v9, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzk:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/libraries/places/internal/zzdq;-><init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Lcom/google/android/libraries/places/internal/zzge;Lcom/google/android/libraries/places/internal/zzdv;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Lcom/google/android/libraries/places/internal/zzge;Lcom/google/android/libraries/places/api/model/TypeFilter;II)V

    return-object v12

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-nez v1, :cond_2

    const-string v1, " mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzb:Lcom/google/android/libraries/places/internal/zzge;

    if-nez v1, :cond_3

    const-string v1, " placeFields"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzc:Lcom/google/android/libraries/places/internal/zzdv;

    if-nez v1, :cond_4

    const-string v1, " origin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzh:Lcom/google/android/libraries/places/internal/zzge;

    if-nez v1, :cond_5

    const-string v1, " countries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzj:Ljava/lang/Integer;

    if-nez v1, :cond_6

    const-string v1, " primaryColor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdn;->zzk:Ljava/lang/Integer;

    if-nez v1, :cond_7

    const-string v1, " primaryColorDark"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1c

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Missing required properties:"

    invoke-static {v3, v2, v0}, Lc/a/a/a/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
