.class public final synthetic Lcom/google/android/libraries/places/internal/zzbv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/c;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzcb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzcb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbv;->zza:Lcom/google/android/libraries/places/internal/zzcb;

    return-void
.end method


# virtual methods
.method public final then(Lc/d/a/b/p/l;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbj;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbk;->zza(Lcom/google/android/libraries/places/internal/zzbj;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    move-result-object p1

    return-object p1
.end method
