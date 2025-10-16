.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;
.super Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.source ""


# instance fields
.field private attachmentIcon:Landroid/widget/ImageView;

.field private attachmentParent:Landroid/widget/LinearLayout;

.field private contentParentLayout:Landroid/widget/RelativeLayout;

.field private downloadIcon:Landroid/widget/ImageView;

.field private downloadLayout:Landroid/widget/RelativeLayout;

.field private downloadProgress:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

.field private extnView:Landroid/widget/TextView;

.field private listener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

.field private nameView:Landroid/widget/TextView;

.field private sizeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->listener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_msg_att_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->attachmentParent:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result p3

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->attachmentParent:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_att_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->attachmentIcon:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_att_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->nameView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_att_size:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->sizeView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_att_download_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadLayout:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_att_action_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadIcon:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_att_progressbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadProgress:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_fileparent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->contentParentLayout:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_att_file_ext:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->extnView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->listener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;)Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadProgress:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getFileExtension(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "."

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p2

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcom/zoho/livechat/android/R$string;->livechat_messages_file_defaultextn:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private getUri(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Z)Ljava/lang/String;
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/constants/UrlUtil;->getServiceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/download.ls?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "fsize="

    invoke-static {p2, v0}, Lc/a/a/a/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "&url="

    invoke-static {p2, v0}, Lc/a/a/a/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&fName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, "&chid="

    invoke-static {p2, p1}, Lc/a/a/a/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, "&visitorid="

    invoke-static {p1, p2}, Lc/a/a/a/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string p2, "&isconversation=true"

    invoke-static {p1, p2}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 11

    invoke-super {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v6

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->attachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->attachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->applyColorToDrawable(Landroid/graphics/drawable/Drawable;I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->sizeView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getDisplayFileSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->attachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->extnView:Landroid/widget/TextView;

    .line 1
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->extnView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->getFileExtension(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENDING:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    if-ne v0, v1, :cond_a

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->contentParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v0

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/utils/FileUploader;->isAlreadyUploading(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadIcon:Landroid/widget/ImageView;

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadProgress:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v0, v5}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadProgress:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadProgress:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setIndeterminate(Z)V

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v0

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$7;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$7;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/zoho/livechat/android/utils/FileUploader;->setListener(Lcom/zoho/livechat/android/models/SalesIQMessage;Ljava/lang/String;Lcom/zoho/livechat/android/ui/listener/FileUploadingListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$8;

    invoke-direct {v1, p0, v6, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$8;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadIcon:Landroid/widget/ImageView;

    sget v0, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_resend:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadProgress:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {p2, v4}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setVisibility(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadIcon:Landroid/widget/ImageView;

    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$6;

    invoke-direct {v0, p0, p1, v6}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$6;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessage;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_5
    :goto_1
    sget-object v0, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v7

    invoke-virtual {v0, v1, v7, v8}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getSize()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-ltz v1, :cond_6

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->contentParentLayout:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$1;

    invoke-direct {p2, p0, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;Ljava/io/File;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v6, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->getUri(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Z)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/zoho/livechat/android/utils/FileDownloader;->isAlreadyDownloading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadIcon:Landroid/widget/ImageView;

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadProgress:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v0, v5}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadProgress:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadProgress:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setIndeterminate(Z)V

    :cond_8
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$2;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v0, v7, v1}, Lcom/zoho/livechat/android/utils/FileDownloader;->setListener(Ljava/lang/String;Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$3;

    invoke-direct {v1, p0, v7, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$3;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->contentParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadIcon:Landroid/widget/ImageView;

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_download:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadProgress:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v0, v4}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setVisibility(I)V

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->downloadLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$4;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v3, v6

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$4;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->contentParentLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$5;

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder$5;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    :goto_3
    return-void
.end method
