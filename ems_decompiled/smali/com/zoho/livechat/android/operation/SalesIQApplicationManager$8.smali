.class public Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->animateLauncherView(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

.field public final synthetic val$launcherView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$8;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    iput-object p2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$8;->val$launcherView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$8;->val$launcherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "x"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$8;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$1300(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$8;->val$launcherView:Landroid/view/View;

    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
