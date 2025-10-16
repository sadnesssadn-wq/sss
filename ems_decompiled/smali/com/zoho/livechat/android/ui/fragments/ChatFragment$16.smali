.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

.field public final synthetic val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/models/SalesIQChat;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    sget-object p1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v3}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;->contenturi:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "1"

    aput-object v0, v4, v1

    const-string v0, "CHATID=? AND TYPE =? "

    invoke-virtual {p1, v2, v3, v0, v4}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$202(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/models/SalesIQChat;)Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeActiveChatPKID()V

    sget-object p1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    new-array v4, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "CHATID=?"

    invoke-virtual {p1, v2, v3, v5, v4}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;->contenturi:Landroid/net/Uri;

    new-array v1, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {p1, v2, v3, v5, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$16;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$600(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    return-void
.end method
