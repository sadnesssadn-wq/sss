.class public Linfo/androidhive/barcode/ScannerOverlay;
.super Landroid/view/ViewGroup;
.source ""


# instance fields
.field public c:F

.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Linfo/androidhive/barcode/ScannerOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v0, Le/a/a/i;->ScannerOverlay:[I

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Le/a/a/i;->ScannerOverlay_square_width:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Le/a/a/f;->scanner_rect_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Linfo/androidhive/barcode/ScannerOverlay;->f:I

    sget p3, Le/a/a/i;->ScannerOverlay_square_height:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Le/a/a/f;->scanner_rect_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Linfo/androidhive/barcode/ScannerOverlay;->g:I

    sget p3, Le/a/a/i;->ScannerOverlay_line_color:I

    sget v0, Le/a/a/d;->scanner_line:I

    invoke-static {p1, v0}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Linfo/androidhive/barcode/ScannerOverlay;->j:I

    sget p1, Le/a/a/i;->ScannerOverlay_line_width:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Le/a/a/f;->line_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Linfo/androidhive/barcode/ScannerOverlay;->k:I

    sget p1, Le/a/a/i;->ScannerOverlay_line_speed:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Linfo/androidhive/barcode/ScannerOverlay;->h:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Linfo/androidhive/barcode/ScannerOverlay;->c:F

    iget v4, p0, Linfo/androidhive/barcode/ScannerOverlay;->d:F

    iget v5, p0, Linfo/androidhive/barcode/ScannerOverlay;->f:I

    invoke-virtual {p0, v5}, Linfo/androidhive/barcode/ScannerOverlay;->a(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Linfo/androidhive/barcode/ScannerOverlay;->c:F

    add-float/2addr v5, v6

    iget v6, p0, Linfo/androidhive/barcode/ScannerOverlay;->g:I

    invoke-virtual {p0, v6}, Linfo/androidhive/barcode/ScannerOverlay;->a(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Linfo/androidhive/barcode/ScannerOverlay;->d:F

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    int-to-float v4, v3

    invoke-virtual {p1, v2, v4, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    iget v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->j:I

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->k:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->e:F

    iget v2, p0, Linfo/androidhive/barcode/ScannerOverlay;->d:F

    iget v4, p0, Linfo/androidhive/barcode/ScannerOverlay;->g:I

    invoke-virtual {p0, v4}, Linfo/androidhive/barcode/ScannerOverlay;->a(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, p0, Linfo/androidhive/barcode/ScannerOverlay;->h:I

    int-to-float v5, v4

    add-float/2addr v2, v5

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iput-boolean v1, p0, Linfo/androidhive/barcode/ScannerOverlay;->i:Z

    goto :goto_0

    :cond_0
    iget v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->e:F

    iget v1, p0, Linfo/androidhive/barcode/ScannerOverlay;->d:F

    int-to-float v2, v4

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iput-boolean v3, p0, Linfo/androidhive/barcode/ScannerOverlay;->i:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->i:Z

    if-eqz v0, :cond_2

    iget v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->e:F

    int-to-float v1, v4

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_2
    iget v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->e:F

    int-to-float v1, v4

    add-float/2addr v0, v1

    :goto_1
    iput v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->e:F

    iget v6, p0, Linfo/androidhive/barcode/ScannerOverlay;->c:F

    iget v7, p0, Linfo/androidhive/barcode/ScannerOverlay;->e:F

    iget v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->f:I

    invoke-virtual {p0, v0}, Linfo/androidhive/barcode/ScannerOverlay;->a(I)I

    move-result v0

    int-to-float v0, v0

    add-float v8, v6, v0

    iget v9, p0, Linfo/androidhive/barcode/ScannerOverlay;->e:F

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    iget v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->f:I

    invoke-virtual {p0, v0}, Linfo/androidhive/barcode/ScannerOverlay;->a(I)I

    move-result v0

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->c:F

    iget v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->g:I

    invoke-virtual {p0, v0}, Linfo/androidhive/barcode/ScannerOverlay;->a(I)I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->d:F

    iput v0, p0, Linfo/androidhive/barcode/ScannerOverlay;->e:F

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
