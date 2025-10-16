.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$8;
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

.field public final synthetic val$is_last_message:Z

.field public final synthetic val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

.field public final synthetic val$meta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$8;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$8;->val$meta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$8;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iput-boolean p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$8;->val$is_last_message:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$8;->val$meta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zoho/livechat/android/utils/FileUploader;->remove(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$8;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$8;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iget-boolean v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$8;->val$is_last_message:Z

    invoke-virtual {p1, v0, v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    return-void
.end method
