.class public final Lc/d/a/b/e/p/o0;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/e/p/o0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public d:Landroid/os/IBinder;

.field public e:Lc/d/a/b/e/a;

.field public f:Z

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/e/p/r0;

    invoke-direct {v0}, Lc/d/a/b/e/p/r0;-><init>()V

    sput-object v0, Lc/d/a/b/e/p/o0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lc/d/a/b/e/a;ZZ)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput p1, p0, Lc/d/a/b/e/p/o0;->c:I

    iput-object p2, p0, Lc/d/a/b/e/p/o0;->d:Landroid/os/IBinder;

    iput-object p3, p0, Lc/d/a/b/e/p/o0;->e:Lc/d/a/b/e/a;

    iput-boolean p4, p0, Lc/d/a/b/e/p/o0;->f:Z

    iput-boolean p5, p0, Lc/d/a/b/e/p/o0;->g:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lc/d/a/b/e/p/o0;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lc/d/a/b/e/p/o0;

    iget-object v2, p0, Lc/d/a/b/e/p/o0;->e:Lc/d/a/b/e/a;

    iget-object v3, p1, Lc/d/a/b/e/p/o0;->e:Lc/d/a/b/e/a;

    invoke-virtual {v2, v3}, Lc/d/a/b/e/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lc/d/a/b/e/p/o0;->v()Lc/d/a/b/e/p/j;

    move-result-object v2

    invoke-virtual {p1}, Lc/d/a/b/e/p/o0;->v()Lc/d/a/b/e/p/j;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final v()Lc/d/a/b/e/p/j;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/p/o0;->d:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lc/d/a/b/e/p/j$a;->i0(Landroid/os/IBinder;)Lc/d/a/b/e/p/j;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lc/d/a/b/e/p/o0;->c:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lc/d/a/b/e/p/o0;->d:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lc/d/a/b/e/p/o0;->e:Lc/d/a/b/e/a;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lc/d/a/b/e/p/o0;->f:Z

    .line 5
    invoke-static {p1, v3, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x5

    .line 6
    iget-boolean v1, p0, Lc/d/a/b/e/p/o0;->g:Z

    .line 7
    invoke-static {p1, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
