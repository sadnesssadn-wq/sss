.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;
.super Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;
    }
.end annotation


# instance fields
.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private linksList:Landroidx/recyclerview/widget/RecyclerView;

.field private linksParent:Landroid/widget/LinearLayout;

.field private messageImageView:Landroid/widget/ImageView;

.field private messageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_type_links:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->linksParent:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result p3

    const/4 v0, -0x2

    invoke-direct {p2, p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->linksParent:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->messageImageView:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->messageTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_links_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->linksList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

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
.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->messageTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->formatText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object p1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->linksList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getLinks()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->linksList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->linksList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->linksList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;

    invoke-direct {v3, p0, v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getImage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object p2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getImage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v0}, Lc/e/a/b/d;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->messageImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
