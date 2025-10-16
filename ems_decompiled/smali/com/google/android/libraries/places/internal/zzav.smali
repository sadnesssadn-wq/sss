.class public final Lcom/google/android/libraries/places/internal/zzav;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/api/net/PlacesClient;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzz;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzp;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzu;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzcx;

.field private final zze:Lcom/google/android/libraries/places/internal/zza;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzz;Lcom/google/android/libraries/places/internal/zzp;Lcom/google/android/libraries/places/internal/zzu;Lcom/google/android/libraries/places/internal/zzcx;Lcom/google/android/libraries/places/internal/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzav;->zza:Lcom/google/android/libraries/places/internal/zzz;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzav;->zzb:Lcom/google/android/libraries/places/internal/zzp;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzav;->zzc:Lcom/google/android/libraries/places/internal/zzu;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzav;->zzd:Lcom/google/android/libraries/places/internal/zzcx;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzav;->zze:Lcom/google/android/libraries/places/internal/zza;

    return-void
.end method

.method private static zzf(Lcom/google/android/libraries/places/internal/zzj;Lcom/google/android/libraries/places/internal/zzk;)V
    .locals 3

    const/4 p1, 0x1

    new-array v0, p1, [Lcom/google/android/libraries/places/internal/zzj;

    const-string v1, "Duration"

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzj;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzj;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzj;->zza(Lcom/google/android/libraries/places/internal/zzj;[Lcom/google/android/libraries/places/internal/zzj;)Lcom/google/android/libraries/places/internal/zzj;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzg;->zza()Lcom/google/android/libraries/places/internal/zzg;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzg;->zza()Lcom/google/android/libraries/places/internal/zzg;

    new-array p1, p1, [Lcom/google/android/libraries/places/internal/zzj;

    const-string v0, "Battery"

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzj;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzj;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzj;->zza(Lcom/google/android/libraries/places/internal/zzj;[Lcom/google/android/libraries/places/internal/zzj;)Lcom/google/android/libraries/places/internal/zzj;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzg;->zza()Lcom/google/android/libraries/places/internal/zzg;

    return-void
.end method


# virtual methods
.method public final fetchPhoto(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)Lc/d/a/b/p/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;",
            ")",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "Request must not be null."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzfm;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzg;->zza()Lcom/google/android/libraries/places/internal/zzg;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzk;->zza()Lcom/google/android/libraries/places/internal/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzav;->zza:Lcom/google/android/libraries/places/internal/zzz;

    invoke-interface {v1, p1}, Lcom/google/android/libraries/places/internal/zzz;->zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)Lc/d/a/b/p/l;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzap;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzap;-><init>(Lcom/google/android/libraries/places/internal/zzav;Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;Lcom/google/android/libraries/places/internal/zzk;)V

    invoke-virtual {v1, v2}, Lc/d/a/b/p/l;->f(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzat;->zza:Lcom/google/android/libraries/places/internal/zzat;

    invoke-virtual {p1, v0}, Lc/d/a/b/p/l;->h(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final fetchPlace(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lc/d/a/b/p/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;",
            ")",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "Request must not be null."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzfm;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzg;->zza()Lcom/google/android/libraries/places/internal/zzg;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzk;->zza()Lcom/google/android/libraries/places/internal/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzav;->zza:Lcom/google/android/libraries/places/internal/zzz;

    invoke-interface {v1, p1}, Lcom/google/android/libraries/places/internal/zzz;->zzb(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lc/d/a/b/p/l;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzaq;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzaq;-><init>(Lcom/google/android/libraries/places/internal/zzav;Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;Lcom/google/android/libraries/places/internal/zzk;)V

    invoke-virtual {v1, v2}, Lc/d/a/b/p/l;->f(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzat;->zza:Lcom/google/android/libraries/places/internal/zzat;

    invoke-virtual {p1, v0}, Lc/d/a/b/p/l;->h(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final findAutocompletePredictions(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lc/d/a/b/p/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;",
            ")",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "Request must not be null."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzfm;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzg;->zza()Lcom/google/android/libraries/places/internal/zzg;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzk;->zza()Lcom/google/android/libraries/places/internal/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzav;->zza:Lcom/google/android/libraries/places/internal/zzz;

    invoke-interface {v1, p1}, Lcom/google/android/libraries/places/internal/zzz;->zzc(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lc/d/a/b/p/l;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzar;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzar;-><init>(Lcom/google/android/libraries/places/internal/zzav;Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;Lcom/google/android/libraries/places/internal/zzk;)V

    invoke-virtual {v1, v2}, Lc/d/a/b/p/l;->f(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzat;->zza:Lcom/google/android/libraries/places/internal/zzat;

    invoke-virtual {p1, v0}, Lc/d/a/b/p/l;->h(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final findCurrentPlace(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;)Lc/d/a/b/p/l;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            ")",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "Request must not be null."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzfm;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzav;->zze:Lcom/google/android/libraries/places/internal/zza;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zza;->zza()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzg;->zza()Lcom/google/android/libraries/places/internal/zzg;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzk;->zza()Lcom/google/android/libraries/places/internal/zzk;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzav;->zzb:Lcom/google/android/libraries/places/internal/zzp;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getCancellationToken()Lc/d/a/b/p/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzp;->zza(Lc/d/a/b/p/a;)Lc/d/a/b/p/l;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzau;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzau;-><init>(Lcom/google/android/libraries/places/internal/zzav;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;)V

    invoke-virtual {v0, v1}, Lc/d/a/b/p/l;->p(Lc/d/a/b/p/k;)Lc/d/a/b/p/l;

    move-result-object v0

    new-instance v7, Lcom/google/android/libraries/places/internal/zzas;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzas;-><init>(Lcom/google/android/libraries/places/internal/zzav;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JLcom/google/android/libraries/places/internal/zzk;)V

    invoke-virtual {v0, v7}, Lc/d/a/b/p/l;->f(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzat;->zza:Lcom/google/android/libraries/places/internal/zzat;

    invoke-virtual {p1, v0}, Lc/d/a/b/p/l;->h(Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final synthetic zza(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;)Lc/d/a/b/p/l;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzav;->zza:Lcom/google/android/libraries/places/internal/zzz;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzav;->zzc:Lcom/google/android/libraries/places/internal/zzu;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzu;->zza()Lcom/google/android/libraries/places/internal/zzge;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzz;->zzd(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/zzge;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzb(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;Lcom/google/android/libraries/places/internal/zzk;Lc/d/a/b/p/l;)Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzav;->zzd:Lcom/google/android/libraries/places/internal/zzcx;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzcx;->zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)V

    const-string p1, "FetchPhoto"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzj;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzj;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzav;->zzf(Lcom/google/android/libraries/places/internal/zzj;Lcom/google/android/libraries/places/internal/zzk;)V

    invoke-virtual {p3}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;

    return-object p1
.end method

.method public final synthetic zzc(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;Lcom/google/android/libraries/places/internal/zzk;Lc/d/a/b/p/l;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzav;->zzd:Lcom/google/android/libraries/places/internal/zzcx;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzcx;->zzc(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)V

    const-string p1, "FetchPlace"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzj;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzj;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzav;->zzf(Lcom/google/android/libraries/places/internal/zzj;Lcom/google/android/libraries/places/internal/zzk;)V

    invoke-virtual {p3}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    return-object p1
.end method

.method public final synthetic zzd(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;Lcom/google/android/libraries/places/internal/zzk;Lc/d/a/b/p/l;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzav;->zzd:Lcom/google/android/libraries/places/internal/zzcx;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzcx;->zze(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)V

    const-string p1, "FindAutocompletePredictions"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzj;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzj;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzav;->zzf(Lcom/google/android/libraries/places/internal/zzj;Lcom/google/android/libraries/places/internal/zzk;)V

    invoke-virtual {p3}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    return-object p1
.end method

.method public final synthetic zze(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JLcom/google/android/libraries/places/internal/zzk;Lc/d/a/b/p/l;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .locals 8

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzav;->zze:Lcom/google/android/libraries/places/internal/zza;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zza;->zza()J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzav;->zzd:Lcom/google/android/libraries/places/internal/zzcx;

    move-object v2, p1

    move-object v3, p5

    move-wide v4, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/libraries/places/internal/zzcx;->zzg(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lc/d/a/b/p/l;JJ)V

    const-string p1, "FindCurrentPlace"

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzj;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzj;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/google/android/libraries/places/internal/zzav;->zzf(Lcom/google/android/libraries/places/internal/zzj;Lcom/google/android/libraries/places/internal/zzk;)V

    invoke-virtual {p5}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    return-object p1
.end method
