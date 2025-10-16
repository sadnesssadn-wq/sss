.class public final Lcom/google/android/libraries/places/internal/zzjc;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zza:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/libraries/places/internal/zziw;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/libraries/places/internal/zzjc;


# instance fields
.field private final zzd:Lcom/google/android/libraries/places/internal/zzja;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/libraries/places/internal/zziu;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zziu;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzjc;->zza:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/libraries/places/internal/zziv;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zziv;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzjc;->zzb:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzjc;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzja;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/libraries/places/internal/zzja;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzjc;-><init>(Lcom/google/android/libraries/places/internal/zzja;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzjc;->zzc:Lcom/google/android/libraries/places/internal/zzjc;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzja;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzjc;->zzd:Lcom/google/android/libraries/places/internal/zzja;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzjc;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzjc;->zzc:Lcom/google/android/libraries/places/internal/zzjc;

    return-object v0
.end method

.method public static synthetic zzb()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzjc;->zza:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzjc;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzjc;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzjc;->zzd:Lcom/google/android/libraries/places/internal/zzja;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjc;->zzd:Lcom/google/android/libraries/places/internal/zzja;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjc;->zzd:Lcom/google/android/libraries/places/internal/zzja;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzja;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjc;->zzd:Lcom/google/android/libraries/places/internal/zzja;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzja;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
