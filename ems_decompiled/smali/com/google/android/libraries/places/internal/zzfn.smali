.class public final Lcom/google/android/libraries/places/internal/zzfn;
.super Lcom/google/android/libraries/places/internal/zzfp;
.source ""


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzfo;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzfo;Lcom/google/android/libraries/places/internal/zzfq;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfn;->zza:Lcom/google/android/libraries/places/internal/zzfo;

    const-string p1, "2.5.0"

    invoke-direct {p0, p2, p1}, Lcom/google/android/libraries/places/internal/zzfp;-><init>(Lcom/google/android/libraries/places/internal/zzfq;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final zzc(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final zzd(I)I
    .locals 4

    const-string v0, "2.5.0"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "index"

    invoke-static {p1, v1, v2}, Lcom/google/android/libraries/places/internal/zzfm;->zzb(IILjava/lang/String;)I

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :cond_1
    return p1
.end method
