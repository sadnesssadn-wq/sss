.class public final Lcom/google/android/libraries/places/internal/zzdk;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zza(Lcom/google/android/libraries/places/internal/zzwh;)Lcom/google/android/libraries/places/internal/zzjr;
    .locals 2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzjr;->zza()Lcom/google/android/libraries/places/internal/zzjp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzjp;->zzb(I)Lcom/google/android/libraries/places/internal/zzjp;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzjp;->zza(Lcom/google/android/libraries/places/internal/zzwh;)Lcom/google/android/libraries/places/internal/zzjp;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzjr;

    return-object p0
.end method

.method public static zzb(Lcom/google/android/libraries/places/internal/zzdf;)Lcom/google/android/libraries/places/internal/zzwc;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdf;->zzc()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzwh;->zza()Lcom/google/android/libraries/places/internal/zzwc;

    move-result-object v2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzjy;->zza()Lcom/google/android/libraries/places/internal/zzjt;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdf;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzjt;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzjt;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdf;->zza()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/google/android/libraries/places/internal/zzjt;->zzb(I)Lcom/google/android/libraries/places/internal/zzjt;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzjy;

    invoke-virtual {v2, p0}, Lcom/google/android/libraries/places/internal/zzwc;->zzb(Lcom/google/android/libraries/places/internal/zzjy;)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzwc;->zzf(Z)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/zzwc;->zzk(I)Lcom/google/android/libraries/places/internal/zzwc;

    const-string p0, "2.5.0"

    invoke-virtual {v2, p0}, Lcom/google/android/libraries/places/internal/zzwc;->zzi(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzwc;

    return-object v2

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method
