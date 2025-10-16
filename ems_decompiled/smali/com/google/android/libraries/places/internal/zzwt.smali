.class public final Lcom/google/android/libraries/places/internal/zzwt;
.super Lcom/google/android/libraries/places/internal/zzabp;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabp<",
        "Lcom/google/android/libraries/places/internal/zzwv;",
        "Lcom/google/android/libraries/places/internal/zzwt;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzwv;->zzb()Lcom/google/android/libraries/places/internal/zzwv;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzabp;-><init>(Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zztv;)V
    .locals 0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzwv;->zzb()Lcom/google/android/libraries/places/internal/zzwv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzabp;-><init>(Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/libraries/places/internal/zzwt;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzabp;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzwv;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzwv;->zzc(Lcom/google/android/libraries/places/internal/zzwv;I)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzxn;)Lcom/google/android/libraries/places/internal/zzwt;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzabp;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzwv;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzwv;->zze(Lcom/google/android/libraries/places/internal/zzwv;Lcom/google/android/libraries/places/internal/zzxn;)V

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/libraries/places/internal/zzwt;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzabp;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzwv;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzwv;->zzf(Lcom/google/android/libraries/places/internal/zzwv;I)V

    return-object p0
.end method
