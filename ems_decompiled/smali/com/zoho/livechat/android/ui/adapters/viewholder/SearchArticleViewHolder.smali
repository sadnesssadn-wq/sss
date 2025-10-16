.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# instance fields
.field private articleName:Landroid/widget/TextView;

.field private articleNameLayout:Landroid/widget/LinearLayout;

.field private clickListener:Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;

.field private searchHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->clickListener:Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_search_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->searchHeader:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_search_article_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->articleName:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_search_title_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->articleNameLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;)Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->clickListener:Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;

    return-object p0
.end method


# virtual methods
.method public render(Lcom/zoho/livechat/android/models/SalesIQArticle;ZZ)V
    .locals 1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->searchHeader:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->searchHeader:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->searchHeader:Landroid/widget/TextView;

    sget p3, Lcom/zoho/livechat/android/R$string;->articles_recent_search:I

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->searchHeader:Landroid/widget/TextView;

    sget p3, Lcom/zoho/livechat/android/R$string;->articles_recent_viewed:I

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->articleName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQArticle;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->clickListener:Lcom/zoho/livechat/android/ui/listener/SearchArticleClickListener;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;->articleNameLayout:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/SearchArticleViewHolder;Lcom/zoho/livechat/android/models/SalesIQArticle;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method
