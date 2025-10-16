.class public final synthetic Lcom/google/android/libraries/places/internal/zzah;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/l$b;


# instance fields
.field public final synthetic zza:Lc/d/a/b/p/m;

.field public final synthetic zzb:Lcom/google/android/libraries/places/internal/zzaz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzaz;Lc/d/a/b/p/m;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzah;->zzb:Lcom/google/android/libraries/places/internal/zzaz;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzah;->zza:Lc/d/a/b/p/m;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzah;->zzb:Lcom/google/android/libraries/places/internal/zzaz;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzah;->zza:Lc/d/a/b/p/m;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzak;->zzc(Lcom/google/android/libraries/places/internal/zzaz;Lc/d/a/b/p/m;Landroid/graphics/Bitmap;)V

    return-void
.end method
