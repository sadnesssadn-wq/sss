.class public final Lcom/google/android/libraries/places/internal/zzxj;
.super Lcom/google/android/libraries/places/internal/zzabp;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabp<",
        "Lcom/google/android/libraries/places/internal/zzxl;",
        "Lcom/google/android/libraries/places/internal/zzxj;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzxl;->zzb()Lcom/google/android/libraries/places/internal/zzxl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzabp;-><init>(Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zztv;)V
    .locals 0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzxl;->zzb()Lcom/google/android/libraries/places/internal/zzxl;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzabp;-><init>(Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/libraries/places/internal/zzxj;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzabp;->zzx()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzxl;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzxl;->zzc(Lcom/google/android/libraries/places/internal/zzxl;I)V

    return-object p0
.end method
