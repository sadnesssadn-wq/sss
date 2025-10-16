.class public final Lc/d/a/b/i/n/d5;
.super Lc/d/a/b/i/n/a;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/b5;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/i/n/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final X(Lc/d/a/b/f/b;Lc/d/a/b/i/n/r2;)Lc/d/a/b/i/n/p3;
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/n/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/n/b;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lc/d/a/b/i/n/b;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/n/a;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/d/a/b/i/n/p3;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, Lc/d/a/b/i/n/p3;

    goto :goto_0

    :cond_1
    new-instance v0, Lc/d/a/b/i/n/c5;

    invoke-direct {v0, p2}, Lc/d/a/b/i/n/c5;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
