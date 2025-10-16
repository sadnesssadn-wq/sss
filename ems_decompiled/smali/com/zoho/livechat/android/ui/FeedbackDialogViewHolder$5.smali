.class public Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->handleSubmitBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$5;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->isConnectedToInternet()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$5;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->access$300(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hideKeyboard(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$5;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->access$300(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$5;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    invoke-static {v0, p1}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->access$200(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
