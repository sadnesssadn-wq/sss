.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;
.super Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private level:I

.field private level3EncodedReactions:[Ljava/lang/String;

.field private level3Reactions:[I

.field private level3Text:[I

.field private level5EncodedReactions:[Ljava/lang/String;

.field private level5Reactions:[I

.field private level5Text:[I

.field private levelImageView:[Landroid/widget/ImageView;

.field private levelParentView:[Landroid/widget/LinearLayout;

.field private levelTextView:[Landroid/widget/TextView;

.field private message:Lcom/zoho/livechat/android/models/SalesIQMessage;

.field private messageImageView:Landroid/widget/ImageView;

.field private messageTextView:Landroid/widget/TextView;

.field private ratingParentView:Landroid/widget/LinearLayout;

.field private widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

.field private widgetRatingParent:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    const/4 p2, 0x5

    new-array p3, p2, [Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    new-array p3, p2, [Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelImageView:[Landroid/widget/ImageView;

    new-array p3, p2, [Landroid/widget/TextView;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    const/4 p3, 0x3

    new-array v0, p3, [I

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_sad:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v3, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_happy:I

    const/4 v4, 0x1

    aput v3, v0, v4

    sget v5, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_excited:I

    const/4 v6, 0x2

    aput v5, v0, v6

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level3Reactions:[I

    new-array v0, p2, [I

    sget v7, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_angry:I

    aput v7, v0, v2

    aput v1, v0, v4

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_neutral:I

    aput v1, v0, v6

    aput v3, v0, p3

    const/4 v1, 0x4

    aput v5, v0, v1

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level5Reactions:[I

    new-array v0, p3, [I

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_widgets_rating_happy_sad:I

    aput v3, v0, v2

    sget v5, Lcom/zoho/livechat/android/R$string;->livechat_widgets_rating_happy_happy:I

    aput v5, v0, v4

    sget v7, Lcom/zoho/livechat/android/R$string;->livechat_widgets_rating_happy_excited:I

    aput v7, v0, v6

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level3Text:[I

    new-array p2, p2, [I

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_widgets_rating_happy_angry:I

    aput v0, p2, v2

    aput v3, p2, v4

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_widgets_rating_happy_neutral:I

    aput v0, p2, v6

    aput v5, p2, p3

    aput v7, p2, v1

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level5Text:[I

    const-string p2, ":rating-sad:"

    const-string v0, ":rating-happy:"

    const-string v3, ":rating-excited:"

    filled-new-array {p2, v0, v3}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level3EncodedReactions:[Ljava/lang/String;

    const-string v5, ":rating-angry:"

    const-string v7, ":rating-neutral:"

    filled-new-array {v5, p2, v7, v0, v3}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level5EncodedReactions:[Ljava/lang/String;

    invoke-super {p0, p4}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setWidgetListener(Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_type_rating_happy:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->widgetRatingParent:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result p4

    const/4 v0, -0x2

    invoke-direct {p2, p4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->widgetRatingParent:Landroid/widget/LinearLayout;

    invoke-virtual {p4, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->messageImageView:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_happiness_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->ratingParentView:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level1_parent:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    aput-object p4, p2, v2

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level2_parent:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    aput-object p4, p2, v4

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level3_parent:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    aput-object p4, p2, v6

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level4_parent:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    aput-object p4, p2, p3

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level5_parent:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    aput-object p4, p2, v1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelImageView:[Landroid/widget/ImageView;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level1_icon:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    aput-object p4, p2, v2

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelImageView:[Landroid/widget/ImageView;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level2_icon:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    aput-object p4, p2, v4

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelImageView:[Landroid/widget/ImageView;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level3_icon:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    aput-object p4, p2, v6

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelImageView:[Landroid/widget/ImageView;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level4_icon:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    aput-object p4, p2, p3

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelImageView:[Landroid/widget/ImageView;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level5_icon:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    aput-object p4, p2, v1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level1_text:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    aput-object p4, p2, v2

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    aget-object p2, p2, v2

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level2_text:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    aput-object p4, p2, v4

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    aget-object p2, p2, v4

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level3_text:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    aput-object p4, p2, v6

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    aget-object p2, p2, v6

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_widget_level4_text:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    aput-object p4, p2, p3

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    aget-object p2, p2, p3

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    sget p3, Lcom/zoho/livechat/android/R$id;->siq_widget_level5_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    aput-object p1, p2, v1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

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
    .locals 4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "type"

    const-string v3, "happiness-rating"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level3EncodedReactions:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level5EncodedReactions:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object v0, v0, p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setRespondedValue(Ljava/util/Hashtable;)V

    sget-object p1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {p1, v2, v3}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    invoke-interface {p1, v0, v1}, Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;->doSendMessage(Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_3
    return-void
.end method

.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->messageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->formatText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->messageTextView:Landroid/widget/TextView;

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

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getImage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lc/e/a/b/d;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->ratingParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v3, -0x2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->ratingParentView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p2, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, p2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getInputCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getLevel()I

    move-result p1

    iput p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level:I

    const/4 p2, 0x2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v0, :cond_4

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, p1

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, p1

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, p1

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v6

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v5

    invoke-virtual {v2, v6, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level3Text:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    aget-object v2, v2, p1

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v2, p2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level3Reactions:[I

    aget v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v6

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v5

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelImageView:[Landroid/widget/ImageView;

    aget-object v5, v5, p1

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    aget-object p1, v5, p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move p1, v4

    goto :goto_2

    :cond_2
    if-ne p1, v2, :cond_4

    const/4 p1, 0x0

    :goto_3
    if-ge p1, v2, :cond_4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, p1

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level5Text:[I

    aget v5, v5, p1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v0, p2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->level5Reactions:[I

    aget v5, v5, p1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v6

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v5

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelImageView:[Landroid/widget/ImageView;

    aget-object v5, v5, p1

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v5

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v6

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v5

    invoke-virtual {v0, v6, v1, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->levelParentView:[Landroid/widget/LinearLayout;

    aget-object p1, v5, p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move p1, v4

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_5

    invoke-direct {p1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result p2

    invoke-direct {p1, p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_4
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->widgetRatingParent:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
