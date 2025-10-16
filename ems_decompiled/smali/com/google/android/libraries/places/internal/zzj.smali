.class public final Lcom/google/android/libraries/places/internal/zzj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzj;->zza:Ljava/lang/String;

    return-void
.end method

.method public static varargs zza(Lcom/google/android/libraries/places/internal/zzj;[Lcom/google/android/libraries/places/internal/zzj;)Lcom/google/android/libraries/places/internal/zzj;
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzj;

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzj;->zza:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzfh;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzfh;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzi;->zza:Lcom/google/android/libraries/places/internal/zzi;

    invoke-static {p1, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/util/List;Lcom/google/android/libraries/places/internal/zzi;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzfh;->zze(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzj;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzj;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzj;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzj;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzj;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzj;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzj;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzj;->zza:Ljava/lang/String;

    return-object v0
.end method
