.class public final Lc/d/a/b/i/j/c0;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/i/j/c0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:I

.field public d:Lc/d/a/b/i/j/a0;

.field public e:Lc/d/a/b/j/q;

.field public f:Lc/d/a/b/i/j/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/i/j/d0;

    invoke-direct {v0}, Lc/d/a/b/i/j/d0;-><init>()V

    sput-object v0, Lc/d/a/b/i/j/c0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILc/d/a/b/i/j/a0;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput p1, p0, Lc/d/a/b/i/j/c0;->c:I

    iput-object p2, p0, Lc/d/a/b/i/j/c0;->d:Lc/d/a/b/i/j/a0;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 1
    :cond_0
    sget p2, Lc/d/a/b/j/r;->c:I

    const-string p2, "com.google.android.gms.location.IDeviceOrientationListener"

    invoke-interface {p3, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lc/d/a/b/j/q;

    if-eqz v0, :cond_1

    check-cast p2, Lc/d/a/b/j/q;

    goto :goto_0

    :cond_1
    new-instance p2, Lc/d/a/b/j/s;

    invoke-direct {p2, p3}, Lc/d/a/b/j/s;-><init>(Landroid/os/IBinder;)V

    .line 2
    :goto_0
    iput-object p2, p0, Lc/d/a/b/i/j/c0;->e:Lc/d/a/b/j/q;

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p4, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Lc/d/a/b/i/j/f;

    if-eqz p2, :cond_3

    check-cast p1, Lc/d/a/b/i/j/f;

    goto :goto_1

    :cond_3
    new-instance p1, Lc/d/a/b/i/j/h;

    invoke-direct {p1, p4}, Lc/d/a/b/i/j/h;-><init>(Landroid/os/IBinder;)V

    :goto_1
    iput-object p1, p0, Lc/d/a/b/i/j/c0;->f:Lc/d/a/b/i/j/f;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lc/d/a/b/i/j/c0;->c:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lc/d/a/b/i/j/c0;->d:Lc/d/a/b/i/j/a0;

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    iget-object v1, p0, Lc/d/a/b/i/j/c0;->e:Lc/d/a/b/j/q;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-static {p1, p2, v1, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object p2, p0, Lc/d/a/b/i/j/c0;->f:Lc/d/a/b/i/j/f;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    invoke-static {p1, v3, v2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 5
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
