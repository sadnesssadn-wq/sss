.class public Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "message"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "refreshchat"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "sync_conv"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "appstatus"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p2, "closeui"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_1
    const-string p2, "endchattimer"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->timer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getConversations()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->syncConversation(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_3
    const-string p2, "chattimerstart"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "endtimerstart"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEndChatTimerTimeRemaining()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->timer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_4
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    new-instance p2, Lcom/zoho/livechat/android/ui/EndChatTimer;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEndChatTimerTimeRemaining()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/zoho/livechat/android/ui/EndChatTimer;-><init>(JJ)V

    iput-object p2, p1, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->timer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    iget-object p2, p1, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->timer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    invoke-virtual {p2, p1}, Lcom/zoho/livechat/android/ui/EndChatTimer;->addListener(Lcom/zoho/livechat/android/ui/listener/EndChatTimerListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->timer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getConversations()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->syncConversation(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->access$000(Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;)V

    :cond_6
    :goto_2
    return-void
.end method
