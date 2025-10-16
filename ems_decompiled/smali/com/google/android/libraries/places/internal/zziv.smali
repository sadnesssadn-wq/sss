.class public final Lcom/google/android/libraries/places/internal/zziv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/libraries/places/internal/zziw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/libraries/places/internal/zziw;

    check-cast p2, Lcom/google/android/libraries/places/internal/zziw;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zziw;->zza(Lcom/google/android/libraries/places/internal/zziw;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zziw;->zza(Lcom/google/android/libraries/places/internal/zziw;)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method
