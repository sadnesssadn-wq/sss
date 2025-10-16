.class public final Lcom/google/android/libraries/places/internal/zzaeg;
.super Ljava/util/AbstractList;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/libraries/places/internal/zzach;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/libraries/places/internal/zzach;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzach;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzach;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaeg;->zza:Lcom/google/android/libraries/places/internal/zzach;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzaeg;)Lcom/google/android/libraries/places/internal/zzach;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzaeg;->zza:Lcom/google/android/libraries/places/internal/zzach;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaeg;->zza:Lcom/google/android/libraries/places/internal/zzach;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzacg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzacg;->zzg(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaef;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzaef;-><init>(Lcom/google/android/libraries/places/internal/zzaeg;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/internal/zzaee;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzaee;-><init>(Lcom/google/android/libraries/places/internal/zzaeg;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaeg;->zza:Lcom/google/android/libraries/places/internal/zzach;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzach;
    .locals 0

    return-object p0
.end method

.method public final zze(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaeg;->zza:Lcom/google/android/libraries/places/internal/zzach;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzach;->zze(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaeg;->zza:Lcom/google/android/libraries/places/internal/zzach;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzach;->zzh()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
