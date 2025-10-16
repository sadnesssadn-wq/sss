.class public Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;
.super Lcom/zoho/livechat/android/ui/fragments/BaseFragment;
.source ""


# instance fields
.field public articlesAdapter:Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;

.field private articlesReceiver:Landroid/content/BroadcastReceiver;

.field public articlesView:Landroidx/recyclerview/widget/RecyclerView;

.field private categoryId:Ljava/lang/String;

.field private deptId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/BaseFragment;-><init>()V

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment$2;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment$2;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->articlesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->deptId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->categoryId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->title:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "dept_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->deptId:Ljava/lang/String;

    const-string v0, "category_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->categoryId:Ljava/lang/String;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->title:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    check-cast p1, Lb/b/k/h;

    invoke-virtual {p1}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->x(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->categoryId:Ljava/lang/String;

    if-nez p1, :cond_1

    new-instance p1, Lcom/zoho/livechat/android/utils/GetArticles;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->deptId:Ljava/lang/String;

    const/16 v2, 0x32

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getArticlesModifiedTime(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/zoho/livechat/android/utils/GetArticles;-><init>(Ljava/lang/String;IJZ)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/zoho/livechat/android/utils/GetArticles;

    iget-object v7, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->deptId:Ljava/lang/String;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/zoho/livechat/android/utils/GetArticles;-><init>(Ljava/lang/String;IJZ)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    new-instance p1, Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;

    const/4 v0, 0x0

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment$1;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;)V

    invoke-direct {p1, v0, v1}, Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;-><init>(Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/listener/ArticlesClickListener;)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->articlesAdapter:Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->articlesView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->articlesView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->articlesView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/zoho/livechat/android/R$layout;->siq_fragment_articles_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_category_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->articlesView:Landroidx/recyclerview/widget/RecyclerView;

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

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->articlesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/q/a/a;->d(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->articlesAdapter:Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->deptId:Ljava/lang/String;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->categoryId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getArticles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/adapters/ArticlesAdapter;->updateArticles(Ljava/util/ArrayList;)V

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

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->title:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;->articlesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "receivearticles"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/q/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
