.class public final Lcom/google/android/libraries/places/internal/zzwo;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzwo;",
        "Lcom/google/android/libraries/places/internal/zzwn;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzwo;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/libraries/places/internal/zzabz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzabz<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/libraries/places/internal/zzxn;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzwo;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzwo;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzwo;->zzb:Lcom/google/android/libraries/places/internal/zzwo;

    const-class v1, Lcom/google/android/libraries/places/internal/zzwo;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzB()Lcom/google/android/libraries/places/internal/zzabz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzwo;->zzf:Lcom/google/android/libraries/places/internal/zzabz;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzwn;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzwo;->zzb:Lcom/google/android/libraries/places/internal/zzwo;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzx()Lcom/google/android/libraries/places/internal/zzabp;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzwn;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzwo;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzwo;->zzb:Lcom/google/android/libraries/places/internal/zzwo;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/libraries/places/internal/zzwo;I)V
    .locals 0

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwo;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwo;->zze:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwo;->zzh:I

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/libraries/places/internal/zzwo;Lcom/google/android/libraries/places/internal/zzxn;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzwo;->zzi:Lcom/google/android/libraries/places/internal/zzxn;

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzwo;->zze:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzwo;->zze:I

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzwo;->zzb:Lcom/google/android/libraries/places/internal/zzwo;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzwn;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzwn;-><init>(Lcom/google/android/libraries/places/internal/zztv;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzwo;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzwo;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzuk;->zza:Lcom/google/android/libraries/places/internal/zzabv;

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/libraries/places/internal/zzwo;->zzb:Lcom/google/android/libraries/places/internal/zzwo;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001a\u0002\u100c\u0000\u0003\u100b\u0001\u0004\u1009\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
