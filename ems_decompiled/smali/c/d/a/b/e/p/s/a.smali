.class public final Lc/d/a/b/e/p/s/a;
.super Lc/d/a/b/i/d/b;
.source ""

# interfaces
.implements Lc/d/a/b/e/p/s/b;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.IClientTelemetryService"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/i/d/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final W(Lc/d/a/b/e/p/u;)V
    .locals 3

    invoke-virtual {p0}, Lc/d/a/b/i/d/b;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/d/c;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 1
    :try_start_0
    iget-object p1, p0, Lc/d/a/b/i/d/b;->c:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
