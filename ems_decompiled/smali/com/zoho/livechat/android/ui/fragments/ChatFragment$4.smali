.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$DialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

.field public final synthetic val$dialogAdapter:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->val$dialogAdapter:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->val$dialogAdapter:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->get(I)Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;->getIconResID()I

    move-result v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_screenshot:I

    if-ne v0, v1, :cond_1

    sget-boolean p1, Lcom/zoho/livechat/android/constants/SystemUtil;->istakescreenshot:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeAllScreenshotWindows()V

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x1

    sput-boolean p1, Lcom/zoho/livechat/android/constants/SystemUtil;->istakescreenshot:Z

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;->getIconResID()I

    move-result v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_camera:I

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->takePicture()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;->getIconResID()I

    move-result p1

    sget v0, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_attach:I

    if-ne p1, v0, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-le p1, v0, :cond_4

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;->containsBlockPermission(Ljava/lang/String;)Z

    move-result p1

    const/16 v1, 0x12d

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_permission_sendfile:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/zoho/livechat/android/utils/ManifestPermissionUtil;->getAlertDialog(Landroid/app/Activity;ILjava/lang/String;)Lb/b/k/g;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lb/i/e/a;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "*/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    const-string v2, "Select a File to Upload"

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-string v1, "Please install a File Manager."

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1600(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lb/b/k/g;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/k/q;->dismiss()V

    return-void
.end method
