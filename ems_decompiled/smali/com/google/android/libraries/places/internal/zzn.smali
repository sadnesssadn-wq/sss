.class public final synthetic Lcom/google/android/libraries/places/internal/zzn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/f;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzp;

.field public final synthetic zzb:Lc/d/a/b/j/b;

.field public final synthetic zzc:Lc/d/a/b/p/m;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzp;Lc/d/a/b/j/b;Lc/d/a/b/p/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzn;->zza:Lcom/google/android/libraries/places/internal/zzp;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzn;->zzb:Lc/d/a/b/j/b;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzn;->zzc:Lc/d/a/b/p/m;

    return-void
.end method


# virtual methods
.method public final onComplete(Lc/d/a/b/p/l;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzn;->zza:Lcom/google/android/libraries/places/internal/zzp;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzn;->zzb:Lc/d/a/b/j/b;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzn;->zzc:Lc/d/a/b/p/m;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/zzp;->zzc(Lc/d/a/b/j/b;Lc/d/a/b/p/m;Lc/d/a/b/p/l;)V

    return-void
.end method
