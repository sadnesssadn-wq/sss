.class public final Lcom/google/android/libraries/places/internal/zzgp;
.super Lcom/google/android/libraries/places/internal/zzgq;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/android/libraries/places/internal/zzgq;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/libraries/places/internal/zzgp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzgp<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Lcom/google/android/libraries/places/internal/zzfz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzfz<",
            "TC;>;"
        }
    .end annotation
.end field

.field public final zzb:Lcom/google/android/libraries/places/internal/zzfz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzfz<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzgp;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzfx;->zzb()Lcom/google/android/libraries/places/internal/zzfx;

    move-result-object v1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzfv;->zzb()Lcom/google/android/libraries/places/internal/zzfv;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgp;-><init>(Lcom/google/android/libraries/places/internal/zzfz;Lcom/google/android/libraries/places/internal/zzfz;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzgp;->zzc:Lcom/google/android/libraries/places/internal/zzgp;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzfz;Lcom/google/android/libraries/places/internal/zzfz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/zzfz<",
            "TC;>;",
            "Lcom/google/android/libraries/places/internal/zzfz<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzgq;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzgp;->zza:Lcom/google/android/libraries/places/internal/zzfz;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzgp;->zzb:Lcom/google/android/libraries/places/internal/zzfz;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzfz;->zza(Lcom/google/android/libraries/places/internal/zzfz;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzfv;->zzb()Lcom/google/android/libraries/places/internal/zzfv;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzfx;->zzb()Lcom/google/android/libraries/places/internal/zzfx;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzgp;->zzf(Lcom/google/android/libraries/places/internal/zzfz;Lcom/google/android/libraries/places/internal/zzfz;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid range: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zza(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static zzb(Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzgp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;)",
            "Lcom/google/android/libraries/places/internal/zzgp<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/internal/zzfy;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzfy;-><init>(Ljava/lang/Comparable;)V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzfv;->zzb()Lcom/google/android/libraries/places/internal/zzfv;

    move-result-object p0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzgp;

    invoke-direct {v1, v0, p0}, Lcom/google/android/libraries/places/internal/zzgp;-><init>(Lcom/google/android/libraries/places/internal/zzfz;Lcom/google/android/libraries/places/internal/zzfz;)V

    return-object v1
.end method

.method public static zzc(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzgp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/android/libraries/places/internal/zzgp<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/internal/zzfy;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzfy;-><init>(Ljava/lang/Comparable;)V

    new-instance p0, Lcom/google/android/libraries/places/internal/zzfw;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzfw;-><init>(Ljava/lang/Comparable;)V

    new-instance p1, Lcom/google/android/libraries/places/internal/zzgp;

    invoke-direct {p1, v0, p0}, Lcom/google/android/libraries/places/internal/zzgp;-><init>(Lcom/google/android/libraries/places/internal/zzfz;Lcom/google/android/libraries/places/internal/zzfz;)V

    return-object p1
.end method

.method public static zzd(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzgp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Lcom/google/android/libraries/places/internal/zzgp<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/internal/zzfy;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzfy;-><init>(Ljava/lang/Comparable;)V

    new-instance p0, Lcom/google/android/libraries/places/internal/zzfy;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzfy;-><init>(Ljava/lang/Comparable;)V

    new-instance p1, Lcom/google/android/libraries/places/internal/zzgp;

    invoke-direct {p1, v0, p0}, Lcom/google/android/libraries/places/internal/zzgp;-><init>(Lcom/google/android/libraries/places/internal/zzfz;Lcom/google/android/libraries/places/internal/zzfz;)V

    return-object p1
.end method

.method private static zzf(Lcom/google/android/libraries/places/internal/zzfz;Lcom/google/android/libraries/places/internal/zzfz;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/zzfz<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/zzfz<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzfz;->zzc(Ljava/lang/StringBuilder;)V

    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzfz;->zzd(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzgp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzgp;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgp;->zza:Lcom/google/android/libraries/places/internal/zzfz;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzgp;->zza:Lcom/google/android/libraries/places/internal/zzfz;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzfz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgp;->zzb:Lcom/google/android/libraries/places/internal/zzfz;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzgp;->zzb:Lcom/google/android/libraries/places/internal/zzfz;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzfz;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgp;->zza:Lcom/google/android/libraries/places/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzfz;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzgp;->zzb:Lcom/google/android/libraries/places/internal/zzfz;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzfz;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgp;->zza:Lcom/google/android/libraries/places/internal/zzfz;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzgp;->zzb:Lcom/google/android/libraries/places/internal/zzfz;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzgp;->zzf(Lcom/google/android/libraries/places/internal/zzfz;Lcom/google/android/libraries/places/internal/zzfz;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgp;->zza:Lcom/google/android/libraries/places/internal/zzfz;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzfz;->zze(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgp;->zzb:Lcom/google/android/libraries/places/internal/zzfz;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzfz;->zze(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
