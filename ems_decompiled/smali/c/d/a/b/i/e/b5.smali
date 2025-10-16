.class public final Lc/d/a/b/i/e/b5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/a5;
.implements Landroid/os/IInterface;


# instance fields
.field public final c:Landroid/os/IBinder;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/e/b5;->c:Landroid/os/IBinder;

    const-string p1, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    iput-object p1, p0, Lc/d/a/b/i/e/b5;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final K(Lc/d/a/b/i/e/y4;Lc/d/a/b/c/f;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/i/e/b5;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2
    sget v1, Lc/d/a/b/i/e/r0;->a:I

    check-cast p1, Lc/d/a/b/i/e/w;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, p1}, Lc/d/a/b/c/f;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    :goto_0
    :try_start_0
    iget-object p1, p0, Lc/d/a/b/i/e/b5;->c:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, v1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/i/e/b5;->c:Landroid/os/IBinder;

    return-object v0
.end method
