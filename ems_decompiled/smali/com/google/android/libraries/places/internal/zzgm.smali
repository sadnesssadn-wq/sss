.class public final Lcom/google/android/libraries/places/internal/zzgm;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zza(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzi;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TF;>;",
            "Lcom/google/android/libraries/places/internal/zzi;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/RandomAccess;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/libraries/places/internal/zzgj;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/libraries/places/internal/zzgj;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzi;[B)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzgl;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/libraries/places/internal/zzgl;-><init>(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzi;[B)V

    :goto_0
    return-object v0
.end method
