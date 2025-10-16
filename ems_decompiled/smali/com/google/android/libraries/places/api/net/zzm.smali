.class public final Lcom/google/android/libraries/places/api/net/zzm;
.super Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;
.source ""


# instance fields
.field private zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end field

.field private zzb:Lc/d/a/b/p/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCancellationToken()Lc/d/a/b/p/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzm;->zzb:Lc/d/a/b/p/a;

    return-object v0
.end method

.method public final setCancellationToken(Lc/d/a/b/p/a;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzm;->zzb:Lc/d/a/b/p/a;

    return-object p0
.end method

.method public final zza(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;"
        }
    .end annotation

    const-string v0, "Null placeFields"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzm;->zza:Ljava/util/List;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzm;->zza:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/libraries/places/api/net/zzo;

    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzm;->zzb:Lc/d/a/b/p/a;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/libraries/places/api/net/zzo;-><init>(Ljava/util/List;Lc/d/a/b/p/a;Lcom/google/android/libraries/places/api/net/zzn;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: placeFields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
