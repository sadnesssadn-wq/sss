.class public final synthetic Lcom/google/android/libraries/places/internal/zzau;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/k;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzav;

.field public final synthetic zzb:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzav;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzau;->zza:Lcom/google/android/libraries/places/internal/zzav;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzau;->zzb:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lc/d/a/b/p/l;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzau;->zza:Lcom/google/android/libraries/places/internal/zzav;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzau;->zzb:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    check-cast p1, Landroid/location/Location;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzav;->zza(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1
.end method
