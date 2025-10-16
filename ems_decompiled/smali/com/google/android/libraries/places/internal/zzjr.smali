.class public final Lcom/google/android/libraries/places/internal/zzjr;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzjr;",
        "Lcom/google/android/libraries/places/internal/zzjp;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzjr;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/libraries/places/internal/zzwh;

.field private zzh:Lcom/google/android/libraries/places/internal/zzlt;

.field private zzi:Lcom/google/android/libraries/places/internal/zzzc;

.field private zzj:Lcom/google/android/libraries/places/internal/zzte;

.field private zzk:Lcom/google/android/libraries/places/internal/zzpb;

.field private zzl:Lcom/google/android/libraries/places/internal/zzmm;

.field private zzm:Lcom/google/android/libraries/places/internal/zzln;

.field private zzn:Lcom/google/android/libraries/places/internal/zzkt;

.field private zzo:Lcom/google/android/libraries/places/internal/zzmg;

.field private zzp:Lcom/google/android/libraries/places/internal/zzqo;

.field private zzq:Lcom/google/android/libraries/places/internal/zzrc;

.field private zzr:Lcom/google/android/libraries/places/internal/zzrf;

.field private zzs:Lcom/google/android/libraries/places/internal/zzkd;

.field private zzt:Lcom/google/android/libraries/places/internal/zzni;

.field private zzu:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzjr;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzjr;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzjr;->zzb:Lcom/google/android/libraries/places/internal/zzjr;

    const-class v1, Lcom/google/android/libraries/places/internal/zzjr;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzjr;->zzu:B

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/places/internal/zzjr;->zzf:I

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzjp;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzjr;->zzb:Lcom/google/android/libraries/places/internal/zzjr;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzx()Lcom/google/android/libraries/places/internal/zzabp;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzjp;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzjr;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzjr;->zzb:Lcom/google/android/libraries/places/internal/zzjr;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/libraries/places/internal/zzjr;Lcom/google/android/libraries/places/internal/zzwh;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzjr;->zzg:Lcom/google/android/libraries/places/internal/zzwh;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzjr;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzjr;->zze:I

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/libraries/places/internal/zzjr;I)V
    .locals 1

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzjr;->zzf:I

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzjr;->zze:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzjr;->zze:I

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
    iput-byte p3, p0, Lcom/google/android/libraries/places/internal/zzjr;->zzu:B

    return-object v3

    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzjr;->zzb:Lcom/google/android/libraries/places/internal/zzjr;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzjp;

    invoke-direct {p1, v3}, Lcom/google/android/libraries/places/internal/zzjp;-><init>(Lcom/google/android/libraries/places/internal/zzjo;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/libraries/places/internal/zzjr;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzjr;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zze"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzjq;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p2, p1, v4

    const-string p2, "zzg"

    aput-object p2, p1, v3

    const-string p2, "zzh"

    aput-object p2, p1, v2

    const-string p2, "zzi"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzt"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzjr;->zzb:Lcom/google/android/libraries/places/internal/zzjr;

    const-string p3, "\u0001\u000f\u0000\u0001\u0001\u0010\u000f\u0000\u0000\u0002\u0001\u100c\u0000\u0002\u1409\u0001\u0003\u1409\u0002\u0004\u1009\u0003\u0005\u1009\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u1009\u0007\t\u1009\u0008\n\u1009\t\u000b\u1009\n\u000c\u1009\u000b\r\u1009\u000c\u000f\u1009\r\u0010\u1009\u000e"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzjr;->zzu:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
