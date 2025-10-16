.class public Lc/b/m/e/d/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/b/m/e/d/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Lc/b/m/e/d/a;

.field private fee:Lc/b/m/e/d/b;

.field private id:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "_id"
    .end annotation
.end field

.field private moneyCollect:D
    .annotation runtime Lc/d/c/v/c;
        value = "money_collect"
    .end annotation
.end field

.field private orderCode:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "order_code"
    .end annotation
.end field

.field private status:Ljava/lang/String;

.field private statusName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "status_name"
    .end annotation
.end field

.field private timeCreate:I
    .annotation runtime Lc/d/c/v/c;
        value = "time_create"
    .end annotation
.end field

.field private vas:Lc/b/m/e/d/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/m/e/d/c$a;

    invoke-direct {v0}, Lc/b/m/e/d/c$a;-><init>()V

    sput-object v0, Lc/b/m/e/d/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/c;->id:Ljava/lang/String;

    const-class v0, Lc/b/m/e/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/e/d/a;

    iput-object v0, p0, Lc/b/m/e/d/c;->data:Lc/b/m/e/d/a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/c;->orderCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/c;->status:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/b/m/e/d/c;->timeCreate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lc/b/m/e/d/c;->moneyCollect:D

    const-class v0, Lc/b/m/e/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/e/d/b;

    iput-object v0, p0, Lc/b/m/e/d/c;->fee:Lc/b/m/e/d/b;

    const-class v0, Lc/b/m/e/d/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/e/d/f;

    iput-object v0, p0, Lc/b/m/e/d/c;->vas:Lc/b/m/e/d/f;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/b/m/e/d/c;->statusName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lc/b/m/e/d/a;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/c;->data:Lc/b/m/e/d/a;

    return-object v0
.end method

.method public b()Lc/b/m/e/d/b;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/c;->fee:Lc/b/m/e/d/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/c;->id:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/c;->orderCode:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/c;->status:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/c;->statusName:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lc/b/m/e/d/c;->timeCreate:I

    return v0
.end method

.method public n()Lc/b/m/e/d/f;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/c;->vas:Lc/b/m/e/d/f;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lc/b/m/e/d/c;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/e/d/c;->data:Lc/b/m/e/d/a;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lc/b/m/e/d/c;->orderCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/e/d/c;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lc/b/m/e/d/c;->timeCreate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lc/b/m/e/d/c;->moneyCollect:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lc/b/m/e/d/c;->fee:Lc/b/m/e/d/b;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lc/b/m/e/d/c;->vas:Lc/b/m/e/d/f;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lc/b/m/e/d/c;->statusName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
