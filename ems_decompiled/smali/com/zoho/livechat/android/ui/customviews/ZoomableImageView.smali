.class public Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;
.super Landroid/widget/ImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;,
        Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ScaleListener;
    }
.end annotation


# static fields
.field public static final CLICK:I = 0x3

.field public static final DRAG:I = 0x1

.field public static final NONE:I = 0x0

.field public static final ZOOM:I = 0x2

.field public static normalMatrix:Landroid/graphics/Matrix;


# instance fields
.field public bmHeight:F

.field public bmWidth:F

.field public bottom:F

.field public curimgleft:F

.field public curimgtop:F

.field private detector:Landroid/view/GestureDetector;

.field public exit:Z

.field private hd:Landroid/os/Handler;

.field public height:F

.field public i:I

.field private imagezoomlayout:Landroid/view/View;

.field public imgy:F

.field public iscenter:Z

.field public last:Landroid/graphics/PointF;

.field public left:F

.field private listener:Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

.field public m:[F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field public matrix:Landroid/graphics/Matrix;

.field public maxScale:F

.field public minScale:F

.field public mode:I

.field private mtime:J

.field public origHeight:F

.field public origWidth:F

.field public redundantXSpace:F

.field public redundantYSpace:F

.field public right:F

.field public saveScale:F

.field public scale:F

.field public start:Landroid/graphics/PointF;

.field public top:F

.field private translateonly:Z

.field public width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->mode:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->exit:Z

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->iscenter:Z

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->last:Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->start:Landroid/graphics/PointF;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->hd:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->translateonly:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->minScale:F

    const/high16 v2, 0x40400000    # 3.0f

    iput v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->maxScale:F

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->scale:F

    iput v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->sharedConstructing(Landroid/content/Context;)V

    new-instance v0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;

    invoke-direct {v0, p0, p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;-><init>(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;Landroid/content/Context;)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    const/4 p2, 0x0

    iput p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->mode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->exit:Z

    iput-boolean p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->iscenter:Z

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->last:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->start:Landroid/graphics/PointF;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->hd:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->translateonly:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->minScale:F

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->maxScale:F

    iput p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->i:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->scale:F

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->sharedConstructing(Landroid/content/Context;)V

    new-instance p2, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;-><init>(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;Landroid/content/Context;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->detector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->imagezoomlayout:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->mtime:J

    return-wide v0
.end method

.method public static synthetic access$402(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->mtime:J

    return-wide p1
.end method

.method public static synthetic access$500(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;FFLandroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->zoomImage(FFLandroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->translateonly:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->translateonly:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->hd:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->listener:Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

    return-object p0
.end method

.method private zoomImage(FFLandroid/graphics/PointF;)V
    .locals 10

    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->last:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget v2, p3, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->origWidth:F

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->origHeight:F

    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    float-to-double v5, v4

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_0

    iget-boolean v5, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->translateonly:Z

    if-nez v5, :cond_0

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->listener:Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;->onPagingEnable()V

    goto :goto_0

    :cond_0
    float-to-double v4, v4

    cmpl-double v6, v4, v7

    if-eqz v6, :cond_1

    iget-boolean v4, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->translateonly:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->listener:Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;->onPagingDisable()V

    :cond_1
    :goto_0
    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->width:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    cmpg-float v7, v1, v4

    if-gtz v7, :cond_7

    iget v7, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->height:F

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_7

    iget-object v7, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->imagezoomlayout:Landroid/view/View;

    if-eqz v7, :cond_7

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->translateonly:Z

    iget p2, p3, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    cmpg-float v7, v1, v4

    if-gez v7, :cond_2

    goto :goto_1

    :cond_2
    sub-float/2addr v0, p2

    div-float/2addr v0, v3

    sub-float v1, v4, v0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/16 v0, 0xff

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float v1, v1, p2

    sub-float/2addr p2, v1

    float-to-int p2, p2

    rsub-int p2, p2, 0xff

    if-le p2, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, p2

    :goto_2
    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    move v5, v0

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_6

    const-string p1, "0"

    invoke-static {p1, p2}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_6
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->imagezoomlayout:Landroid/view/View;

    if-eqz p1, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "000000"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_9

    :cond_7
    const-string v7, "#000000"

    cmpg-float v1, v1, v4

    if-gez v1, :cond_b

    add-float p1, p2, v2

    cmpl-float v0, p1, v6

    if-lez v0, :cond_8

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->bottom:F

    neg-float v1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_9

    add-float/2addr p2, v0

    :goto_4
    neg-float v2, p2

    :cond_9
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->imagezoomlayout:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_a
    iput-boolean v5, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->translateonly:Z

    goto :goto_9

    :cond_b
    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->height:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_f

    add-float p2, p1, v0

    cmpl-float v1, p2, v6

    if-lez v1, :cond_c

    goto :goto_5

    :cond_c
    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->right:F

    neg-float v2, v1

    cmpg-float p2, p2, v2

    if-gez p2, :cond_d

    add-float/2addr p1, v1

    :goto_5
    neg-float v0, p1

    :cond_d
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->imagezoomlayout:Landroid/view/View;

    if-eqz p1, :cond_e

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_e
    iput-boolean v5, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->translateonly:Z

    const/4 v2, 0x0

    :goto_6
    move v6, v0

    goto :goto_9

    :cond_f
    add-float v1, p1, v0

    cmpl-float v3, v1, v6

    if-lez v3, :cond_10

    goto :goto_7

    :cond_10
    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->right:F

    neg-float v4, v3

    cmpg-float v1, v1, v4

    if-gez v1, :cond_11

    add-float/2addr p1, v3

    :goto_7
    neg-float v0, p1

    :cond_11
    add-float p1, p2, v2

    cmpl-float v1, p1, v6

    if-lez v1, :cond_12

    goto :goto_8

    :cond_12
    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->bottom:F

    neg-float v3, v1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_13

    add-float/2addr p2, v1

    :goto_8
    neg-float v2, p2

    :cond_13
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->imagezoomlayout:Landroid/view/View;

    if-eqz p1, :cond_14

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_14
    iput-boolean v5, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->translateonly:Z

    goto :goto_6

    :cond_15
    :goto_9
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->last:Landroid/graphics/PointF;

    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method


# virtual methods
.method public alignCenter()V
    .locals 7

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->width:F

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->bmWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->height:F

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->bmHeight:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->scale:F

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->height:F

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->scale:F

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->bmHeight:F

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->redundantYSpace:F

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->width:F

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->bmWidth:F

    mul-float v1, v1, v3

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->redundantXSpace:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->redundantYSpace:F

    div-float/2addr v2, v1

    iput v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->redundantXSpace:F

    iput v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->left:F

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->top:F

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->width:F

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->redundantXSpace:F

    mul-float v3, v2, v1

    sub-float v3, v0, v3

    iput v3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->origWidth:F

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->height:F

    iget v4, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->redundantYSpace:F

    mul-float v5, v4, v1

    sub-float v5, v3, v5

    iput v5, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->origHeight:F

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    mul-float v6, v0, v5

    sub-float/2addr v6, v0

    mul-float v2, v2, v1

    mul-float v2, v2, v5

    sub-float/2addr v6, v2

    iput v6, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->right:F

    mul-float v0, v3, v5

    sub-float/2addr v0, v3

    mul-float v4, v4, v1

    mul-float v4, v4, v5

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->bottom:F

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->normalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->width:F

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->height:F

    iget-boolean p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->iscenter:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->alignCenter()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->iscenter:Z

    :cond_0
    return-void
.end method

.method public resetIsCenter()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->iscenter:Z

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->alignCenter()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public scaleImage(FFF)V
    .locals 9

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    mul-float v1, v0, p1

    iput v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->maxScale:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    :goto_0
    iput v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    div-float p1, v2, v0

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->minScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->width:F

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    mul-float v2, v0, v1

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->redundantXSpace:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    mul-float v3, v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->right:F

    iget v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->height:F

    mul-float v3, v2, v1

    sub-float/2addr v3, v2

    iget v5, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->redundantYSpace:F

    mul-float v5, v5, v4

    mul-float v5, v5, v1

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->bottom:F

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->origWidth:F

    mul-float v3, v3, v1

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    cmpg-float v3, v3, v0

    if-lez v3, :cond_6

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->origHeight:F

    mul-float v3, v3, v1

    cmpg-float v1, v3, v2

    if-gtz v1, :cond_2

    goto :goto_5

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->m:[F

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->m:[F

    aget p3, p2, v6

    aget p2, p2, v5

    cmpg-float p1, p1, v7

    if-gez p1, :cond_a

    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->right:F

    neg-float v0, p1

    cmpg-float v0, p3, v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    add-float/2addr p3, p1

    neg-float p1, p3

    invoke-virtual {v0, p1, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    :cond_3
    cmpl-float p1, p3, v8

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    neg-float p3, p3

    invoke-virtual {p1, p3, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4
    :goto_2
    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->bottom:F

    neg-float p3, p1

    cmpg-float p3, p2, p3

    if-gez p3, :cond_5

    :goto_3
    iget-object p3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    add-float/2addr p2, p1

    neg-float p1, p2

    invoke-virtual {p3, v8, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_6

    :cond_5
    cmpl-float p1, p2, v8

    if-lez p1, :cond_a

    :goto_4
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    neg-float p2, p2

    invoke-virtual {p1, v8, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_6

    :cond_6
    :goto_5
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    div-float/2addr v0, v4

    div-float/2addr v2, v4

    invoke-virtual {p2, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    cmpg-float p2, p1, v7

    if-gez p2, :cond_a

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->m:[F

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->m:[F

    aget p3, p2, v6

    aget p2, p2, v5

    cmpg-float p1, p1, v7

    if-gez p1, :cond_a

    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->origWidth:F

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->width:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->bottom:F

    neg-float p3, p1

    cmpg-float p3, p2, p3

    if-gez p3, :cond_7

    goto :goto_3

    :cond_7
    cmpl-float p1, p2, v8

    if-lez p1, :cond_a

    goto :goto_4

    :cond_8
    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->right:F

    neg-float p2, p1

    cmpg-float p2, p3, p2

    if-gez p2, :cond_9

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    add-float/2addr p3, p1

    neg-float p1, p3

    invoke-virtual {p2, p1, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_6

    :cond_9
    cmpl-float p1, p3, v8

    if-lez p1, :cond_a

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    neg-float p2, p3

    invoke-virtual {p1, p2, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_a
    :goto_6
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->bmWidth:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->bmHeight:F

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->alignCenter()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->listener:Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->maxScale:F

    return-void
.end method

.method public sharedConstructing(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ScaleListener;-><init>(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->m:[F

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;

    invoke-direct {p1, p0}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;-><init>(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
