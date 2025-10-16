.class public Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;

.field public final synthetic val$previewLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$1;->this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;

    iput-object p2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$1;->val$previewLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$1;->this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;

    iget-object p1, p1, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$1;->val$previewLayout:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$1;->this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;

    iget-object p1, p1, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeAllScreenshotWindows()V

    return-void
.end method
