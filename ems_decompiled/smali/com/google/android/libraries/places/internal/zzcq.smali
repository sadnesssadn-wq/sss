.class public final Lcom/google/android/libraries/places/internal/zzcq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzcm;

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/p/m<",
            "*>;",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzcm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcq;->zza:Lcom/google/android/libraries/places/internal/zzcm;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcq;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lc/d/a/b/p/m;JLjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/d/a/b/p/m<",
            "TT;>;J",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zzcq;->zzb:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p4, Landroid/os/HandlerThread;

    const-string v0, "timeoutHandlerThread"

    invoke-direct {p4, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcq;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {v0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Lcom/google/android/libraries/places/internal/zzcp;

    const-string v1, "Location timeout."

    invoke-direct {p4, p1, v1}, Lcom/google/android/libraries/places/internal/zzcp;-><init>(Lc/d/a/b/p/m;Ljava/lang/String;)V

    invoke-virtual {v0, p4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final zzb(Lc/d/a/b/p/m;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/m<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcq;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/HandlerThread;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    move-result p1

    return p1
.end method
