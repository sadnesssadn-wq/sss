.class public final Lcom/google/android/libraries/places/internal/zzhe;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzhi<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/libraries/places/internal/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzhi<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/libraries/places/internal/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzhi<",
            "Lcom/google/android/libraries/places/internal/zzhh;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/libraries/places/internal/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzhi<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/libraries/places/internal/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzf:Lcom/google/android/libraries/places/internal/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzhi<",
            "Lcom/google/android/libraries/places/internal/zzjc;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzg:Lcom/google/android/libraries/places/internal/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzhi<",
            "Lcom/google/android/libraries/places/internal/zzhj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Ljava/lang/Throwable;

    const-string v1, "cause"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzhi;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzhi;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhe;->zza:Lcom/google/android/libraries/places/internal/zzhi;

    const-class v0, Ljava/lang/Integer;

    const-string v1, "ratelimit_count"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzhi;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzhi;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhe;->zzb:Lcom/google/android/libraries/places/internal/zzhi;

    const-class v0, Lcom/google/android/libraries/places/internal/zzhh;

    const-string v1, "ratelimit_period"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzhi;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzhi;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhe;->zzc:Lcom/google/android/libraries/places/internal/zzhi;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzhc;

    const-class v1, Ljava/lang/Object;

    const-string v2, "group_by"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/libraries/places/internal/zzhc;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhe;->zzd:Lcom/google/android/libraries/places/internal/zzhi;

    const-class v0, Ljava/lang/Boolean;

    const-string v1, "forced"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzhi;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzhi;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhe;->zze:Lcom/google/android/libraries/places/internal/zzhi;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzhd;

    const-class v1, Lcom/google/android/libraries/places/internal/zzjc;

    const-string v2, "tags"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/libraries/places/internal/zzhd;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhe;->zzf:Lcom/google/android/libraries/places/internal/zzhi;

    const-class v0, Lcom/google/android/libraries/places/internal/zzhj;

    const-string v1, "stack_size"

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzhi;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzhi;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzhe;->zzg:Lcom/google/android/libraries/places/internal/zzhi;

    return-void
.end method
