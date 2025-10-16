.class public final Lcom/google/android/libraries/places/internal/zzpb;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzpb;",
        "Lcom/google/android/libraries/places/internal/zzoz;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzpb;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/libraries/places/internal/zzoy;

.field private zzg:Lcom/google/android/libraries/places/internal/zzabz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzabz<",
            "Lcom/google/android/libraries/places/internal/zzpd;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lcom/google/android/libraries/places/internal/zzok;

.field private zzi:Lcom/google/android/libraries/places/internal/zzok;

.field private zzj:Lcom/google/android/libraries/places/internal/zzlg;

.field private zzk:I

.field private zzl:Lcom/google/android/libraries/places/internal/zzom;

.field private zzm:Lcom/google/android/libraries/places/internal/zzoi;

.field private zzn:Lcom/google/android/libraries/places/internal/zzof;

.field private zzo:Lcom/google/android/libraries/places/internal/zzoo;

.field private zzp:Lcom/google/android/libraries/places/internal/zzabz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzabz<",
            "Lcom/google/android/libraries/places/internal/zzou;",
            ">;"
        }
    .end annotation
.end field

.field private zzq:Lcom/google/android/libraries/places/internal/zzod;

.field private zzr:Lcom/google/android/libraries/places/internal/zzoq;

.field private zzs:Lcom/google/android/libraries/places/internal/zznu;

.field private zzt:Lcom/google/android/libraries/places/internal/zzpm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzpb;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzpb;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzpb;->zzb:Lcom/google/android/libraries/places/internal/zzpb;

    const-class v1, Lcom/google/android/libraries/places/internal/zzpb;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzB()Lcom/google/android/libraries/places/internal/zzabz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzpb;->zzg:Lcom/google/android/libraries/places/internal/zzabz;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzB()Lcom/google/android/libraries/places/internal/zzabz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzpb;->zzp:Lcom/google/android/libraries/places/internal/zzabz;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/libraries/places/internal/zzpb;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzpb;->zzb:Lcom/google/android/libraries/places/internal/zzpb;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzpb;->zzb:Lcom/google/android/libraries/places/internal/zzpb;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzoz;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzoz;-><init>(Lcom/google/android/libraries/places/internal/zzns;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzpb;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzpb;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x13

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-class p2, Lcom/google/android/libraries/places/internal/zzpd;

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    sget-object p3, Lcom/google/android/libraries/places/internal/zzpa;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-class p3, Lcom/google/android/libraries/places/internal/zzou;

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzt"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzpb;->zzb:Lcom/google/android/libraries/places/internal/zzpb;

    const-string p3, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0002\u0000\u0001\u1009\u0000\u0002\u001b\u0003\u1009\u0001\u0004\u1009\u0002\u0005\u1009\u0003\u0006\u100c\u0004\u0007\u1009\u0005\u0008\u1009\u0006\t\u1009\u0007\n\u1009\u0008\u000b\u001b\u000c\u1009\t\r\u1009\n\u000e\u1009\u000b\u000f\u1009\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
