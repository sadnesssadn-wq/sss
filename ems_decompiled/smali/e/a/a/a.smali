.class public Le/a/a/a;
.super Linfo/androidhive/barcode/camera/GraphicOverlay$a;
.source ""


# static fields
.field public static final e:[I

.field public static f:I


# instance fields
.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Paint;

.field public volatile d:Lc/d/a/b/q/e/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Le/a/a/a;->e:[I

    const/4 v0, 0x0

    sput v0, Le/a/a/a;->f:I

    return-void

    :array_0
    .array-data 4
        -0xffff01
        -0xff0001
        -0xff0100
    .end array-data
.end method

.method public constructor <init>(Linfo/androidhive/barcode/camera/GraphicOverlay;)V
    .locals 2

    invoke-direct {p0, p1}, Linfo/androidhive/barcode/camera/GraphicOverlay$a;-><init>(Linfo/androidhive/barcode/camera/GraphicOverlay;)V

    sget p1, Le/a/a/a;->f:I

    add-int/lit8 p1, p1, 0x1

    sget-object v0, Le/a/a/a;->e:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    sput p1, Le/a/a/a;->f:I

    aget p1, v0, p1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le/a/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Le/a/a/a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Le/a/a/a;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le/a/a/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Le/a/a/a;->c:Landroid/graphics/Paint;

    const/high16 v0, 0x42100000    # 36.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Le/a/a/a;->d:Lc/d/a/b/q/e/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lc/d/a/b/q/e/a;->v()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v2}, Linfo/androidhive/barcode/camera/GraphicOverlay$a;->b(F)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 1
    iget-object v3, p0, Linfo/androidhive/barcode/camera/GraphicOverlay$a;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    .line 2
    iget v3, v3, Linfo/androidhive/barcode/camera/GraphicOverlay;->g:F

    mul-float v2, v2, v3

    .line 3
    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v2}, Linfo/androidhive/barcode/camera/GraphicOverlay$a;->b(F)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 4
    iget-object v3, p0, Linfo/androidhive/barcode/camera/GraphicOverlay$a;->a:Linfo/androidhive/barcode/camera/GraphicOverlay;

    .line 5
    iget v3, v3, Linfo/androidhive/barcode/camera/GraphicOverlay;->g:F

    mul-float v2, v2, v3

    .line 6
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Le/a/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, v0, Lc/d/a/b/q/e/a;->d:Ljava/lang/String;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Le/a/a/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
