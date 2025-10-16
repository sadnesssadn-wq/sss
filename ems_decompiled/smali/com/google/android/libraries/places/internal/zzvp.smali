.class public final Lcom/google/android/libraries/places/internal/zzvp;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzvp;",
        "Lcom/google/android/libraries/places/internal/zzvo;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzvp;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/libraries/places/internal/zzna;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/libraries/places/internal/zzabz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzabz<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzvp;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzvp;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzvp;->zzb:Lcom/google/android/libraries/places/internal/zzvp;

    const-class v1, Lcom/google/android/libraries/places/internal/zzvp;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzvp;->zzl:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzvp;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzvp;->zzh:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzB()Lcom/google/android/libraries/places/internal/zzabz;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzvp;->zzi:Lcom/google/android/libraries/places/internal/zzabz;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzvp;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzvp;->zzk:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/libraries/places/internal/zzvp;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzvp;->zzb:Lcom/google/android/libraries/places/internal/zzvp;

    return-object v0
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
    iput-byte p3, p0, Lcom/google/android/libraries/places/internal/zzvp;->zzl:B

    return-object v3

    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzvp;->zzb:Lcom/google/android/libraries/places/internal/zzvp;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzvo;

    invoke-direct {p1, v3}, Lcom/google/android/libraries/places/internal/zzvo;-><init>(Lcom/google/android/libraries/places/internal/zztv;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/libraries/places/internal/zzvp;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzvp;-><init>()V

    return-object p1

    :cond_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zze"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const-string p2, "zzg"

    aput-object p2, p1, v4

    const-string p2, "zzh"

    aput-object p2, p1, v3

    const-string p2, "zzi"

    aput-object p2, p1, v2

    const-string p2, "zzj"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzk"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzvp;->zzb:Lcom/google/android/libraries/places/internal/zzvp;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1008\u0000\u0002\u1409\u0001\u0003\u1008\u0002\u0004\u001a\u0005\u1008\u0003\u0006\u1008\u0004"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzvp;->zzl:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
