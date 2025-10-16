.class public Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;
.super Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/SearchView$l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchStates;,
        Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;
    }
.end annotation


# instance fields
.field private articlesReceiver:Landroid/content/BroadcastReceiver;

.field private hide_chat_button:Z

.field private mActionBar:Landroidx/appcompat/app/ActionBar;

.field private pagerAdapter:Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

.field private searchArticlesAdapter:Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

.field private searchQuery:Ljava/lang/String;

.field private searchTimer:Ljava/util/Timer;

.field private searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

.field private startChatButton:Landroid/widget/FrameLayout;

.field private startChatIconView:Landroid/widget/ImageView;

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchTimer:Ljava/util/Timer;

    const-string v0, ""

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchQuery:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->hide_chat_button:Z

    new-instance v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$9;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$9;-><init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->articlesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->setSearchViewVisibility(Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchQuery:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->pagerAdapter:Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->getArticles(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchArticlesAdapter:Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->setSearchViewState(I)V

    return-void
.end method

.method private canShowChatButton()Z
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isHideEmbed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->enableChatInOfflineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getArticles(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQArticle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM SIQ_ARTICLES WHERE ARTICLE_MESSAGE LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\' ORDER BY "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "VISITORS_VIEWED"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " DESC"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v2, p1}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/zoho/livechat/android/models/SalesIQArticle;

    invoke-direct {p1, v1}, Lcom/zoho/livechat/android/models/SalesIQArticle;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private handleChatButtonVisibility()V
    .locals 3

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->canShowChatButton()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyStateButton:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->startChatButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->hide_chat_button:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyStateButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyStateButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->startChatButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initTabLayout()V
    .locals 7

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_item_salesiq_tab:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$g;->a(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 1
    iget-object v3, v0, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 2
    sget v4, Lcom/zoho/livechat/android/R$id;->siq_tab_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_chat:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 4
    sget v3, Lcom/zoho/livechat/android/R$id;->siq_tab_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v5, Lcom/zoho/livechat/android/R$string;->livechat_conversation:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$g;->a(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 5
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 6
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_faq:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v2, "#6f7c8e"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 7
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v1, Lcom/zoho/livechat/android/R$string;->articles_name:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setSearchViewState(I)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->hide_chat_button:Z

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyState:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyState:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyState:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyStateButtonText:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$string;->articles_pursuechat:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyStateButtonText:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$string;->articles_startchat:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iput-boolean v1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->hide_chat_button:Z

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->handleChatButtonVisibility()V

    return-void
.end method

.method private setSearchViewVisibility(Z)V
    .locals 8

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->hide_chat_button:Z

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {p1, v2}, Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;->setPagingEnabled(Z)V

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchContainerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchContainerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchContainerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$6;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$6;-><init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->setSearchViewState(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchArticlesAdapter:Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getRecentSearchArticles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->updateRecentArticles(Ljava/util/ArrayList;)V

    :cond_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->pagerAdapter:Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowArticles()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->pagerAdapter:Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowConversation()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$7;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$7;-><init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {p1, v1}, Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;->setPagingEnabled(Z)V

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchContainerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$8;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$8;-><init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->handleChatButtonVisibility()V

    :cond_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->pagerAdapter:Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowArticles()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->pagerAdapter:Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowConversation()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v5}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public allowSetTitle()Z
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isArticlesAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->pagerAdapter:Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/zoho/livechat/android/R$layout;->siq_activity_salesiq:I

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    new-instance p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    invoke-direct {p1, p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;-><init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_livechattoolbar:I

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lb/b/k/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->m(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->p(Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->s(Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->o(Z)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getConversationTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getConversationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->x(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_conversation_title:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    sget v2, Lcom/zoho/livechat/android/R$string;->articles_browse:I

    :goto_0
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->w(I)V

    :goto_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->v(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->applyFontForToolbarTitle(Landroidx/appcompat/widget/Toolbar;)V

    :cond_2
    sget p1, Lcom/zoho/livechat/android/R$id;->siq_viewpager:I

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getToolbarHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setElevation(F)V

    :goto_2
    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColorDark(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchNavigationBarColor(Landroid/app/Activity;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_4
    sget p1, Lcom/zoho/livechat/android/R$id;->siq_fab_parent:I

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->startChatButton:Landroid/widget/FrameLayout;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_fab_icon:I

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->startChatIconView:Landroid/widget/ImageView;

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->startChatIconView:Landroid/widget/ImageView;

    .line 1
    sget-object v3, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->startChatIconView:Landroid/widget/ImageView;

    sget v2, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_chat_floating:I

    invoke-static {p0, v2}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->startChatButton:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$1;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$1;-><init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->handleChatButtonVisibility()V

    new-instance p1, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v2

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result v3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isArticlesAllowed()Z

    move-result v4

    invoke-direct {p1, v2, v3, v4}, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;-><init>(Lb/m/d/y;ZZ)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->pagerAdapter:Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {v2, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lb/x/a/a;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_salesiq_tabview:I

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorHeight(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->bringToFront()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->pagerAdapter:Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowArticles()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->pagerAdapter:Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowConversation()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->initTabLayout()V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    new-instance v2, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;-><init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    new-instance p1, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

    new-instance v2, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$3;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$3;-><init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V

    invoke-direct {p1, v0, v2}, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;-><init>(Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchArticlesAdapter:Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchViewHolder:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isArticlesAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isArticlesAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eq v3, v2, :cond_3

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->pagerAdapter:Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    invoke-virtual {v4, v3}, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    if-ne v5, v3, :cond_3

    invoke-virtual {v4}, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->canShowSearch()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_3
    if-eq v0, v2, :cond_5

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v3, v0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    invoke-virtual {v0}, Lb/m/d/y;->M()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    instance-of v4, v3, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->canShowSearch()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    invoke-virtual {p0}, Lb/b/k/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v3, Lcom/zoho/livechat/android/R$menu;->siq_menu_search:I

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->action_search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v3, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    sget v4, Lb/b/f;->search_mag_icon:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lb/b/f;->search_src_text:I

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v3, "#66ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    sget v3, Lcom/zoho/livechat/android/R$string;->abc_search_hint:I

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    new-instance v1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$4;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$4;-><init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->onBackPressed()V

    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/zoho/livechat/android/R$id;->action_search:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;->onPause()V

    invoke-static {p0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->articlesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/q/a/a;->d(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchQuery:Ljava/lang/String;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->pagerAdapter:Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;->onSearch(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchQuery:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->getArticles(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchArticlesAdapter:Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->updateArticles(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchArticlesAdapter:Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->setSearchViewState(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->setSearchViewState(I)V

    :goto_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchTimer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchTimer:Ljava/util/Timer;

    new-instance v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$5;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$5;-><init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->setSearchViewState(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->searchArticlesAdapter:Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getRecentSearchArticles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->updateRecentArticles(Ljava/util/ArrayList;)V

    :cond_4
    :goto_2
    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;->onResume()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isEmbedAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lb/b/k/h;->supportInvalidateOptionsMenu()V

    invoke-static {p0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->articlesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "receivearticles"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/q/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->setSearchViewVisibility(Z)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEmbedStatus()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->canShowOfflineMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/zoho/livechat/android/comm/GetAppStatus;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/livechat/android/comm/GetAppStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public updateArticleViewTitle()V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->viewPager:Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    invoke-virtual {v0}, Lb/m/d/y;->M()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    sget v2, Lcom/zoho/livechat/android/R$string;->articles_browse:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->w(I)V

    instance-of v1, v0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->x(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
