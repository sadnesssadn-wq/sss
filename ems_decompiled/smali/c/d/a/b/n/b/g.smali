.class public final Lc/d/a/b/n/b/g;
.super Lc/d/a/b/i/d/b;
.source ""

# interfaces
.implements Lc/d/a/b/n/b/h;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/i/d/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final U(Lc/d/a/b/n/b/k;Lc/d/a/b/n/b/f;)V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/d/b;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/d/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lc/d/a/b/i/d/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/d/b;->i0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final b0(Lc/d/a/b/e/p/j;IZ)V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/d/b;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/d/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x9

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/d/b;->i0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final j(I)V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/d/b;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/d/b;->i0(ILandroid/os/Parcel;)V

    return-void
.end method
