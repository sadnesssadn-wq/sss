.class public final Lcom/google/android/libraries/places/internal/zzabg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzabf;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzabf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzaca;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    iput-object p0, p1, Lcom/google/android/libraries/places/internal/zzabf;->zza:Lcom/google/android/libraries/places/internal/zzabg;

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzabf;)Lcom/google/android/libraries/places/internal/zzabg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabf;->zza:Lcom/google/android/libraries/places/internal/zzabg;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzabg;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzabg;-><init>(Lcom/google/android/libraries/places/internal/zzabf;)V

    return-object v0
.end method


# virtual methods
.method public final zzA(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzA(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int v1, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v1

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzp(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzB(IJ)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    add-long v1, p2, p2

    const/16 v3, 0x3f

    shr-long/2addr p2, v3

    xor-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzr(IJ)V

    return-void
.end method

.method public final zzC(ILjava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/16 v0, 0x3f

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v2, 0x2

    invoke-virtual {p3, p1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzabf;->zzB(J)I

    move-result v2

    add-int/2addr p3, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/google/android/libraries/places/internal/zzabf;->zzs(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-virtual {p3, p1, v2, v3}, Lcom/google/android/libraries/places/internal/zzabf;->zzr(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzD(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzabf;->zzm(ILjava/lang/String;)V

    return-void
.end method

.method public final zzE(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/libraries/places/internal/zzach;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/android/libraries/places/internal/zzach;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzach;->zze(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzm(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    check-cast v2, Lcom/google/android/libraries/places/internal/zzaax;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zze(ILcom/google/android/libraries/places/internal/zzaax;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzm(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzF(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzabf;->zzp(II)V

    return-void
.end method

.method public final zzG(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzA(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzp(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzH(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzr(IJ)V

    return-void
.end method

.method public final zzI(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzB(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzs(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzr(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzb(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzabf;->zzd(IZ)V

    return-void
.end method

.method public final zzc(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzb(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzd(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzd(ILcom/google/android/libraries/places/internal/zzaax;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzabf;->zze(ILcom/google/android/libraries/places/internal/zzaax;)V

    return-void
.end method

.method public final zze(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/internal/zzaax;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzaax;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zze(ILcom/google/android/libraries/places/internal/zzaax;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzf(ID)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzh(IJ)V

    return-void
.end method

.method public final zzg(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzh(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzabf;->zzj(II)V

    return-void
.end method

.method public final zzi(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzv(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzk(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzj(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzj(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzabf;->zzf(II)V

    return-void
.end method

.method public final zzk(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzf(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzl(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzh(IJ)V

    return-void
.end method

.method public final zzm(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzn(IF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzabf;->zzf(II)V

    return-void
.end method

.method public final zzo(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzf(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzp(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzadk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    check-cast p2, Lcom/google/android/libraries/places/internal/zzacz;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    iget-object v1, v0, Lcom/google/android/libraries/places/internal/zzabf;->zza:Lcom/google/android/libraries/places/internal/zzabg;

    invoke-interface {p3, p2, v1}, Lcom/google/android/libraries/places/internal/zzadk;->zzi(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzabg;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    return-void
.end method

.method public final zzq(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzabf;->zzj(II)V

    return-void
.end method

.method public final zzr(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzv(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzk(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzj(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzs(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzr(IJ)V

    return-void
.end method

.method public final zzt(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzB(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzs(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzr(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzu(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/zzadk;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    check-cast p2, Lcom/google/android/libraries/places/internal/zzacz;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzabc;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzabc;->zzq(I)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaaj;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzaaj;->zzr()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p3, p1}, Lcom/google/android/libraries/places/internal/zzadk;->zza(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzaaj;->zzu(I)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzabc;->zzq(I)V

    iget-object p1, v0, Lcom/google/android/libraries/places/internal/zzabf;->zza:Lcom/google/android/libraries/places/internal/zzabg;

    invoke-interface {p3, p2, p1}, Lcom/google/android/libraries/places/internal/zzadk;->zzi(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzabg;)V

    return-void
.end method

.method public final zzv(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzabf;->zzf(II)V

    return-void
.end method

.method public final zzw(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzf(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzx(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzh(IJ)V

    return-void
.end method

.method public final zzy(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzo(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzabf;->zzq(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/zzabf;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzz(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabg;->zza:Lcom/google/android/libraries/places/internal/zzabf;

    add-int v1, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzabf;->zzp(II)V

    return-void
.end method
