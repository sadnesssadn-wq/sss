.class public final Lcom/google/android/libraries/places/internal/zzxl;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzxl;",
        "Lcom/google/android/libraries/places/internal/zzxj;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzxl;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzxl;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzxl;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzxl;->zzb:Lcom/google/android/libraries/places/internal/zzxl;

    const-class v1, Lcom/google/android/libraries/places/internal/zzxl;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzxj;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzxl;->zzb:Lcom/google/android/libraries/places/internal/zzxl;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzx()Lcom/google/android/libraries/places/internal/zzabp;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzxj;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzxl;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzxl;->zzb:Lcom/google/android/libraries/places/internal/zzxl;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/libraries/places/internal/zzxl;I)V
    .locals 1

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzxl;->zzf:I

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzxl;->zze:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzxl;->zze:I

    return-void
.end method


# virtual methods
.method public final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzxl;->zzb:Lcom/google/android/libraries/places/internal/zzxl;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzxj;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzxj;-><init>(Lcom/google/android/libraries/places/internal/zztv;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzxl;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzxl;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zze"

    aput-object v3, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzxk;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/libraries/places/internal/zzxl;->zzb:Lcom/google/android/libraries/places/internal/zzxl;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1004\u0001\u0003\u1007\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
