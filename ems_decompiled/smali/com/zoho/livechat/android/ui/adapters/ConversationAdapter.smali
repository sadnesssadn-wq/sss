.class public Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickListener:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;

.field private salesIQChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQChat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQChat;",
            ">;",
            "Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->salesIQChats:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->clickListener:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->salesIQChats:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->salesIQChats:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQChat;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_item_conversation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->clickListener:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;

    invoke-direct {p2, p1, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;)V

    return-object p2
.end method

.method public syncConversation(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQChat;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ConversationAdapter;->salesIQChats:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method
