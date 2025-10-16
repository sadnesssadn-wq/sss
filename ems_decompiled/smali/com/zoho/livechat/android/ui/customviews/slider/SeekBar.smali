.class public Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INDICATOR_MODE_ALWAYS_HIDE:I = 0x1

.field public static final INDICATOR_MODE_ALWAYS_SHOW:I = 0x3

.field public static final INDICATOR_MODE_ALWAYS_SHOW_AFTER_TOUCH:I = 0x2

.field public static final INDICATOR_MODE_SHOW_WHEN_TOUCH:I


# instance fields
.field private anim:Landroid/animation/ValueAnimator;

.field public bottom:I

.field public currPercent:F

.field private indicatorArrowPath:Landroid/graphics/Path;

.field private indicatorArrowSize:I

.field private indicatorBackgroundColor:I

.field private indicatorBitmap:Landroid/graphics/Bitmap;

.field private indicatorDrawableId:I

.field private indicatorHeight:I

.field private indicatorMargin:I

.field private indicatorPaddingBottom:I

.field private indicatorPaddingLeft:I

.field private indicatorPaddingRight:I

.field private indicatorPaddingTop:I

.field private indicatorRadius:F

.field private indicatorRect:Landroid/graphics/Rect;

.field private indicatorShowMode:I

.field private indicatorTextColor:I

.field private indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

.field private indicatorTextRect:Landroid/graphics/Rect;

.field private indicatorTextSize:I

.field private indicatorTextStringFormat:Ljava/lang/String;

.field private indicatorWidth:I

.field private isActivate:Z

.field private isLeft:Z

.field private isShowIndicator:Z

.field public left:I

.field private lineWidth:I

.field public material:F

.field private paint:Landroid/graphics/Paint;

.field private rangeSeekBar:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

.field public right:I

.field private thumbBitmap:Landroid/graphics/Bitmap;

.field private thumbDrawable:Landroid/graphics/drawable/Drawable;

.field private thumbInactivatedBitmap:Landroid/graphics/Bitmap;

.field private thumbInactivatedDrawableId:I

.field private thumbScaleRatio:F

.field private thumbSize:I

.field public top:I

