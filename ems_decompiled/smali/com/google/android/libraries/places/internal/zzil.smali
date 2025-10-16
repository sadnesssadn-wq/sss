.class public final Lcom/google/android/libraries/places/internal/zzil;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzif;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/util/logging/Level;


# direct methods
.method public constructor <init>()V
    .locals 6

    sget-object v4, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzil;-><init>(Ljava/lang/String;ZZLjava/util/logging/Level;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZLjava/util/logging/Level;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzil;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzil;->zzb:Ljava/util/logging/Level;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzhl;
    .locals 8

    new-instance v7, Lcom/google/android/libraries/places/internal/zzio;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzil;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzil;->zzb:Ljava/util/logging/Level;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzio;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/logging/Level;Lcom/google/android/libraries/places/internal/zzin;)V

    return-object v7
.end method

.method public final zzb(Z)Lcom/google/android/libraries/places/internal/zzil;
    .locals 6

    new-instance p1, Lcom/google/android/libraries/places/internal/zzil;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzil;->zza:Ljava/lang/String;

    sget-object v4, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzil;-><init>(Ljava/lang/String;ZZLjava/util/logging/Level;Z)V

    return-object p1
.end method
