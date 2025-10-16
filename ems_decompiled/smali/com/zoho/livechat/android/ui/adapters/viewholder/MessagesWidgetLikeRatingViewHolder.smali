.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;
.super Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private dislikeImageView:Landroid/widget/ImageView;

.field private dislikeParentView:Landroid/widget/LinearLayout;

.field private dislikeTextView:Landroid/widget/TextView;

.field private likeImageView:Landroid/widget/ImageView;

.field private likeParentView:Landroid/widget/LinearLayout;

.field private likeTextView:Landroid/widget/TextView;

.field private message:Lcom/zoho/livechat/android/models/SalesIQMessage;

.field private messageImageView:Landroid/widget/ImageView;

.field private messageTextView:Landroid/widget/TextView;

.field private ratingParentView:Landroid/widget/LinearLayout;

.field private widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

.field private widgetRatingParent:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    invoke-super {p0, p4}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setWidgetListener(Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_type_rating_like:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->widgetRatingParent:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result p3

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->widgetRatingParent:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->messageImageView:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_like_rating_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->ratingParentView:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_like_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->likeParentView:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_dislike_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->dislikeParentView:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_like_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->likeImageView:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_dislike_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->dislikeImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->likeImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_like_flat:I

    const-string v0, "#33000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {p3, p4, v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->changeDrawableColor(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->dislikeImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_dislike_flat:I

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p3, p4, v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->changeDrawableColor(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_like_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->likeTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_dislike_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->dislikeTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private formatText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 6

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v2

    const-string v0, "#9925282b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->applyMarkDown(Landroid/content/Context;Landroid/text/SpannableStringBuilder;IIIZ)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string p2, "__________"

    invoke-static {p1, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceLine(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "type"

    const-string v3, "like"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->likeParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    const-string v4, "value"

    if-ne v2, v3, :cond_0

    const-string p1, "true"

    invoke-virtual {v1, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ":thumbsup:"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->dislikeParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    if-ne p1, v2, :cond_1

    const-string p1, "false"

    invoke-virtual {v1, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ":thumbsdown:"

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setRespondedValue(Ljava/util/Hashtable;)V

    sget-object p1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {p1, v2, v3}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    invoke-interface {p1, v0, v1}, Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;->doSendMessage(Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_3
    return-void
.end method

.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->messageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->formatText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result v1

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getImage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getImage()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1, v3}, Lc/e/a/b/d;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->likeParentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->dislikeParentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->ratingParentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->ratingParentView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v1, p1

    :goto_1
    const/4 p1, -0x2

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_2

    invoke-direct {p2, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result v0

    invoke-direct {p2, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->widgetRatingParent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
