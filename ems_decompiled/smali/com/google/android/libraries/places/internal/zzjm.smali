.class public Lcom/google/android/libraries/places/internal/zzjm;
.super Lcom/google/android/libraries/places/internal/zzjn;
.source ""


# instance fields
.field public final zzb:Lcom/google/android/libraries/places/internal/zzjj;

.field public final zzc:Ljava/lang/Character;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzjj;Ljava/lang/Character;)V
    .locals 3
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzjn;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/libraries/places/internal/zzjj;->zzb(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzc:Ljava/lang/Character;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "Padding character %s was already in alphabet"

    invoke-static {p2, v1}, Lcom/google/android/libraries/places/internal/zzfr;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .param p3    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/libraries/places/internal/zzjj;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzjj;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/android/libraries/places/internal/zzjm;-><init>(Lcom/google/android/libraries/places/internal/zzjj;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzjm;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzjm;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzjj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzc:Ljava/lang/Character;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzjm;->zzc:Ljava/lang/Character;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzfi;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjj;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzc:Ljava/lang/Character;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzjj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    iget v1, v1, Lcom/google/android/libraries/places/internal/zzjj;->zzb:I

    const/16 v2, 0x8

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzc:Ljava/lang/Character;

    if-nez v1, :cond_0

    const-string v1, ".omitPadding()"

    goto :goto_0

    :cond_0
    const-string v1, ".withPadChar(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzc:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/lang/Appendable;[BII)V
    .locals 2

    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {v0, p4, p3}, Lcom/google/android/libraries/places/internal/zzfm;->zzg(III)V

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    iget p3, p3, Lcom/google/android/libraries/places/internal/zzjj;->zzd:I

    sub-int v1, p4, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/libraries/places/internal/zzjm;->zzc(Ljava/lang/Appendable;[BII)V

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    iget p3, p3, Lcom/google/android/libraries/places/internal/zzjj;->zzd:I

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb(I)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    iget v1, v0, Lcom/google/android/libraries/places/internal/zzjj;->zzc:I

    iget v0, v0, Lcom/google/android/libraries/places/internal/zzjj;->zzd:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v0, v2}, Lcom/google/android/libraries/places/internal/zzze;->zza(IILjava/math/RoundingMode;)I

    move-result p1

    mul-int p1, p1, v1

    return p1
.end method

.method public final zzc(Ljava/lang/Appendable;[BII)V
    .locals 7

    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/android/libraries/places/internal/zzfm;->zzg(III)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    iget v0, v0, Lcom/google/android/libraries/places/internal/zzjj;->zzd:I

    const/4 v1, 0x0

    if-gt p4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzfm;->zzd(Z)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v0, p4, :cond_1

    add-int v5, p3, v0

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v2, v5

    shl-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p4, 0x1

    mul-int/lit8 p2, p2, 0x8

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    iget p3, p3, Lcom/google/android/libraries/places/internal/zzjj;->zzb:I

    sub-int/2addr p2, p3

    :goto_2
    mul-int/lit8 p3, p4, 0x8

    if-ge v1, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    sub-int v0, p2, v1

    ushr-long v5, v2, v0

    long-to-int v0, v5

    iget v5, p3, Lcom/google/android/libraries/places/internal/zzjj;->zza:I

    and-int/2addr v0, v5

    invoke-virtual {p3, v0}, Lcom/google/android/libraries/places/internal/zzjj;->zza(I)C

    move-result p3

    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    iget p3, p3, Lcom/google/android/libraries/places/internal/zzjj;->zzb:I

    add-int/2addr v1, p3

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzc:Ljava/lang/Character;

    if-eqz p2, :cond_3

    :goto_3
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    iget p2, p2, Lcom/google/android/libraries/places/internal/zzjj;->zzd:I

    mul-int/lit8 p2, p2, 0x8

    if-ge v1, p2, :cond_3

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzc:Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzjm;->zzb:Lcom/google/android/libraries/places/internal/zzjj;

    iget p2, p2, Lcom/google/android/libraries/places/internal/zzjj;->zzb:I

    add-int/2addr v1, p2

    goto :goto_3

    :cond_3
    return-void
.end method
