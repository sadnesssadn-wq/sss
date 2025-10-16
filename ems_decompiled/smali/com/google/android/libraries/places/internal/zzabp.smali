.class public Lcom/google/android/libraries/places/internal/zzabp;
.super Lcom/google/android/libraries/places/internal/zzaai;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/libraries/places/internal/zzabp<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/libraries/places/internal/zzaai<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public zza:Lcom/google/android/libraries/places/internal/zzabs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public zzb:Z

.field private final zzc:Lcom/google/android/libraries/places/internal/zzabs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzabs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzaai;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzc:Lcom/google/android/libraries/places/internal/zzabs;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/libraries/places/internal/zzabs;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzabs;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    return-void
.end method

.method private static final zza(Lcom/google/android/libraries/places/internal/zzabs;Lcom/google/android/libraries/places/internal/zzabs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzadh;->zza()Lcom/google/android/libraries/places/internal/zzadh;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzadh;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzadk;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzadk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzabp;->zzr()Lcom/google/android/libraries/places/internal/zzabp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/libraries/places/internal/zzaai;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzabp;->zzr()Lcom/google/android/libraries/places/internal/zzabp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp(Lcom/google/android/libraries/places/internal/zzaaj;)Lcom/google/android/libraries/places/internal/zzaai;
    .locals 0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzabs;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzabp;->zzs(Lcom/google/android/libraries/places/internal/zzabs;)Lcom/google/android/libraries/places/internal/zzabp;

    return-object p0
.end method

.method public final zzr()Lcom/google/android/libraries/places/internal/zzabp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzc:Lcom/google/android/libraries/places/internal/zzabs;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzabs;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzabp;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzabp;->zzu()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzabp;->zzs(Lcom/google/android/libraries/places/internal/zzabs;)Lcom/google/android/libraries/places/internal/zzabp;

    return-object v0
.end method

.method public final zzs(Lcom/google/android/libraries/places/internal/zzabs;)Lcom/google/android/libraries/places/internal/zzabp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzabp;->zzx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzabp;->zza(Lcom/google/android/libraries/places/internal/zzabs;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-object p0
.end method

.method public final zzt()Lcom/google/android/libraries/places/internal/zzabs;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzabp;->zzu()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzabs;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzadh;->zza()Lcom/google/android/libraries/places/internal/zzadh;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzadh;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzadk;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/google/android/libraries/places/internal/zzadk;->zzf(Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/libraries/places/internal/zzabs;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    new-instance v1, Lcom/google/android/libraries/places/internal/zzaea;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/zzaea;-><init>(Lcom/google/android/libraries/places/internal/zzacz;)V

    throw v1
.end method

.method public zzu()Lcom/google/android/libraries/places/internal/zzabs;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzadh;->zza()Lcom/google/android/libraries/places/internal/zzadh;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzadh;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzadk;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzadk;->zzc(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzb:Z

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    return-object v0
.end method

.method public bridge synthetic zzv()Lcom/google/android/libraries/places/internal/zzacz;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzabp;->zzu()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzw()Lcom/google/android/libraries/places/internal/zzacz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zzc:Lcom/google/android/libraries/places/internal/zzabs;

    return-object v0
.end method

.method public zzx()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzabs;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzabs;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzabp;->zza(Lcom/google/android/libraries/places/internal/zzabs;Lcom/google/android/libraries/places/internal/zzabs;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzabp;->zza:Lcom/google/android/libraries/places/internal/zzabs;

    return-void
.end method
