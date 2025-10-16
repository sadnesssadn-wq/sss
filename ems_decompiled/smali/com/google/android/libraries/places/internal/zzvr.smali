.class public final Lcom/google/android/libraries/places/internal/zzvr;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzvr;",
        "Lcom/google/android/libraries/places/internal/zzvq;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzvr;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/libraries/places/internal/zznc;

.field private zzh:Lcom/google/android/libraries/places/internal/zzvf;

.field private zzi:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzvr;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzvr;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzvr;->zzb:Lcom/google/android/libraries/places/internal/zzvr;

    const-class v1, Lcom/google/android/libraries/places/internal/zzvr;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/zzvr;->zzi:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzvr;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzvq;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzvr;->zzb:Lcom/google/android/libraries/places/internal/zzvr;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzx()Lcom/google/android/libraries/places/internal/zzabp;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzvq;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzvr;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzvr;->zzb:Lcom/google/android/libraries/places/internal/zzvr;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/libraries/places/internal/zzvr;Lcom/google/android/libraries/places/internal/zzvf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzvr;->zzh:Lcom/google/android/libraries/places/internal/zzvf;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzvr;->zze:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzvr;->zze:I

    return-void
.end method


# virtual methods
.method public final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-byte p3, p0, Lcom/google/android/libraries/places/internal/zzvr;->zzi:B

    return-object v2

    :cond_1
    sget-object p1, Lcom/google/android/libraries/places/internal/zzvr;->zzb:Lcom/google/android/libraries/places/internal/zzvr;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzvq;

    invoke-direct {p1, v2}, Lcom/google/android/libraries/places/internal/zzvq;-><init>(Lcom/google/android/libraries/places/internal/zztv;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/libraries/places/internal/zzvr;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzvr;-><init>()V

    return-object p1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "zze"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const-string p2, "zzg"

    aput-object p2, p1, v3

    const-string p2, "zzh"

    aput-object p2, p1, v2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzvr;->zzb:Lcom/google/android/libraries/places/internal/zzvr;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001\u1008\u0000\u0002\u1409\u0001\u0003\u1009\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/zzvr;->zzi:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
