.class public final Lcom/google/android/libraries/places/internal/zzhs;
.super Lcom/google/android/libraries/places/internal/zzhv;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/zzhv<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/libraries/places/internal/zzhi<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/zzhu<",
            "*-TC;>;>;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/libraries/places/internal/zzhi<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/zzht<",
            "*-TC;>;>;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/libraries/places/internal/zzhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzhu<",
            "Ljava/lang/Object;",
            "-TC;>;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/libraries/places/internal/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzht<",
            "Ljava/lang/Object;",
            "-TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzhr;Lcom/google/android/libraries/places/internal/zzho;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzhv;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzhs;->zza:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzhs;->zzb:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzhr;->zze(Lcom/google/android/libraries/places/internal/zzhr;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzhr;->zzf(Lcom/google/android/libraries/places/internal/zzhr;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzhr;->zzc(Lcom/google/android/libraries/places/internal/zzhr;)Lcom/google/android/libraries/places/internal/zzhu;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzhs;->zzc:Lcom/google/android/libraries/places/internal/zzhu;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzhr;->zzb(Lcom/google/android/libraries/places/internal/zzhr;)Lcom/google/android/libraries/places/internal/zzht;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzhs;->zzd:Lcom/google/android/libraries/places/internal/zzht;

    return-void
.end method
