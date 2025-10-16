.class public Lcom/zoho/livechat/android/ui/activities/SalesIQBaseActivity;
.super Lb/b/k/h;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/k/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Lb/b/k/h;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    invoke-super {p0, p1}, Lb/m/d/m;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;

    move-result-object p1

    const-string v0, "sdk_open"

    invoke-interface {p1, v0, v1}, Lcom/zoho/livechat/android/operation/OperationCallback;->handle(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lb/m/d/m;->onPause()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zoho/livechat/android/config/LDChatConfig;->setSDKOpenStatus(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lb/m/d/m;->onResume()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zoho/livechat/android/config/LDChatConfig;->setSDKOpenStatus(Z)V

    return-void
.end method
