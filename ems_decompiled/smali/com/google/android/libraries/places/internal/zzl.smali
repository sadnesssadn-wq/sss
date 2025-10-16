.class public final synthetic Lcom/google/android/libraries/places/internal/zzl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/c;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzp;

.field public final synthetic zzb:Lc/d/a/b/p/a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzp;Lc/d/a/b/p/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzl;->zza:Lcom/google/android/libraries/places/internal/zzp;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzl;->zzb:Lc/d/a/b/p/a;

    return-void
.end method


# virtual methods
.method public final then(Lc/d/a/b/p/l;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzl;->zza:Lcom/google/android/libraries/places/internal/zzp;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzl;->zzb:Lc/d/a/b/p/a;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzp;->zzb(Lc/d/a/b/p/a;Lc/d/a/b/p/l;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1
.end method
