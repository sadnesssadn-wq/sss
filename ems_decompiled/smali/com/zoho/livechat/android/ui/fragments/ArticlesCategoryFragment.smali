.class public Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;
.super Lcom/zoho/livechat/android/ui/fragments/BaseFragment;
.source ""


# instance fields
.field public articleCategoryAdapter:Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;

.field private articlesReceiver:Landroid/content/BroadcastReceiver;

.field public categoryView:Landroidx/recyclerview/widget/RecyclerView;

.field public deptId:Ljava/lang/String;

.field public progressBar:Landroid/widget/ProgressBar;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/BaseFragment;-><init>()V

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment$2;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment$2;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->articlesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->handleListVisibility(Z)V

    return-void
.end method

.method private handleListVisibility(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->categoryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->categoryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->title:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "dept_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->deptId:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->title:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    check-cast p1, Lb/b/k/h;

    invoke-virtual {p1}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->x(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->deptId:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getArticleCategory(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->deptId:Ljava/lang/String;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/SalesIQCache;->isArticlesUpdated(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/zoho/livechat/android/utils/GetArticles;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->deptId:Ljava/lang/String;

    const/16 v3, 0x32

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getArticlesModifiedTime(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zoho/livechat/android/utils/GetArticles;-><init>(Ljava/lang/String;IJZ)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->deptId:Ljava/lang/String;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/SalesIQCache;->isArticlesSynced(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/zoho/livechat/android/utils/GetArticles;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->deptId:Ljava/lang/String;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zoho/livechat/android/utils/GetArticles;-><init>(Ljava/lang/String;IJZ)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment$1;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;)V

    invoke-direct {v0, p1, v1}, Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;-><init>(Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/listener/ArticleCategoryClickListener;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->articleCategoryAdapter:Lcom/zoho/livechat/android/ui/adapters/ArticleCategoryAdapter;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->categoryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->categoryView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->categoryView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->handleListVisibility(Z)V

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

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_category_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->categoryView:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_articles_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->progressBar:Landroid/widget/ProgressBar;

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->articlesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/q/a/a;->d(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

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

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->x(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;->articlesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "receivearticles"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/q/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
