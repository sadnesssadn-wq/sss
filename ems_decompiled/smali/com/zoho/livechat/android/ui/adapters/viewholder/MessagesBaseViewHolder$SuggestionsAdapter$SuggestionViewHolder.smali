.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestionViewHolder"
.end annotation


# instance fields
.field public parentView:Landroid/widget/LinearLayout;

.field public suggestionTextView:Landroid/widget/TextView;

.field public suggestionsView:Landroid/widget/RelativeLayout;

.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_suggestion_parent:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;->parentView:Landroid/widget/LinearLayout;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_suggestion_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;->suggestionsView:Landroid/widget/RelativeLayout;

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;->parentView:Landroid/widget/LinearLayout;

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    sget p1, Lcom/zoho/livechat/android/R$id;->siq_suggestion_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;->suggestionTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
