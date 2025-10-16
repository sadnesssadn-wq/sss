.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesFeedbackViewHolder;
.super Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.source ""


# instance fields
.field private msgView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_msg_feedback:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesFeedbackViewHolder;->msgView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesFeedbackViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$color;->salesiq_message_operator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesFeedbackViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result v0

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowRating()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowFeedback()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/zoho/commons/SystemMessage;->RATING_AND_FEEDBACK_COMPLETED:Lcom/zoho/commons/SystemMessage;

    invoke-static {p2}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->getMessage(Lcom/zoho/commons/SystemMessage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesFeedbackViewHolder;->msgView:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_feedback_afterratingfeedback:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowRating()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/zoho/commons/SystemMessage;->RATING_COMPLETED:Lcom/zoho/commons/SystemMessage;

    invoke-static {p2}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->getMessage(Lcom/zoho/commons/SystemMessage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesFeedbackViewHolder;->msgView:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->getMessage(Lcom/zoho/commons/SystemMessage;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesFeedbackViewHolder;->msgView:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_feedback_afterrating:I

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowFeedback()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/zoho/commons/SystemMessage;->FEEDBACK_COMPLETED:Lcom/zoho/commons/SystemMessage;

    invoke-static {p2}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->getMessage(Lcom/zoho/commons/SystemMessage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesFeedbackViewHolder;->msgView:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_feedback_afterfeedback:I

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getRating()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_8

    const/4 p2, 0x3

    if-eq p1, p2, :cond_7

    const/4 p2, 0x5

    if-eq p1, p2, :cond_6

    goto :goto_4

    :cond_6
    sget p1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_happy:I

    goto :goto_3

    :cond_7
    sget p1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_neutral:I

    goto :goto_3

    :cond_8
    sget p1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_sad:I

    :goto_3
    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setRatingIcon(I)V

    :goto_4
    return-void
.end method
