.class public Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$2;
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

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$2;->this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;

    iput-object p2, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$2;->val$previewLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$2;->this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;

    iget-object p1, p1, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$2;->val$previewLayout:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$2;->this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;

    iget-object p1, p1, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-static {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$400(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "temp_chid"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$2;->this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;

    iget-object v1, v1, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/zoho/livechat/android/ui/activities/ChatActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "chid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$2;->this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;

    iget-object p1, p1, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3$2;->this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;

    iget-object p1, p1, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$3;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$500(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Z)V

    return-void
.end method
