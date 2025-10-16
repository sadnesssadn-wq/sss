.class public Lc/b/m/d/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private dateTime:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "datetime"
    .end annotation
.end field

.field private dateTransaction:I
    .annotation runtime Lc/d/c/v/c;
        value = "datetransaction"
    .end annotation
.end field

.field private paymentAmount:I
    .annotation runtime Lc/d/c/v/c;
        value = "paymentamount"
    .end annotation
.end field

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/a;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lc/b/m/d/a;->paymentAmount:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lc/b/m/d/a;->total:I

    return v0
.end method
