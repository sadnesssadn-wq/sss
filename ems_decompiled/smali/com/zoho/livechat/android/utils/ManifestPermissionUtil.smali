.class public Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static prefs:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "siq_permission"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBlockPermission(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static containsBlockPermission(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static getAlertDialog(Landroid/app/Activity;ILjava/lang/String;)Lb/b/k/g;
    .locals 2

    new-instance v0, Lb/b/k/g$a;

    invoke-direct {v0, p0}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    .line 1
    iget-object v1, v0, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, v1, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_permission_positive:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil$2;-><init>(Landroid/app/Activity;I)V

    .line 3
    iget-object p1, v0, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->h:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroidx/appcompat/app/AlertController$b;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/zoho/livechat/android/R$string;->livechat_permission_negative:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil$1;

    invoke-direct {p1}, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil$1;-><init>()V

    invoke-virtual {v0, p0, p1}, Lb/b/k/g$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    .line 5
    iget-object p0, v0, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const p1, 0x1080027

    iput p1, p0, Landroidx/appcompat/app/AlertController$b;->c:I

    .line 6
    invoke-virtual {v0}, Lb/b/k/g$a;->g()Lb/b/k/g;

    move-result-object p0

    return-object p0
.end method
