.class public final Lcom/google/android/libraries/places/internal/zzdb;
.super Lcom/google/android/libraries/places/internal/zzde;
.source ""


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/Integer;

.field private zzc:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzde;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzde;
    .locals 1

    const-string v0, "Null packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdb;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/libraries/places/internal/zzde;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdb;->zzb:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzdf;
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdb;->zza:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdb;->zzb:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzdb;->zzc:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/libraries/places/internal/zzdd;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzdb;->zzc:I

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/libraries/places/internal/zzdd;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzdc;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdb;->zza:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " packageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdb;->zzb:Ljava/lang/Integer;

    if-nez v1, :cond_3

    const-string v1, " versionCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzdb;->zzc:I

    if-nez v1, :cond_4

    const-string v1, " requestSource"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
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

.method public final zzd(I)Lcom/google/android/libraries/places/internal/zzde;
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzdb;->zzc:I

    return-object p0
.end method
