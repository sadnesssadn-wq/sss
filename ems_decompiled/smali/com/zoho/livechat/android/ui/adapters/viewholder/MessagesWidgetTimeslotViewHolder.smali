.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;
.super Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private buttonView:Landroid/widget/LinearLayout;

.field private buttontextView:Landroid/widget/TextView;

.field private message:Lcom/zoho/livechat/android/models/SalesIQMessage;

.field private messageImageView:Landroid/widget/ImageView;

.field private messageTextView:Landroid/widget/TextView;

.field private msgtype:I

.field private timeslotsParent:Landroid/widget/LinearLayout;

.field private widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    invoke-super {p0, p4}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setWidgetListener(Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    iput p5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->msgtype:I

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_type_timeslots:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->timeslotsParent:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result p3

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->timeslotsParent:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->messageImageView:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->buttonView:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_button_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->buttontextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->buttontextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;)Lcom/zoho/livechat/android/models/SalesIQMessage;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->buttonView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    return-object p0
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
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->messageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->formatText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->messageTextView:Landroid/widget/TextView;

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

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getImage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lc/e/a/b/d;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getInputCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getLabel()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->buttontextView:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$string;->livechat_widgets_timeslot_button:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->buttontextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v1, v2

    :goto_2
    const/4 p1, -0x2

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_3

    invoke-direct {p2, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result v0

    invoke-direct {p2, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->timeslotsParent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
