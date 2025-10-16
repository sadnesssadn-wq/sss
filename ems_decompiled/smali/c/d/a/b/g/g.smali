.class public final Lc/d/a/b/g/g;
.super Lc/d/a/b/i/g/b;
.source ""

# interfaces
.implements Lc/d/a/b/g/h;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoader"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/i/g/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final C(Lc/d/a/b/f/b;Ljava/lang/String;Z)I
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/g/b;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/g/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/g/b;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public final G(Lc/d/a/b/f/b;Ljava/lang/String;I)Lc/d/a/b/f/b;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/g/b;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/g/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/g/b;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lc/d/a/b/f/b$a;->i0(Landroid/os/IBinder;)Lc/d/a/b/f/b;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final S(Lc/d/a/b/f/b;Ljava/lang/String;ZJ)Lc/d/a/b/f/b;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/g/b;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/g/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/g/b;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lc/d/a/b/f/b$a;->i0(Landroid/os/IBinder;)Lc/d/a/b/f/b;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final Y(Lc/d/a/b/f/b;Ljava/lang/String;I)Lc/d/a/b/f/b;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/g/b;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/g/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/g/b;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lc/d/a/b/f/b$a;->i0(Landroid/os/IBinder;)Lc/d/a/b/f/b;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final i(Lc/d/a/b/f/b;Ljava/lang/String;ILc/d/a/b/f/b;)Lc/d/a/b/f/b;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/g/b;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/g/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4}, Lc/d/a/b/i/g/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/g/b;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lc/d/a/b/f/b$a;->i0(Landroid/os/IBinder;)Lc/d/a/b/f/b;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final o(Lc/d/a/b/f/b;Ljava/lang/String;Z)I
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/g/b;->n()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lc/d/a/b/i/g/c;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/g/b;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return p2
.end method

.method public final zzb()I
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/g/b;->n()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lc/d/a/b/i/g/b;->i0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
