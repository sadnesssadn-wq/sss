.class public Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;
.super Lcom/zoho/livechat/android/ui/fragments/BaseFragment;
.source ""


# instance fields
.field public articleDeptsAdapter:Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;

.field public articlesProgress:Landroid/widget/ProgressBar;

.field private articlesReceiver:Landroid/content/BroadcastReceiver;

.field public articlesViewParent:Landroidx/core/widget/NestedScrollView;

.field public deptsView:Landroidx/recyclerview/widget/RecyclerView;

.field public emptyStateButtonLayout:Landroid/widget/RelativeLayout;

.field public emptyStateButtonText:Landroid/widget/TextView;

.field public emptyStateIcon:Landroid/widget/ImageView;

.field public emptyStateParent:Landroid/widget/LinearLayout;

.field public recentViewedAdapter:Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

.field public recentlyViewed:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/BaseFragment;-><init>()V

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$4;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$4;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articlesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->updateDeptList()V

    return-void
.end method

.method private updateDeptList()V
    .locals 4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articleDeptsAdapter:Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getArticleDepartments()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articlesViewParent:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->emptyStateParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articlesProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articleDeptsAdapter:Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;

    invoke-virtual {v1, v0}, Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;->updateDepartments(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->getArticlesDeptStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articlesViewParent:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->emptyStateParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articlesProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articlesViewParent:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->emptyStateParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articlesProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public canShowSearch()Z
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articleDeptsAdapter:Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->getArticlesDeptStatus()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isArticlesAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/SalesIQCache;->clearArticleStatus()V

    new-instance p1, Lcom/zoho/livechat/android/utils/GetArticleDepartments;

    invoke-direct {p1}, Lcom/zoho/livechat/android/utils/GetArticleDepartments;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    new-instance p1, Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;)V

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;-><init>(Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articleDeptsAdapter:Lcom/zoho/livechat/android/ui/adapters/ArticleDeptsAdapter;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->deptsView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->deptsView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->deptsView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->deptsView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->updateDeptList()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getRecentViewedArticles()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->recentlyViewed:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v3, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

    new-instance v4, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$2;

    invoke-direct {v4, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$2;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;)V

    invoke-direct {v3, v1, v4}, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;-><init>(Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;)V

    iput-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->recentViewedAdapter:Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->recentlyViewed:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->recentlyViewed:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->recentlyViewed:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->recentlyViewed:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->recentViewedAdapter:Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/adapters/SearchArticlesAdapter;->updateRecentlyViewedArtciles(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->recentlyViewed:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

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

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->emptyStateButtonLayout:Landroid/widget/RelativeLayout;

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->emptyStateButtonLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$3;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$3;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/zoho/livechat/android/R$layout;->siq_fragment_article_category:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_articles_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articlesViewParent:Landroidx/core/widget/NestedScrollView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_category_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->deptsView:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_recently_viewed:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->recentlyViewed:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_articles_emptystate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->emptyStateParent:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_empty_state_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->emptyStateIcon:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_empty_state_startchat_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->emptyStateButtonLayout:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_empty_state_startchat:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->emptyStateButtonText:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_articles_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articlesProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method public onNetworkChange(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articlesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/q/a/a;->d(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->updateDeptList()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->allowSetTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    check-cast v0, Lb/b/k/h;

    invoke-virtual {v0}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$string;->articles_browse:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->w(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->updateArticleViewTitle()V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->articlesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "receivearticles"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/q/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
