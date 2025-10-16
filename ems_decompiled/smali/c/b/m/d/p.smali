.class public Lc/b/m/d/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/b/m/d/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fee:Lc/b/m/d/k;

.field private money_collect:Ljava/lang/String;

.field private tracking_code:Ljava/lang/String;

.field private vas:Lc/b/m/d/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/m/d/p$a;

    invoke-direct {v0}, Lc/b/m/d/p$a;-><init>()V

    sput-object v0, Lc/b/m/d/p;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lc/b/m/d/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/k;

    iput-object v0, p0, Lc/b/m/d/p;->fee:Lc/b/m/d/k;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/p;->tracking_code:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/p;->money_collect:Ljava/lang/String;

    const-class v0, Lc/b/m/d/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/b/m/d/y;

    iput-object p1, p0, Lc/b/m/d/p;->vas:Lc/b/m/d/y;

    return-void
.end method


# virtual methods
.method public a()Lc/b/m/d/k;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/p;->fee:Lc/b/m/d/k;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/p;->money_collect:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/p;->tracking_code:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Lc/b/m/d/y;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/p;->vas:Lc/b/m/d/y;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lc/b/m/d/p;->fee:Lc/b/m/d/k;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lc/b/m/d/p;->tracking_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/p;->money_collect:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/p;->vas:Lc/b/m/d/y;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
