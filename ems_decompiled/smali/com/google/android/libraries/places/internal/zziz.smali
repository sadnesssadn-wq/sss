.class public final Lcom/google/android/libraries/places/internal/zziz;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final zza:I

.field public final synthetic zzb:Lcom/google/android/libraries/places/internal/zzja;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzja;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zziz;->zzb:Lcom/google/android/libraries/places/internal/zzja;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zziz;->zza:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziz;->zzb:Lcom/google/android/libraries/places/internal/zzja;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzja;->zzc(Lcom/google/android/libraries/places/internal/zzja;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zziz;->zzb()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zziz;->zza()I

    move-result v2

    iget v3, p0, Lcom/google/android/libraries/places/internal/zziz;->zza:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzja;->zza()Ljava/util/Comparator;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzjc;->zzb()Ljava/util/Comparator;

    move-result-object v3

    :goto_0
    invoke-static {v0, v1, v2, p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/internal/zziy;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zziy;-><init>(Lcom/google/android/libraries/places/internal/zziz;)V

    return-object v0
.end method

.method public final size()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zziz;->zza()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zziz;->zzb()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zza()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziz;->zzb:Lcom/google/android/libraries/places/internal/zzja;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzja;->zzb(Lcom/google/android/libraries/places/internal/zzja;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zziz;->zza:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final zzb()I
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zziz;->zza:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zziz;->zzb:Lcom/google/android/libraries/places/internal/zzja;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzja;->zzb(Lcom/google/android/libraries/places/internal/zzja;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zziz;->zza:I

    aget v0, v0, v1

    return v0
.end method
