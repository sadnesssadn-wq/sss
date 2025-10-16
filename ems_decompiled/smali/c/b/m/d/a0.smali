.class public Lc/b/m/d/a0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "payerid"
    .end annotation
.end field

.field private orderCode:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "ordercode"
    .end annotation
.end field

.field private paymentAmount:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "paymentamount"
    .end annotation
.end field

.field private paymentMode:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "paymentmode"
    .end annotation
.end field

.field private statusName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "status_name"
    .end annotation
.end field

.field private trackingCode:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "itemcode"
    .end annotation
.end field

.field private transactionDate:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "transactiondate"
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

    iget-object v0, p0, Lc/b/m/d/a0;->orderCode:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/a0;->paymentAmount:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/a0;->paymentMode:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/a0;->statusName:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/a0;->trackingCode:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/a0;->transactionDate:Ljava/lang/String;

    return-object v0
.end method
