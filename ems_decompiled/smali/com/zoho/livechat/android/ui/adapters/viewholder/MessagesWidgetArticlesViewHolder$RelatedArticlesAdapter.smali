.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RelatedArticlesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private articles:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;->articles:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;->articles:Ljava/util/ArrayList;

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

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;I)V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;->articles:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Hashtable;

    invoke-virtual {p2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_widget_articles_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;Landroid/view/View;)V

    return-object p2
.end method
