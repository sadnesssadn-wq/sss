.class public final Lcom/google/android/libraries/places/internal/zzvf;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzvf;",
        "Lcom/google/android/libraries/places/internal/zzve;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzvf;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/libraries/places/internal/zzabz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzabz<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Z

.field private zzk:Lcom/google/android/libraries/places/internal/zzabz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzabz<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzvf;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzvf;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzvf;->zzb:Lcom/google/android/libraries/places/internal/zzvf;

    const-class v1, Lcom/google/android/libraries/places/internal/zzvf;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzB()Lcom/google/android/libraries/places/internal/zzabz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzvf;->zzg:Lcom/google/android/libraries/places/internal/zzabz;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzvf;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzvf;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzB()Lcom/google/android/libraries/places/internal/zzabz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzvf;->zzk:Lcom/google/android/libraries/places/internal/zzabz;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzve;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzvf;->zzb:Lcom/google/android/libraries/places/internal/zzvf;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzx()Lcom/google/android/libraries/places/internal/zzabp;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzve;

    return-object v0
.end method

.method public static synthetic zzb()Lcom/google/android/libraries/places/internal/zzvf;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzvf;->zzb:Lcom/google/android/libraries/places/internal/zzvf;

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/libraries/places/internal/zzvf;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzvf;->zzg:Lcom/google/android/libraries/places/internal/zzabz;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzabz;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzC(Lcom/google/android/libraries/places/internal/zzabz;)Lcom/google/android/libraries/places/internal/zzabz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzvf;->zzg:Lcom/google/android/libraries/places/internal/zzabz;

    :cond_0
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzvf;->zzg:Lcom/google/android/libraries/places/internal/zzabz;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    sget-object p1, Lcom/google/android/libraries/places/internal/zzvf;->zzb:Lcom/google/android/libraries/places/internal/zzvf;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzve;

    invoke-direct {p1, p2}, Lcom/google/android/libraries/places/internal/zzve;-><init>(Lcom/google/android/libraries/places/internal/zztv;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzvf;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzvf;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

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

    sget-object p2, Lcom/google/android/libraries/places/internal/zzvf;->zzb:Lcom/google/android/libraries/places/internal/zzvf;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001a\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1007\u0003\u0006\u001a"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
