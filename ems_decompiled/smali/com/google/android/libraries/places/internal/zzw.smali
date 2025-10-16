.class public final Lcom/google/android/libraries/places/internal/zzw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzcx;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzdf;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzdj;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzcy;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzdj;Lcom/google/android/libraries/places/internal/zzdf;Lcom/google/android/libraries/places/internal/zzcy;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzw;->zzb:Lcom/google/android/libraries/places/internal/zzdj;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzw;->zza:Lcom/google/android/libraries/places/internal/zzdf;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzw;->zzc:Lcom/google/android/libraries/places/internal/zzcy;

    return-void
.end method

.method public static final zzi(Lc/d/a/b/p/l;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/d/a/b/p/l<",
            "TResponseT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lc/d/a/b/p/l;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/p/l;->j()Ljava/lang/Exception;

    move-result-object p0

    instance-of v0, p0, Lc/d/a/b/e/m/b;

    if-eqz v0, :cond_1

    check-cast p0, Lc/d/a/b/e/m/b;

    goto :goto_0

    :cond_1
    new-instance v0, Lc/d/a/b/e/m/b;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    move-object p0, v0

    .line 1
    :goto_0
    iget-object p0, p0, Lc/d/a/b/e/m/b;->c:Lcom/google/android/gms/common/api/Status;

    .line 2
    iget p0, p0, Lcom/google/android/gms/common/api/Status;->d:I

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0xf

    if-eq p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0
.end method

.method private final zzj()Lcom/google/android/libraries/places/internal/zzxr;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzw;->zzc:Lcom/google/android/libraries/places/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzcy;->zzb()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzxt;->zza()Lcom/google/android/libraries/places/internal/zzxr;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzxr;->zzd(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzxr;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzxr;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzxr;

    :cond_0
    return-object v2
.end method

.method private final zzk(Lcom/google/android/libraries/places/internal/zzva;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzw;->zza:Lcom/google/android/libraries/places/internal/zzdf;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdk;->zzb(Lcom/google/android/libraries/places/internal/zzdf;)Lcom/google/android/libraries/places/internal/zzwc;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzwc;->zzl(I)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzwc;->zze(Lcom/google/android/libraries/places/internal/zzva;)Lcom/google/android/libraries/places/internal/zzwc;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzw;->zzc:Lcom/google/android/libraries/places/internal/zzcy;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzcy;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzwc;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzwh;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzw;->zzl(Lcom/google/android/libraries/places/internal/zzwh;)V

    return-void
.end method

.method private final zzl(Lcom/google/android/libraries/places/internal/zzwh;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Lcom/google/android/libraries/places/internal/zzwh;)Lcom/google/android/libraries/places/internal/zzjr;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzw;->zzb:Lcom/google/android/libraries/places/internal/zzdj;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzdj;->zza(Lcom/google/android/libraries/places/internal/zzjr;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)V
    .locals 2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzxl;->zza()Lcom/google/android/libraries/places/internal/zzxj;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzxj;->zza(I)Lcom/google/android/libraries/places/internal/zzxj;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzxl;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzw;->zza:Lcom/google/android/libraries/places/internal/zzdf;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdk;->zzb(Lcom/google/android/libraries/places/internal/zzdf;)Lcom/google/android/libraries/places/internal/zzwc;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzwc;->zzl(I)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzwc;->zzg(Lcom/google/android/libraries/places/internal/zzxl;)Lcom/google/android/libraries/places/internal/zzwc;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzw;->zzc:Lcom/google/android/libraries/places/internal/zzcy;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzcy;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzwc;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzwh;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzw;->zzl(Lcom/google/android/libraries/places/internal/zzwh;)V

    return-void
.end method

.method public final zzb(Lc/d/a/b/p/l;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
            ">;JJ)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzva;->zza()Lcom/google/android/libraries/places/internal/zzuv;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzuv;->zzf(I)Lcom/google/android/libraries/places/internal/zzuv;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzw;->zzi(Lc/d/a/b/p/l;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzuv;->zze(I)Lcom/google/android/libraries/places/internal/zzuv;

    sub-long/2addr p4, p2

    long-to-int p1, p4

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzuv;->zzd(I)Lcom/google/android/libraries/places/internal/zzuv;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzva;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzw;->zzk(Lcom/google/android/libraries/places/internal/zzva;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)V
    .locals 4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzwo;->zza()Lcom/google/android/libraries/places/internal/zzwn;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzwn;->zza(I)Lcom/google/android/libraries/places/internal/zzwn;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzxn;->zza()Lcom/google/android/libraries/places/internal/zzxm;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzck;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzxm;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzxm;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzxn;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzwn;->zzb(Lcom/google/android/libraries/places/internal/zzxn;)Lcom/google/android/libraries/places/internal/zzwn;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzwo;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzw;->zzj()Lcom/google/android/libraries/places/internal/zzxr;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzxr;->zze(I)Lcom/google/android/libraries/places/internal/zzxr;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzxr;->zzc(Lcom/google/android/libraries/places/internal/zzwo;)Lcom/google/android/libraries/places/internal/zzxr;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzxt;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzw;->zza:Lcom/google/android/libraries/places/internal/zzdf;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzdk;->zzb(Lcom/google/android/libraries/places/internal/zzdf;)Lcom/google/android/libraries/places/internal/zzwc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/zzwc;->zzl(I)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzwc;->zzh(Lcom/google/android/libraries/places/internal/zzxt;)Lcom/google/android/libraries/places/internal/zzwc;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzw;->zzc:Lcom/google/android/libraries/places/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzcy;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzwc;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/libraries/places/internal/zzwc;->zzj(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzwc;

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzwh;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzw;->zzl(Lcom/google/android/libraries/places/internal/zzwh;)V

    return-void
.end method

.method public final zzd(Lc/d/a/b/p/l;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;JJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Lc/d/a/b/p/l;->o()Z

    move-result v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzuo;->zza()Lcom/google/android/libraries/places/internal/zzun;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzun;->zza(I)Lcom/google/android/libraries/places/internal/zzun;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzun;->zzb(I)Lcom/google/android/libraries/places/internal/zzun;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzuo;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzva;->zza()Lcom/google/android/libraries/places/internal/zzuv;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzuv;->zzf(I)Lcom/google/android/libraries/places/internal/zzuv;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzuv;->zzc(Lcom/google/android/libraries/places/internal/zzuo;)Lcom/google/android/libraries/places/internal/zzuv;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzw;->zzi(Lc/d/a/b/p/l;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzuv;->zze(I)Lcom/google/android/libraries/places/internal/zzuv;

    sub-long/2addr p4, p2

    long-to-int p1, p4

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzuv;->zzd(I)Lcom/google/android/libraries/places/internal/zzuv;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzva;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzw;->zzk(Lcom/google/android/libraries/places/internal/zzva;)V

    return-void
.end method

.method public final zze(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)V
    .locals 3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzvf;->zza()Lcom/google/android/libraries/places/internal/zzve;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzcl;->zza(Lcom/google/android/libraries/places/api/model/TypeFilter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzve;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzve;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzvf;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzvr;->zza()Lcom/google/android/libraries/places/internal/zzvq;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzvq;->zza(Lcom/google/android/libraries/places/internal/zzvf;)Lcom/google/android/libraries/places/internal/zzvq;

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzvr;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzw;->zzj()Lcom/google/android/libraries/places/internal/zzxr;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzxr;->zze(I)Lcom/google/android/libraries/places/internal/zzxr;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzxr;->zza(Lcom/google/android/libraries/places/internal/zzvr;)Lcom/google/android/libraries/places/internal/zzxr;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzxt;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzw;->zza:Lcom/google/android/libraries/places/internal/zzdf;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzdk;->zzb(Lcom/google/android/libraries/places/internal/zzdf;)Lcom/google/android/libraries/places/internal/zzwc;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzwc;->zzl(I)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzwc;->zzh(Lcom/google/android/libraries/places/internal/zzxt;)Lcom/google/android/libraries/places/internal/zzwc;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzw;->zzc:Lcom/google/android/libraries/places/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzcy;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzwc;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzwc;->zzj(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzwc;

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzwh;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzw;->zzl(Lcom/google/android/libraries/places/internal/zzwh;)V

    return-void
.end method

.method public final zzf(Lc/d/a/b/p/l;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;JJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Lc/d/a/b/p/l;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->getAutocompletePredictions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzuj;->zza()Lcom/google/android/libraries/places/internal/zzui;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzui;->zza(I)Lcom/google/android/libraries/places/internal/zzui;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzuj;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzva;->zza()Lcom/google/android/libraries/places/internal/zzuv;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzuv;->zzf(I)Lcom/google/android/libraries/places/internal/zzuv;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzuv;->zzb(Lcom/google/android/libraries/places/internal/zzuj;)Lcom/google/android/libraries/places/internal/zzuv;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzw;->zzi(Lc/d/a/b/p/l;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzuv;->zze(I)Lcom/google/android/libraries/places/internal/zzuv;

    sub-long/2addr p4, p2

    long-to-int p1, p4

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzuv;->zzd(I)Lcom/google/android/libraries/places/internal/zzuv;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzva;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzw;->zzk(Lcom/google/android/libraries/places/internal/zzva;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lc/d/a/b/p/l;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;JJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Lc/d/a/b/p/l;->o()Z

    move-result p2

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzwv;->zza()Lcom/google/android/libraries/places/internal/zzwt;

    move-result-object p2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzxn;->zza()Lcom/google/android/libraries/places/internal/zzxm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzck;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzxm;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzxm;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzxn;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzwt;->zzb(Lcom/google/android/libraries/places/internal/zzxn;)Lcom/google/android/libraries/places/internal/zzwt;

    sub-long/2addr p5, p3

    long-to-int p1, p5

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzwt;->zza(I)Lcom/google/android/libraries/places/internal/zzwt;

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzwt;->zzc(I)Lcom/google/android/libraries/places/internal/zzwt;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzwv;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzw;->zza:Lcom/google/android/libraries/places/internal/zzdf;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzdk;->zzb(Lcom/google/android/libraries/places/internal/zzdf;)Lcom/google/android/libraries/places/internal/zzwc;

    move-result-object p2

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzwc;->zzl(I)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzwc;->zzd(Lcom/google/android/libraries/places/internal/zzwv;)Lcom/google/android/libraries/places/internal/zzwc;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzw;->zzc:Lcom/google/android/libraries/places/internal/zzcy;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzcy;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzwc;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzwh;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzw;->zzl(Lcom/google/android/libraries/places/internal/zzwh;)V

    return-void
.end method

.method public final zzh(Lc/d/a/b/p/l;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;JJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Lc/d/a/b/p/l;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;->getPlaceLikelihoods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzuc;->zza()Lcom/google/android/libraries/places/internal/zzub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzub;->zza(I)Lcom/google/android/libraries/places/internal/zzub;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzuc;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzva;->zza()Lcom/google/android/libraries/places/internal/zzuv;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzuv;->zzf(I)Lcom/google/android/libraries/places/internal/zzuv;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzuv;->zza(Lcom/google/android/libraries/places/internal/zzuc;)Lcom/google/android/libraries/places/internal/zzuv;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzw;->zzi(Lc/d/a/b/p/l;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzuv;->zze(I)Lcom/google/android/libraries/places/internal/zzuv;

    sub-long/2addr p4, p2

    long-to-int p1, p4

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzuv;->zzd(I)Lcom/google/android/libraries/places/internal/zzuv;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzva;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzw;->zzk(Lcom/google/android/libraries/places/internal/zzva;)V

    return-void
.end method
