.class public Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar$OnRangeChangeListener;
    }
.end annotation


# static fields
.field public static final SEEKBAR_MODE_RANGE:I = 0x2

.field public static final SEEKBAR_MODE_SINGLE:I = 0x1

.field public static final TRICK_MARK_GRAVITY_CENTER:I = 0x1

.field public static final TRICK_MARK_GRAVITY_LEFT:I = 0x0

.field public static final TRICK_MARK_GRAVITY_RIGHT:I = 0x2


# instance fields
.field private backgroundLineRect:Landroid/graphics/RectF;

.field private cellsPercent:F

.field private currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

.field private dotColor:I

.field private dotColorLight:I

.field private dot_paint:Landroid/graphics/Paint;

.field private dot_paint_light:Landroid/graphics/Paint;

.field private foregroundLineRect:Landroid/graphics/RectF;

.field private isEnable:Z

.field private isScaleThumb:Z

.field private leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

.field public lineBottom:I

.field public lineLeft:I

.field private linePaddingRight:I

.field public lineRight:I

.field public lineTop:I

.field private lineWidth:I

.field private maxProgress:F

.field private minProgress:F

.field private minRangeCells:I

.field private onRangeChangeListener:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar$OnRangeChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private progressColor:I

.field private progressDefaultColor:I

.field private progressHeight:I

.field private progressRadius:F

.field private rangeInterval:F

.field private reservePercent:F

.field private rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

.field private seekBarMode:I

.field private tickMarkGravity:I

.field private tickMarkInRangeTextColor:I

.field private tickMarkNumber:I

