.class public final Lcom/google/android/libraries/places/internal/zzaan;
.super Lcom/google/android/libraries/places/internal/zzaaq;
.source ""


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzaax;

.field private zzb:I

.field private final zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzaax;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaan;->zza:Lcom/google/android/libraries/places/internal/zzaax;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzaaq;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzaan;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzaax;->zzd()I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzaan;->zzc:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzaan;->zzb:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzaan;->zzc:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzaan;->zzb:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzaan;->zzc:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzaan;->zzb:I

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzaan;->zza:Lcom/google/android/libraries/places/internal/zzaax;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaax;->zzb(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
