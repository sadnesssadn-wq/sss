.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$SuggestionViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;

.field public final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter$1;->val$text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;->onSuggestionClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
