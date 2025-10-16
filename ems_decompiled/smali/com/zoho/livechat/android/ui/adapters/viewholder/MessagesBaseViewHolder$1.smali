.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    const-string v0, "type"

    const-string v1, "skip"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    const-string v1, "-"

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;->doSendMessage(Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    return-void
.end method
