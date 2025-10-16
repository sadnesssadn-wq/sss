.class public final Lcom/google/android/libraries/places/internal/zzpm;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzpm;",
        "Lcom/google/android/libraries/places/internal/zzpk;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzpm;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Z

.field private zzh:Z

.field private zzi:F

.field private zzj:F

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:I

.field private zzp:I

.field private zzq:Z

.field private zzr:I

.field private zzs:F

.field private zzt:I

.field private zzu:I

.field private zzv:I

.field private zzw:I

.field private zzx:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzpm;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzpm;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzpm;->zzb:Lcom/google/android/libraries/places/internal/zzpm;

    const-class v1, Lcom/google/android/libraries/places/internal/zzpm;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/libraries/places/internal/zzpm;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzpm;->zzb:Lcom/google/android/libraries/places/internal/zzpm;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzpm;->zzb:Lcom/google/android/libraries/places/internal/zzpm;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzpk;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzpk;-><init>(Lcom/google/android/libraries/places/internal/zzns;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzpm;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzpm;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x1a

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    const-string p2, "zzj"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    sget-object p3, Lcom/google/android/libraries/places/internal/zzpl;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    sget-object p3, Lcom/google/android/libraries/places/internal/zzlo;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string v0, "zzu"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string v0, "zzv"

    aput-object v0, p1, p2

    const/16 p2, 0x15

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string v0, "zzw"

    aput-object v0, p1, p2

    const/16 p2, 0x17

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    sget-object p3, Lcom/google/android/libraries/places/internal/zzlp;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzpm;->zzb:Lcom/google/android/libraries/places/internal/zzpm;

    const-string p3, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1001\u0003\u0005\u1001\u0004\u0006\u1007\u0005\u0007\u1007\u0006\u0008\u1007\u0007\t\u1007\u0008\n\u1004\t\u000b\u1004\n\u000c\u1007\u000b\r\u100c\u000c\u000e\u1001\r\u000f\u100c\u000e\u0010\u100c\u000f\u0011\u100c\u0010\u0012\u100c\u0011\u0013\u100c\u0012"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
