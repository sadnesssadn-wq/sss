.class public Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaleListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;


# direct methods
.method private constructor <init>(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ScaleListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ScaleListener;-><init>(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    const v0, 0x3f733333    # 0.95f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ScaleListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$100(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ScaleListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {v2}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$100(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->scaleImage(FFF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ScaleListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$800(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ScaleListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$800(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;->onScale()V

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$ScaleListener;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    const/4 v0, 0x2

    iput v0, p1, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->mode:I

    const/4 p1, 0x1

    return p1
.end method
