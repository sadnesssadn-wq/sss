.class public final Lcom/google/android/libraries/places/internal/zzwv;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzwv;",
        "Lcom/google/android/libraries/places/internal/zzwt;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzwv;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/libraries/places/internal/zzvf;

.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/libraries/places/internal/zzxn;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzwv;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzwv;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzwv;->zzb:Lcom/google/android/libraries/places/internal/zzwv;

    const-class v1, Lcom/google/android/libraries/places/internal/zzwv;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzwt;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzwv;->zzb:Lcom/google/android/libraries/places/internal/zzwv;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzx()Lcom/google/android/libraries/places/internal/zzabp;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzwt;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzwv;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzwv;->zzb:Lcom/google/android/libraries/places/internal/zzwv;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/libraries/places/internal/zzwv;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzwv;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzwv;->zze:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwv;->zzh:I

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/libraries/places/internal/zzwv;Lcom/google/android/libraries/places/internal/zzxn;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzwv;->zzi:Lcom/google/android/libraries/places/internal/zzxn;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwv;->zze:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwv;->zze:I

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/libraries/places/internal/zzwv;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwv;->zzg:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwv;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwv;->zze:I

    return-void
.end method


# virtual methods
.method public final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzwv;->zzb:Lcom/google/android/libraries/places/internal/zzwv;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzwt;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzwt;-><init>(Lcom/google/android/libraries/places/internal/zztv;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzwv;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzwv;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzwu;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzwv;->zzb:Lcom/google/android/libraries/places/internal/zzwv;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100c\u0001\u0003\u1004\u0002\u0004\u1009\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
