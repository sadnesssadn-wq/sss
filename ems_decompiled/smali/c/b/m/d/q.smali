.class public Lc/b/m/d/q;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private account:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private merchantId:I
    .annotation runtime Lc/d/c/v/c;
        value = "merchant_id"
    .end annotation
.end field

.field private productName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "product_name"
    .end annotation
.end field

.field private serviceId:I
    .annotation runtime Lc/d/c/v/c;
        value = "service_id"
    .end annotation
.end field

.field private size:Ljava/lang/String;

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

.field private totalWeight:D
    .annotation runtime Lc/d/c/v/c;
        value = "total_weight"
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

    iget-object v0, p0, Lc/b/m/d/q;->description:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/q;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lc/b/m/d/q;->serviceId:I

    return v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lc/b/m/d/q;->totalAmount:D

    return-wide v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lc/b/m/d/q;->totalQuantity:I

    return v0
.end method

.method public f()D
    .locals 2

    iget-wide v0, p0, Lc/b/m/d/q;->totalWeight:D

    return-wide v0
.end method

.method public final g()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lc/b/m/d/q;->size:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