.field private userText2Draw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;Landroid/util/AttributeSet;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->material:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->isActivate:Z

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->paint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->rangeSeekBar:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    iput-boolean p3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->isLeft:Z

    invoke-direct {p0, p2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->initAttrs(Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->initVariables()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->initBitmap()V

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;)Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->rangeSeekBar:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    return-object p0
.end method

.method public static compareFloat(FF)I
    .locals 1

    const v0, 0x47c35000    # 100000.0f

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->compareFloat(FF)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private dpToPx(I)I
    .locals 1

    int-to-float p1, p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorWidth:I

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    if-ge v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbSize:I

    div-int/lit8 v3, v2, 0x2

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->bottom:I

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorHeight:I

    sub-int v6, v4, v5

    sub-int/2addr v6, v2

    iget v7, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorMargin:I

    sub-int/2addr v6, v7

    iput v6, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    div-int/lit8 v1, v2, 0x2

    sub-int/2addr v4, v2

    sub-int/2addr v4, v7

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowSize:I

    sub-int v3, v1, v2

    sub-int v5, v4, v2

    add-int/2addr v2, v1

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    int-to-float v1, v1

    int-to-float v4, v4

    invoke-virtual {v6, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    int-to-float v3, v3

    int-to-float v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowSize:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_2
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->lineWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->rangeSeekBar:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->lineWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    sub-float/2addr v2, v6

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v4, v2

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->rangeSeekBar:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLinePaddingRight()I

    move-result v2

    sub-int/2addr v4, v2

    add-int/2addr v4, v1

    if-lez v3, :cond_3

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    :goto_1
    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_3
    if-lez v4, :cond_4

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v1, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->drawNinePath(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRadius:F

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_3
    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingLeft:I

    if-lez v1, :cond_7

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_4
    add-int/2addr v0, v1

    goto :goto_5

    :cond_7
    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingRight:I

    if-lez v1, :cond_8

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_4

    :goto_5
    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingTop:I

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingTop:I

    add-int/2addr v2, v1

    goto :goto_6

    :cond_9
    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingBottom:I

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingBottom:I

    sub-int v2, v1, v2

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorHeight:I

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    :goto_6
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    int-to-float v1, v2

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawNinePath(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 3

    new-instance v0, Landroid/graphics/NinePatch;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-virtual {v0, p1, p3}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbInactivatedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->isActivate:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->rangeSeekBar:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineTop()I

    move-result v4

    invoke-direct {p0, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dpToPx(I)I

    move-result v2

    add-int/2addr v4, v2

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->rangeSeekBar:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getProgressHeight()I

    move-result v2

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbSize:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawableToBitmap(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8

    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {v6, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->rangeSeekBar:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 2

    const/4 p1, 0x0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorMargin:I

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorDrawableId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorShowMode:I

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dpToPx(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorHeight:I

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dpToPx(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorWidth:I

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v0, v1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextSize:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextColor:I

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingLeft:I

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingRight:I

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingTop:I

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingBottom:I

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dpToPx(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowSize:I

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dpToPx(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbScaleRatio:F

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dpToPx(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRadius:F

    return-void
.end method

.method private initBitmap()V
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorDrawableId:I

    invoke-virtual {p0, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorDrawableId(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbInactivatedDrawableId:I

    invoke-virtual {p0, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setThumbInactivatedDrawableId(I)V

    return-void
.end method

.method private initVariables()V
    .locals 2

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorHeight:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorShowMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "if you want to show indicator, the indicatorHeight must > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowSize:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowSize:I

    :cond_2
    return-void
.end method


# virtual methods
.method public collide(FF)Z
    .locals 4

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->lineWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->left:I

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dpToPx(I)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->right:I

    invoke-direct {p0, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dpToPx(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->top:I

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorHeight:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->bottom:I

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dpToPx(I)I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->lineWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->rangeSeekBar:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getRangeSeekBarState()[Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;

    move-result-object v0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->userText2Draw:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->isLeft:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    if-eqz v2, :cond_0

    aget-object v0, v0, v5

    goto :goto_0

    :cond_0
    aget-object v0, v0, v5

    goto :goto_1

    :cond_1
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    if-eqz v2, :cond_2

    aget-object v0, v0, v4

    :goto_0
    iget v0, v0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->value:F

    float-to-double v6, v0

    invoke-virtual {v2, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    aget-object v0, v0, v4

    :goto_1
    iget-object v2, v0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->indicatorText:Ljava/lang/String;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextStringFormat:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->left:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorShowMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p0, v5}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setShowIndicatorEnable(Z)V

    :cond_5
    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->isShowIndicator:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->drawIndicator(Landroid/graphics/Canvas;Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getActivate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->isActivate:Z

    return v0
.end method

.method public getIndicatorArrowSize()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowSize:I

    return v0
.end method

.method public getIndicatorBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorBackgroundColor:I

    return v0
.end method

.method public getIndicatorDrawableId()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorDrawableId:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorHeight:I

    return v0
.end method

.method public getIndicatorMargin()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorMargin:I

    return v0
.end method

.method public getIndicatorPaddingBottom()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingBottom:I

    return v0
.end method

.method public getIndicatorPaddingLeft()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingLeft:I

    return v0
.end method

.method public getIndicatorPaddingRight()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingRight:I

    return v0
.end method

.method public getIndicatorPaddingTop()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingTop:I

    return v0
.end method

.method public getIndicatorShowMode()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorShowMode:I

    return v0
.end method

.method public getIndicatorTextColor()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextColor:I

    return v0
.end method

.method public getIndicatorTextDecimalFormat()Ljava/text/DecimalFormat;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public getIndicatorTextSize()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextSize:I

    return v0
.end method

.method public getIndicatorWidth()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorWidth:I

    return v0
.end method

.method public getThumbInactivatedDrawableId()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbInactivatedDrawableId:I

    return v0
.end method

.method public getThumbScaleRatio()F
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbScaleRatio:F

    return v0
.end method

.method public getThumbSize()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbSize:I

    return v0
.end method

.method public materialRestore()V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->material:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->anim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$1;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$1;-><init>(Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->anim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$2;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$2;-><init>(Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onSizeChanged(III)V
    .locals 2

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->initVariables()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->initBitmap()V

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbSize:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    iput v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->left:I

    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->right:I

    div-int/lit8 p1, v0, 0x2

    sub-int p1, p2, p1

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->top:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->bottom:I

    iput p3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->lineWidth:I

    return-void
.end method

.method public setActivate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->isActivate:Z

    return-void
.end method

.method public setIndicatorArrowSize(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorArrowSize:I

    return-void
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorBackgroundColor:I

    return-void
.end method

.method public setIndicatorDrawableId(I)V
    .locals 1

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorDrawableId:I

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorHeight:I

    return-void
.end method

.method public setIndicatorMargin(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorMargin:I

    return-void
.end method

.method public setIndicatorPaddingBottom(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingBottom:I

    return-void
.end method

.method public setIndicatorPaddingLeft(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingLeft:I

    return-void
.end method

.method public setIndicatorPaddingRight(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingRight:I

    return-void
.end method

.method public setIndicatorPaddingTop(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorPaddingTop:I

    return-void
.end method

.method public setIndicatorRadius(F)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorRadius:F

    return-void
.end method

.method public setIndicatorShowMode(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorShowMode:I

    return-void
.end method

.method public setIndicatorText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->userText2Draw:Ljava/lang/String;

    return-void
.end method

.method public setIndicatorTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextColor:I

    return-void
.end method

.method public setIndicatorTextDecimalFormat(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public setIndicatorTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextSize:I

    return-void
.end method

.method public setIndicatorTextStringFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorTextStringFormat:Ljava/lang/String;

    return-void
.end method

.method public setIndicatorWidth(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorWidth:I

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->initVariables()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->initBitmap()V

    return-void
.end method

.method public setShowIndicatorEnable(Z)V
    .locals 2

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->indicatorShowMode:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->isShowIndicator:Z

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->isShowIndicator:Z

    :goto_0
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbSize:I

    invoke-direct {p0, v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->drawableToBitmap(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setThumbInactivatedDrawableId(I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbInactivatedDrawableId:I

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbSize:I

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->drawableToBitmap(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbInactivatedBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setThumbSize(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->thumbSize:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public slide(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    return-void
.end method
