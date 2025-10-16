.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQChat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;

.field public final synthetic val$salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;Lcom/zoho/livechat/android/models/SalesIQChat;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$1;->val$salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;)Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$1;->val$salesIQChat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-interface {p1, v0}, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;->onChatClicked(Lcom/zoho/livechat/android/models/SalesIQChat;)V

    return-void
.end method
