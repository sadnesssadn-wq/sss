.class public Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;

.field public final synthetic val$holder:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$1;->val$holder:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->access$000(Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;)Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$DialogClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$1;->val$holder:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$DialogClickListener;->onItemClick(I)V

    return-void
.end method
