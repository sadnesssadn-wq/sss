.class public Lcom/zoho/commons/Color;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/zoho/commons/Color;->testColorValueRange(III)V

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    and-int/lit16 p2, p3, 0xff

    shl-int/lit8 p2, p2, 0x0

    or-int/2addr p1, p2

    iput p1, p0, Lcom/zoho/commons/Color;->value:I

    return-void
.end method

.method private static testColorValueRange(III)V
    .locals 3

    const/16 v0, 0xff

    const/4 v1, 0x1

    if-ltz p0, :cond_1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const-string v2, ""

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, " Red"

    const/4 p0, 0x1

    :goto_1
    if-ltz p1, :cond_2

    if-le p1, v0, :cond_3

    :cond_2
    const-string p0, " Green"

    invoke-static {v2, p0}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x1

    :cond_3
    if-ltz p2, :cond_4

    if-le p2, v0, :cond_5

    :cond_4
    const-string p0, " Blue"

    invoke-static {v2, p0}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x1

    :cond_5
    if-eq p0, v1, :cond_6

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Color parameter outside of expected range:"

    invoke-static {p1, v2}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRGB()I
    .locals 1

    iget v0, p0, Lcom/zoho/commons/Color;->value:I

    return v0
.end method
