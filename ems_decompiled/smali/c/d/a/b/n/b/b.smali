.class public final Lc/d/a/b/n/b/b;
.super Lc/d/a/b/e/p/r/a;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/j;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/n/b/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public d:I

.field public e:Landroid/content/Intent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/n/b/d;

    invoke-direct {v0}, Lc/d/a/b/n/b/d;-><init>()V

    sput-object v0, Lc/d/a/b/n/b/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lc/d/a/b/n/b/b;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/b/n/b/b;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/b/n/b/b;->e:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput p1, p0, Lc/d/a/b/n/b/b;->c:I

    iput p2, p0, Lc/d/a/b/n/b/b;->d:I

    iput-object p3, p0, Lc/d/a/b/n/b/b;->e:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final l()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget v0, p0, Lc/d/a/b/n/b/b;->d:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->h:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->l:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lc/d/a/b/n/b/b;->c:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 4
    iget v2, p0, Lc/d/a/b/n/b/b;->d:I

    .line 5
    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x3

    .line 6
    iget-object v2, p0, Lc/d/a/b/n/b/b;->e:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 7
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
