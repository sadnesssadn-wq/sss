.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;
.super Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private buttonView:Landroid/widget/LinearLayout;

.field private buttontextView:Landroid/widget/TextView;

.field private listener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

.field private messageImageView:Landroid/widget/ImageView;

.field private messageTextView:Landroid/widget/TextView;

.field private msgtype:I

.field private optionsView:Lcom/zoho/livechat/android/ui/customviews/FlowLayout;

.field private selectionParent:Landroid/widget/LinearLayout;

.field private selections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->selections:Ljava/util/ArrayList;

    invoke-super {p0, p4}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setWidgetListener(Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->listener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    iput p5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->msgtype:I

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_type_selection:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->selectionParent:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->messageImageView:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_options:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/ui/customviews/FlowLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->optionsView:Lcom/zoho/livechat/android/ui/customviews/FlowLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->buttonView:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_button_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->buttontextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->buttontextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)I
    .locals 0

    iget p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->msgtype:I

    return p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->listener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->selections:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->buttontextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->buttonView:Landroid/widget/LinearLayout;

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

.method private getChipView(Ljava/lang/String;I)Landroid/view/View;
    .locals 11

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->optionsView:Lcom/zoho/livechat/android/ui/customviews/FlowLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroidx/cardview/widget/CardView;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->optionsView:Lcom/zoho/livechat/android/ui/customviews/FlowLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 1
    invoke-direct {v1, v3, v4}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v5

    invoke-static {v4}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v6

    invoke-static {v4}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v7

    invoke-static {v4}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v4

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->optionsView:Lcom/zoho/livechat/android/ui/customviews/FlowLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v9, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v9}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->applySelectableItemBackground(Landroid/view/View;)V

    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    new-instance v10, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->optionsView:Lcom/zoho/livechat/android/ui/customviews/FlowLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v6

    invoke-static {v2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v2

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v5

    invoke-virtual {v3, v4, v6, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v10, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "#252b2e"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, v1

    move-object v7, v10

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;Ljava/lang/String;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;I)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->selections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->listener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    const-string v0, "type"

    const-string v1, "multiple-select"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->selections:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->listener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->selections:Ljava/util/ArrayList;

    const-string v2, ", "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;->doSendMessage(Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    return-void
.end method

.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->selections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->messageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->formatText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->messageTextView:Landroid/widget/TextView;

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

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getImage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lc/e/a/b/d;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->optionsView:Lcom/zoho/livechat/android/ui/customviews/FlowLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getInputCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->optionsView:Lcom/zoho/livechat/android/ui/customviews/FlowLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getInputCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getOptions()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->optionsView:Lcom/zoho/livechat/android/ui/customviews/FlowLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->msgtype:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->selections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->buttontextView:Landroid/widget/TextView;

    const v2, 0x3ec28f5c    # 0.38f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->buttonView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->buttontextView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->buttonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getInputCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getMaxSelection()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->getChipView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->optionsView:Lcom/zoho/livechat/android/ui/customviews/FlowLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    const/4 p1, -0x2

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_5

    invoke-direct {p2, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result v0

    invoke-direct {p2, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->selectionParent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
