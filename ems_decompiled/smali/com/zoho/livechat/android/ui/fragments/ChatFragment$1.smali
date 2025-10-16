.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "message"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "refreshchat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    const-string p1, "chid"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    const-string v4, "sentmail"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    const-string v5, "temp_chid"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChat(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$202(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/models/SalesIQChat;)Lcom/zoho/livechat/android/models/SalesIQChat;

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChat(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$202(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/models/SalesIQChat;)Lcom/zoho/livechat/android/models/SalesIQChat;

    const-string p1, "endchat"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/ChatViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getTimerLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$400(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/EndChatTimer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$400(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/EndChatTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/ChatViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hideKeyboard(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v4

    invoke-direct {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$502(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/ChatViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getChatRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$500(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$600(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$700(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$500(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$700(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$800(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_messages_email_success:I

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_messages_email_failure:I

    :goto_0
    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$900(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$600(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    :goto_1
    const-string p1, "istranslated"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "translate_consent"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_14

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance p1, Lb/b/k/g$a;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_googletranslate:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p2, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1
    iget-object v0, p1, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 2
    sget p2, Lcom/zoho/livechat/android/R$string;->livechat_common_ok:I

    invoke-virtual {p1, p2, v2}, Lb/b/k/g$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    invoke-virtual {p1}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object p1

    new-instance p2, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1$1;

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;Lb/b/k/g;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    :cond_7
    const-string v0, "refreshchatlist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$900(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1000(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->loadImageIds()V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v4, 0x6

    if-eq v0, v4, :cond_14

    :cond_9
    const-string v0, "closeui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_a
    const-string v0, "checkandshareScreenshot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->checkandshareScreenshot()V

    goto/16 :goto_2

    :cond_b
    const-string v0, "setTitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->setTitle()V

    goto/16 :goto_2

    :cond_c
    const-string v0, "chattimerstart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1100(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    goto/16 :goto_2

    :cond_d
    const-string v0, "endchattimer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/ChatViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getTimerLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$400(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/EndChatTimer;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$400(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/EndChatTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_2

    :cond_e
    const-string v0, "appstatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    goto :goto_2

    :cond_f
    const-string v0, "ontyping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "typing"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    sget p2, Lcom/zoho/livechat/android/R$string;->livechat_messages_operator_typing:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->u(I)V

    goto :goto_2

    :cond_10
    const-string p2, "onInvalidOperation"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/zoho/livechat/android/R$string;->livechat_messages_info_chatreqfailure:I

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_11
    const-string p2, "wmsconnect"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1, v3}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1400(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1500(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    :cond_12
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->v(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_13
    const-string p2, "networkstatus"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1000(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    :cond_14
    :goto_2
    return-void
.end method
