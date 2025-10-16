.class public Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;

.field public final synthetic val$dy1:F


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;F)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1$1;->this$1:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;

    iput p2, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1$1;->val$dy1:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1$1;->this$1:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1$1;->val$dy1:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1$1;->this$1:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget-object v1, v0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1$1;->this$1:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;

    iget v1, v0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->i:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$700(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xf

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;->access$300(Lcom/zoho/livechat/android/ui/customviews/ZoomableImageView;)Landroid/view/View;

    move-result-object v0

    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
