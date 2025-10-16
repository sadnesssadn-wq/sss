.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;
.super Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.source ""


# instance fields
.field private buttonView:Landroid/widget/LinearLayout;

.field private buttontextView:Landroid/widget/TextView;

.field private chat:Lcom/zoho/livechat/android/models/SalesIQChat;

.field private infoView:Landroid/widget/TextView;

.field private itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

.field private parentLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_msg_log:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->parentLayout:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result p3

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->parentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_log_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->infoView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_log_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->buttonView:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_log_button_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->buttontextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->buttontextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    return-object p0
.end method


# virtual methods
.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->infoView:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$string;->livechat_requestlog_info:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChat(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->buttonView:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->buttonView:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder$1;

    invoke-direct {p2, p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->buttonView:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
