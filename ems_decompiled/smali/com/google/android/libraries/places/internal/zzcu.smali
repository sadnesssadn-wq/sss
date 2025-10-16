.class public final Lcom/google/android/libraries/places/internal/zzcu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzcw;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzcy;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzdf;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzcu;

.field private final zze:Lcom/google/android/libraries/places/internal/zzaeu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzaeu<",
            "Lcom/google/android/libraries/places/internal/zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/zzcy;Lcom/google/android/libraries/places/internal/zzdf;Lcom/google/android/libraries/places/internal/zzct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/libraries/places/internal/zzcu;->zzd:Lcom/google/android/libraries/places/internal/zzcu;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzcu;->zza:Lcom/google/android/libraries/places/internal/zzcy;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcu;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzcu;->zzc:Lcom/google/android/libraries/places/internal/zzdf;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzc;->zza()Lcom/google/android/libraries/places/internal/zzc;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzaet;->zza(Lcom/google/android/libraries/places/internal/zzaeu;)Lcom/google/android/libraries/places/internal/zzaeu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcu;->zze:Lcom/google/android/libraries/places/internal/zzaeu;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzcv;
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzcs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzcs;-><init>(Lcom/google/android/libraries/places/internal/zzcr;)V

    return-object v0
.end method

.method private final zzc()Lcom/google/android/libraries/places/internal/zzw;
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zzdj;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzcu;->zzb:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzdj;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzcu;->zzc:Lcom/google/android/libraries/places/internal/zzdf;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzcu;->zza:Lcom/google/android/libraries/places/internal/zzcy;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzx;->zza(Lcom/google/android/libraries/places/internal/zzdj;Lcom/google/android/libraries/places/internal/zzdf;Lcom/google/android/libraries/places/internal/zzcy;)Lcom/google/android/libraries/places/internal/zzw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/libraries/places/api/net/PlacesClient;
    .locals 10

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcu;->zza:Lcom/google/android/libraries/places/internal/zzcy;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzdl;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzcu;->zzb:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/libraries/places/internal/zzdl;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzcu;->zzb:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzaes;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lb/u/a;->Q(Landroid/content/Context;)Lc/a/b/k;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzaes;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/libraries/places/internal/zzbq;

    invoke-direct {v3}, Lcom/google/android/libraries/places/internal/zzbq;-><init>()V

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzaf;->zza(Lc/a/b/k;Lcom/google/android/libraries/places/internal/zzbq;)Lcom/google/android/libraries/places/internal/zzae;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzcu;->zzb:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzaes;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lb/u/a;->Q(Landroid/content/Context;)Lc/a/b/k;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzaes;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzal;->zza(Lc/a/b/k;)Lcom/google/android/libraries/places/internal/zzak;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzcu;->zzc()Lcom/google/android/libraries/places/internal/zzw;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzcu;->zze:Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-interface {v5}, Lcom/google/android/libraries/places/internal/zzaeu;->zzb()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/zza;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbd;->zza()Lcom/google/android/libraries/places/internal/zzbc;

    move-result-object v6

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzcf;->zza()Lcom/google/android/libraries/places/internal/zzce;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzbh;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbg;

    move-result-object v7

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbl;->zza()Lcom/google/android/libraries/places/internal/zzbk;

    move-result-object v8

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzcf;->zza()Lcom/google/android/libraries/places/internal/zzce;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzbp;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzbo;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/google/android/libraries/places/internal/zzcc;->zza(Lcom/google/android/libraries/places/internal/zzcy;Lcom/google/android/libraries/places/internal/zzdl;Lcom/google/android/libraries/places/internal/zzae;Lcom/google/android/libraries/places/internal/zzak;Lcom/google/android/libraries/places/internal/zzcx;Lcom/google/android/libraries/places/internal/zza;Lcom/google/android/libraries/places/internal/zzbc;Lcom/google/android/libraries/places/internal/zzbg;Lcom/google/android/libraries/places/internal/zzbk;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzcb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzcu;->zze:Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zza;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzcu;->zzb:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzaes;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    sget-object v3, Lc/d/a/b/j/d;->a:Lc/d/a/b/e/m/a$g;

    new-instance v3, Lc/d/a/b/j/a;

    invoke-direct {v3, v2}, Lc/d/a/b/j/a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzaes;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzcq;

    new-instance v4, Lcom/google/android/libraries/places/internal/zzcm;

    invoke-direct {v4}, Lcom/google/android/libraries/places/internal/zzcm;-><init>()V

    invoke-direct {v2, v4}, Lcom/google/android/libraries/places/internal/zzcq;-><init>(Lcom/google/android/libraries/places/internal/zzcm;)V

    invoke-static {v1, v3, v2}, Lcom/google/android/libraries/places/internal/zzq;->zza(Lcom/google/android/libraries/places/internal/zza;Lc/d/a/b/j/a;Lcom/google/android/libraries/places/internal/zzcq;)Lcom/google/android/libraries/places/internal/zzp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzcu;->zzb:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzaes;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzcu;->zze:Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-interface {v3}, Lcom/google/android/libraries/places/internal/zzaeu;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zza;

    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzv;->zza(Landroid/net/wifi/WifiManager;Lcom/google/android/libraries/places/internal/zza;)Lcom/google/android/libraries/places/internal/zzu;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzcu;->zzc()Lcom/google/android/libraries/places/internal/zzw;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzcu;->zze:Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-interface {v4}, Lcom/google/android/libraries/places/internal/zzaeu;->zzb()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/zza;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzaw;->zza(Lcom/google/android/libraries/places/internal/zzz;Lcom/google/android/libraries/places/internal/zzp;Lcom/google/android/libraries/places/internal/zzu;Lcom/google/android/libraries/places/internal/zzcx;Lcom/google/android/libraries/places/internal/zza;)Lcom/google/android/libraries/places/internal/zzav;

    move-result-object v0

    return-object v0
.end method
