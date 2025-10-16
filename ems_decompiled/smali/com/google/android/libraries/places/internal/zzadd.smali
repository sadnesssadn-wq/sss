.class public final Lcom/google/android/libraries/places/internal/zzadd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzadk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/zzadk<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzacz;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzaeb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzaeb<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/libraries/places/internal/zzabi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzabi<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzaeb;Lcom/google/android/libraries/places/internal/zzabi;Lcom/google/android/libraries/places/internal/zzacz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/zzaeb<",
            "**>;",
            "Lcom/google/android/libraries/places/internal/zzabi<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/zzacz;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzb:Lcom/google/android/libraries/places/internal/zzaeb;

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzabi;->zzc(Lcom/google/android/libraries/places/internal/zzacz;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzc:Z

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzd:Lcom/google/android/libraries/places/internal/zzabi;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzadd;->zza:Lcom/google/android/libraries/places/internal/zzacz;

    return-void
.end method

.method public static zzg(Lcom/google/android/libraries/places/internal/zzaeb;Lcom/google/android/libraries/places/internal/zzabi;Lcom/google/android/libraries/places/internal/zzacz;)Lcom/google/android/libraries/places/internal/zzadd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/zzaeb<",
            "**>;",
            "Lcom/google/android/libraries/places/internal/zzabi<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/zzacz;",
            ")",
            "Lcom/google/android/libraries/places/internal/zzadd<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/libraries/places/internal/zzadd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzadd;-><init>(Lcom/google/android/libraries/places/internal/zzaeb;Lcom/google/android/libraries/places/internal/zzabi;Lcom/google/android/libraries/places/internal/zzacz;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzb:Lcom/google/android/libraries/places/internal/zzaeb;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzaeb;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzaeb;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzd:Lcom/google/android/libraries/places/internal/zzabi;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzabi;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzabm;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzb:Lcom/google/android/libraries/places/internal/zzaeb;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzaeb;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzd:Lcom/google/android/libraries/places/internal/zzabi;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzabi;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzabm;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzb:Lcom/google/android/libraries/places/internal/zzaeb;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzaeb;->zze(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzd:Lcom/google/android/libraries/places/internal/zzabi;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzabi;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzb:Lcom/google/android/libraries/places/internal/zzaeb;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzadm;->zzD(Lcom/google/android/libraries/places/internal/zzaeb;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzd:Lcom/google/android/libraries/places/internal/zzabi;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzadm;->zzC(Lcom/google/android/libraries/places/internal/zzabi;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzb:Lcom/google/android/libraries/places/internal/zzaeb;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzaeb;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzb:Lcom/google/android/libraries/places/internal/zzaeb;

    invoke-virtual {v1, p2}, Lcom/google/android/libraries/places/internal/zzaeb;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzc:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzd:Lcom/google/android/libraries/places/internal/zzabi;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzabi;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzabm;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzd:Lcom/google/android/libraries/places/internal/zzabi;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzabi;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzabm;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzf(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzd:Lcom/google/android/libraries/places/internal/zzabi;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzabi;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzabm;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzabg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/libraries/places/internal/zzabg;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzadd;->zzd:Lcom/google/android/libraries/places/internal/zzabi;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzabi;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzabm;

    const/4 p1, 0x0

    throw p1
.end method
