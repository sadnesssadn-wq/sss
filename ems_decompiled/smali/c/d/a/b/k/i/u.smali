.class public final Lc/d/a/b/k/i/u;
.super Lc/d/a/b/i/k/a;
.source ""

# interfaces
.implements Lc/d/a/b/k/i/t;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/i/k/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final O(Lc/d/a/b/f/b;Lcom/google/android/gms/maps/GoogleMapOptions;)Lc/d/a/b/k/i/d;
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lc/d/a/b/i/k/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.IMapViewDelegate"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/d/a/b/k/i/d;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lc/d/a/b/k/i/d;

    goto :goto_0

    :cond_1
    new-instance v0, Lc/d/a/b/k/i/x;

    invoke-direct {v0, p2}, Lc/d/a/b/k/i/x;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final V(Lc/d/a/b/f/b;I)V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->j0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final Z()Lc/d/a/b/i/k/d;
    .locals 4

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lc/d/a/b/i/k/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1
    sget v2, Lc/d/a/b/i/k/e;->c:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lc/d/a/b/i/k/d;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lc/d/a/b/i/k/d;

    goto :goto_0

    :cond_1
    new-instance v2, Lc/d/a/b/i/k/f;

    invoke-direct {v2, v1}, Lc/d/a/b/i/k/f;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    .line 2
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final e0(Lc/d/a/b/f/b;)Lc/d/a/b/k/i/c;
    .locals 3

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lc/d/a/b/k/i/c;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lc/d/a/b/k/i/c;

    goto :goto_0

    :cond_1
    new-instance v1, Lc/d/a/b/k/i/w;

    invoke-direct {v1, v0}, Lc/d/a/b/k/i/w;-><init>(Landroid/os/IBinder;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final h()Lc/d/a/b/k/i/a;
    .locals 4

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lc/d/a/b/i/k/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lc/d/a/b/k/i/a;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lc/d/a/b/k/i/a;

    goto :goto_0

    :cond_1
    new-instance v2, Lc/d/a/b/k/i/l;

    invoke-direct {v2, v1}, Lc/d/a/b/k/i/l;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final q(Lc/d/a/b/f/b;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lc/d/a/b/k/i/f;
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lc/d/a/b/i/k/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/d/a/b/k/i/f;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lc/d/a/b/k/i/f;

    goto :goto_0

    :cond_1
    new-instance v0, Lc/d/a/b/k/i/p;

    invoke-direct {v0, p2}, Lc/d/a/b/k/i/p;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
