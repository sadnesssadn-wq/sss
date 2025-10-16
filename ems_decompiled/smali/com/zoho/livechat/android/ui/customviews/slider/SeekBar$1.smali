.class public Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->materialRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->material:F

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->access$000(Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;)Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;->access$000(Lcom/zoho/livechat/android/ui/customviews/slider/SeekBar;)Lcom/zoho/livechat/android/ui/customviews/slider/RangeSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
