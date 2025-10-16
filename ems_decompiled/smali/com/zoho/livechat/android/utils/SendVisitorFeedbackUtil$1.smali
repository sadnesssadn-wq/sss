.class public Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil$1;->this$0:Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil$1;->this$0:Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;->access$000(Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil$1;->this$0:Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;->access$000(Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/VisitorChat;->setRating(I)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-interface {v0, v1}, Lcom/zoho/livechat/android/ChatActivityInterface;->handleRating(Lcom/zoho/livechat/android/VisitorChat;)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil$1;->this$0:Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;->access$100(Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil$1;->this$0:Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;->access$100(Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    iget-object v1, p0, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil$1;->this$0:Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;->access$100(Lcom/zoho/livechat/android/utils/SendVisitorFeedbackUtil;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/VisitorChat;->setFeedbackmessage(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-interface {v0, v1}, Lcom/zoho/livechat/android/ChatActivityInterface;->handleFeedback(Lcom/zoho/livechat/android/VisitorChat;)V

    :cond_1
    return-void
.end method
