.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;
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

.field public final synthetic val$is_last_message:Z

.field public final synthetic val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

.field public final synthetic val$meta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->val$meta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iput-boolean p5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->val$is_last_message:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->val$url:Ljava/lang/String;

    sget-object p1, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->val$meta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->val$meta:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getSize()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;JLcom/zoho/livechat/android/ui/listener/FileDownloadingListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->access$300(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_cancel:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->access$300(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->val$message:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iget-boolean v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;->val$is_last_message:Z

    invoke-virtual {p1, v0, v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    return-void
.end method
