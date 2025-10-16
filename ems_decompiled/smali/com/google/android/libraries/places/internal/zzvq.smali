.class public final Lcom/google/android/libraries/places/internal/zzvq;
.super Lcom/google/android/libraries/places/internal/zzabp;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabp<",
        "Lcom/google/android/libraries/places/internal/zzvr;",
        "Lcom/google/android/libraries/places/internal/zzvq;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzvr;->zzb()Lcom/google/android/libraries/places/internal/zzvr;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzabp;-><init>(Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zztv;)V
    .locals 0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzvr;->zzb()Lcom/google/android/libraries/places/internal/zzvr;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzabp;-><init>(Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzvf;)Lcom/google/android/libraries/places/internal/zzvq;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzabp;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzvr;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzvr;->zzc(Lcom/google/android/libraries/places/internal/zzvr;Lcom/google/android/libraries/places/internal/zzvf;)V

    return-object p0
.end method
