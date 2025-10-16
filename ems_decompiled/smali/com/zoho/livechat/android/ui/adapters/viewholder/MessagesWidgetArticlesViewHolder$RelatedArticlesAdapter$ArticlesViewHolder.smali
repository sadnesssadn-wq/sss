.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArticlesViewHolder"
.end annotation


# instance fields
.field private parentView:Landroid/widget/LinearLayout;

.field private textView:Landroid/widget/TextView;

.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_widget_article_item_parent:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;->parentView:Landroid/widget/LinearLayout;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_widget_article_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;->textView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;->parentView:Landroid/widget/LinearLayout;

    return-object p0
.end method
