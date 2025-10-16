.class public Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->access$002(Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;F)F

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView$1;->this$0:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
