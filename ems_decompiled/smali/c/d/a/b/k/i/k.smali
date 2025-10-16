.class public abstract Lc/d/a/b/k/i/k;
.super Lc/d/a/b/i/k/b;
.source ""

# interfaces
.implements Lc/d/a/b/k/i/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IOnMapReadyCallback"

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
    const-string p2, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lc/d/a/b/k/i/b;

    if-eqz v0, :cond_1

    move-object p1, p2

    check-cast p1, Lc/d/a/b/k/i/b;

    goto :goto_0

    :cond_1
    new-instance p2, Lc/d/a/b/k/i/v;

    invoke-direct {p2, p1}, Lc/d/a/b/k/i/v;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_0
    invoke-interface {p0, p1}, Lc/d/a/b/k/i/j;->Q(Lc/d/a/b/k/i/b;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
