.class public Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$9;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$9;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$800(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x0

    aput v0, p1, v1

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$9;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$800(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x1

    aput v0, p1, v1

    invoke-static {p1}, Lcom/zoho/livechat/android/config/DeviceConfig;->setLauncherPosition([I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
