.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# instance fields
.field private articlesCountView:Landroid/widget/TextView;

.field private clickListener:Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;

.field private deptIcon:Landroid/widget/ImageView;

.field private deptNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_dept_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->deptNameView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_articles_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->articlesCountView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_dept_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->deptIcon:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->clickListener:Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;)Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->clickListener:Lcom/zoho/livechat/android/ui/listener/ArticleDeptsClickListener;

    return-object p0
.end method


# virtual methods
.method public render(Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;)V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-string v2, "#f1f2f3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->deptIcon:Landroid/widget/ImageView;

    .line 1
    sget-object v3, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->deptNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->getDeptName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->getCount()I

    move-result v0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->articlesCountView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/zoho/livechat/android/R$string;->articles_counts_many:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->articlesCountView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/zoho/livechat/android/R$string;->articles_counts_one:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;->articlesCountView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/ArticleDeptsViewHolder;Lcom/zoho/livechat/android/models/SalesIQArticleDepartments;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
