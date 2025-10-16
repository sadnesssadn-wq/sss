.class public abstract Lcom/google/android/libraries/places/internal/zzbr;
.super Lcom/google/android/libraries/places/internal/zzam;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeT:",
        "Ljava/lang/Object;",
        "RequestT::",
        "Lcom/google/android/libraries/places/internal/zzcz;",
        ">",
        "Lcom/google/android/libraries/places/internal/zzam<",
        "TTypeT;TRequestT;>;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/Locale;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzdl;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzcz;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzdl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestT;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/libraries/places/internal/zzdl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzam;-><init>(Lcom/google/android/libraries/places/internal/zzcz;)V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbr;->zza:Ljava/util/Locale;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbr;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzbr;->zzc:Lcom/google/android/libraries/places/internal/zzdl;

    return-void
.end method

.method public static zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final zzc()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzcd;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbr;->zze()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbr;->zzb:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzcd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbr;->zza:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzcd;->zza(Ljava/util/Locale;)Lcom/google/android/libraries/places/internal/zzcd;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbr;->zzf()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzcd;->zzb(Ljava/util/Map;)Lcom/google/android/libraries/places/internal/zzcd;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzcd;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbr;->zzc:Lcom/google/android/libraries/places/internal/zzdl;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzdl;->zza()Lcom/google/android/libraries/places/internal/zzgg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v1, Ljava/lang/String;

    const-string v2, "2.5.0"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v2, "X-Places-Android-Sdk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public abstract zze()Ljava/lang/String;
.end method

.method public abstract zzf()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
