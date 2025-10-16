.class public Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field public final synthetic val$can_show_feedback:Z


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$3;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    iput-boolean p2, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$3;->val$can_show_feedback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$3;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->access$000(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;I)V

    iget-boolean p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$3;->val$can_show_feedback:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$3;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->access$100(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder$3;->this$0:Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;->access$200(Lcom/zoho/livechat/android/ui/FeedbackDialogViewHolder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
