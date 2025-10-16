.class public final Lc/d/a/b/i/j/j;
.super Lc/d/a/b/i/j/a;
.source ""

# interfaces
.implements Lc/d/a/b/i/j/i;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/i/j/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final J(Z)V
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/j/a;->n()Landroid/os/Parcel;

    move-result-object v0

    .line 1
    sget v1, Lc/d/a/b/i/j/x;->a:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xc

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/j/a;->i0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final M(Lc/d/a/b/i/j/v;)V
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/j/a;->n()Landroid/os/Parcel;

    move-result-object v0

    .line 1
    sget v1, Lc/d/a/b/i/j/x;->a:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lc/d/a/b/i/j/v;->writeToParcel(Landroid/os/Parcel;I)V

    const/16 p1, 0x3b

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/j/a;->i0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final h0(Lc/d/a/b/i/j/c0;)V
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/j/a;->n()Landroid/os/Parcel;

    move-result-object v0

    .line 1
    sget v1, Lc/d/a/b/i/j/x;->a:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lc/d/a/b/i/j/c0;->writeToParcel(Landroid/os/Parcel;I)V

    const/16 p1, 0x4b

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/j/a;->i0(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)Landroid/location/Location;
    .locals 4

    invoke-virtual {p0}, Lc/d/a/b/i/j/a;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    :try_start_0
    iget-object v1, p0, Lc/d/a/b/i/j/a;->c:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/16 v3, 0x15

    invoke-interface {v1, v3, v0, p1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lc/d/a/b/i/j/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
