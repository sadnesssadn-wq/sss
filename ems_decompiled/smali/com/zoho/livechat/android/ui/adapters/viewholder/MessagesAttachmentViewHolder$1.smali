.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

.field public final synthetic val$file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$1;->val$file:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;->onFileClick(Ljava/io/File;)V

    :cond_0
    return-void
.end method
