.class public Lc/b/p/e/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/b/p/e/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private collectMoney:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "collect_money"
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private districtCode:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "district"
    .end annotation
.end field

.field private extra:Ljava/lang/String;

.field private height:I

.field private latitude:D
    .annotation runtime Lc/d/c/v/c;
        alternate = {
            "latitude"
        }
        value = "to_latitude"
    .end annotation
.end field

.field private length:I

.field private longitude:D
    .annotation runtime Lc/d/c/v/c;
        alternate = {
            "longitude"
        }
        value = "to_longitude"
    .end annotation
.end field

.field private messageError:I

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private provinceCode:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "province"
    .end annotation
.end field

.field private quantity:I

.field private status_name:Ljava/lang/String;

.field private totalAmount:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "total_amount"
    .end annotation
.end field

.field private weight:I

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/p/e/j$a;

    invoke-direct {v0}, Lc/b/p/e/j$a;-><init>()V

    sput-object v0, Lc/b/p/e/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lc/b/p/e/j;->extra:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lc/b/p/e/j;->extra:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/p/e/j;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/p/e/j;->phone:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/p/e/j;->address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/p/e/j;->productName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/p/e/j;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/b/p/e/j;->quantity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/b/p/e/j;->weight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/p/e/j;->totalAmount:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/p/e/j;->collectMoney:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/b/p/e/j;->length:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/b/p/e/j;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/b/p/e/j;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/p/e/j;->provinceCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/p/e/j;->districtCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/p/e/j;->extra:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/p/e/j;->status_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lc/b/p/e/j;->latitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lc/b/p/e/j;->longitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lc/b/p/e/j;->messageError:I

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/e/j;->address:Ljava/lang/String;

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/e/j;->collectMoney:Ljava/lang/String;

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/e/j;->description:Ljava/lang/String;

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/e/j;->districtCode:Ljava/lang/String;

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/e/j;->extra:Ljava/lang/String;

    return-void
.end method

.method public F(I)V
    .locals 0

    iput p1, p0, Lc/b/p/e/j;->height:I

    return-void
.end method

.method public G(D)V
    .locals 0

    iput-wide p1, p0, Lc/b/p/e/j;->latitude:D

    return-void
.end method

.method public H(I)V
    .locals 0

    iput p1, p0, Lc/b/p/e/j;->length:I

    return-void
.end method

.method public I(D)V
    .locals 0

    iput-wide p1, p0, Lc/b/p/e/j;->longitude:D

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/e/j;->name:Ljava/lang/String;

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/e/j;->phone:Ljava/lang/String;

    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/e/j;->productName:Ljava/lang/String;

    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/e/j;->provinceCode:Ljava/lang/String;

    return-void
.end method

.method public N(I)V
    .locals 0

    iput p1, p0, Lc/b/p/e/j;->quantity:I

    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/e/j;->totalAmount:Ljava/lang/String;

    return-void
.end method

.method public P(I)V
    .locals 0

    iput p1, p0, Lc/b/p/e/j;->weight:I

    return-void
.end method

.method public Q(I)V
    .locals 0

    iput p1, p0, Lc/b/p/e/j;->width:I

    return-void
.end method

.method public R()Z
    .locals 2

    iget v0, p0, Lc/b/p/e/j;->length:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    iget v0, p0, Lc/b/p/e/j;->width:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lc/b/p/e/j;->height:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public S()Z
    .locals 2

    iget v0, p0, Lc/b/p/e/j;->length:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    iget v0, p0, Lc/b/p/e/j;->width:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lc/b/p/e/j;->height:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/j;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lc/b/p/e/j;->address:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lc/b/p/e/j;->address:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/j;->collectMoney:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lc/b/p/e/j;->collectMoney:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lc/b/p/e/j;->collectMoney:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/j;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/j;->districtCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/j;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lc/b/p/e/j;->height:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lc/b/p/e/j;->length:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lc/b/p/e/j;->messageError:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/j;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/j;->phone:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lc/b/p/e/j;->phone:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lc/b/p/e/j;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/j;->productName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/j;->provinceCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lc/b/p/e/j;->quantity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/j;->totalAmount:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lc/b/p/e/j;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/p/e/j;->phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/p/e/j;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/p/e/j;->productName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/p/e/j;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lc/b/p/e/j;->quantity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lc/b/p/e/j;->weight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lc/b/p/e/j;->totalAmount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/p/e/j;->collectMoney:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lc/b/p/e/j;->length:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lc/b/p/e/j;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lc/b/p/e/j;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lc/b/p/e/j;->provinceCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/p/e/j;->districtCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/p/e/j;->extra:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/p/e/j;->status_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lc/b/p/e/j;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lc/b/p/e/j;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Lc/b/p/e/j;->messageError:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lc/b/p/e/j;->weight:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lc/b/p/e/j;->width:I

    return v0
.end method

.method public z()Z
    .locals 8

    iget-object v0, p0, Lc/b/p/e/j;->phone:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f1002ad

    :goto_0
    iput v0, p0, Lc/b/p/e/j;->messageError:I

    return v1

    :cond_0
    iget-object v0, p0, Lc/b/p/e/j;->phone:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->O(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f1002ac

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/b/p/e/j;->name:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f10028d

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/b/p/e/j;->address:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f100250

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lc/b/p/e/j;->collectMoney:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "0"

    iput-object v0, p0, Lc/b/p/e/j;->collectMoney:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lc/b/p/e/j;->collectMoney:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->q(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_5

    const-wide v6, 0x408f400000000000L    # 1000.0

    rem-double/2addr v2, v6

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_5

    const v0, 0x7f1002d1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lc/b/p/e/j;->productName:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f1002b5

    goto :goto_0

    :cond_6
    iget v0, p0, Lc/b/p/e/j;->weight:I

    if-gtz v0, :cond_7

    const v0, 0x7f1002d4

    goto :goto_0

    :cond_7
    const/16 v2, 0x1388

    if-le v0, v2, :cond_8

    const v0, 0x7f1002d5

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    return v0
.end method
