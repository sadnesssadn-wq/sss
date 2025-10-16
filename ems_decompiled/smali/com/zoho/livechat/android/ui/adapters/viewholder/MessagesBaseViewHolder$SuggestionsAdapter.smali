.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestionsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public suggestions:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;->suggestions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;->suggestions:Ljava/util/ArrayList;

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

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;->suggestionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;->suggestionsView:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_item_bot_suggestions:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;Landroid/view/View;)V

    return-object p2
.end method
