.class public final Lc/d/a/b/e/p/w0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lc/d/a/b/e/p/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N0(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v7, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 2
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->L0(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->B0(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->v(Landroid/os/Parcel;I)[I

    move-result-object v7

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->v0(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->v0(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_0

    :cond_4
    sget-object v2, Lc/d/a/b/e/p/q;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->w(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lc/d/a/b/e/p/q;

    goto :goto_0

    :cond_5
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->L(Landroid/os/Parcel;I)V

    new-instance p1, Lc/d/a/b/e/p/e;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lc/d/a/b/e/p/e;-><init>(Lc/d/a/b/e/p/q;ZZ[II)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lc/d/a/b/e/p/e;

    return-object p1
.end method
