.class public abstract Lc/d/a/b/k/i/n;
.super Lc/d/a/b/i/k/b;
.source ""

# interfaces
.implements Lc/d/a/b/k/i/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IOnStreetViewPanoramaReadyCallback"

    invoke-direct {p0, v0}, Lc/d/a/b/i/k/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final n(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lc/d/a/b/k/i/e;

    if-eqz v0, :cond_1

    move-object p1, p2

    check-cast p1, Lc/d/a/b/k/i/e;

    goto :goto_0

    :cond_1
    new-instance p2, Lc/d/a/b/k/i/o;

    invoke-direct {p2, p1}, Lc/d/a/b/k/i/o;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_0
    move-object p2, p0

    check-cast p2, Lc/d/a/b/k/n;

    .line 1
    iget-object p2, p2, Lc/d/a/b/k/n;->c:Lc/d/a/b/k/d;

    new-instance v0, Lc/d/a/b/k/f;

    invoke-direct {v0, p1}, Lc/d/a/b/k/f;-><init>(Lc/d/a/b/k/i/e;)V

    invoke-interface {p2, v0}, Lc/d/a/b/k/d;->a(Lc/d/a/b/k/f;)V

    .line 2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
