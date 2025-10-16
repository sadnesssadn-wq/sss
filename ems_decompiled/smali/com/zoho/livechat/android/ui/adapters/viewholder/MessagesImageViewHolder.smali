.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;
.super Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.source ""


# instance fields
.field private actionIconView:Landroid/widget/ImageView;

.field public actionLayout:Landroid/widget/RelativeLayout;

.field private bgCardView:Landroidx/cardview/widget/CardView;

.field private blurView:Landroid/view/View;

.field private centerLayout:Landroid/widget/RelativeLayout;

.field private contentParentLayout:Landroid/widget/RelativeLayout;

.field private downloadProgressView:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

.field private fileSizeView:Landroid/widget/TextView;

.field private imageView:Landroid/widget/ImageView;

.field private imageViewParent:Landroid/widget/LinearLayout;

.field private itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

.field private options:Lc/e/a/b/c;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLc/e/a/b/c;Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->options:Lc/e/a/b/c;

    iput-object p5, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    sget p4, Lcom/zoho/livechat/android/R$id;->siq_msg_img_view:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->imageViewParent:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result p4

    const/4 p5, -0x2

    invoke-direct {p2, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->imageViewParent:Landroid/widget/LinearLayout;

    invoke-virtual {p4, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_bg_card_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->bgCardView:Landroidx/cardview/widget/CardView;

    if-eqz p3, :cond_0

    const-string p3, "#eceff1"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p3

    :goto_0
    invoke-virtual {p2, p3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_imageparent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->contentParentLayout:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_msg_att_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->imageView:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_msg_att_img_blur:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->blurView:Landroid/view/View;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_msg_att_img_middleview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->centerLayout:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_img_size:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->fileSizeView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_imgactionview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionLayout:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_img_progressbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->downloadProgressView:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-virtual {p2, p3}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setMaxProgress(F)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_imgactionimage:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionIconView:Landroid/widget/ImageView;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->contentParentLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;)Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->downloadProgressView:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionIconView:Landroid/widget/ImageView;

    return-object p0
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
    .locals 13

    invoke-super {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x46

    div-int/lit8 v0, v0, 0x64

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->contentParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

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

    if-ne v0, v1, :cond_b

    :cond_1
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getCtime()J

    move-result-wide v9

    invoke-virtual {v1, v8, v9, v10}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object v8

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getFilePathForImageloader(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->options:Lc/e/a/b/c;

    invoke-virtual {v8, v1, v9, v10}, Lc/e/a/b/d;->c(Ljava/lang/String;Landroid/widget/ImageView;Lc/e/a/b/c;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->blurView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->centerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->fileSizeView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getSize()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getDisplayFileSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->contentParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v1

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v3

    if-eq v1, v3, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zoho/livechat/android/utils/FileUploader;->isAlreadyUploading(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionIconView:Landroid/widget/ImageView;

    sget v3, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_cancel:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->downloadProgressView:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v1, v7}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setVisibility(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->downloadProgressView:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->isIndeterminate()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->downloadProgressView:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v1, v5}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setIndeterminate(Z)V

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$7;

    invoke-direct {v3, p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$7;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/zoho/livechat/android/utils/FileUploader;->setListener(Lcom/zoho/livechat/android/models/SalesIQMessage;Ljava/lang/String;Lcom/zoho/livechat/android/ui/listener/FileUploadingListener;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$8;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$8;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionIconView:Landroid/widget/ImageView;

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_resend:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionIconView:Landroid/widget/ImageView;

    invoke-virtual {p2, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->downloadProgressView:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {p2, v6}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setVisibility(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionIconView:Landroid/widget/ImageView;

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$6;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessage;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v9

    invoke-virtual {v1, v8, v9, v10}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getSize()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-ltz v12, :cond_6

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->blurView:Landroid/view/View;

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->centerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object p2

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getFilePathForImageloader(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->options:Lc/e/a/b/c;

    invoke-virtual {p2, v0, v1, v2}, Lc/e/a/b/d;->c(Ljava/lang/String;Landroid/widget/ImageView;Lc/e/a/b/c;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->contentParentLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_6
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v1

    const/4 v8, 0x6

    if-ne v1, v8, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->getUri(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getBlurimg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getBlurimg()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    new-instance v9, Ljava/lang/ref/WeakReference;

    array-length v10, v8

    invoke-static {v8, v7, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    iget-object v8, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->blurView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->centerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/zoho/livechat/android/utils/FileDownloader;->isAlreadyDownloading(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionIconView:Landroid/widget/ImageView;

    sget v8, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_cancel:I

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v2

    iget-object v6, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->downloadProgressView:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v2, v7}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setVisibility(I)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->downloadProgressView:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->isIndeterminate()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->downloadProgressView:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v2, v5}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setIndeterminate(Z)V

    :cond_9
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v2

    new-instance v5, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$2;

    invoke-direct {v5, p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$2;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v2, v1, v5}, Lcom/zoho/livechat/android/utils/FileDownloader;->setListener(Ljava/lang/String;Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$3;

    invoke-direct {v5, p0, v1, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$3;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->contentParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionIconView:Landroid/widget/ImageView;

    sget v3, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_download:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->downloadProgressView:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v2, v6}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setVisibility(I)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->actionLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$4;

    move-object v5, v3

    move-object v6, p0

    move-object v7, v1

    move-object v8, v0

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$4;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->contentParentLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder$5;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->fileSizeView:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getDisplayFileSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_4
    return-void
.end method
