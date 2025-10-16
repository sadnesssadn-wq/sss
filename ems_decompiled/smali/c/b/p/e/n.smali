.class public Lc/b/p/e/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private account:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private districtName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "district_name"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "_id"
    .end annotation
.end field

.field private latitude:D

.field private longitude:D

.field private merchantId:I
    .annotation runtime Lc/d/c/v/c;
        value = "merchant_id"
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private provinceName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "province_name"
    .end annotation
.end field

.field private type:I

.field private ward:Ljava/lang/String;

.field private wardName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "ward_name"
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

    iget-object v0, p0, Lc/b/p/e/n;->address:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/n;->district:Ljava/lang/String;

    return-object v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lc/b/p/e/n;->latitude:D

    return-wide v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lc/b/p/e/n;->longitude:D

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/n;->name:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/n;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/p/e/n;->province:Ljava/lang/String;

    return-object v0
.end method
