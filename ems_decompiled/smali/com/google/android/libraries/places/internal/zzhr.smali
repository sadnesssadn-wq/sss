.class public final Lcom/google/android/libraries/places/internal/zzhr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzhu<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzht<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzc:Ljava/util/Map;
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

.field private final zzd:Ljava/util/Map;
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

.field private final zze:Lcom/google/android/libraries/places/internal/zzhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzhu<",
            "Ljava/lang/Object;",
            "-TC;>;"
        }
    .end annotation
.end field

.field private zzf:Lcom/google/android/libraries/places/internal/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzht<",
            "Ljava/lang/Object;",
            "-TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzhp;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzhp;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhr;->zza:Lcom/google/android/libraries/places/internal/zzhu;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzhq;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzhq;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhr;->zzb:Lcom/google/android/libraries/places/internal/zzht;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzhu;Lcom/google/android/libraries/places/internal/zzho;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzhr;->zzc:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzhr;->zzd:Ljava/util/Map;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzhr;->zzf:Lcom/google/android/libraries/places/internal/zzht;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzhr;->zze:Lcom/google/android/libraries/places/internal/zzhu;

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/libraries/places/internal/zzhr;)Lcom/google/android/libraries/places/internal/zzht;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzhr;->zzf:Lcom/google/android/libraries/places/internal/zzht;

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/libraries/places/internal/zzhr;)Lcom/google/android/libraries/places/internal/zzhu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzhr;->zze:Lcom/google/android/libraries/places/internal/zzhu;

    return-object p0
.end method

.method public static synthetic zze(Lcom/google/android/libraries/places/internal/zzhr;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzhr;->zzc:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic zzf(Lcom/google/android/libraries/places/internal/zzhr;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzhr;->zzd:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzht;)Lcom/google/android/libraries/places/internal/zzhr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/zzht<",
            "Ljava/lang/Object;",
            "-TC;>;)",
            "Lcom/google/android/libraries/places/internal/zzhr<",
            "TC;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzhr;->zzf:Lcom/google/android/libraries/places/internal/zzht;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzhv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzhv<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/internal/zzhs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzhs;-><init>(Lcom/google/android/libraries/places/internal/zzhr;Lcom/google/android/libraries/places/internal/zzho;)V

    return-object v0
.end method

.method public final zzg(Lcom/google/android/libraries/places/internal/zzhi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/zzhi<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzje;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzhi;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/libraries/places/internal/zzhr;->zzb:Lcom/google/android/libraries/places/internal/zzht;

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzje;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzhi;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhr;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhr;->zzd:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key must be repeating"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v1, Lcom/google/android/libraries/places/internal/zzhr;->zza:Lcom/google/android/libraries/places/internal/zzhu;

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzje;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhr;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhr;->zzc:Ljava/util/Map;

    goto :goto_0
.end method
