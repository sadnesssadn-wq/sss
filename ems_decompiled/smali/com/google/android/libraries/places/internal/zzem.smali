.class public final synthetic Lcom/google/android/libraries/places/internal/zzem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/f;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzer;

.field public final synthetic zzb:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzer;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzem;->zza:Lcom/google/android/libraries/places/internal/zzer;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzem;->zzb:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    return-void
.end method


# virtual methods
.method public final onComplete(Lc/d/a/b/p/l;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzem;->zza:Lcom/google/android/libraries/places/internal/zzer;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzem;->zzb:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzer;->zzc(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lc/d/a/b/p/l;)V

    return-void
.end method
