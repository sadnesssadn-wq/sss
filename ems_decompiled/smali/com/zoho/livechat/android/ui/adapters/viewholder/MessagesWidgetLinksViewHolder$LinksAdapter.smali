.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinksAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private links:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;->links:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;->links:Ljava/util/ArrayList;

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

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;I)V
    .locals 4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "icon"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object v1

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lc/e/a/b/d;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$1;

    invoke-direct {v1, p0, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;->access$300(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;)Landroid/view/View;

    move-result-object p1

    if-ne p2, v0, :cond_3

    const/16 p2, 0x8

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_widget_links_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;Landroid/view/View;)V

    return-object p2
.end method
