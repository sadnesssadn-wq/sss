.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->getChipView(Ljava/lang/String;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

.field public final synthetic val$cardView:Landroidx/cardview/widget/CardView;

.field public final synthetic val$max_selection:I

.field public final synthetic val$text:Ljava/lang/String;

.field public final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;Ljava/lang/String;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;I)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$cardView:Landroidx/cardview/widget/CardView;

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$textView:Landroid/widget/TextView;

    iput p5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$max_selection:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    const-string v0, "type"

    const-string v1, "select"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$text:Ljava/lang/String;

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$text:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;->doSendMessage(Ljava/lang/String;Ljava/util/Hashtable;)V

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$textView:Landroid/widget/TextView;

    const-string v0, "#252b2e"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$max_selection:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$max_selection:I

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_widgets_select_limit_exceed:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->val$textView:Landroid/widget/TextView;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->access$300(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x3ec28f5c    # 0.38f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->access$400(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->access$300(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->access$400(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_3
    return-void
.end method
