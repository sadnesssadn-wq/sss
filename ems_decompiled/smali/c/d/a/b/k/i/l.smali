.class public final Lc/d/a/b/k/i/l;
.super Lc/d/a/b/i/k/a;
.source ""

# interfaces
.implements Lc/d/a/b/k/i/a;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/i/k/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d0(Lcom/google/android/gms/maps/model/LatLng;F)Lc/d/a/b/f/b;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lc/d/a/b/f/b$a;->i0(Landroid/os/IBinder;)Lc/d/a/b/f/b;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final p(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lc/d/a/b/f/b;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/k/c;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lc/d/a/b/f/b$a;->i0(Landroid/os/IBinder;)Lc/d/a/b/f/b;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
