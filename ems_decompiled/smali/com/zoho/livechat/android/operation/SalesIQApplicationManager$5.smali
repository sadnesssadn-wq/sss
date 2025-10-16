.class public Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->showChatBubble(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field public final synthetic this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

.field public final synthetic val$badgeView:Landroid/widget/TextView;

.field public final synthetic val$parentLayout:Landroid/widget/FrameLayout;

.field public final synthetic val$windowManagerLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    iput-object p2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->val$parentLayout:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->val$windowManagerLayout:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->val$badgeView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$600(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :try_start_0
    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->openChat(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$700(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->initialTouchX:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->initialTouchY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {p2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$800(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {p2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$800(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$1300(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->val$windowManagerLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$800(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->val$windowManagerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    add-int/2addr v3, p1

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$1000(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)I

    move-result p1

    div-int/2addr p1, v2

    if-le v3, p1, :cond_5

    iget-object v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    iget-object v5, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->val$windowManagerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int v6, p1

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$1000(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)I

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int v8, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int v9, p1

    invoke-static/range {v4 .. v9}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$1100(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/view/View;IIII)V

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    iget-object p2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->val$parentLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->val$badgeView:Landroid/widget/TextView;

    invoke-static {p1, p2, v2, v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$1200(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    iget-object v4, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->val$windowManagerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int v5, p1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int v7, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int v8, p1

    invoke-static/range {v3 .. v8}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$1100(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/view/View;IIII)V

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    iget-object p2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->val$parentLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->val$badgeView:Landroid/widget/TextView;

    invoke-static {p1, p2, v0, v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$1200(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/view/View;Landroid/view/View;Z)V

    :goto_1
    return v1

    :cond_6
    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {p1, v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$702(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Z)Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5$1;-><init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$800(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->initialX:I

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$800(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->initialTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->initialTouchY:F

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    iget-object p2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->val$parentLayout:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$900(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Landroid/view/View;)V

    return v1
.end method
