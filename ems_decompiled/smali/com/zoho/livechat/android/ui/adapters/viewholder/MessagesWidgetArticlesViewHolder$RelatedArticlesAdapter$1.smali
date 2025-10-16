.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$ArticlesViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;

.field public final synthetic val$articleId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$1;->val$articleId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/zoho/livechat/android/ui/activities/ArticlesActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$1;->val$articleId:Ljava/lang/String;

    const-string v1, "article_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder$RelatedArticlesAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
