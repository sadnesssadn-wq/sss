.class public Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;
.super Lcom/zoho/livechat/android/ui/fragments/BaseFragment;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/ui/listener/EndChatTimerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;
    }
.end annotation


# instance fields
.field public adapter:Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field public conversationView:Landroidx/recyclerview/widget/RecyclerView;

.field public emptyStateButtonLayout:Landroid/widget/RelativeLayout;

.field public emptyStateButtonText:Landroid/widget/TextView;

.field public emptyStateImage:Landroid/widget/ImageView;

.field public emptyStateText:Landroid/widget/TextView;

.field public emptyStateView:Landroid/widget/LinearLayout;

.field public offlineMessageTextView:Landroid/widget/TextView;

.field public searchQuery:Ljava/lang/String;

.field public startChatButton:Landroid/widget/FrameLayout;

.field public startChatIconView:Landroid/widget/ImageView;

.field public timer:Lcom/zoho/livechat/android/ui/EndChatTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/BaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->searchQuery:Ljava/lang/String;

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$4;-><init>(Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->handleViewVisibility()V

    return-void
.end method

.method private handleViewVisibility()V
    .locals 6

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->startChatButton:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->conversationView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isHideEmbed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->enableChatInOfflineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->startChatButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->conversationView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isHideEmbed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->enableChatInOfflineMode()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateButtonText:Landroid/widget/TextView;

    sget v3, Lcom/zoho/livechat/android/R$string;->articles_pursuechat:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateButtonText:Landroid/widget/TextView;

    sget v3, Lcom/zoho/livechat/android/R$string;->articles_startchat:I

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateText:Landroid/widget/TextView;

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_conversation_search_emptystate:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateImage:Landroid/widget/ImageView;

    sget v3, Lcom/zoho/livechat/android/R$drawable;->salesiq_search_empty:I

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateText:Landroid/widget/TextView;

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_conversation_emptystate:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getCompanyName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateImage:Landroid/widget/ImageView;

    sget v3, Lcom/zoho/livechat/android/R$drawable;->salesiq_conversation_empty:I

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_7

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_7

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_7

    :cond_6
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEmbedStatus()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->canShowOfflineMessage()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->offlineMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->offlineMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-void
.end method


# virtual methods
.method public canShowSearch()Z
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->getItemCount()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance p1, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;)V

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;-><init>(Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->conversationView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->conversationView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->conversationView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->startChatButton:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$2;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$2;-><init>(Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateButtonLayout:Landroid/widget/RelativeLayout;

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateButtonLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$3;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$3;-><init>(Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateButtonText:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$string;->articles_pursuechat:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateButtonText:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$string;->articles_startchat:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/zoho/livechat/android/R$layout;->siq_fragment_conversation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_conversation_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->conversationView:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_fab_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->startChatButton:Landroid/widget/FrameLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_fab_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->startChatIconView:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->startChatIconView:Landroid/widget/ImageView;

    .line 1
    sget-object v0, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->startChatIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_chat_floating:I

    invoke-static {p3, v0}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_offline_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->offlineMessageTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_conversation_emptystate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateView:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_empty_state_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateImage:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_empty_state_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateText:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_empty_state_startchat_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateButtonLayout:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_empty_state_startchat:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->emptyStateButtonText:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p1
.end method

.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getConversations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->syncConversation(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onNetworkChange(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/q/a/a;->d(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->timer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getConversations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->syncConversation(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "receivelivechat"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/q/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "endtimerstart"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEndChatTimerTimeRemaining()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/zoho/livechat/android/ui/EndChatTimer;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEndChatTimerTimeRemaining()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zoho/livechat/android/ui/EndChatTimer;-><init>(JJ)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->timer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    invoke-virtual {v0, p0}, Lcom/zoho/livechat/android/ui/EndChatTimer;->addListener(Lcom/zoho/livechat/android/ui/listener/EndChatTimerListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->timer:Lcom/zoho/livechat/android/ui/EndChatTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getConversations()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->syncConversation(Ljava/util/ArrayList;)V

    :cond_1
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->handleViewVisibility()V

    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->searchQuery:Ljava/lang/String;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getConversations(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->syncConversation(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->handleViewVisibility()V

    return-void
.end method

.method public onTick(I)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->adapter:Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getConversations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->syncConversation(Ljava/util/ArrayList;)V

    return-void
.end method
