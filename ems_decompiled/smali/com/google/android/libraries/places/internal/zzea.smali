.class public final Lcom/google/android/libraries/places/internal/zzea;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zza(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    :try_start_0
    const-string v0, "Intent must not be null."

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzfm;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "places/status"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/Status;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Intent expected to contain a Status, but doesn\'t."

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzfm;->zze(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static zzb(Landroid/content/Intent;)Lcom/google/android/libraries/places/api/model/Place;
    .locals 2

    :try_start_0
    const-string v0, "Intent must not be null."

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzfm;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "places/selected_place"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/api/model/Place;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Intent expected to contain a Place, but doesn\'t."

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzfm;->zze(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw p0
.end method
