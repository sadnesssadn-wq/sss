.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->onEmailTranscriptClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

.field public final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    sget-object p2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lb/b/k/g$a;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-direct {p2, v1}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_emailconfirm:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1
    iget-object v1, p2, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 2
    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_emailconfirm_send:I

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$1;

    invoke-direct {v1, p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lb/b/k/g$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    sget p1, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_emailconfirm_change:I

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$2;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$2;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;)V

    invoke-virtual {p2, p1, v0}, Lb/b/k/g$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    invoke-virtual {p2}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object p1

    new-instance p2, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$3;

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$3;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;Lb/b/k/g;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/zoho/livechat/android/R$string;->livechat_messages_email_wrong:I

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;->val$input:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method
