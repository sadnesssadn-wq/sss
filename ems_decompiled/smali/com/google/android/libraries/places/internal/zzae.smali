.class public final Lcom/google/android/libraries/places/internal/zzae;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Lc/a/b/k;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbq;


# direct methods
.method public constructor <init>(Lc/a/b/k;Lcom/google/android/libraries/places/internal/zzbq;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzae;->zza:Lc/a/b/k;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzae;->zzb:Lcom/google/android/libraries/places/internal/zzbq;

    return-void
.end method

.method public static synthetic zzc(Lc/d/a/b/p/m;Lcom/android/volley/VolleyError;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzy;->zza(Lcom/android/volley/VolleyError;)Lc/d/a/b/e/m/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z
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
.method public final zza(Lcom/google/android/libraries/places/internal/zzam;Ljava/lang/Class;)Lc/d/a/b/p/l;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HttpJsonResponseT:",
            "Lcom/google/android/libraries/places/internal/zzan;",
            ">(",
            "Lcom/google/android/libraries/places/internal/zzam<",
            "Ljava/lang/Object;",
            "+",
            "Lcom/google/android/libraries/places/internal/zzcz;",
            ">;",
            "Ljava/lang/Class<",
            "THttpJsonResponseT;>;)",
            "Lc/d/a/b/p/l<",
            "THttpJsonResponseT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzam;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzam;->zzd()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzam;->zza()Lc/d/a/b/p/a;

    move-result-object p1

    new-instance v0, Lc/d/a/b/p/m;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Lc/d/a/b/p/m;-><init>(Lc/d/a/b/p/a;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lc/d/a/b/p/m;-><init>()V

    :goto_0
    move-object v8, v0

    new-instance v9, Lcom/google/android/libraries/places/internal/zzad;

    new-instance v5, Lcom/google/android/libraries/places/internal/zzab;

    invoke-direct {v5, p0, p2, v8}, Lcom/google/android/libraries/places/internal/zzab;-><init>(Lcom/google/android/libraries/places/internal/zzae;Ljava/lang/Class;Lc/d/a/b/p/m;)V

    new-instance v6, Lcom/google/android/libraries/places/internal/zzaa;

    invoke-direct {v6, v8}, Lcom/google/android/libraries/places/internal/zzaa;-><init>(Lc/d/a/b/p/m;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzad;-><init>(Lcom/google/android/libraries/places/internal/zzae;ILjava/lang/String;Lorg/json/JSONObject;Lc/a/b/l$b;Lc/a/b/l$a;Ljava/util/Map;)V

    if-eqz p1, :cond_1

    new-instance p2, Lcom/google/android/libraries/places/internal/zzac;

    invoke-direct {p2, v9}, Lcom/google/android/libraries/places/internal/zzac;-><init>(Lc/a/b/q/h;)V

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
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzae;->zza:Lc/a/b/k;

    invoke-virtual {p1, v9}, Lc/a/b/k;->a(Lc/a/b/j;)Lc/a/b/j;

    .line 4
    iget-object p1, v8, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    return-object p1
.end method

.method public final synthetic zzb(Ljava/lang/Class;Lc/d/a/b/p/m;Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzae;->zzb:Lcom/google/android/libraries/places/internal/zzbq;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3, p1}, Lcom/google/android/libraries/places/internal/zzbq;->zza(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzan;

    invoke-virtual {p2, p1}, Lc/d/a/b/p/m;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/libraries/places/internal/zzao; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :try_start_1
    new-instance p3, Lc/d/a/b/e/m/b;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p3, v0}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p2, p3}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw p1
.end method
