.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

.field public final synthetic val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$1;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$1;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-interface {v0, v1, p1}, Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;->onImageClick(Lcom/zoho/livechat/android/models/SalesIQMessage;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
