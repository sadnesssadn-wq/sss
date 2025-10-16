.class public final Lcom/google/android/libraries/places/internal/zzjk;
.super Lcom/google/android/libraries/places/internal/zzjm;
.source ""


# instance fields
.field public final zza:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance p1, Lcom/google/android/libraries/places/internal/zzjj;

    const-string p2, "0123456789ABCDEF"

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const-string v0, "base16()"

    invoke-direct {p1, v0, p2}, Lcom/google/android/libraries/places/internal/zzjj;-><init>(Ljava/lang/String;[C)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzjm;-><init>(Lcom/google/android/libraries/places/internal/zzjj;Ljava/lang/Character;)V

    const/16 p2, 0x200

    new-array p2, p2, [C

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzjk;->zza:[C

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzjj;->zzc(Lcom/google/android/libraries/places/internal/zzjj;)[C

    move-result-object p2

    array-length p2, p2

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzfm;->zzd(Z)V

    :goto_1
    const/16 p2, 0x100

    if-ge v0, p2, :cond_1

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzjk;->zza:[C

    ushr-int/lit8 v1, v0, 0x4

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzjj;->zza(I)C

    move-result v1

    aput-char v1, p2, v0

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzjk;->zza:[C

    or-int/lit16 v1, v0, 0x100

    and-int/lit8 v2, v0, 0xf

    invoke-virtual {p1, v2}, Lcom/google/android/libraries/places/internal/zzjj;->zza(I)C

    move-result v2

    aput-char v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Appendable;[BII)V
    .locals 2

    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {v0, p4, p3}, Lcom/google/android/libraries/places/internal/zzfm;->zzg(III)V

    :goto_0
    if-ge v0, p4, :cond_0

    aget-byte p3, p2, v0

    and-int/lit16 p3, p3, 0xff

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzjk;->zza:[C

    aget-char v1, v1, p3

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzjk;->zza:[C

    or-int/lit16 p3, p3, 0x100

    aget-char p3, v1, p3

    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
