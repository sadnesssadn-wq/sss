.class public Lcom/emsportal/model/ObjDistrict;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/emsportal/model/ObjDistrict;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private province:Lcom/emsportal/model/ObjProvince;
    .annotation runtime Lc/d/c/v/c;
        value = "__get_province"
    .end annotation
.end field

.field private province_code:Ljava/lang/String;

.field private selected:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/emsportal/model/ObjDistrict$1;

    invoke-direct {v0}, Lcom/emsportal/model/ObjDistrict$1;-><init>()V

    sput-object v0, Lcom/emsportal/model/ObjDistrict;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emsportal/model/ObjDistrict;->selected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/model/ObjDistrict;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/model/ObjDistrict;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/model/ObjDistrict;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/model/ObjDistrict;->code:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/model/ObjDistrict;->province_code:Ljava/lang/String;

    const-class v0, Lcom/emsportal/model/ObjProvince;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjProvince;

    iput-object p1, p0, Lcom/emsportal/model/ObjDistrict;->province:Lcom/emsportal/model/ObjProvince;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emsportal/model/ObjDistrict;->selected:Z

    iput-object p1, p0, Lcom/emsportal/model/ObjDistrict;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/emsportal/model/ObjDistrict;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emsportal/model/ObjDistrict;->selected:Z

    iput-object p1, p0, Lcom/emsportal/model/ObjDistrict;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/emsportal/model/ObjDistrict;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/emsportal/model/ObjDistrict;->code:Ljava/lang/String;

    return-void
.end method

.method public static b()Lcom/emsportal/model/ObjDistrict;
    .locals 3

    new-instance v0, Lcom/emsportal/model/ObjDistrict;

    const-string v1, "1111"

    const-string v2, "Qu\u1eadn/Huy\u1ec7n*"

    invoke-direct {v0, v1, v2}, Lcom/emsportal/model/ObjDistrict;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/emsportal/model/ObjDistrict;->code:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/emsportal/model/ObjDistrict;->name:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/emsportal/model/ObjDistrict;->selected:Z

    return v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/emsportal/model/ObjDistrict;->selected:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/model/ObjDistrict;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/model/ObjDistrict;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/model/ObjDistrict;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/model/ObjDistrict;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/model/ObjDistrict;->province_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/model/ObjDistrict;->province:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
