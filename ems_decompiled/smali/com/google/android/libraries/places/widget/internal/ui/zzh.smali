.class public final Lcom/google/android/libraries/places/widget/internal/ui/zzh;
.super Lb/m/d/u;
.source ""


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/libraries/places/api/net/PlacesClient;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzdx;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzev;

.field private final zze:Lcom/google/android/libraries/places/internal/zza;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/google/android/libraries/places/internal/zzdx;)V
    .locals 1

    invoke-direct {p0}, Lb/m/d/u;-><init>()V

    iput p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zza:I

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdf;->zzd(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/zzde;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzde;->zzd(I)Lcom/google/android/libraries/places/internal/zzde;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzde;->zze()Lcom/google/android/libraries/places/internal/zzdf;

    move-result-object p2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzdj;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzdj;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/api/Places;->zza(Landroid/content/Context;Lcom/google/android/libraries/places/internal/zzdf;)Lcom/google/android/libraries/places/api/net/PlacesClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzb:Lcom/google/android/libraries/places/api/net/PlacesClient;

    iput-object p3, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzc:Lcom/google/android/libraries/places/internal/zzdx;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzew;

    const/4 p3, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/google/android/libraries/places/internal/zzew;-><init>(Lcom/google/android/libraries/places/internal/zzdj;Lcom/google/android/libraries/places/internal/zzdf;[B)V

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzd:Lcom/google/android/libraries/places/internal/zzev;

    new-instance p1, Lcom/google/android/libraries/places/internal/zze;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zze;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zze:Lcom/google/android/libraries/places/internal/zza;

    return-void
.end method


# virtual methods
.method public final instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 9

    invoke-static {p1, p2}, Lb/m/d/u;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    iget v3, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zza:I

    iget-object v4, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzb:Lcom/google/android/libraries/places/api/net/PlacesClient;

    iget-object v5, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzc:Lcom/google/android/libraries/places/internal/zzdx;

    iget-object v6, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzd:Lcom/google/android/libraries/places/internal/zzev;

    iget-object v7, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zze:Lcom/google/android/libraries/places/internal/zza;

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;-><init>(ILcom/google/android/libraries/places/api/net/PlacesClient;Lcom/google/android/libraries/places/internal/zzdx;Lcom/google/android/libraries/places/internal/zzev;Lcom/google/android/libraries/places/internal/zza;Lcom/google/android/libraries/places/widget/internal/ui/zzm;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lb/m/d/u;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
