.class public Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchViewHolder"
.end annotation


# instance fields
.field public emptyState:Landroid/widget/LinearLayout;

.field public emptyStateButton:Landroid/widget/RelativeLayout;

.field public emptyStateButtonText:Landroid/widget/TextView;

.field public emptyStateIcon:Landroid/widget/ImageView;

.field public emptyStateText:Landroid/widget/TextView;

.field public searchContainerLayout:Landroid/widget/RelativeLayout;

.field public searchProgress:Landroid/widget/ProgressBar;

.field public searchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V
    .locals 3

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_search_item_view:I

    invoke-virtual {p1, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchContainerLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_search_item_list:I

    invoke-virtual {p1, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_search_progress:I

    invoke-virtual {p1, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_search_empty_state:I

    invoke-virtual {p1, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyState:Landroid/widget/LinearLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_empty_state_icon:I

    invoke-virtual {p1, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyStateIcon:Landroid/widget/ImageView;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_empty_state_text:I

    invoke-virtual {p1, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyStateText:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_empty_state_startchat_layout:I

    invoke-virtual {p1, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyStateButton:Landroid/widget/RelativeLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_empty_state_startchat:I

    invoke-virtual {p1, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyStateButtonText:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyStateButton:Landroid/widget/RelativeLayout;

    .line 1
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->emptyStateButton:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
