.class public Lc/b/m/d/x;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private account:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private districtName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "district_name"
    .end annotation
.end field

.field private merchantId:I
    .annotation runtime Lc/d/c/v/c;
        value = "merchant_id"
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private postal:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private provinceName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "province_name"
    .end annotation
.end field

.field private wardName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "postal_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/x;->address:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/x;->district:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/x;->districtName:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/x;->name:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/x;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/x;->postal:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/x;->province:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/x;->provinceName:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/x;->wardName:Ljava/lang/String;

    return-object v0
.end method
