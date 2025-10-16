.class public Lc/b/p/e/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/b/p/e/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private distance:Ljava/lang/String;

.field private estimatedTimeLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/p/e/f;",
            ">;"
        }
    .end annotation
.end field

.field private totalFreight:D
    .annotation runtime Lc/d/c/v/c;
        value = "total_freight"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/p/e/m$a;

    invoke-direct {v0}, Lc/b/p/e/m$a;-><init>()V

    sput-object v0, Lc/b/p/e/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lc/b/p/e/m;->totalFreight:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/p/e/m;->distance:Ljava/lang/String;

    sget-object v0, Lc/b/p/e/f;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lc/b/p/e/m;->estimatedTimeLine:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/m;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/b/p/e/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/p/e/m;->estimatedTimeLine:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/p/e/m;->estimatedTimeLine:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/b/p/e/m;->estimatedTimeLine:Ljava/util/List;

    return-object v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lc/b/p/e/m;->totalFreight:D

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lc/b/p/e/m;->totalFreight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lc/b/p/e/m;->distance:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/p/e/m;->estimatedTimeLine:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