.field private tickMarkTextArray:[Ljava/lang/CharSequence;

.field private tickMarkTextColor:I

.field private tickMarkTextMargin:I

.field private tickMarkTextSize:I

.field private touchDownX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->isEnable:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->isScaleThumb:Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dot_paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dot_paint_light:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->backgroundLineRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    invoke-direct {p0, p2}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->initAttrs(Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->init()V

    return-void
.end method

.method private changeThumbActivateState(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setActivate(Z)V

    :cond_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz p1, :cond_4

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setActivate(Z)V

    :cond_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz p1, :cond_4

    :goto_0
    invoke-virtual {p1, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setActivate(Z)V

    :cond_4
    return-void
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

.method public static dpToPxFloat(F)F
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    return p0
.end method

.method private init()V
    .locals 4

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->initPaint()V

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->seekBarMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    new-instance v0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-direct {v0, p0, v2, v1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;-><init>(Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    new-instance v0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;-><init>(Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-direct {v0, p0, v2, v1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;-><init>(Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iput-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    :goto_0
    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minProgress:F

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->maxProgress:F

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rangeInterval:F

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->setRange(FFFI)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->initProgressLine()V

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 2

    const/4 p1, 0x1

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->seekBarMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->maxProgress:F

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rangeInterval:F

    const v0, -0xb4269e    # -2.70962E38f

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressColor:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressRadius:F

    const v0, -0x282829

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressDefaultColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressHeight:I

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkGravity:I

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextSize:I

    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressDefaultColor:I

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextColor:I

    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressColor:I

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkInRangeTextColor:I

    return-void
.end method

.method private initPaint()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dot_paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dot_paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dotColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dot_paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dot_paint_light:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dot_paint_light:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dotColorLight:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dot_paint_light:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private initProgressLine()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getThumbSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineTop:I

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineBottom:I

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressRadius:F

    :cond_0
    return-void
.end method

.method private resetCurrentSeekBarThumb()V
    .locals 4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getThumbScaleRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->isScaleThumb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->isScaleThumb:Z

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getThumbSize()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getThumbScaleRatio()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setThumbSize(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineBottom()I

    move-result v2

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->onSizeChanged(III)V

    :cond_0
    return-void
.end method

.method private scaleCurrentSeekBarThumb()V
    .locals 4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getThumbScaleRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->isScaleThumb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->isScaleThumb:Z

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getThumbSize()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getThumbScaleRatio()F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setThumbSize(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineBottom()I

    move-result v2

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->onSizeChanged(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public getLeftSeekBar()Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    return-object v0
.end method

.method public getLineBottom()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineBottom:I

    return v0
.end method

.method public getLineLeft()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineLeft:I

    return v0
.end method

.method public getLinePaddingRight()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->linePaddingRight:I

    return v0
.end method

.method public getLineRight()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineRight:I

    return v0
.end method

.method public getLineTop()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineTop:I

    return v0
.end method

.method public getLineWidth()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    return v0
.end method

.method public getMaxProgress()F
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->maxProgress:F

    return v0
.end method

.method public getMinProgress()F
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minProgress:F

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressColor:I

    return v0
.end method

.method public getProgressDefaultColor()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressDefaultColor:I

    return v0
.end method

.method public getProgressHeight()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressHeight:I

    return v0
.end method

.method public getProgressRadius()F
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressRadius:F

    return v0
.end method

.method public getRangeInterval()F
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rangeInterval:F

    return v0
.end method

.method public getRangeSeekBarState()[Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;
    .locals 8

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->maxProgress:F

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minProgress:F

    sub-float/2addr v0, v1

    new-instance v1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;

    invoke-direct {v1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;-><init>()V

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minProgress:F

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v3, v3, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    mul-float v4, v0, v3

    add-float/2addr v4, v2

    iput v4, v1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->value:F

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v2, v6, :cond_2

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    if-ltz v2, :cond_0

    array-length v7, v3

    if-ge v2, v7, :cond_0

    aget-object v3, v3, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->indicatorText:Ljava/lang/String;

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget v3, v1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->value:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->indicatorText:Ljava/lang/String;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v2, v2, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    invoke-static {v2, v5}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->compareFloat(FF)I

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    iput-boolean v6, v1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->isMin:Z

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v2, v2, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    invoke-static {v2, v4}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->compareFloat(FF)I

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    iput-boolean v6, v1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->isMax:Z

    :cond_4
    :goto_2
    new-instance v2, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;

    invoke-direct {v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;-><init>()V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v3, :cond_9

    iget v7, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minProgress:F

    iget v3, v3, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    mul-float v0, v0, v3

    add-float/2addr v0, v7

    iput v0, v2, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->value:F

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    if-le v0, v6, :cond_7

    int-to-float v0, v0

    mul-float v3, v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    if-ltz v0, :cond_5

    array-length v4, v3

    if-ge v0, v4, :cond_5

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->indicatorText:Ljava/lang/String;

    :cond_5
    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    if-ne v0, v3, :cond_9

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v3, v2, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->value:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->indicatorText:Ljava/lang/String;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v0, v0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    invoke-static {v0, v5}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->compareFloat(FF)I

    move-result v0

    if-nez v0, :cond_8

    :goto_3
    iput-boolean v6, v2, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->isMin:Z

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v0, v0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    invoke-static {v0, v4}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->compareFloat(FF)I

    move-result v0

    if-nez v0, :cond_9

    :goto_4
    iput-boolean v6, v2, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->isMax:Z

    :cond_9
    :goto_5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    aput-object v2, v0, v6

    return-object v0
.end method

.method public getRightSeekBar()Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    return-object v0
.end method

.method public getSeekBarMode()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->seekBarMode:I

    return v0
.end method

.method public getTickMarkGravity()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkGravity:I

    return v0
.end method

.method public getTickMarkInRangeTextColor()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkInRangeTextColor:I

    return v0
.end method

.method public getTickMarkNumber()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    return v0
.end method

.method public getTickMarkTextArray()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTickMarkTextColor()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextColor:I

    return v0
.end method

.method public getTickMarkTextMargin()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextMargin:I

    return v0
.end method

.method public getTickMarkTextSize()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextSize:I

    return v0
.end method

.method public getValues()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getRangeSeekBarState()[Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v4, v4, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBarState;->indicatorText:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineBottom()I

    move-result v2

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->onSizeChanged(III)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineBottom()I

    move-result v2

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->onSizeChanged(III)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    const/high16 v1, 0x40200000    # 2.5f

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v5, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-ge v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v6

    mul-int v7, v0, v5

    add-int/2addr v7, v6

    int-to-float v6, v7

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineTop()I

    move-result v7

    invoke-direct {p0, v3}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineBottom:I

    add-int/2addr v7, v8

    div-int/2addr v7, v4

    int-to-float v7, v7

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPxFloat(F)F

    move-result v8

    add-float/2addr v6, v8

    :cond_1
    invoke-direct {p0, v4}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dot_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressDefaultColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->backgroundLineRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressRadius:F

    const/4 v6, 0x5

    invoke-direct {p0, v6}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget v7, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressRadius:F

    invoke-direct {p0, v6}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->seekBarMode:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineTop()I

    move-result v5

    invoke-direct {p0, v3}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    iput v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v7, v5, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->left:I

    invoke-virtual {v5}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getThumbSize()I

    move-result v5

    div-int/2addr v5, v4

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v8, v8, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    mul-float v7, v7, v8

    add-float/2addr v7, v5

    iput v7, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v7, v5, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->left:I

    invoke-virtual {v5}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getThumbSize()I

    move-result v5

    div-int/2addr v5, v4

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineTop()I

    move-result v5

    invoke-direct {p0, v3}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    iput v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v7, v5, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->left:I

    invoke-virtual {v5}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getThumbSize()I

    move-result v5

    div-int/2addr v5, v4

    add-int/2addr v5, v7

    int-to-float v5, v5

    iput v5, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v7, v5, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->left:I

    invoke-virtual {v5}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getThumbSize()I

    move-result v5

    div-int/2addr v5, v4

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    :goto_1
    iget v8, v8, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    mul-float v7, v7, v8

    add-float/2addr v7, v5

    iput v7, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineBottom()I

    move-result v5

    int-to-float v5, v5

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressRadius:F

    invoke-direct {p0, v6}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget v7, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressRadius:F

    invoke-direct {p0, v6}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v7, v6

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v7, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v5, v0

    :goto_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v0

    mul-int v6, v2, v5

    add-int/2addr v6, v0

    int-to-float v0, v6

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineTop()I

    move-result v6

    invoke-direct {p0, v3}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineBottom:I

    add-int/2addr v6, v7

    div-int/2addr v6, v4

    int-to-float v6, v6

    iget-object v7, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v0, v8

    if-lez v8, :cond_5

    iget v7, v7, Landroid/graphics/RectF;->right:F

    cmpg-float v7, v0, v7

    if-gez v7, :cond_5

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPxFloat(F)F

    move-result v7

    add-float/2addr v0, v7

    :cond_4
    invoke-direct {p0, v4}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dot_paint_light:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->getThumbSize()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    add-int/2addr p3, p2

    iput p3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineLeft:I

    sub-int p2, p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineRight:I

    iget p3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineLeft:I

    sub-int p3, p2, p3

    iput p3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->linePaddingRight:I

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->backgroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineTop()I

    move-result p3

    const/16 p4, 0x8

    invoke-direct {p0, p4}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dpToPx(I)I

    move-result p4

    add-int/2addr p3, p4

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineRight()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineBottom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->isEnable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_20

    if-eq v0, v1, :cond_1c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto/16 :goto_e

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setShowIndicatorEnable(Z)V

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-ne v0, v3, :cond_3

    :goto_0
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->resetCurrentSeekBarThumb()V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setShowIndicatorEnable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1f

    goto/16 :goto_d

    :cond_5
    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v0

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v6, v6, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    iget v4, v4, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    cmpl-float v4, v6, v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->materialRestore()V

    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->touchDownX:F

    sub-float v4, v0, v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eq v4, v6, :cond_7

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->resetCurrentSeekBarThumb()V

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eq v4, v6, :cond_7

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->resetCurrentSeekBarThumb()V

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    :goto_2
    iput-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    goto :goto_3

    :cond_7
    iput-object v6, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    :cond_8
    :goto_3
    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->touchDownX:F

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v6, v4, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->material:F

    cmpl-float v7, v6, v3

    if-ltz v7, :cond_9

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_9
    const v7, 0x3dcccccd    # 0.1f

    add-float/2addr v6, v7

    :goto_4
    iput v6, v4, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->material:F

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-ne v4, v6, :cond_12

    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    if-le v4, v1, :cond_d

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    mul-float v0, v0, v3

    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    int-to-float v4, v4

    div-float v5, v0, v4

    :goto_5
    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->cellsPercent:F

    div-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v4, :cond_b

    iget v3, v4, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    :cond_b
    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->cellsPercent:F

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    :cond_c
    int-to-float v4, v0

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->cellsPercent:F

    mul-float v4, v4, v5

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minRangeCells:I

    sub-int v5, v3, v5

    if-le v0, v5, :cond_11

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_c

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    mul-float v0, v0, v3

    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    int-to-float v4, v4

    div-float v5, v0, v4

    :goto_6
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_f

    iget v0, v0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->reservePercent:F

    sub-float v4, v0, v3

    cmpl-float v4, v5, v4

    if-lez v4, :cond_10

    sub-float v4, v0, v3

    goto :goto_7

    :cond_f
    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->reservePercent:F

    sub-float v4, v3, v0

    cmpl-float v4, v5, v4

    if-lez v4, :cond_10

    sub-float v4, v3, v0

    goto :goto_7

    :cond_10
    move v4, v5

    :cond_11
    :goto_7
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v0, v4}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->slide(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setShowIndicatorEnable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_c

    :cond_12
    iget-object v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-ne v4, v5, :cond_19

    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    if-le v4, v1, :cond_15

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineRight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    mul-float v0, v0, v3

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    int-to-float v3, v3

    div-float v3, v0, v3

    :goto_8
    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->cellsPercent:F

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v3, v3, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->cellsPercent:F

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v0

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->cellsPercent:F

    mul-float v4, v4, v5

    :goto_9
    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minRangeCells:I

    add-int/2addr v5, v3

    if-ge v0, v5, :cond_18

    add-int/lit8 v0, v0, 0x1

    int-to-float v5, v0

    iget v6, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->maxProgress:F

    iget v7, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minProgress:F

    sub-float/2addr v6, v7

    cmpl-float v6, v5, v6

    if-lez v6, :cond_14

    goto :goto_b

    :cond_14
    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->cellsPercent:F

    mul-float v4, v4, v5

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineRight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_16

    goto :goto_a

    :cond_16
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getLineLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    mul-float v0, v0, v3

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    int-to-float v3, v3

    div-float v3, v0, v3

    :goto_a
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v0, v0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->reservePercent:F

    add-float v5, v0, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_17

    add-float/2addr v4, v0

    goto :goto_b

    :cond_17
    move v4, v3

    :cond_18
    :goto_b
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v0, v4}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->slide(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setShowIndicatorEnable(Z)V

    :cond_19
    :goto_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->onRangeChangeListener:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar$OnRangeChangeListener;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar$OnRangeChangeListener;->onRangeChanged(Ljava/util/ArrayList;)V

    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1b
    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->changeThumbActivateState(Z)V

    goto :goto_e

    :cond_1c
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setShowIndicatorEnable(Z)V

    :cond_1d
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setShowIndicatorEnable(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->materialRestore()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->resetCurrentSeekBarThumb()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->onRangeChangeListener:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar$OnRangeChangeListener;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar$OnRangeChangeListener;->onRangeChanged(Ljava/util/ArrayList;)V

    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1f

    :goto_d
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1f
    invoke-direct {p0, v2}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->changeThumbActivateState(Z)V

    :goto_e
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_20
    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->touchDownX:F

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_21

    iget v0, v0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_21

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getEventY(Landroid/view/MotionEvent;)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->collide(FF)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_f

    :cond_21
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_22

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getEventY(Landroid/view/MotionEvent;)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->collide(FF)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    goto :goto_10

    :cond_22
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->getEventY(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-virtual {v0, v3, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->collide(FF)Z

    move-result p1

    if-eqz p1, :cond_23

    :goto_f
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    :goto_10
    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    const/4 v2, 0x1

    :cond_23
    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->seekBarMode:I

    if-ne p1, v1, :cond_24

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->currTouchSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    const/4 v2, 0x1

    :cond_24
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_25
    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->changeThumbActivateState(Z)V

    return v2
.end method

.method public setDotColor(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dotColor:I

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->initPaint()V

    return-void
.end method

.method public setDotColorLight(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->dotColorLight:I

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->initPaint()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->isEnable:Z

    return-void
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorHeight(I)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorHeight(I)V

    :cond_1
    return-void
.end method

.method public setIndicatorRadius(F)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorRadius(F)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorRadius(F)V

    :cond_1
    return-void
.end method

.method public setIndicatorShowMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorShowMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorShowMode(I)V

    :cond_1
    return-void
.end method

.method public setIndicatorText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setIndicatorTextDecimalFormat(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorTextDecimalFormat(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorTextDecimalFormat(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setIndicatorTextSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorTextSize(I)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorTextSize(I)V

    :cond_1
    return-void
.end method

.method public setIndicatorTextStringFormat(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorTextStringFormat(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorTextStringFormat(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setIndicatorWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorWidth(I)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setIndicatorWidth(I)V

    :cond_1
    return-void
.end method

.method public setLineBottom(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineBottom:I

    return-void
.end method

.method public setLineLeft(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineLeft:I

    return-void
.end method

.method public setLineRight(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineRight:I

    return-void
.end method

.method public setLineTop(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineTop:I

    return-void
.end method

.method public setLineWidth(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->lineWidth:I

    return-void
.end method

.method public setOnRangeChangeListener(Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar$OnRangeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->onRangeChangeListener:Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar$OnRangeChangeListener;

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressColor:I

    return-void
.end method

.method public setProgressColor(II)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressDefaultColor:I

    iput p2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressColor:I

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->initPaint()V

    return-void
.end method

.method public setProgressDefaultColor(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressDefaultColor:I

    return-void
.end method

.method public setProgressHeight(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressHeight:I

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->initProgressLine()V

    return-void
.end method

.method public setProgressRadius(F)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->progressRadius:F

    return-void
.end method

.method public setRange(FF)V
    .locals 2

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rangeInterval:F

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->setRange(FFFI)V

    return-void
.end method

.method public setRange(FFF)V
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->setRange(FFFI)V

    return-void
.end method

.method public setRange(FFFI)V
    .locals 4

    cmpg-float v0, p2, p1

    if-lez v0, :cond_a

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_9

    sub-float v1, p2, p1

    cmpl-float v2, p3, v1

    if-gez v2, :cond_8

    const/4 v2, 0x1

    if-lt p4, v2, :cond_7

    iput p2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->maxProgress:F

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minProgress:F

    iput p4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    int-to-float p1, p4

    const/high16 p2, 0x3f800000    # 1.0f

    div-float p1, p2, p1

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->cellsPercent:F

    iput p3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rangeInterval:F

    div-float/2addr p3, v1

    iput p3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->reservePercent:F

    div-float v1, p3, p1

    rem-float v3, p3, p1

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minRangeCells:I

    if-le p4, v2, :cond_3

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz p3, :cond_2

    iget-object p4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v2, p4, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    int-to-float v3, v1

    mul-float v3, v3, p1

    add-float/2addr v3, v2

    cmpg-float p2, v3, p2

    if-gtz p2, :cond_1

    int-to-float p2, v1

    mul-float p2, p2, p1

    add-float/2addr p2, v2

    iget v3, p3, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    cmpl-float p2, p2, v3

    if-lez p2, :cond_1

    int-to-float p2, v1

    mul-float p1, p1, p2

    add-float/2addr p1, v2

    iput p1, p3, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    goto/16 :goto_3

    :cond_1
    iget p2, p3, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    int-to-float p3, v1

    mul-float p3, p3, p1

    sub-float p3, p2, p3

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_6

    int-to-float p3, v1

    mul-float p3, p3, p1

    sub-float p3, p2, p3

    cmpg-float p3, p3, v2

    if-gez p3, :cond_6

    goto :goto_1

    :cond_2
    int-to-float p3, v1

    mul-float p3, p3, p1

    sub-float p3, p2, p3

    cmpl-float p3, p3, v0

    if-ltz p3, :cond_6

    int-to-float p3, v1

    mul-float p3, p3, p1

    sub-float p3, p2, p3

    iget-object p4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v0, p4, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    cmpg-float p3, p3, v0

    if-gez p3, :cond_6

    :goto_1
    int-to-float p3, v1

    mul-float p1, p1, p3

    sub-float/2addr p2, p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz p1, :cond_5

    iget-object p4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v1, p4, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    add-float v2, v1, p3

    cmpg-float p2, v2, p2

    if-gtz p2, :cond_4

    add-float p2, v1, p3

    iget v2, p1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    cmpl-float p2, p2, v2

    if-lez p2, :cond_4

    add-float/2addr v1, p3

    iput v1, p1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    goto :goto_3

    :cond_4
    iget p1, p1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    sub-float p2, p1, p3

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_6

    sub-float p2, p1, p3

    cmpg-float p2, p2, v1

    if-gez p2, :cond_6

    sub-float/2addr p1, p3

    iput p1, p4, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    goto :goto_3

    :cond_5
    sub-float p1, p2, p3

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    sub-float p1, p2, p3

    iget-object p4, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v0, p4, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    sub-float/2addr p2, p3

    :goto_2
    iput p2, p4, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "setRange() tickMarkNumber must be greater than 1 ! #tickMarkNumber:"

    invoke-static {p2, p4}, Lc/a/a/a/a;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setRange() interval must be less than (max - min) ! #interval:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " #max - min:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setRange() interval must be greater than zero ! #interval:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRange() max must be greater than min ! #max:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " #min:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setRangeInterval(F)V
    .locals 1

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rangeInterval:F

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    array-length p1, p1

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->setRange(FF)V

    return-void
.end method

.method public setSeekBarMode(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->seekBarMode:I

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->init()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setThumbSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setThumbSize(I)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->setThumbSize(I)V

    :cond_1
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->resetCurrentSeekBarThumb()V

    return-void
.end method

.method public setTickMarkGravity(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkGravity:I

    return-void
.end method

.method public setTickMarkInRangeTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkInRangeTextColor:I

    return-void
.end method

.method public setTickMarkNumber(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    return-void
.end method

.method public setTickMarkTextArray([Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    array-length p1, p1

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->setRange(FF)V

    return-void
.end method

.method public setTickMarkTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextColor:I

    return-void
.end method

.method public setTickMarkTextMargin(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextMargin:I

    return-void
.end method

.method public setTickMarkTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkTextSize:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setValue(F)V
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->maxProgress:F

    invoke-virtual {p0, p1, v0}, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->setValue(FF)V

    return-void
.end method

.method public setValue(FF)V
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-float v0, p2, p1

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rangeInterval:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sub-float p1, p2, v1

    :cond_0
    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minProgress:F

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->maxProgress:F

    cmpl-float v2, p2, v1

    if-gtz v2, :cond_4

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->tickMarkNumber:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    int-to-float v2, v2

    div-float v2, v1, v2

    float-to-int v2, v2

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minProgress:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minProgress:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v1

    iput p1, v0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The current value must be at the equal point"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->leftSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v1

    iput p1, v2, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->rightSB:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    if-eqz p1, :cond_3

    :goto_0
    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;->minProgress:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p2, v1

    iput p2, p1, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->currPercent:F

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setValue() max > (preset max - offsetValue) . #max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " #preset max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue() min < (preset min - offsetValue) . #min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " #preset min:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
