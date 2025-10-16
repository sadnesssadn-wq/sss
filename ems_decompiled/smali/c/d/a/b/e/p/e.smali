.class public Lc/d/a/b/e/p/e;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/e/p/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lc/d/a/b/e/p/q;

.field public final d:Z

.field public final e:Z

.field public final f:[I

.field public final g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/e/p/w0;

    invoke-direct {v0}, Lc/d/a/b/e/p/w0;-><init>()V

    sput-object v0, Lc/d/a/b/e/p/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/e/p/q;ZZ[II)V
    .locals 0
    .param p1    # Lc/d/a/b/e/p/q;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/p/e;->c:Lc/d/a/b/e/p/q;

    iput-boolean p2, p0, Lc/d/a/b/e/p/e;->d:Z

    iput-boolean p3, p0, Lc/d/a/b/e/p/e;->e:Z

    iput-object p4, p0, Lc/d/a/b/e/p/e;->f:[I

    iput p5, p0, Lc/d/a/b/e/p/e;->g:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lc/d/a/b/e/p/e;->c:Lc/d/a/b/e/p/q;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    iget-boolean p2, p0, Lc/d/a/b/e/p/e;->d:Z

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-boolean p2, p0, Lc/d/a/b/e/p/e;->e:Z

    const/4 v1, 0x3

    .line 7
    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lc/d/a/b/e/p/e;->f:[I

    .line 9
    invoke-static {p1, v2, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->T0(Landroid/os/Parcel;I[IZ)V

    .line 10
    iget p2, p0, Lc/d/a/b/e/p/e;->g:I

    const/4 v1, 0x5

    .line 11
    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
