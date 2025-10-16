.class public final synthetic Lcom/google/android/libraries/places/internal/zzat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/c;


# static fields
.field public static final synthetic zza:Lcom/google/android/libraries/places/internal/zzat;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzat;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzat;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzat;->zza:Lcom/google/android/libraries/places/internal/zzat;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lc/d/a/b/p/l;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lc/d/a/b/p/l;->j()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of p1, v0, Lc/d/a/b/e/m/b;

    if-eqz p1, :cond_0

    check-cast v0, Lc/d/a/b/e/m/b;

    goto :goto_0

    :cond_0
    new-instance p1, Lc/d/a/b/e/m/b;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v1}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    move-object v0, p1

    :goto_0
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->P(Ljava/lang/Exception;)Lc/d/a/b/p/l;

    move-result-object p1

    :cond_1
    return-object p1
.end method
