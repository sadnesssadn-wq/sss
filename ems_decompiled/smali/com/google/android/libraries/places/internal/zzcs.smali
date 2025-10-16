.class public final Lcom/google/android/libraries/places/internal/zzcs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzcv;


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/libraries/places/internal/zzcy;

.field private zzc:Lcom/google/android/libraries/places/internal/zzdf;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzcr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzcy;)Lcom/google/android/libraries/places/internal/zzcv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcs;->zzb:Lcom/google/android/libraries/places/internal/zzcy;

    return-object p0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzdf;)Lcom/google/android/libraries/places/internal/zzcv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcs;->zzc:Lcom/google/android/libraries/places/internal/zzdf;

    return-object p0
.end method

.method public final bridge synthetic zzc(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/zzcv;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcs;->zza:Landroid/content/Context;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzcw;
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcs;->zza:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzaes;->zzb(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcs;->zzb:Lcom/google/android/libraries/places/internal/zzcy;

    const-class v1, Lcom/google/android/libraries/places/internal/zzcy;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzaes;->zzb(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcs;->zzc:Lcom/google/android/libraries/places/internal/zzdf;

    const-class v1, Lcom/google/android/libraries/places/internal/zzdf;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzaes;->zzb(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzcu;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzcs;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzcs;->zzb:Lcom/google/android/libraries/places/internal/zzcy;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzcs;->zzc:Lcom/google/android/libraries/places/internal/zzdf;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzcu;-><init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/zzcy;Lcom/google/android/libraries/places/internal/zzdf;Lcom/google/android/libraries/places/internal/zzct;)V

    return-object v0
.end method
