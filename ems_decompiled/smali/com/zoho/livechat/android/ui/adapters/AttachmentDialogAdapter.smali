.class public Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$DialogClickListener;,
        Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickListener:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$DialogClickListener;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;)Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$DialogClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->clickListener:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$DialogClickListener;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(I)Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;

    iget-object v0, p1, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;->getIconResID()I

    move-result p2

    const-string v2, "#99252b2e"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->changeDrawableColor(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->clickListener:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$DialogClickListener;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;
    .locals 3

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$layout;->siq_item_attachment_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$AttachmentDialogViewHolder;-><init>(Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setDialogClickListener(Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$DialogClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter;->clickListener:Lcom/zoho/livechat/android/ui/adapters/AttachmentDialogAdapter$DialogClickListener;

    return-void
.end method
