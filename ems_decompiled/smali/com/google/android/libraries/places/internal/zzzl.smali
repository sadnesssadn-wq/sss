.class public final Lcom/google/android/libraries/places/internal/zzzl;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzzl;",
        "Lcom/google/android/libraries/places/internal/zzzk;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzzl;


# instance fields
.field private zze:Lcom/google/android/libraries/places/internal/zzabz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzabz<",
            "Lcom/google/android/libraries/places/internal/zzzw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzzl;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzzl;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzzl;->zzb:Lcom/google/android/libraries/places/internal/zzzl;

    const-class v1, Lcom/google/android/libraries/places/internal/zzzl;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabs;->zzB()Lcom/google/android/libraries/places/internal/zzabz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzzl;->zze:Lcom/google/android/libraries/places/internal/zzabz;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/libraries/places/internal/zzzl;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzzl;->zzb:Lcom/google/android/libraries/places/internal/zzzl;

    return-object v0
.end method


# virtual methods
.method public final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzzl;->zzb:Lcom/google/android/libraries/places/internal/zzzl;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzzk;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzzk;-><init>(Lcom/google/android/libraries/places/internal/zzzj;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzzl;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzzl;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p3

    const-class p3, Lcom/google/android/libraries/places/internal/zzzw;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/libraries/places/internal/zzzl;->zzb:Lcom/google/android/libraries/places/internal/zzzl;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
