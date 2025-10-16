.class public final Lcom/google/android/libraries/places/internal/zzwh;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzwh;",
        "Lcom/google/android/libraries/places/internal/zzwc;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzwh;


# instance fields
.field private zzA:Lcom/google/android/libraries/places/internal/zzuq;

.field private zzB:Lcom/google/android/libraries/places/internal/zzyv;

.field private zzC:Z

.field private zzD:Ljava/lang/String;

.field private zzE:Lcom/google/android/libraries/places/internal/zzva;

.field private zzF:Z

.field private zzG:Ljava/lang/String;

.field private zzH:I

.field private zzI:Ljava/lang/String;

.field private zzJ:Ljava/lang/String;

.field private zzK:I

.field private zzL:Ljava/lang/String;

.field private zzM:B

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:Lcom/google/android/libraries/places/internal/zzjy;

.field private zzi:Lcom/google/android/libraries/places/internal/zzna;

.field private zzj:I

.field private zzk:F

.field private zzl:Lcom/google/android/libraries/places/internal/zzabz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzabz<",
            "Lcom/google/android/libraries/places/internal/zzyz;",
            ">;"
        }
    .end annotation
.end field

.field private zzm:Lcom/google/android/libraries/places/internal/zzxt;

.field private zzn:Lcom/google/android/libraries/places/internal/zzabz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzabz<",
            "Lcom/google/android/libraries/places/internal/zzvd;",
            ">;"
        }
    .end annotation
.end field

.field private zzo:Lcom/google/android/libraries/places/internal/zzvd;

.field private zzp:Lcom/google/android/libraries/places/internal/zzvk;

.field private zzq:Lcom/google/android/libraries/places/internal/zzxl;

.field private zzr:Lcom/google/android/libraries/places/internal/zzwv;

.field private zzs:Lcom/google/android/libraries/places/internal/zzxe;

.field private zzt:Lcom/google/android/libraries/places/internal/zzxa;

.field private zzu:Lcom/google/android/libraries/places/internal/zzxq;

.field private zzv:Lcom/google/android/libraries/places/internal/zzvw;

.field private zzw:Lcom/google/android/libraries/places/internal/zzwj;

.field private zzx:Lcom/google/android/libraries/places/internal/zzxg;

.field private zzy:Lcom/google/android/libraries/places/internal/zzvz;

.field private zzz:Lcom/google/android/libraries/places/internal/zzvn;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzwh;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzwh;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzwh;->zzb:Lcom/google/android/libraries/places/internal/zzwh;

    const-class v1, Lcom/google/android/libraries/places/internal/zzwh;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzM:B

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzg:I

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzB()Lcom/google/android/libraries/places/internal/zzabz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzl:Lcom/google/android/libraries/places/internal/zzabz;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzB()Lcom/google/android/libraries/places/internal/zzabz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzn:Lcom/google/android/libraries/places/internal/zzabz;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzD:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzG:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzI:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzJ:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzL:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzwc;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzwh;->zzb:Lcom/google/android/libraries/places/internal/zzwh;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzx()Lcom/google/android/libraries/places/internal/zzabp;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzwc;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzwh;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzwh;->zzb:Lcom/google/android/libraries/places/internal/zzwh;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/libraries/places/internal/zzwh;Lcom/google/android/libraries/places/internal/zzxt;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzm:Lcom/google/android/libraries/places/internal/zzxt;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/libraries/places/internal/zzwh;Lcom/google/android/libraries/places/internal/zzxl;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzq:Lcom/google/android/libraries/places/internal/zzxl;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/libraries/places/internal/zzwh;Lcom/google/android/libraries/places/internal/zzwv;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzr:Lcom/google/android/libraries/places/internal/zzwv;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/libraries/places/internal/zzwh;Lcom/google/android/libraries/places/internal/zzjy;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzh:Lcom/google/android/libraries/places/internal/zzjy;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/libraries/places/internal/zzwh;Lcom/google/android/libraries/places/internal/zzvw;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzv:Lcom/google/android/libraries/places/internal/zzvw;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    return-void
.end method

