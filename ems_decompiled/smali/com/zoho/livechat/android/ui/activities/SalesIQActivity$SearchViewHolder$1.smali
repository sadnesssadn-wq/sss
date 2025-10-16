.class public Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;-><init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

.field public final synthetic val$this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder$1;->this$1:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder$1;->val$this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder$1;->this$1:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zoho/livechat/android/ui/activities/ChatActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    const-string v1, "chid"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "temp_chid"

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder$1;->this$1:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
