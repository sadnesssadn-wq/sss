.class public final Lcom/google/android/libraries/places/internal/zzob;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzob;",
        "Lcom/google/android/libraries/places/internal/zzny;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzob;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/libraries/places/internal/zzaby;

.field private zzg:Lcom/google/android/libraries/places/internal/zzaby;

.field private zzh:Lcom/google/android/libraries/places/internal/zzaby;

.field private zzi:Lcom/google/android/libraries/places/internal/zzaby;

.field private zzj:Lcom/google/android/libraries/places/internal/zzaby;

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzob;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzob;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzob;->zzb:Lcom/google/android/libraries/places/internal/zzob;

    const-class v1, Lcom/google/android/libraries/places/internal/zzob;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzA()Lcom/google/android/libraries/places/internal/zzaby;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzob;->zzf:Lcom/google/android/libraries/places/internal/zzaby;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzA()Lcom/google/android/libraries/places/internal/zzaby;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzob;->zzg:Lcom/google/android/libraries/places/internal/zzaby;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzA()Lcom/google/android/libraries/places/internal/zzaby;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzob;->zzh:Lcom/google/android/libraries/places/internal/zzaby;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzA()Lcom/google/android/libraries/places/internal/zzaby;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzob;->zzi:Lcom/google/android/libraries/places/internal/zzaby;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzA()Lcom/google/android/libraries/places/internal/zzaby;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzob;->zzj:Lcom/google/android/libraries/places/internal/zzaby;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/libraries/places/internal/zzob;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzob;->zzb:Lcom/google/android/libraries/places/internal/zzob;

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzob;->zzb:Lcom/google/android/libraries/places/internal/zzob;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzny;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzny;-><init>(Lcom/google/android/libraries/places/internal/zzns;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzob;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzob;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xe

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

    sget-object p3, Lcom/google/android/libraries/places/internal/zzoa;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    sget-object p3, Lcom/google/android/libraries/places/internal/zznz;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    sget-object p3, Lcom/google/android/libraries/places/internal/zznx;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzo"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzob;->zzb:Lcom/google/android/libraries/places/internal/zzob;

    const-string p3, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0005\u0000\u0001\u0014\u0002\u0014\u0003\u0014\u0004\u0014\u0005\u0014\u0006\u1004\u0000\u0007\u100c\u0001\u0008\u100c\u0002\t\u100c\u0003\n\u1004\u0004"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
