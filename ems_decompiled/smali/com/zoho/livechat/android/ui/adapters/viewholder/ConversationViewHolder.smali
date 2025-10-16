.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# instance fields
.field private attenderView:Landroid/widget/ImageView;

.field private badgeView:Landroid/widget/TextView;

.field private clickListener:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;

.field private currentChatView:Landroid/widget/ImageView;

.field private questionView:Landroid/widget/TextView;

.field private statusView:Landroid/widget/TextView;

.field private subtextView:Landroid/widget/TextView;

.field private timeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->clickListener:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_conversation_imageview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->attenderView:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_conversation_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->questionView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_conversation_subtext:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_conversation_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->timeView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_conversation_current_chat:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->currentChatView:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_conversation_badge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->badgeView:Landroid/widget/TextView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_conversation_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->statusView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;)Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->clickListener:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment$ConversationClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->attenderView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private formatMessage(Landroid/content/Context;Landroid/text/Spannable;)Landroid/text/SpannableStringBuilder;
    .locals 6

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p2, "#6f7c8e"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string p2, "#996f7c8e"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->applyMarkDown(Landroid/content/Context;Landroid/text/SpannableStringBuilder;IIIZ)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string p2, "___"

    invoke-static {p1, p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->matchAndReplaceLine(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method private isOpen(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadOperatorImage(Lcom/zoho/livechat/android/models/SalesIQChat;)V
    .locals 9

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->isBotAttender()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->attenderView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_bot_default:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->attenderView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_user_default:I

    :goto_0
    invoke-static {v0, v1}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-string v3, "#EFF1F3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->attenderView:Landroid/widget/ImageView;

    .line 1
    sget-object v4, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    new-instance v1, Lc/e/a/b/c$b;

    invoke-direct {v1}, Lc/e/a/b/c$b;-><init>()V

    .line 3
    iput-boolean v2, v1, Lc/e/a/b/c$b;->h:Z

    const/4 v3, 0x0

    .line 4
    iput-boolean v3, v1, Lc/e/a/b/c$b;->i:Z

    .line 5
    iput-boolean v2, v1, Lc/e/a/b/c$b;->m:Z

    .line 6
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lc/e/a/b/c$b;->a(Landroid/graphics/Bitmap$Config;)Lc/e/a/b/c$b;

    new-instance v2, Lc/e/a/b/o/b;

    invoke-direct {v2}, Lc/e/a/b/o/b;-><init>()V

    invoke-virtual {v1, v2}, Lc/e/a/b/c$b;->c(Lc/e/a/b/o/a;)Lc/e/a/b/c$b;

    invoke-virtual {v1}, Lc/e/a/b/c$b;->b()Lc/e/a/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->attenderView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object p1, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {p1, v5}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/SalesIQCache;->isUserImageAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object v0

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getFilePathForImageloader(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->attenderView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v2, v1}, Lc/e/a/b/d;->c(Ljava/lang/String;Landroid/widget/ImageView;Lc/e/a/b/c;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v3

    invoke-static {v5}, Lcom/zoho/livechat/android/constants/UrlUtil;->getOperatorImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    new-instance v8, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;

    invoke-direct {v8, p0, p1, v1, v5}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$2;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;Ljava/io/File;Lc/e/a/b/c;Ljava/lang/String;)V

    invoke-virtual/range {v3 .. v8}, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;JLcom/zoho/livechat/android/ui/listener/FileDownloadingListener;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public render(Lcom/zoho/livechat/android/models/SalesIQChat;)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->loadOperatorImage(Lcom/zoho/livechat/android/models/SalesIQChat;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    const-string v1, "#6f7c8e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->timeView:Landroid/widget/TextView;

    const-string v1, "#E66F7C8E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->isOpen(I)Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-string v5, "#65be57"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->statusView:Landroid/widget/TextView;

    .line 1
    sget-object v6, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->statusView:Landroid/widget/TextView;

    sget v5, Lcom/zoho/livechat/android/R$string;->livechat_conversation_status:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->questionView:Landroid/widget/TextView;

    const-string v5, "#252b2e"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->questionView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->questionView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->questionView:Landroid/widget/TextView;

    sget v5, Lcom/zoho/livechat/android/R$string;->livechat_conversation_waiting:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->questionView:Landroid/widget/TextView;

    const-string v5, "#D9252b2e"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->questionView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-static {}, Lcom/zoho/livechat/android/parser/SmileyParser;->getInstance()Lcom/zoho/livechat/android/parser/SmileyParser;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zoho/livechat/android/parser/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->questionView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->isOpen(I)Z

    move-result v0

    const/16 v5, 0x21

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getLastmsginfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getLastmsginfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Hashtable;

    const-string v7, "mtype"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "sender"

    invoke-virtual {v6, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0xc

    const-string v10, "$"

    const-string v11, "msg"

    if-ne v7, v9, :cond_3

    :try_start_1
    invoke-virtual {v6, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/zoho/livechat/android/parser/SmileyParser;->getInstance()Lcom/zoho/livechat/android/parser/SmileyParser;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/zoho/livechat/android/parser/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/zoho/livechat/android/R$string;->livechat_messages_you:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_4

    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->formatMessage(Landroid/content/Context;Landroid/text/Spannable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/16 v9, 0x14

    if-ne v7, v9, :cond_7

    invoke-virtual {v6, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    new-instance v6, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-direct {v6, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getDim()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v6, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_camera:I

    invoke-static {v0, v6}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/zoho/livechat/android/R$string;->livechat_conversation_filetype_image:I

    :goto_2
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v6, "audio"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v6, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_audio_icon:I

    invoke-static {v0, v6}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/zoho/livechat/android/R$string;->livechat_conversation_filetype_audio:I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v6, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_attach:I

    invoke-static {v0, v6}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/zoho/livechat/android/R$string;->livechat_conversation_filetype_others:I

    goto :goto_2

    :goto_3
    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v7}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v9

    invoke-static {v7}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v7

    invoke-virtual {v0, v4, v4, v9, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/zoho/livechat/android/R$string;->livechat_messages_you:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/text/SpannableStringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v0, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v8, v6, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v8

    goto :goto_4

    :cond_6
    new-instance v1, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v0, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v6, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v1

    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_9
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDeptname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v7, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    if-lez v1, :cond_b

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/zoho/livechat/android/R$string;->livechat_conversation_in_dept:I

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v0, v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v6, v7, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_conversation_with_attender:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/livechat/android/utils/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v0, v1, v7, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-lez v7, :cond_d

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->timeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/zoho/livechat/android/utils/DateUtil;->getTimeDifference(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->isOpen(I)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_e

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hasEndChatTimer()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEndChatTimerTimeRemaining()I

    move-result p1

    if-lez p1, :cond_e

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->timeView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEndChatTimerTimeRemaining()I

    move-result v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/DateUtil;->getEndChatTimerTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->timeView:Landroid/widget/TextView;

    const-string v0, "#585858"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_conversation_endchat_timer:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->currentChatView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->currentChatView:Landroid/widget/ImageView;

    sget v0, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_endchat_timer:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_e
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->getBadgeCount()I

    move-result p1

    if-lez p1, :cond_f

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->currentChatView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->badgeView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->badgeView:Landroid/widget/TextView;

    .line 3
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->badgeView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->getBadgeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->subtextView:Landroid/widget/TextView;

    const-string v0, "#454F5D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    :cond_f
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->currentChatView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->badgeView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_10
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->badgeView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ConversationViewHolder;->currentChatView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    return-void
.end method
