.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesInfoViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# instance fields
.field public infoView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_info_msg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesInfoViewHolder;->infoView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;)V
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesInfoViewHolder;->infoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ADDSUPPORTREP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "dname"

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUserlist()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesInfoViewHolder;->infoView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/zoho/livechat/android/R$string;->livechat_messages_operator_joined:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const-string v1, "ACCEPT_TRANSFER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getOpruser()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesInfoViewHolder;->infoView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/zoho/livechat/android/R$string;->livechat_messages_transfer:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v1, "ACCEPT_FORWARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getOpruser()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesInfoViewHolder;->infoView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/zoho/livechat/android/R$string;->livechat_messages_info_acceptforward:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v1, "FORWARD_SUPPORT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getOpruser()Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesInfoViewHolder;->infoView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/zoho/livechat/android/R$string;->livechat_messages_info_forward:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
