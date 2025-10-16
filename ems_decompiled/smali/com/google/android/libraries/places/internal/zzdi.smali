.class public final synthetic Lcom/google/android/libraries/places/internal/zzdi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/e;


# static fields
.field public static final synthetic zza:Lcom/google/android/libraries/places/internal/zzdi;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzdi;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzdi;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzdi;->zza:Lcom/google/android/libraries/places/internal/zzdi;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/google/android/libraries/places/internal/zzjr;

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzacz;->zzv()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzabf;->zzC([B)Lcom/google/android/libraries/places/internal/zzabf;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/libraries/places/internal/zzacz;->zzH(Lcom/google/android/libraries/places/internal/zzabf;)V

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzabf;->zzD()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x48

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Serializing "

    const-string v4, " to a byte array threw an IOException (should never happen)."

    invoke-static {v3, v2, p1, v4}, Lc/a/a/a/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
