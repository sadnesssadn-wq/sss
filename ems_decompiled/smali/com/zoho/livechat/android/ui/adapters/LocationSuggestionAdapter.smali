.class public Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionClickListener;,
        Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private locationSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/LocationSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private suggestionClickListener:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionClickListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->locationSuggestions:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$500(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;)Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->suggestionClickListener:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->locationSuggestions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->locationSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/models/LocationSuggestion;

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_widgets_location_suggestions:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->access$300(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/LocationSuggestion;->getVicinity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object p2

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/LocationSuggestion;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->access$400(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lc/e/a/b/d;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;->access$600(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;Lcom/zoho/livechat/android/models/LocationSuggestion;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_item_location_suggestion:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;-><init>(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setSuggestionClickListener(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->suggestionClickListener:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionClickListener;

    return-void
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->locationSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method
