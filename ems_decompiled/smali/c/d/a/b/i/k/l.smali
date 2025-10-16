.class public final Lc/d/a/b/i/k/l;
.super Lc/d/a/b/i/k/a;
.source ""

# interfaces
.implements Lc/d/a/b/i/k/j;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/i/k/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final F(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->j0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final P()I
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lc/d/a/b/i/k/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final u(Lc/d/a/b/i/k/j;)Z
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method
