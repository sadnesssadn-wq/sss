.class public Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageListener"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field private tapCount:I

.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

.field private zoom_Ratio:F


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->zoom_Ratio:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->tapCount:I

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->tapCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$100(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget v3, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->zoom_Ratio:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v3, v4, p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->scaleImage(FFF)V

    iget p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->tapCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->tapCount:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->alignCenter()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->scaleImage(FFF)V

    iput v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->tapCount:I

    :goto_0
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$602(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;Z)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$800(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ImageListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$800(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;->onSingleTouch()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
