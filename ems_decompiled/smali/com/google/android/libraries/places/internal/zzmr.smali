.class public final Lcom/google/android/libraries/places/internal/zzmr;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "Lcom/google/android/libraries/places/internal/zzmr;",
        "Lcom/google/android/libraries/places/internal/zzmq;",
        ">;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/libraries/places/internal/zzmr;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzmr;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzmr;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzmr;->zzb:Lcom/google/android/libraries/places/internal/zzmr;

    const-class v1, Lcom/google/android/libraries/places/internal/zzmr;

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzabs;->zzG(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzabs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/libraries/places/internal/zzmr;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzmr;->zzb:Lcom/google/android/libraries/places/internal/zzmr;

    return-object v0
.end method


# virtual methods
.method public final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmr;->zzb:Lcom/google/android/libraries/places/internal/zzmr;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmq;

    invoke-direct {p1, p3}, Lcom/google/android/libraries/places/internal/zzmq;-><init>(Lcom/google/android/libraries/places/internal/zzmp;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/libraries/places/internal/zzmr;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzmr;-><init>()V

    return-object p1

    :cond_3
    sget-object p1, Lcom/google/android/libraries/places/internal/zzmr;->zzb:Lcom/google/android/libraries/places/internal/zzmr;

    const-string p2, "\u0001\u0000"

    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzabs;->zzF(Lcom/google/android/libraries/places/internal/zzacz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
