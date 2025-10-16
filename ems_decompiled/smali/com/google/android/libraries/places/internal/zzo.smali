.class public final Lcom/google/android/libraries/places/internal/zzo;
.super Lc/d/a/b/j/b;
.source ""


# instance fields
.field public final synthetic zza:Lc/d/a/b/p/m;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzp;Lc/d/a/b/p/m;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzo;->zza:Lc/d/a/b/p/m;

    invoke-direct {p0}, Lc/d/a/b/j/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Lc/d/a/b/j/b;->onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V

    .line 1
    iget p1, p1, Lcom/google/android/gms/location/LocationAvailability;->f:I

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzo;->zza:Lc/d/a/b/p/m;

    new-instance v0, Lc/d/a/b/e/m/b;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    const-string v3, "Location unavailable."

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Lc/d/a/b/j/b;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzo;->zza:Lc/d/a/b/p/m;

    .line 1
    iget-object v1, p1, Lcom/google/android/gms/location/LocationResult;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/location/LocationResult;->c:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Lc/d/a/b/p/m;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method
