.class public final synthetic Lcom/google/android/libraries/places/internal/zzco;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/f;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzcq;

.field public final synthetic zzb:Lc/d/a/b/p/m;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzcq;Lc/d/a/b/p/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzco;->zza:Lcom/google/android/libraries/places/internal/zzcq;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzco;->zzb:Lc/d/a/b/p/m;

    return-void
.end method


# virtual methods
.method public final onComplete(Lc/d/a/b/p/l;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzco;->zza:Lcom/google/android/libraries/places/internal/zzcq;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzco;->zzb:Lc/d/a/b/p/m;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzcq;->zzb(Lc/d/a/b/p/m;)Z

    return-void
.end method
