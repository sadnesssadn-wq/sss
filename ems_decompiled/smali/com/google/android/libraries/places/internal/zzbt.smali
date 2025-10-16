.class public final synthetic Lcom/google/android/libraries/places/internal/zzbt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/c;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzcb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzcb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbt;->zza:Lcom/google/android/libraries/places/internal/zzcb;

    return-void
.end method


# virtual methods
.method public final then(Lc/d/a/b/p/l;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbb;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbb;->zza:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;->newInstance(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;

    move-result-object p1

    return-object p1
.end method
