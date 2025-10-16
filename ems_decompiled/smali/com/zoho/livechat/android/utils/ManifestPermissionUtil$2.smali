.class public final Lcom/zoho/livechat/android/utils/ManifestPermissionUtil$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;->getAlertDialog(Landroid/app/Activity;ILjava/lang/String;)Lb/b/k/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$act:Landroid/app/Activity;

.field public final synthetic val$request:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil$2;->val$act:Landroid/app/Activity;

    iput p2, p0, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil$2;->val$request:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil$2;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil$2;->val$act:Landroid/app/Activity;

    iget v1, p0, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil$2;->val$request:I

    .line 1
    sget v3, Lb/i/e/a;->b:I

    invoke-virtual {v0, p2, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
