.class public Lcom/zoho/livechat/android/ui/fragments/ArticleBaseFragment;
.super Lcom/zoho/livechat/android/ui/fragments/BaseFragment;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget p3, Lcom/zoho/livechat/android/R$layout;->siq_fragment_article_base:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-virtual {p2}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object p2

    .line 1
    new-instance p3, Lb/m/d/a;

    invoke-direct {p3, p2}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    .line 2
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowArticleDepartments()Z

    move-result p2

    const-string v0, "title"

    if-eqz p2, :cond_0

    new-instance p2, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;

    invoke-direct {p2}, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget v2, Lcom/zoho/livechat/android/R$string;->articles_browse:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_article_base_frame:I

    const-class v1, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, p2, v1}, Lb/m/d/i0;->j(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/m/d/i0;

    invoke-virtual {p3}, Lb/m/d/i0;->e()I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowArticleCategories()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;

    invoke-direct {p2}, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget v2, Lcom/zoho/livechat/android/R$string;->articles_browse:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_article_base_frame:I

    const-class v1, Lcom/zoho/livechat/android/ui/fragments/ArticlesCategoryFragment;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;

    invoke-direct {p2}, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget v2, Lcom/zoho/livechat/android/R$string;->articles_browse:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_article_base_frame:I

    const-class v1, Lcom/zoho/livechat/android/ui/fragments/ArticlesFragment;

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method public onNetworkChange(Z)V
    .locals 0

    return-void
.end method
