.class public final Lcom/google/android/libraries/places/internal/zzdl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context must not be null."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzfm;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdl;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzgg;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgg<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdl;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdl;->zza:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzda;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzgf;

    invoke-direct {v2}, Lcom/google/android/libraries/places/internal/zzgf;-><init>()V

    if-eqz v0, :cond_0

    const-string v3, "X-Android-Package"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/libraries/places/internal/zzgf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgf;

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "X-Android-Cert"

    invoke-virtual {v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzgf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgf;

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzgf;->zzb()Lcom/google/android/libraries/places/internal/zzgg;

    move-result-object v0

    return-object v0
.end method
