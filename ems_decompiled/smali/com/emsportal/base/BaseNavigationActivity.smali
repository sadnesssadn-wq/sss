.class public abstract Lcom/emsportal/base/BaseNavigationActivity;
.super Lb/b/k/h;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lc/b/t/b$e;


# static fields
.field private static final INTENT_FINISH_ACTIVITY:Ljava/lang/String; = "finish activity"

.field public static self:Lcom/emsportal/base/BaseNavigationActivity;


# instance fields
.field private alertDialog:Lb/b/k/g;

.field private isRegisterReceiverFinishActivity:Z

.field private isRegisterReceiverResetApp:Z

.field private isRegisterReceiverTokenExpired:Z

.field public layoutInflate:I

.field private progress:Landroid/widget/ProgressBar;

.field public receiverFinishActivity:Landroid/content/BroadcastReceiver;

.field public receiverTokenExpired:Landroid/content/BroadcastReceiver;

.field public resetAppReceiver:Landroid/content/BroadcastReceiver;

.field private root:Landroid/view/ViewGroup;

.field public toolbar:Landroidx/appcompat/widget/Toolbar;

.field public tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/b/k/h;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverTokenExpired:Z

    iput-boolean v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverFinishActivity:Z

    iput-boolean v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverResetApp:Z

    return-void
.end method

.method public static synthetic n(Lcom/emsportal/base/BaseNavigationActivity;)Lb/b/k/g;
    .locals 0

    iget-object p0, p0, Lcom/emsportal/base/BaseNavigationActivity;->alertDialog:Lb/b/k/g;

    return-object p0
.end method


# virtual methods
.method public j()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    return-void
.end method

.method public abstract o()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lb/m/d/m;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/emsportal/base/BaseNavigationActivity;->self:Lcom/emsportal/base/BaseNavigationActivity;

    new-instance p1, Ljava/util/Locale;

    const-string v0, "vn"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const p1, 0x7f0b0056

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    invoke-static {}, Lc/b/t/b;->b()Lc/b/t/b;

    move-result-object p1

    .line 1
    iput-object p0, p1, Lc/b/t/b;->a:Lc/b/t/b$e;

    const p1, 0x7f080434

    .line 2
    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const p1, 0x7f0801fa

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->progress:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lb/b/k/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/emsportal/base/BaseNavigationActivity;->p()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->o(Z)V

    :cond_0
    const p1, 0x7f0800aa

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->root:Landroid/view/ViewGroup;

    const p1, 0x7f0804d5

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->q(Z)V

    .line 3
    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lcom/emsportal/base/BaseNavigationActivity$4;

    invoke-direct {v1, p0}, Lcom/emsportal/base/BaseNavigationActivity$4;-><init>(Lcom/emsportal/base/BaseNavigationActivity;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/emsportal/base/BaseNavigationActivity;->o()I

    move-result p1

    iput p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->layoutInflate:I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iget v1, p0, Lcom/emsportal/base/BaseNavigationActivity;->layoutInflate:I

    iget-object v2, p0, Lcom/emsportal/base/BaseNavigationActivity;->root:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_1
    invoke-virtual {p0}, Lcom/emsportal/base/BaseNavigationActivity;->r()V

    invoke-virtual {p0}, Lcom/emsportal/base/BaseNavigationActivity;->q()V

    new-instance p1, Lcom/emsportal/base/BaseNavigationActivity$1;

    invoke-direct {p1, p0}, Lcom/emsportal/base/BaseNavigationActivity$1;-><init>(Lcom/emsportal/base/BaseNavigationActivity;)V

    iput-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->resetAppReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Lcom/emsportal/base/BaseNavigationActivity$2;

    invoke-direct {p1, p0}, Lcom/emsportal/base/BaseNavigationActivity$2;-><init>(Lcom/emsportal/base/BaseNavigationActivity;)V

    iput-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->receiverTokenExpired:Landroid/content/BroadcastReceiver;

    new-instance p1, Lcom/emsportal/base/BaseNavigationActivity$3;

    invoke-direct {p1, p0}, Lcom/emsportal/base/BaseNavigationActivity$3;-><init>(Lcom/emsportal/base/BaseNavigationActivity;)V

    iput-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->receiverFinishActivity:Landroid/content/BroadcastReceiver;

    .line 5
    iget-boolean v1, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverFinishActivity:Z

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "finish activity"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverFinishActivity:Z

    .line 6
    :cond_2
    iget-boolean p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverTokenExpired:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->receiverTokenExpired:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "token expired"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverTokenExpired:Z

    .line 7
    :cond_3
    iget-boolean p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverResetApp:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->resetAppReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ACTION_RESET_APP"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverResetApp:Z

    .line 8
    :cond_4
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object p1

    iget-object p1, p1, Lc/b/k/a;->a:Lc/b/k/e;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "PREF_SHOW_TOKEN_EXPIRED_DIALOG"

    invoke-virtual {p1, v1, v0}, Lc/b/k/e;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lb/b/k/h;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/emsportal/base/BaseNavigationActivity;->self:Lcom/emsportal/base/BaseNavigationActivity;

    .line 1
    iget-boolean v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverFinishActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->receiverFinishActivity:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverFinishActivity:Z

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverResetApp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->resetAppReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverResetApp:Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lb/m/d/m;->onPause()V

    .line 1
    iget-boolean v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverTokenExpired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->receiverTokenExpired:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverTokenExpired:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lb/m/d/m;->onResume()V

    sput-object p0, Lcom/emsportal/base/BaseNavigationActivity;->self:Lcom/emsportal/base/BaseNavigationActivity;

    invoke-static {}, Lc/b/t/b;->b()Lc/b/t/b;

    move-result-object v0

    .line 1
    iput-object p0, v0, Lc/b/t/b;->a:Lc/b/t/b$e;

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lb/b/k/h;->onStart()V

    .line 1
    iget-boolean v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverTokenExpired:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->receiverTokenExpired:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "token expired"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->isRegisterReceiverTokenExpired:Z

    :cond_0
    return-void
.end method

.method public abstract p()Z
.end method

.method public abstract q()V
.end method

.method public abstract r()V
.end method

.method public s(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1
    iget-object v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public t()V
    .locals 4

    iget-object v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->alertDialog:Lb/b/k/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lb/b/k/g$a;

    invoke-direct {v0, p0}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00ad

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/k/g$a;->f(Landroid/view/View;)Lb/b/k/g$a;

    const/4 v2, 0x0

    .line 1
    iget-object v3, v0, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v2, v3, Landroidx/appcompat/app/AlertController$b;->l:Z

    .line 2
    invoke-virtual {v0}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->alertDialog:Lb/b/k/g;

    const v0, 0x7f08048a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0804cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/emsportal/base/BaseNavigationActivity$5;

    invoke-direct {v2, p0}, Lcom/emsportal/base/BaseNavigationActivity$5;-><init>(Lcom/emsportal/base/BaseNavigationActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/emsportal/base/BaseNavigationActivity$6;

    invoke-direct {v0, p0}, Lcom/emsportal/base/BaseNavigationActivity$6;-><init>(Lcom/emsportal/base/BaseNavigationActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/base/BaseNavigationActivity;->alertDialog:Lb/b/k/g;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public u(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
