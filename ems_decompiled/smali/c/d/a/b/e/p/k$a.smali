.class public abstract Lc/d/a/b/e/p/k$a;
.super Lc/d/a/b/i/g/a;
.source ""

# interfaces
.implements Lc/d/a/b/e/p/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/p/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, v0}, Lc/d/a/b/i/g/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final n(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    const/4 p4, 0x1

    if-eq p1, p4, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Lc/d/a/b/e/p/v0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lc/d/a/b/i/g/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lc/d/a/b/e/p/v0;

    move-object v1, p0

    check-cast v1, Lc/d/a/b/e/p/b$j;

    .line 1
    iget-object v2, v1, Lc/d/a/b/e/p/b$j;->c:Lc/d/a/b/e/p/b;

    const-string v3, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "null reference"

    .line 2
    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p2, v2, Lc/d/a/b/e/p/b;->z:Lc/d/a/b/e/p/v0;

    invoke-virtual {v2}, Lc/d/a/b/e/p/b;->G()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p2, Lc/d/a/b/e/p/v0;->f:Lc/d/a/b/e/p/e;

    invoke-static {}, Lc/d/a/b/e/p/p;->a()Lc/d/a/b/e/p/p;

    move-result-object v3

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, v2, Lc/d/a/b/e/p/e;->c:Lc/d/a/b/e/p/q;

    .line 5
    :goto_0
    monitor-enter v3

    if-nez v2, :cond_2

    :try_start_0
    sget-object v2, Lc/d/a/b/e/p/p;->c:Lc/d/a/b/e/p/q;

    goto :goto_1

    :cond_2
    iget-object v4, v3, Lc/d/a/b/e/p/p;->a:Lc/d/a/b/e/p/q;

    if-eqz v4, :cond_3

    .line 6
    iget v4, v4, Lc/d/a/b/e/p/q;->c:I

    iget v5, v2, Lc/d/a/b/e/p/q;->c:I

    if-ge v4, v5, :cond_4

    .line 7
    :cond_3
    :goto_1
    iput-object v2, v3, Lc/d/a/b/e/p/p;->a:Lc/d/a/b/e/p/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3

    throw p1

    .line 8
    :cond_5
    :goto_2
    iget-object p2, p2, Lc/d/a/b/e/p/v0;->c:Landroid/os/Bundle;

    invoke-virtual {v1, p1, v0, p2}, Lc/d/a/b/e/p/b$j;->i0(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    goto :goto_3

    .line 9
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/d/a/b/i/g/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 10
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 11
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lc/d/a/b/i/g/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    move-object v1, p0

    check-cast v1, Lc/d/a/b/e/p/b$j;

    invoke-virtual {v1, p1, v0, p2}, Lc/d/a/b/e/p/b$j;->i0(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
