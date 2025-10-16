.class public final Lcom/google/android/libraries/places/internal/zzaed;
.super Lcom/google/android/libraries/places/internal/zzaeb;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzaeb<",
        "Lcom/google/android/libraries/places/internal/zzaec;",
        "Lcom/google/android/libraries/places/internal/zzaec;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzaeb;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaec;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzaec;->zza()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaec;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzaec;->zzb()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzabs;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzabs;->zzc:Lcom/google/android/libraries/places/internal/zzaec;

    return-object p1
.end method

.method public final bridge synthetic zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaec;->zzc()Lcom/google/android/libraries/places/internal/zzaec;

    move-result-object v0

    check-cast p2, Lcom/google/android/libraries/places/internal/zzaec;

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzaec;

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzaec;->zzd(Lcom/google/android/libraries/places/internal/zzaec;Lcom/google/android/libraries/places/internal/zzaec;)Lcom/google/android/libraries/places/internal/zzaec;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzabs;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzabs;->zzc:Lcom/google/android/libraries/places/internal/zzaec;

    return-void
.end method

.method public final bridge synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/libraries/places/internal/zzaec;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzabs;

    iput-object p2, p1, Lcom/google/android/libraries/places/internal/zzabs;->zzc:Lcom/google/android/libraries/places/internal/zzaec;

    return-void
.end method

.method public final bridge synthetic zzg(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzabg;)V
    .locals 0

    return-void
.end method
