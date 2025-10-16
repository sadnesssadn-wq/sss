.class public Lc/b/m/d/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/b/m/d/i0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private paid:Lc/b/m/d/z;

.field private received:Lc/b/m/d/b0;

.field private uncollect:Lc/b/m/d/j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/m/d/i0$a;

    invoke-direct {v0}, Lc/b/m/d/i0$a;-><init>()V

    sput-object v0, Lc/b/m/d/i0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lc/b/m/d/b0;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/b0;

    iput-object v0, p0, Lc/b/m/d/i0;->received:Lc/b/m/d/b0;

    const-class v0, Lc/b/m/d/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/z;

    iput-object v0, p0, Lc/b/m/d/i0;->paid:Lc/b/m/d/z;

    const-class v0, Lc/b/m/d/j0;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/b/m/d/j0;

    iput-object p1, p0, Lc/b/m/d/i0;->uncollect:Lc/b/m/d/j0;

    return-void
.end method


# virtual methods
.method public a()Lc/b/m/d/z;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/i0;->paid:Lc/b/m/d/z;

    return-object v0
.end method

.method public b()Lc/b/m/d/b0;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/i0;->received:Lc/b/m/d/b0;

    return-object v0
.end method

.method public c()Lc/b/m/d/j0;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/i0;->uncollect:Lc/b/m/d/j0;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lc/b/m/d/i0;->received:Lc/b/m/d/b0;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lc/b/m/d/i0;->paid:Lc/b/m/d/z;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lc/b/m/d/i0;->uncollect:Lc/b/m/d/j0;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
