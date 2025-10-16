.class public Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->showChatBubble(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$6;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$6;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

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
    return-void
.end method
