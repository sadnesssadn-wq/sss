.class public abstract Lc/d/a/b/k/i/i;
.super Lc/d/a/b/i/k/b;
.source ""

# interfaces
.implements Lc/d/a/b/k/i/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IOnMapClickListener"

    invoke-direct {p0, v0}, Lc/d/a/b/i/k/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final n(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    sget-object p1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    sget v0, Lc/d/a/b/i/k/c;->a:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    .line 2
    :goto_0
    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    move-object p2, p0

    check-cast p2, Lc/d/a/b/k/p;

    .line 3
    iget-object p2, p2, Lc/d/a/b/k/p;->c:Lc/d/a/b/k/a$a;

    invoke-interface {p2, p1}, Lc/d/a/b/k/a$a;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
