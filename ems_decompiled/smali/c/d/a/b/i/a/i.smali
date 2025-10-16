.class public final synthetic Lc/d/a/b/i/a/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/o;


# instance fields
.field public final synthetic a:Lc/d/a/b/i/a/b;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/b/i/a/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/a/i;->a:Lc/d/a/b/i/a/b;

    iput-object p2, p0, Lc/d/a/b/i/a/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/i/a/i;->b:Ljava/lang/String;

    check-cast p1, Lc/d/a/b/i/a/h;

    check-cast p2, Lc/d/a/b/p/m;

    invoke-virtual {p1}, Lc/d/a/b/e/p/b;->B()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/a/f;

    new-instance v1, Lc/d/a/b/i/a/a;

    invoke-direct {v1, p2}, Lc/d/a/b/i/a/a;-><init>(Lc/d/a/b/p/m;)V

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    iget-object v2, p1, Lc/d/a/b/i/a/f;->d:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    sget v0, Lc/d/a/b/i/a/e;->a:I

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    iget-object p1, p1, Lc/d/a/b/i/a/f;->c:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v2, p2, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
