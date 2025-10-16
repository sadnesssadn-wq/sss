.class public Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->sharedConstructing(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$100(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$200(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget-object v0, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->m:[F

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->m:[F

    const/4 v0, 0x2

    aget v1, p1, v0

    const/4 v2, 0x5

    aget p1, p1, v2

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_2

    if-eq v3, v0, :cond_1

    const/4 p1, 0x6

    if-eq v3, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iput v4, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->mode:I

    goto/16 :goto_0

    :cond_1
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget v0, p2, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->mode:I

    if-ne v0, v5, :cond_6

    invoke-static {p2, v1, p1, v2}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$500(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;FFLandroid/graphics/PointF;)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$300(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$600(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget p1, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->saveScale:F

    float-to-double v0, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v6

    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget-object p2, p2, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->start:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$400(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    long-to-float p2, v0

    div-float/2addr p1, p2

    float-to-int p1, p1

    if-ge p1, v5, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget-object p2, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->start:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v0, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    iput v4, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->i:I

    const/high16 p1, 0x41a00000    # 20.0f

    div-float/2addr p2, p1

    new-instance p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1$1;

    invoke-direct {p1, p0, p2}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1$1;-><init>(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;F)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$700(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0xf

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget p1, v2, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget-object p2, p2, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->start:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    iget p2, v2, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iput v4, v0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->mode:I

    const/4 v1, 0x3

    if-ge p1, v1, :cond_6

    if-ge p2, v1, :cond_6

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$300(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$300(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/view/View;

    move-result-object p1

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$402(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;J)J

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->last:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget-object p2, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->start:Landroid/graphics/PointF;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->last:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iput v5, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->mode:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->imgy:F

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget-object p2, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return v4
.end method
