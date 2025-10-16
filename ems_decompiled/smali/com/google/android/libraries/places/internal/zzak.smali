.class public final Lcom/google/android/libraries/places/internal/zzak;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Lc/a/b/k;


# direct methods
.method public constructor <init>(Lc/a/b/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzak;->zza:Lc/a/b/k;

    return-void
.end method

.method public static synthetic zza(Lc/d/a/b/p/m;Lcom/android/volley/VolleyError;)V
    .locals 3

    :try_start_0
    iget-object v0, p1, Lcom/android/volley/VolleyError;->c:Lc/a/b/i;

    if-eqz v0, :cond_2

    iget v0, v0, Lc/a/b/i;->a:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_1

    const/16 v1, 0x193

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lc/d/a/b/e/m/b;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x2333

    const-string v2, "The provided API key is invalid."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lc/d/a/b/e/m/b;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x2334

    const-string v2, "The provided parameters are invalid (did you include a max width or height?)."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzy;->zza(Lcom/android/volley/VolleyError;)Lc/d/a/b/e/m/b;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_2
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static synthetic zzc(Lcom/google/android/libraries/places/internal/zzaz;Lc/d/a/b/p/m;Landroid/graphics/Bitmap;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/zzaz;->zzb(Landroid/graphics/Bitmap;)Lcom/google/android/libraries/places/internal/zzaz;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzaz;->zza()Lcom/google/android/libraries/places/internal/zzbb;

    move-result-object p0

    invoke-virtual {p1, p0}, Lc/d/a/b/p/m;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/libraries/places/internal/zzam;Lcom/google/android/libraries/places/internal/zzaz;)Lc/d/a/b/p/l;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HttpPhotoResponseT:",
            "Lcom/google/android/libraries/places/internal/zzan;",
            ">(",
            "Lcom/google/android/libraries/places/internal/zzam;",
            "Lcom/google/android/libraries/places/internal/zzaz;",
            ")",
            "Lc/d/a/b/p/l<",
            "THttpPhotoResponseT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzam;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzam;->zzd()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzam;->zza()Lc/d/a/b/p/a;

    move-result-object p1

    new-instance v0, Lc/d/a/b/p/m;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Lc/d/a/b/p/m;-><init>(Lc/d/a/b/p/a;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lc/d/a/b/p/m;-><init>()V

    :goto_0
    move-object v10, v0

    new-instance v11, Lcom/google/android/libraries/places/internal/zzaj;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzah;

    const/4 v0, 0x0

    invoke-direct {v3, p2, v10, v0}, Lcom/google/android/libraries/places/internal/zzah;-><init>(Lcom/google/android/libraries/places/internal/zzaz;Lc/d/a/b/p/m;[B)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    new-instance v8, Lcom/google/android/libraries/places/internal/zzag;

    invoke-direct {v8, v10}, Lcom/google/android/libraries/places/internal/zzag;-><init>(Lc/d/a/b/p/m;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/libraries/places/internal/zzaj;-><init>(Lcom/google/android/libraries/places/internal/zzak;Ljava/lang/String;Lc/a/b/l$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lc/a/b/l$a;Ljava/util/Map;)V

    if-eqz p1, :cond_1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzai;

    invoke-direct {p2, v11}, Lcom/google/android/libraries/places/internal/zzai;-><init>(Lc/a/b/q/g;)V

    check-cast p1, Lc/d/a/b/p/p;

    .line 1
    iget-object p1, p1, Lc/d/a/b/p/p;->a:Lc/d/a/b/p/j0;

    new-instance v0, Lc/d/a/b/p/q;

    invoke-direct {v0, p2}, Lc/d/a/b/p/q;-><init>(Lc/d/a/b/p/i;)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lc/d/a/b/p/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v0}, Lc/d/a/b/p/j0;->e(Ljava/util/concurrent/Executor;Lc/d/a/b/p/h;)Lc/d/a/b/p/l;

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzak;->zza:Lc/a/b/k;

    invoke-virtual {p1, v11}, Lc/a/b/k;->a(Lc/a/b/j;)Lc/a/b/j;

    .line 4
    iget-object p1, v10, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    return-object p1
.end method
