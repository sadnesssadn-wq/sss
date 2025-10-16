.class public final Lc/d/a/b/k/i/v;
.super Lc/d/a/b/i/k/a;
.source ""

# interfaces
.implements Lc/d/a/b/k/i/b;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IGoogleMapDelegate"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/i/k/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x5f

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->j0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final E(Lc/d/a/b/k/j/b;)Lc/d/a/b/i/k/g;
    .locals 3

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x23

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1
    sget v1, Lc/d/a/b/i/k/h;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.maps.model.internal.ICircleDelegate"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lc/d/a/b/i/k/g;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lc/d/a/b/i/k/g;

    goto :goto_0

    :cond_1
    new-instance v1, Lc/d/a/b/i/k/i;

    invoke-direct {v1, v0}, Lc/d/a/b/i/k/i;-><init>(Landroid/os/IBinder;)V

    move-object v0, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final N(Lc/d/a/b/f/b;)V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->j0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final c0(Z)V
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    .line 1
    sget v1, Lc/d/a/b/i/k/c;->a:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x16

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->j0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final clear()V
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lc/d/a/b/i/k/a;->j0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final g0(Lc/d/a/b/k/j/d;)Lc/d/a/b/i/k/j;
    .locals 3

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1
    sget v1, Lc/d/a/b/i/k/k;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lc/d/a/b/i/k/j;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lc/d/a/b/i/k/j;

    goto :goto_0

    :cond_1
    new-instance v1, Lc/d/a/b/i/k/l;

    invoke-direct {v1, v0}, Lc/d/a/b/i/k/l;-><init>(Landroid/os/IBinder;)V

    move-object v0, v1

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final s()Lc/d/a/b/k/i/g;
    .locals 4

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {p0, v1, v0}, Lc/d/a/b/i/k/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lc/d/a/b/k/i/g;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lc/d/a/b/k/i/g;

    goto :goto_0

    :cond_1
    new-instance v2, Lc/d/a/b/k/i/q;

    invoke-direct {v2, v1}, Lc/d/a/b/k/i/q;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final y(Lc/d/a/b/k/i/h;)V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x1c

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->j0(ILandroid/os/Parcel;)V

    return-void
.end method
