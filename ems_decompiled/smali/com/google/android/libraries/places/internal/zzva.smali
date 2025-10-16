.class public final Lcom/google/android/libraries/places/internal/zzva;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzva;",
        "Lcom/google/android/libraries/places/internal/zzuv;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzva;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:Lcom/google/android/libraries/places/internal/zzuo;

.field private zzl:Lcom/google/android/libraries/places/internal/zzuh;

.field private zzm:Lcom/google/android/libraries/places/internal/zzuc;

.field private zzn:Lcom/google/android/libraries/places/internal/zzyi;

.field private zzo:Lcom/google/android/libraries/places/internal/zzuj;

.field private zzp:Lcom/google/android/libraries/places/internal/zzum;

.field private zzq:Lcom/google/android/libraries/places/internal/zzyk;

.field private zzr:Lcom/google/android/libraries/places/internal/zzys;

.field private zzs:Lcom/google/android/libraries/places/internal/zzyo;

.field private zzt:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzva;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzva;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzva;->zzb:Lcom/google/android/libraries/places/internal/zzva;

    const-class v1, Lcom/google/android/libraries/places/internal/zzva;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzuv;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzva;->zzb:Lcom/google/android/libraries/places/internal/zzva;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzx()Lcom/google/android/libraries/places/internal/zzabp;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzuv;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzva;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzva;->zzb:Lcom/google/android/libraries/places/internal/zzva;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/libraries/places/internal/zzva;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzva;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzva;->zze:I

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zzh:I

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/libraries/places/internal/zzva;Lcom/google/android/libraries/places/internal/zzuo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zzk:Lcom/google/android/libraries/places/internal/zzuo;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zze:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zze:I

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/libraries/places/internal/zzva;Lcom/google/android/libraries/places/internal/zzuc;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zzm:Lcom/google/android/libraries/places/internal/zzuc;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zze:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zze:I

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/libraries/places/internal/zzva;Lcom/google/android/libraries/places/internal/zzuj;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zzo:Lcom/google/android/libraries/places/internal/zzuj;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zze:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zze:I

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/libraries/places/internal/zzva;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zzf:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zze:I

    return-void
.end method

.method public static synthetic zzi(Lcom/google/android/libraries/places/internal/zzva;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zzg:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzva;->zze:I

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzva;->zzb:Lcom/google/android/libraries/places/internal/zzva;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzuv;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzuv;-><init>(Lcom/google/android/libraries/places/internal/zztv;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzva;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzva;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x15

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzux;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/android/libraries/places/internal/zzuz;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    sget-object p3, Lcom/google/android/libraries/places/internal/zzuw;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    sget-object p3, Lcom/google/android/libraries/places/internal/zzuu;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    sget-object p3, Lcom/google/android/libraries/places/internal/zzuy;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzva;->zzb:Lcom/google/android/libraries/places/internal/zzva;

    const-string p3, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u1004\u0002\u0004\u100c\u0003\u0005\u100c\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u1009\u0007\t\u1009\u0008\n\u1009\t\u000b\u1009\n\u000c\u1009\u000b\r\u1009\u000c\u000e\u1009\r\u000f\u100c\u000e"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
