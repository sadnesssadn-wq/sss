.class public final Lcom/google/android/libraries/places/internal/zzhy;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzhu;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzht;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzhw;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzhw;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhy;->zza:Lcom/google/android/libraries/places/internal/zzhu;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzhx;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzhx;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhy;->zzb:Lcom/google/android/libraries/places/internal/zzht;

    return-void
.end method

.method public static zza(Ljava/util/Set;)Lcom/google/android/libraries/places/internal/zzhr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/libraries/places/internal/zzhi;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/zzhr;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/libraries/places/internal/zzhy;->zza:Lcom/google/android/libraries/places/internal/zzhu;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzhr;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/libraries/places/internal/zzhr;-><init>(Lcom/google/android/libraries/places/internal/zzhu;Lcom/google/android/libraries/places/internal/zzho;)V

    sget-object v0, Lcom/google/android/libraries/places/internal/zzhy;->zzb:Lcom/google/android/libraries/places/internal/zzht;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzhr;->zza(Lcom/google/android/libraries/places/internal/zzht;)Lcom/google/android/libraries/places/internal/zzhr;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzhi;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzhr;->zzg(Lcom/google/android/libraries/places/internal/zzhi;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method
