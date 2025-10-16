.class public Lcom/zoho/livechat/android/utils/CustomBulletSpan;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# static fields
.field private static sBulletPath:Landroid/graphics/Path;


# instance fields
.field private final mBulletRadius:I

.field private final mColor:I

.field private final mGapWidth:I

.field private final mWantColor:Z


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->mGapWidth:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->mWantColor:Z

    iput p3, p0, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->mColor:I

    iput p2, p0, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->mBulletRadius:I

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 1

    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p6

    if-ne p6, p9, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p6

    const/4 p8, 0x0

    iget-boolean p9, p0, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->mWantColor:Z

    if-eqz p9, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p8

    iget p9, p0, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->mColor:I

    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    sget-object p9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p9

    const/high16 p10, 0x40000000    # 2.0f

    if-eqz p9, :cond_2

    sget-object p9, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->sBulletPath:Landroid/graphics/Path;

    if-nez p9, :cond_1

    new-instance p9, Landroid/graphics/Path;

    invoke-direct {p9}, Landroid/graphics/Path;-><init>()V

    sput-object p9, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->sBulletPath:Landroid/graphics/Path;

    const p11, 0x3f99999a    # 1.2f

    iget p12, p0, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->mBulletRadius:I

    int-to-float p12, p12

    add-float/2addr p12, p11

    sget-object p11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v0, 0x0

    invoke-virtual {p9, v0, v0, p12, p11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    add-int/2addr p3, p4

    iget p4, p0, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->mBulletRadius:I

    add-int/2addr p3, p4

    int-to-float p3, p3

    add-int/2addr p5, p7

    int-to-float p4, p5

    div-float/2addr p4, p10

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object p3, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->sBulletPath:Landroid/graphics/Path;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    add-int/2addr p3, p4

    iget p4, p0, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->mBulletRadius:I

    add-int/2addr p3, p4

    int-to-float p3, p3

    add-int/2addr p5, p7

    int-to-float p5, p5

    div-float/2addr p5, p10

    int-to-float p4, p4

    invoke-virtual {p1, p3, p5, p4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    iget-boolean p1, p0, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->mWantColor:Z

    if-eqz p1, :cond_3

    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_4
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    iget p1, p0, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->mBulletRadius:I

    mul-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/zoho/livechat/android/utils/CustomBulletSpan;->mGapWidth:I

    add-int/2addr p1, v0

    return p1
.end method
