.class public Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttachmentDialogViewHolder"
.end annotation


# instance fields
.field public iconView:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;

.field public titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;->this$0:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_attachment_dialog_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;->iconView:Landroid/widget/ImageView;

    sget p1, Lcom/zoho/livechat/android/R$id;->siq_attachment_dialog_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
