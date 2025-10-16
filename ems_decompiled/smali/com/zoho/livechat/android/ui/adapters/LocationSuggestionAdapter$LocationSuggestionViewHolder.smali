.class public Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationSuggestionViewHolder"
.end annotation


# instance fields
.field private headerTextView:Landroid/widget/TextView;

.field private headerView:Landroid/widget/RelativeLayout;

.field private placeAddressView:Landroid/widget/TextView;

.field private placeImageLayout:Landroid/widget/RelativeLayout;

.field private placeImageView:Landroid/widget/ImageView;

.field private placeLayout:Landroid/widget/LinearLayout;

.field private placeTitleView:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->this$0:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_location_sug_header:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->headerView:Landroid/widget/RelativeLayout;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_location_sug_header_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->headerTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_location_sug_place_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->placeLayout:Landroid/widget/LinearLayout;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_location_sug_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->placeImageView:Landroid/widget/ImageView;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_location_sug_image_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->placeImageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "#eceff1"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_location_sug_place_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->placeTitleView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_location_sug_place_address:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->placeAddressView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->headerView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->headerTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->placeTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->placeAddressView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->placeImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->placeLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method
