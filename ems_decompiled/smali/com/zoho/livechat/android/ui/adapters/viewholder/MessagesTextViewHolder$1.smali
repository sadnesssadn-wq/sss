.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;

.field public final synthetic val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$1;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$1;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-interface {p1, v0}, Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;->onMessageLongClick(Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    const/4 p1, 0x1

    return p1
.end method
