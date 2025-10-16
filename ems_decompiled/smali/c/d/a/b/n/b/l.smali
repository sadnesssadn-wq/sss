.class public final Lc/d/a/b/n/b/l;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/n/b/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:Lc/d/a/b/e/a;

.field public final e:Lc/d/a/b/e/p/o0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/n/b/n;

    invoke-direct {v0}, Lc/d/a/b/n/b/n;-><init>()V

    sput-object v0, Lc/d/a/b/n/b/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Lc/d/a/b/e/a;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/d/a/b/e/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 1
    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lc/d/a/b/n/b/l;->c:I

    iput-object v0, p0, Lc/d/a/b/n/b/l;->d:Lc/d/a/b/e/a;

    iput-object v2, p0, Lc/d/a/b/n/b/l;->e:Lc/d/a/b/e/p/o0;

    return-void
.end method

.method public constructor <init>(ILc/d/a/b/e/a;Lc/d/a/b/e/p/o0;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput p1, p0, Lc/d/a/b/n/b/l;->c:I

    iput-object p2, p0, Lc/d/a/b/n/b/l;->d:Lc/d/a/b/e/a;

    iput-object p3, p0, Lc/d/a/b/n/b/l;->e:Lc/d/a/b/e/p/o0;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lc/d/a/b/n/b/l;->c:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lc/d/a/b/n/b/l;->d:Lc/d/a/b/e/a;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lc/d/a/b/n/b/l;->e:Lc/d/a/b/e/p/o0;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
