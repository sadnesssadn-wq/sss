.class public Lc/b/m/e/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/b/m/e/d/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checked:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private fragile:Ljava/lang/String;

.field private fromAddress:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "from_address"
    .end annotation
.end field

.field private fromCountry:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "from_country"
    .end annotation
.end field

.field private fromDistrict:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "from_district"
    .end annotation
.end field

.field private fromDistrictName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "from_district_name"
    .end annotation
.end field

.field private fromName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "from_name"
    .end annotation
.end field

.field private fromPhone:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "from_phone"
    .end annotation
.end field

.field private fromProvince:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "from_province"
    .end annotation
.end field

.field private fromProvinceName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "from_province_name"
    .end annotation
.end field

.field private fromWard:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "from_ward"
    .end annotation
.end field

.field private inventory:Ljava/lang/String;

.field private moneyCollect:D
    .annotation runtime Lc/d/c/v/c;
        value = "money_collect"
    .end annotation
.end field

.field private paymentConfig:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "payment_config"
    .end annotation
.end field

.field private productName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "product_name"
    .end annotation
.end field

.field private service:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "service_name"
    .end annotation
.end field

.field private toAddress:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_address"
    .end annotation
.end field

.field private toDistrict:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_district"
    .end annotation
.end field

.field private toDistrictName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_district_name"
    .end annotation
.end field

.field private toName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_name"
    .end annotation
.end field

.field private toPhone:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_phone"
    .end annotation
.end field

.field private toPostalCode:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_postal"
    .end annotation
.end field

.field private toProvince:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_province"
    .end annotation
.end field

.field private toProvinceName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_province_name"
    .end annotation
.end field

.field private totalAmount:D
    .annotation runtime Lc/d/c/v/c;
        value = "total_amount"
    .end annotation
.end field

.field private totalQuantity:I
    .annotation runtime Lc/d/c/v/c;
        value = "total_quantity"
    .end annotation
.end field

.field private totalWeight:I
    .annotation runtime Lc/d/c/v/c;
        value = "total_weight"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/m/e/d/a$a;

    invoke-direct {v0}, Lc/b/m/e/d/a$a;-><init>()V

    sput-object v0, Lc/b/m/e/d/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->checked:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->fragile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->inventory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lc/b/m/e/d/a;->moneyCollect:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->paymentConfig:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->productName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->service:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->toAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->toDistrict:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->toName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->toPhone:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->toProvince:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lc/b/m/e/d/a;->totalAmount:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/b/m/e/d/a;->totalQuantity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/b/m/e/d/a;->totalWeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->fromName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->fromPhone:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->fromAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->fromCountry:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->fromProvince:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->fromDistrict:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->fromWard:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->toDistrictName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->toProvinceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->fromDistrictName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->fromProvinceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->serviceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/e/d/a;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/b/m/e/d/a;->toPostalCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->checked:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->description:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->fragile:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->fromAddress:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->fromName:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->fromPhone:Ljava/lang/String;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-wide v0, p0, Lc/b/m/e/d/a;->moneyCollect:D

    return-wide v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->toAddress:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->toDistrictName:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->toName:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->toPhone:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/e/d/a;->toProvinceName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lc/b/m/e/d/a;->checked:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->fragile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->inventory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lc/b/m/e/d/a;->moneyCollect:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lc/b/m/e/d/a;->paymentConfig:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->productName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->service:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->toAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->toDistrict:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->toName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->toPhone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->toProvince:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lc/b/m/e/d/a;->totalAmount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lc/b/m/e/d/a;->totalQuantity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lc/b/m/e/d/a;->totalWeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lc/b/m/e/d/a;->fromName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->fromPhone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->fromAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->fromCountry:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->fromProvince:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->fromDistrict:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->fromWard:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->toDistrictName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->toProvinceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->fromDistrictName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->fromProvinceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/e/d/a;->toPostalCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public x()D
    .locals 2

    iget-wide v0, p0, Lc/b/m/e/d/a;->totalAmount:D

    return-wide v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lc/b/m/e/d/a;->totalQuantity:I

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lc/b/m/e/d/a;->totalWeight:I

    return v0
.end method
