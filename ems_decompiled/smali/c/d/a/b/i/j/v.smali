.class public final Lc/d/a/b/i/j/v;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/i/j/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:I

.field public d:Lc/d/a/b/i/j/t;

.field public e:Lc/d/a/b/j/w;

.field public f:Landroid/app/PendingIntent;

.field public g:Lc/d/a/b/j/t;

.field public h:Lc/d/a/b/i/j/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/i/j/w;

    invoke-direct {v0}, Lc/d/a/b/i/j/w;-><init>()V

    sput-object v0, Lc/d/a/b/i/j/v;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILc/d/a/b/i/j/t;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput p1, p0, Lc/d/a/b/i/j/v;->c:I

    iput-object p2, p0, Lc/d/a/b/i/j/v;->d:Lc/d/a/b/i/j/t;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 1
    :cond_0
    sget p2, Lc/d/a/b/j/x;->c:I

    const-string p2, "com.google.android.gms.location.ILocationListener"

    invoke-interface {p3, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lc/d/a/b/j/w;

    if-eqz v0, :cond_1

    check-cast p2, Lc/d/a/b/j/w;

    goto :goto_0

    :cond_1
    new-instance p2, Lc/d/a/b/j/y;

    invoke-direct {p2, p3}, Lc/d/a/b/j/y;-><init>(Landroid/os/IBinder;)V

    .line 2
    :goto_0
    iput-object p2, p0, Lc/d/a/b/i/j/v;->e:Lc/d/a/b/j/w;

    iput-object p4, p0, Lc/d/a/b/i/j/v;->f:Landroid/app/PendingIntent;

    if-nez p5, :cond_2

    move-object p2, p1

    goto :goto_1

    .line 3
    :cond_2
    sget p2, Lc/d/a/b/j/u;->c:I

    const-string p2, "com.google.android.gms.location.ILocationCallback"

    invoke-interface {p5, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lc/d/a/b/j/t;

    if-eqz p3, :cond_3

    check-cast p2, Lc/d/a/b/j/t;

    goto :goto_1

    :cond_3
    new-instance p2, Lc/d/a/b/j/v;

    invoke-direct {p2, p5}, Lc/d/a/b/j/v;-><init>(Landroid/os/IBinder;)V

    .line 4
    :goto_1
    iput-object p2, p0, Lc/d/a/b/i/j/v;->g:Lc/d/a/b/j/t;

    if-nez p6, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Lc/d/a/b/i/j/f;

    if-eqz p2, :cond_5

    check-cast p1, Lc/d/a/b/i/j/f;

    goto :goto_2

    :cond_5
    new-instance p1, Lc/d/a/b/i/j/h;

    invoke-direct {p1, p6}, Lc/d/a/b/i/j/h;-><init>(Landroid/os/IBinder;)V

    :goto_2
    iput-object p1, p0, Lc/d/a/b/i/j/v;->h:Lc/d/a/b/i/j/f;

    return-void
.end method

.method public static v(Lc/d/a/b/j/t;Lc/d/a/b/i/j/f;)Lc/d/a/b/i/j/v;
    .locals 8

    new-instance v7, Lc/d/a/b/i/j/v;

    move-object v5, p0

    check-cast v5, Lc/d/a/b/i/j/s;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v6, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lc/d/a/b/i/j/v;-><init>(ILc/d/a/b/i/j/t;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lc/d/a/b/i/j/v;->c:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lc/d/a/b/i/j/v;->d:Lc/d/a/b/i/j/t;

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lc/d/a/b/i/j/v;->e:Lc/d/a/b/j/w;

    const/4 v5, 0x0

    if-nez v2, :cond_0

    move-object v2, v5

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-static {p1, v1, v2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lc/d/a/b/i/j/v;->f:Landroid/app/PendingIntent;

    invoke-static {p1, v3, v1, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x5

    iget-object v1, p0, Lc/d/a/b/i/j/v;->g:Lc/d/a/b/j/t;

    if-nez v1, :cond_1

    move-object v1, v5

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    invoke-static {p1, p2, v1, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x6

    iget-object v1, p0, Lc/d/a/b/i/j/v;->h:Lc/d/a/b/i/j/f;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_2
    invoke-static {p1, p2, v5, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 5
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