.method public static synthetic zzi(Lcom/google/android/libraries/places/internal/zzwh;Lcom/google/android/libraries/places/internal/zzva;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzE:Lcom/google/android/libraries/places/internal/zzva;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/libraries/places/internal/zzwh;Z)V
    .locals 1

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzF:Z

    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/libraries/places/internal/zzwh;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/libraries/places/internal/zzwh;Ljava/lang/String;)V
    .locals 1

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    const/high16 v0, 0x8000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    const-string p1, "2.5.0"

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzI:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzm(Lcom/google/android/libraries/places/internal/zzwh;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzL:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzn(Lcom/google/android/libraries/places/internal/zzwh;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzg:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    return-void
.end method

.method public static synthetic zzo(Lcom/google/android/libraries/places/internal/zzwh;I)V
    .locals 1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzK:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    const/high16 v0, 0x20000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zze:I

    return-void
.end method


# virtual methods
.method public final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-byte p3, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzM:B

    return-object v3

    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzwh;->zzb:Lcom/google/android/libraries/places/internal/zzwh;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzwc;

    invoke-direct {p1, v3}, Lcom/google/android/libraries/places/internal/zzwc;-><init>(Lcom/google/android/libraries/places/internal/zztv;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/libraries/places/internal/zzwh;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzwh;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x28

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zze"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzwe;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p2, p1, v4

    const-string p2, "zzh"

    aput-object p2, p1, v3

    const-string p2, "zzi"

    aput-object p2, p1, v2

    const-string p2, "zzl"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-class p3, Lcom/google/android/libraries/places/internal/zzyz;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lcom/google/android/libraries/places/internal/zzvd;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    sget-object p3, Lcom/google/android/libraries/places/internal/zzwd;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzC"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzD"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "zzz"

    aput-object p3, p1, p2

    const/16 p2, 0x1b

    const-string p3, "zzA"

    aput-object p3, p1, p2

    const/16 p2, 0x1c

    const-string p3, "zzE"

    aput-object p3, p1, p2

    const/16 p2, 0x1d

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/16 p2, 0x1e

    const-string p3, "zzB"

    aput-object p3, p1, p2

    const/16 p2, 0x1f

    const-string p3, "zzF"

    aput-object p3, p1, p2

    const/16 p2, 0x20

    const-string p3, "zzG"

    aput-object p3, p1, p2

    const/16 p2, 0x21

    const-string p3, "zzH"

    aput-object p3, p1, p2

    const/16 p2, 0x22

    sget-object p3, Lcom/google/android/libraries/places/internal/zzwf;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    const/16 p2, 0x23

    const-string p3, "zzI"

    aput-object p3, p1, p2

    const/16 p2, 0x24

    const-string p3, "zzJ"

    aput-object p3, p1, p2

    const/16 p2, 0x25

    const-string p3, "zzK"

    aput-object p3, p1, p2

    const/16 p2, 0x26

    sget-object p3, Lcom/google/android/libraries/places/internal/zzwg;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    const/16 p2, 0x27

    const-string p3, "zzL"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzwh;->zzb:Lcom/google/android/libraries/places/internal/zzwh;

    const-string p3, "\u0001!\u0000\u0001\u0001!!\u0000\u0002\u0003\u0001\u100c\u0001\u0002\u1009\u0002\u0003\u1409\u0003\u0004\u001b\u0005\u1409\u0006\u0006\u001b\u0007\u1009\u0007\u0008\u1409\u0008\t\u100c\u0004\n\u1001\u0005\u000b\u1007\u0015\u000c\u1009\t\r\u1008\u0016\u000e\u1009\n\u000f\u1009\u000b\u0010\u1009\u000c\u0011\u1009\r\u0012\u1009\u000e\u0013\u1009\u000f\u0014\u1009\u0010\u0015\u1009\u0011\u0016\u1009\u0012\u0017\u1009\u0013\u0018\u1009\u0017\u0019\u1004\u0000\u001a\u1009\u0014\u001b\u1007\u0018\u001c\u1008\u0019\u001d\u100c\u001a\u001e\u1008\u001b\u001f\u1008\u001c \u100c\u001d!\u1008\u001e"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzwh;->zzM:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
