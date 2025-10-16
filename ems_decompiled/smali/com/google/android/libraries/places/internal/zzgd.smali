.class public final Lcom/google/android/libraries/places/internal/zzgd;
.super Lcom/google/android/libraries/places/internal/zzge;
.source ""


# instance fields
.field public final transient zza:I

.field public final transient zzb:I

.field public final synthetic zzc:Lcom/google/android/libraries/places/internal/zzge;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzge;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzgd;->zzc:Lcom/google/android/libraries/places/internal/zzge;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzge;-><init>()V

    iput p2, p0, Lcom/google/android/libraries/places/internal/zzgd;->zza:I

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzgd;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzgd;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzfm;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgd;->zzc:Lcom/google/android/libraries/places/internal/zzge;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzgd;->zza:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzgd;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzgd;->zzh(II)Lcom/google/android/libraries/places/internal/zzge;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgd;->zzc:Lcom/google/android/libraries/places/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzgb;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzgd;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzgd;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzc()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgd;->zzc:Lcom/google/android/libraries/places/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzgb;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzgd;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzg()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgd;->zzc:Lcom/google/android/libraries/places/internal/zzge;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzgb;->zzg()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzh(II)Lcom/google/android/libraries/places/internal/zzge;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/libraries/places/internal/zzge;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzgd;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzfm;->zzg(III)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgd;->zzc:Lcom/google/android/libraries/places/internal/zzge;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzgd;->zza:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzge;->zzh(II)Lcom/google/android/libraries/places/internal/zzge;

    move-result-object p1

    return-object p1
.end method
