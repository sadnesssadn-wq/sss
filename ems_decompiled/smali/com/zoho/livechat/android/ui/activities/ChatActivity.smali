.class public Lcom/zoho/livechat/android/ui/activities/ChatActivity;
.super Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$id;->siq_articles_framelayout:I

    invoke-virtual {v0, v1}, Lb/m/d/y;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/ui/fragments/BaseFragment;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/fragments/BaseFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
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

    invoke-virtual {p0, p1}, Lb/b/k/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->applyFontForToolbarTitle(Landroidx/appcompat/widget/Toolbar;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_articles_framelayout:I

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getToolbarHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setElevation(F)V

    :goto_0
    if-lt v0, v1, :cond_1

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

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-direct {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object p1

    .line 1
    new-instance v1, Lb/m/d/a;

    invoke-direct {v1, p1}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    .line 2
    sget p1, Lcom/zoho/livechat/android/R$id;->siq_articles_framelayout:I

    const-class v2, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lb/m/d/i0;->j(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/m/d/i0;

    invoke-virtual {v1}, Lb/m/d/i0;->e()I

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lb/m/d/m;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-direct {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object p1

    .line 1
    new-instance v1, Lb/m/d/a;

    invoke-direct {v1, p1}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    .line 2
    sget p1, Lcom/zoho/livechat/android/R$id;->siq_articles_framelayout:I

    const-class v2, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lb/m/d/i0;->j(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/m/d/i0;

    invoke-virtual {v1}, Lb/m/d/i0;->e()I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$id;->siq_articles_framelayout:I

    invoke-virtual {v0, v1}, Lb/m/d/y;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lb/m/d/y;->H(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_1
    return-void
.end method
