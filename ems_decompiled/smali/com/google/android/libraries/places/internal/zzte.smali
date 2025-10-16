.class public final Lcom/google/android/libraries/places/internal/zzte;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzte;",
        "Lcom/google/android/libraries/places/internal/zztb;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzte;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:Z

.field private zzk:Lcom/google/android/libraries/places/internal/zzabw;

.field private zzl:I

.field private zzm:Lcom/google/android/libraries/places/internal/zzsk;

.field private zzn:Lcom/google/android/libraries/places/internal/zzta;

.field private zzo:Lcom/google/android/libraries/places/internal/zzrl;

.field private zzp:Lcom/google/android/libraries/places/internal/zzsu;

.field private zzq:Lcom/google/android/libraries/places/internal/zzsq;

.field private zzr:Lcom/google/android/libraries/places/internal/zzsw;

.field private zzs:Lcom/google/android/libraries/places/internal/zzro;

.field private zzt:Lcom/google/android/libraries/places/internal/zzrt;

.field private zzu:Lcom/google/android/libraries/places/internal/zztl;

.field private zzv:Lcom/google/android/libraries/places/internal/zzts;

.field private zzw:Lcom/google/android/libraries/places/internal/zzsc;

.field private zzx:Lcom/google/android/libraries/places/internal/zzry;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzte;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzte;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzte;->zzb:Lcom/google/android/libraries/places/internal/zzte;

    const-class v1, Lcom/google/android/libraries/places/internal/zzte;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzz()Lcom/google/android/libraries/places/internal/zzabw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzte;->zzk:Lcom/google/android/libraries/places/internal/zzabw;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/libraries/places/internal/zzte;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzte;->zzb:Lcom/google/android/libraries/places/internal/zzte;

    return-object v0
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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzte;->zzb:Lcom/google/android/libraries/places/internal/zzte;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zztb;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zztb;-><init>(Lcom/google/android/libraries/places/internal/zzrg;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzte;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzte;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x16

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzg"

    aput-object v3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zztc;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/android/libraries/places/internal/zztd;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzx"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzte;->zzb:Lcom/google/android/libraries/places/internal/zzte;

    const-string p3, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0001\u0000\u0001\u100c\u0001\u0002\u100c\u0002\u0003\u1004\u0003\u0004\u1009\u0006\u0005\u1009\u0007\u0006\u1009\u0008\u0007\u1009\t\u0008\u1007\u0004\t\u1009\n\n\u1009\u000b\u000b\u0016\u000c\u1004\u0005\r\u1009\u000c\u000e\u1009\r\u000f\u1009\u000e\u0010\u1009\u000f\u0011\u1004\u0000\u0012\u1009\u0010\u0013\u1009\u0011"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
