.class public Lc/b/m/d/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/m/d/j$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/b/m/d/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addressR:Ljava/lang/String;

.field private codeDistrictR:Ljava/lang/String;

.field private codeProvinceR:Ljava/lang/String;

.field private codeProvinceS:Ljava/lang/String;

.field private codeWardR:Ljava/lang/String;

.field private collectMoney:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private district:Lcom/emsportal/model/ObjDistrict;

.field private districtName:Ljava/lang/String;

.field private feeCancel:Ljava/lang/String;

.field private fragile:I

.field private high:Ljava/lang/String;

.field private idService:Ljava/lang/String;

.field private idWareHouseSender:Ljava/lang/String;

.field private length:Ljava/lang/String;

.field private listServiceBonus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private namePackage:Ljava/lang/String;

.field private nameR:Ljava/lang/String;

.field private orderCode:Ljava/lang/String;

.field private phoneR:Ljava/lang/String;

.field private postal:Lcom/emsportal/model/Postal;

.field private postalCode:Ljava/lang/String;

.field private province:Lcom/emsportal/model/ObjProvince;

.field private provinceName:Ljava/lang/String;

.field private quantity:Ljava/lang/String;

.field private review:I

.field private seller:I

.field private valuePackage:Ljava/lang/String;

.field private wardName:Ljava/lang/String;

.field private weight:Ljava/lang/String;

.field private width:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/m/d/j$a;

    invoke-direct {v0}, Lc/b/m/d/j$a;-><init>()V

    sput-object v0, Lc/b/m/d/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->idWareHouseSender:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->nameR:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->phoneR:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->codeProvinceR:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->codeDistrictR:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->codeWardR:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->addressR:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->namePackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->valuePackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->weight:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->quantity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->length:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->width:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->high:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->collectMoney:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->codeProvinceS:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->idService:Ljava/lang/String;

    const-class v0, Lcom/emsportal/model/ObjProvince;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/emsportal/model/ObjProvince;

    iput-object v0, p0, Lc/b/m/d/j;->province:Lcom/emsportal/model/ObjProvince;

    const-class v0, Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/emsportal/model/ObjDistrict;

    iput-object v0, p0, Lc/b/m/d/j;->district:Lcom/emsportal/model/ObjDistrict;

    const-class v0, Lcom/emsportal/model/Postal;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/emsportal/model/Postal;

    iput-object v0, p0, Lc/b/m/d/j;->postal:Lcom/emsportal/model/Postal;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/b/m/d/j;->fragile:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/b/m/d/j;->review:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/b/m/d/j;->seller:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->listServiceBonus:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->postalCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->feeCancel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->provinceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->districtName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->wardName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/b/m/d/j;->orderCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc/b/m/d/j$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc/b/m/d/j$b;->a(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->idWareHouseSender:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->b(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->nameR:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->m(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->phoneR:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->s(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->codeProvinceR:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->t(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->codeDistrictR:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->u(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->codeWardR:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->v(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->addressR:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->w(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->namePackage:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->x(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->valuePackage:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->y(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->weight:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->c(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->quantity:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->d(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->length:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->e(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->width:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->f(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->high:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->g(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->collectMoney:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->h(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->codeProvinceS:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->i(Lc/b/m/d/j$b;)Lcom/emsportal/model/ObjProvince;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->province:Lcom/emsportal/model/ObjProvince;

    invoke-static {p1}, Lc/b/m/d/j$b;->j(Lc/b/m/d/j$b;)Lcom/emsportal/model/ObjDistrict;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->district:Lcom/emsportal/model/ObjDistrict;

    invoke-static {p1}, Lc/b/m/d/j$b;->k(Lc/b/m/d/j$b;)Lcom/emsportal/model/Postal;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->postal:Lcom/emsportal/model/Postal;

    invoke-static {p1}, Lc/b/m/d/j$b;->l(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->postalCode:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->n(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->description:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->o(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->provinceName:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->p(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->districtName:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->q(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/j;->wardName:Ljava/lang/String;

    invoke-static {p1}, Lc/b/m/d/j$b;->r(Lc/b/m/d/j$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/b/m/d/j;->orderCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->orderCode:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->phoneR:Ljava/lang/String;

    return-object v0
.end method

.method public C()Lcom/emsportal/model/Postal;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->postal:Lcom/emsportal/model/Postal;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public E()Lcom/emsportal/model/ObjProvince;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->province:Lcom/emsportal/model/ObjProvince;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->provinceName:Ljava/lang/String;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->quantity:Ljava/lang/String;

    return-object v0
.end method

.method public H()I
    .locals 1

    iget v0, p0, Lc/b/m/d/j;->review:I

    return v0
.end method

.method public I()I
    .locals 1

    iget v0, p0, Lc/b/m/d/j;->seller:I

    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->valuePackage:Ljava/lang/String;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->wardName:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->weight:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->width:Ljava/lang/String;

    return-object v0
.end method

.method public N(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/d/j;->collectMoney:Ljava/lang/String;

    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/d/j;->description:Ljava/lang/String;

    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/d/j;->feeCancel:Ljava/lang/String;

    return-void
.end method

.method public Q(I)V
    .locals 0

    iput p1, p0, Lc/b/m/d/j;->fragile:I

    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/d/j;->idService:Ljava/lang/String;

    return-void
.end method

.method public S(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lc/b/m/d/j;->listServiceBonus:Ljava/util/List;

    return-void
.end method

.method public T(I)V
    .locals 0

    iput p1, p0, Lc/b/m/d/j;->review:I

    return-void
.end method

.method public U(I)V
    .locals 0

    iput p1, p0, Lc/b/m/d/j;->seller:I

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->addressR:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->codeDistrictR:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->codeProvinceR:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->codeProvinceS:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->collectMoney:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0"

    iput-object v0, p0, Lc/b/m/d/j;->collectMoney:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lc/b/m/d/j;->collectMoney:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->description:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/emsportal/model/ObjDistrict;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->district:Lcom/emsportal/model/ObjDistrict;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->districtName:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->feeCancel:Ljava/lang/String;

    return-object v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lc/b/m/d/j;->fragile:I

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->high:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->idService:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->idWareHouseSender:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->length:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->idWareHouseSender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->nameR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->phoneR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->codeProvinceR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->codeDistrictR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->codeWardR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->addressR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->namePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->valuePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->weight:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->quantity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->length:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->width:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->high:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->collectMoney:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->codeProvinceS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->idService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/d/j;->province:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lc/b/m/d/j;->district:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lc/b/m/d/j;->postal:Lcom/emsportal/model/Postal;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lc/b/m/d/j;->fragile:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lc/b/m/d/j;->review:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lc/b/m/d/j;->seller:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lc/b/m/d/j;->listServiceBonus:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lc/b/m/d/j;->postalCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/d/j;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/d/j;->feeCancel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/d/j;->provinceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/d/j;->districtName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/d/j;->wardName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/d/j;->orderCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/m/d/j;->listServiceBonus:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/m/d/j;->listServiceBonus:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/b/m/d/j;->listServiceBonus:Ljava/util/List;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->namePackage:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/j;->nameR:Ljava/lang/String;

    return-object v0
.end method
