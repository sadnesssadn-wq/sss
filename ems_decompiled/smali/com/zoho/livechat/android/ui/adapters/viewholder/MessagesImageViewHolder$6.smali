.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

.field public final synthetic val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

.field public final synthetic val$meta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessage;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$6;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$6;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$6;->val$meta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$6;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$6;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENDING:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setStatus(I)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$6;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0, p1, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "receivelivechat"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    const-string v1, "refreshchat"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$6;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getChid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$6;->val$meta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$6;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/zoho/livechat/android/utils/FileUploader;->uploadFile(Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    :cond_0
    return-void
.end method
