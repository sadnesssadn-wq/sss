.class public Lcom/zoho/livechat/android/utils/CustomQuoteSpan;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field private final gap:F

.field private final stripeColor:I

.field private final stripeWidth:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zoho/livechat/android/utils/CustomQuoteSpan;->stripeColor:I

    iput p2, p0, Lcom/zoho/livechat/android/utils/CustomQuoteSpan;->stripeWidth:F

    iput p3, p0, Lcom/zoho/livechat/android/utils/CustomQuoteSpan;->gap:F

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 8

    move-object v0, p0

    move-object v1, p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v4, v0, Lcom/zoho/livechat/android/utils/CustomQuoteSpan;->stripeColor:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    move v4, p3

    int-to-float v4, v4

    move v5, p5

    int-to-float v5, v5

    move v6, p4

    int-to-float v6, v6

    iget v7, v0, Lcom/zoho/livechat/android/utils/CustomQuoteSpan;->stripeWidth:F

    mul-float v6, v6, v7

    add-float/2addr v6, v4

    move v7, p7

    int-to-float v7, v7

    move-object p3, p1

    move p4, v4

    move p5, v5

    move p6, v6

    move p7, v7

    move-object/from16 p8, p2

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 1

    iget p1, p0, Lcom/zoho/livechat/android/utils/CustomQuoteSpan;->stripeWidth:F

    iget v0, p0, Lcom/zoho/livechat/android/utils/CustomQuoteSpan;->gap:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method
