.class public Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;
.super Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;
.source ""


# instance fields
.field public mActionBar:Landroidx/appcompat/app/ActionBar;

.field public toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public hideToolbar()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/zoho/livechat/android/R$layout;->siq_activity_articles:I

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_articles_toolbar:I

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lb/b/k/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->m(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->p(Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->s(Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->o(Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->x(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;->mActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->v(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->applyFontForToolbarTitle(Landroidx/appcompat/widget/Toolbar;)V

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_1

    sget v1, Lcom/zoho/livechat/android/R$id;->siq_articles_framelayout:I

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getToolbarHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setElevation(F)V

    :goto_0
    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColorDark(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchNavigationBarColor(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-direct {v0}, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object p1

    .line 1
    new-instance v1, Lb/m/d/a;

    invoke-direct {v1, p1}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    .line 2
    sget p1, Lcom/zoho/livechat/android/R$id;->siq_articles_framelayout:I

    const-class v2, Lcom/zoho/livechat/android/ui/fragments/ArticleInfoFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lb/m/d/i0;->j(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/m/d/i0;

    invoke-virtual {v1}, Lb/m/d/i0;->e()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public showToolbar()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
