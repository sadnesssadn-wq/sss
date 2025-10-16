.class public Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->createIndeterminateAnimator(F)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

.field public final synthetic val$maxSweep:F

.field public final synthetic val$start:F


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$7;->this$0:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    iput p2, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$7;->val$maxSweep:F

    iput p3, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$7;->val$start:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$7;->this$0:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->access$102(Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;F)F

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$7;->this$0:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    iget v0, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$7;->val$maxSweep:F

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->access$100(Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$7;->val$start:F

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->access$202(Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;F)F

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$7;->this$0:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
