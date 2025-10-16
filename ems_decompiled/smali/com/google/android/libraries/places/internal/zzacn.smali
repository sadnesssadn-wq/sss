.class public abstract Lcom/google/android/libraries/places/internal/zzacn;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzacn;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzacn;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzacj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzacj;-><init>(Lcom/google/android/libraries/places/internal/zzaci;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzacn;->zza:Lcom/google/android/libraries/places/internal/zzacn;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzacl;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzacl;-><init>(Lcom/google/android/libraries/places/internal/zzack;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzacn;->zzb:Lcom/google/android/libraries/places/internal/zzacn;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzacm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/libraries/places/internal/zzacn;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzacn;->zza:Lcom/google/android/libraries/places/internal/zzacn;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/libraries/places/internal/zzacn;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzacn;->zzb:Lcom/google/android/libraries/places/internal/zzacn;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;J)V
.end method

.method public abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
