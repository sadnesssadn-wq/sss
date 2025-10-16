.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;
.super Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.source ""


# static fields
.field private static final REGEX_URL:Ljava/lang/String; = "(?:(href|src)=[\"\']?)?((https?:\\/\\/(?:www\\.)?|www\\.)[a-z0-9][^@]*?)(?=[\\s\"\'<]|$)"


# instance fields
.field private itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

.field private lineBreakView:Landroid/view/View;

.field private msgView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_msg_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_line_break:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->lineBreakView:Landroid/view/View;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    return-object p0
.end method

.method private formatEmailString(Landroid/content/Context;Landroid/text/Spannable;I)Landroid/text/Spannable;
    .locals 5

    const-string v0, "^[A-Za-z0-9]([A-Za-z0-9-._%+]*)@[A-Za-z0-9-.]+\\.[a-zA-Z]{2,6}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$4;

    invoke-direct {v3, p0, v2, p1, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$4;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;Ljava/lang/String;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    const/16 v4, 0x21

    invoke-interface {p2, v3, v2, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method private formatPhoneString(Landroid/content/Context;Landroid/text/Spannable;I)Landroid/text/Spannable;
    .locals 5

    const-string v0, "((?:\\+?\\d{1,3}[-. ]*)?(?:[(]?\\d{3}[-. )]*\\d{3}[-. ]*\\d{4,5}(?: *x\\d+)?|\\d{8,11}))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$3;

    invoke-direct {v3, p0, v2, p1, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$3;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;Ljava/lang/String;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    const/16 v4, 0x21

    invoke-interface {p2, v3, v2, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method private formatUrlString(Landroid/content/Context;Landroid/text/Spannable;I)Landroid/text/Spannable;
    .locals 5

    const-string v0, "(?:(href|src)=[\"\']?)?((https?:\\/\\/(?:www\\.)?|www\\.)[a-z0-9][^@]*?)(?=[\\s\"\'<]|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "https://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3, v2}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v3, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$2;

    invoke-direct {v3, p0, v2, p1, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$2;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;Ljava/lang/String;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    const/16 v4, 0x21

    invoke-interface {p2, v3, v2, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    return-object p2
.end method


# virtual methods
.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-super {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isHideBackground()Z

    move-result p2

    const/high16 v0, 0x41e00000    # 28.0f

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->lineBreakView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-boolean v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isleft:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zoho/livechat/android/R$color;->salesiq_message_operator:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zoho/livechat/android/R$color;->salesiq_message_visitor:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/parser/SmileyParser;->getInstance()Lcom/zoho/livechat/android/parser/SmileyParser;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/zoho/livechat/android/parser/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p2

    invoke-direct {v8, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isleft:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v4

    const-string p2, "#9925282b"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v7, 0x0

    move-object v3, v8

    invoke-static/range {v2 .. v7}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->applyMarkDown(Landroid/content/Context;Landroid/text/SpannableStringBuilder;IIIZ)Landroid/text/SpannableStringBuilder;

    const-string p2, "__________"

    invoke-static {v8, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceLine(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    :cond_1
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, v8, v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->formatUrlString(Landroid/content/Context;Landroid/text/Spannable;I)Landroid/text/Spannable;

    move-result-object p2

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p2, v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->formatPhoneString(Landroid/content/Context;Landroid/text/Spannable;I)Landroid/text/Spannable;

    move-result-object p2

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p2, v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->formatEmailString(Landroid/content/Context;Landroid/text/Spannable;I)Landroid/text/Spannable;

    move-result-object p2

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result p2

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->msgView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->lineBreakView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result p2

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    invoke-static {p2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result p2

    invoke-virtual {p1, v2, v0, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->lineBreakView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method
