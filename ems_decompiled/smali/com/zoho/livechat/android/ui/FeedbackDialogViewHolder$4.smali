.class public Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->render(Landroid/app/Dialog;Lcom/zoho/livechat/android/models/SalesIQChat;)V
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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$4;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->access$100(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
