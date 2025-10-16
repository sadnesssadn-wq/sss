.class public final Lc/d/a/b/k/j/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/a/b/i/k/j;


# direct methods
.method public constructor <init>(Lc/d/a/b/i/k/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lc/d/a/b/k/j/c;->a:Lc/d/a/b/i/k/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/k/j/c;->a:Lc/d/a/b/i/k/j;

    invoke-interface {v0, p1}, Lc/d/a/b/i/k/j;->F(Lcom/google/android/gms/maps/model/LatLng;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lc/d/a/b/k/j/f;

    invoke-direct {v0, p1}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "latlng cannot be null - a position is required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lc/d/a/b/k/j/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/k/j/c;->a:Lc/d/a/b/i/k/j;

    check-cast p1, Lc/d/a/b/k/j/c;

    iget-object p1, p1, Lc/d/a/b/k/j/c;->a:Lc/d/a/b/i/k/j;

    invoke-interface {v0, p1}, Lc/d/a/b/i/k/j;->u(Lc/d/a/b/i/k/j;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lc/d/a/b/k/j/f;

    invoke-direct {v0, p1}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/k/j/c;->a:Lc/d/a/b/i/k/j;

    invoke-interface {v0}, Lc/d/a/b/i/k/j;->P()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
