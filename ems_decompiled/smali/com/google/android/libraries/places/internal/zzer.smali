.class public final Lcom/google/android/libraries/places/internal/zzer;
.super Lb/o/w;
.source ""


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzee;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzeu;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzev;

.field private final zzd:Landroid/os/Handler;

.field private zze:Ljava/lang/Runnable;

.field private final zzf:Lb/o/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/o/o<",
            "Lcom/google/android/libraries/places/internal/zzdz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzee;Lcom/google/android/libraries/places/internal/zzeu;Lcom/google/android/libraries/places/internal/zzev;Lcom/google/android/libraries/places/internal/zzeq;)V
    .locals 1

    invoke-direct {p0}, Lb/o/w;-><init>()V

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzer;->zzd:Landroid/os/Handler;

    new-instance p4, Lb/o/o;

    invoke-direct {p4}, Lb/o/o;-><init>()V

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzer;->zzf:Lb/o/o;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzer;->zza:Lcom/google/android/libraries/places/internal/zzee;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzer;->zzc:Lcom/google/android/libraries/places/internal/zzev;

    return-void
.end method

.method private static zzn(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    instance-of v0, p0, Lc/d/a/b/e/m/b;

    if-eqz v0, :cond_0

    check-cast p0, Lc/d/a/b/e/m/b;

    .line 1
    iget-object p0, p0, Lc/d/a/b/e/m/b;->c:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private final zzo(Lcom/google/android/libraries/places/internal/zzdz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzf:Lb/o/o;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzf:Lb/o/o;

    invoke-virtual {v0, p1}, Lb/o/o;->i(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static zzp(Lcom/google/android/gms/common/api/Status;)Z
    .locals 3

    .line 1
    iget p0, p0, Lcom/google/android/gms/common/api/Status;->d:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-ne p0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    const/16 v2, 0x2334

    if-eq p0, v2, :cond_2

    const/16 v2, 0x2333

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public final onCleared()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zza:Lcom/google/android/libraries/places/internal/zzee;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzee;->zzc()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzd:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzer;->zze:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzeu;->zzo()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzc:Lcom/google/android/libraries/places/internal/zzev;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzev;->zza(Lcom/google/android/libraries/places/internal/zzeu;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/google/android/libraries/places/internal/zzdz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzf:Lb/o/o;

    return-object v0
.end method

.method public final synthetic zzb(Ljava/lang/String;Lc/d/a/b/p/l;)V
    .locals 1

    invoke-virtual {p2}, Lc/d/a/b/p/l;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lc/d/a/b/p/l;->j()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzeu;->zzp()V

    invoke-virtual {p2}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->getAutocompletePredictions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdz;->zzh(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzer;->zzo(Lcom/google/android/libraries/places/internal/zzdz;)V

    return-void

    :cond_1
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzdz;->zzj(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzeu;->zzr()V

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzer;->zzn(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzer;->zzp(Lcom/google/android/gms/common/api/Status;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzdz;->zzq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzdz;->zzi(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p1

    goto :goto_0
.end method

.method public final synthetic zzc(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lc/d/a/b/p/l;)V
    .locals 1

    invoke-virtual {p2}, Lc/d/a/b/p/l;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lc/d/a/b/p/l;->j()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzq()V

    invoke-virtual {p2}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;->getPlace()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdz;->zzn(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzer;->zzo(Lcom/google/android/libraries/places/internal/zzdz;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzeu;->zzs()V

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzer;->zzn(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzer;->zzp(Lcom/google/android/gms/common/api/Status;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzdz;->zzq(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzdz;->zzm(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p1

    goto :goto_0
.end method

.method public final synthetic zzd(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zza:Lcom/google/android/libraries/places/internal/zzee;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzee;->zzb(Ljava/lang/String;)Lc/d/a/b/p/l;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzen;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzen;-><init>(Lcom/google/android/libraries/places/internal/zzer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/d/a/b/p/l;->b(Lc/d/a/b/p/f;)Lc/d/a/b/p/l;

    return-void
.end method

.method public final zze(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzer;->zzf:Lb/o/o;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzdz;->zzo()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/o/o;->i(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzf(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzeu;->zzu(I)V

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzer;->zza:Lcom/google/android/libraries/places/internal/zzee;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzee;->zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Lc/d/a/b/p/l;

    move-result-object p2

    invoke-virtual {p2}, Lc/d/a/b/p/l;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzdz;->zzg()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzer;->zzo(Lcom/google/android/libraries/places/internal/zzdz;)V

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzem;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzem;-><init>(Lcom/google/android/libraries/places/internal/zzer;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)V

    invoke-virtual {p2, v0}, Lc/d/a/b/p/l;->b(Lc/d/a/b/p/f;)Lc/d/a/b/p/l;

    return-void
.end method

.method public final zzg()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzeu;->zzv()V

    return-void
.end method

.method public final zzh()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzeu;->zzl()V

    return-void
.end method

.method public final zzi()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzeu;->zzm()V

    return-void
.end method

.method public final zzj()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzeu;->zzn()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzdz;->zzl()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzer;->zzo(Lcom/google/android/libraries/places/internal/zzdz;)V

    return-void
.end method

.method public final zzk()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzeu;->zzw()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzer;->zzm(Ljava/lang/String;)V

    return-void
.end method

.method public final zzl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zza:Lcom/google/android/libraries/places/internal/zzee;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzee;->zzc()V

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzer;->zzm(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzdz;->zzp()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzer;->zzo(Lcom/google/android/libraries/places/internal/zzdz;)V

    return-void
.end method

.method public final zzm(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzb:Lcom/google/android/libraries/places/internal/zzeu;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzt(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zzd:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzer;->zze:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzer;->zza:Lcom/google/android/libraries/places/internal/zzee;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzee;->zzc()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzdz;->zzk()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzer;->zzo(Lcom/google/android/libraries/places/internal/zzdz;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzeo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzeo;-><init>(Lcom/google/android/libraries/places/internal/zzer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzer;->zze:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzer;->zzd:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzdz;->zzg()Lcom/google/android/libraries/places/internal/zzdz;

    move-result-object p1

    goto :goto_0
.end method
