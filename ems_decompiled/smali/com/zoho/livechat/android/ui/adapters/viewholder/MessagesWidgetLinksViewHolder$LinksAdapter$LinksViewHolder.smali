.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinksViewHolder"
.end annotation


# instance fields
.field private divider:Landroid/view/View;

.field private imageView:Landroid/widget/ImageView;

.field private parentView:Landroid/widget/LinearLayout;

.field private textView:Landroid/widget/TextView;

.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_widget_link_parent:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->parentView:Landroid/widget/LinearLayout;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_widget_link_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->imageView:Landroid/widget/ImageView;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_widget_link_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->textView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_widget_link_divider:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->divider:Landroid/view/View;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->parentView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->divider:Landroid/view/View;

    return-object p0
.end method
