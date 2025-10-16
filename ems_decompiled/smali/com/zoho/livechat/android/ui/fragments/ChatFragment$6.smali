.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field public final synthetic val$enteredmessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$6;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$6;->val$enteredmessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$6;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/ui/ChatViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getMsgEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$6;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$6;->val$enteredmessage:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$1700(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/lang/String;)V

    return-void
.end method
