.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;
.super Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.source ""


# instance fields
.field private actionButton:Landroid/widget/ImageView;

.field private actionParent:Landroid/widget/RelativeLayout;

.field private audioDurationView:Landroid/widget/TextView;

.field private audioParent:Landroid/widget/LinearLayout;

.field private audioParentLayout:Landroid/widget/LinearLayout;

.field private cancelIconView:Landroid/widget/ImageView;

.field private downloadProgressview:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

.field private downloadprogressParent:Landroid/widget/RelativeLayout;

.field private seekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    iput-boolean p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isleft:Z

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_msg_audio_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioParentLayout:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMessageContainerWidth()I

    move-result p3

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_audioparent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioParent:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_audio_action_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionButton:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_audio_downloading_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_action_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionParent:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_audio_progressbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadProgressview:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_audio_cancel_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->cancelIconView:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_audio_seekbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_audio_duration:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioDurationView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->getFormattedMediaDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioDurationView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->getPlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->getPauseDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadProgressview:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionParent:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->cancelIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getDownloadDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isleft:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->cancelIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_download:I

    const-string v2, "#80000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->changeDrawableColor(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->cancelIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_download:I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static getFormattedMediaDuration(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long v4, v0, v2

    rem-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0xa

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    const-string v2, "0"

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-static {p0, v1, v0}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getMediaDuration(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p0, 0x9

    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPauseDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isleft:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->cancelIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_pause:I

    const-string v2, "#80000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->changeDrawableColor(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->cancelIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_pause:I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getPlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isleft:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->cancelIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_play:I

    const-string v2, "#80000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->changeDrawableColor(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->cancelIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_play:I

    const/4 v2, -0x1

    goto :goto_0
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

.method private setSeekBarEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$10;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$10;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$11;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$11;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-super {p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "#80000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadProgressview:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setColor(I)V

    iget-boolean v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isleft:Z

    const/16 v3, 0x15

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v4, "#eceff1"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioDurationView:Landroid/widget/TextView;

    const-string v4, "#FF252B2E"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioParent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioDurationView:Landroid/widget/TextView;

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v6

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v6, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->getUri(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    const-string v7, "0"

    const/16 v8, 0x8

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENDING:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    if-ne v0, v1, :cond_10

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->getMediaDuration(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v7, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioDurationView:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->getFormattedMediaDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->setSeekBarEnabled(Z)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStatus()I

    move-result v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    if-eq v0, v1, :cond_8

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v0

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/utils/FileUploader;->isAlreadyUploading(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadProgressview:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v0, v4}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->cancelIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_cancel:I

    invoke-static {v1, v4, v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->changeDrawableColor(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadProgressview:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadProgressview:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v0, v3}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setIndeterminate(Z)V

    :cond_7
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileUploader;->getInstance()Lcom/zoho/livechat/android/utils/FileUploader;

    move-result-object v0

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$8;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$8;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/zoho/livechat/android/utils/FileUploader;->setListener(Lcom/zoho/livechat/android/models/SalesIQMessage;Ljava/lang/String;Lcom/zoho/livechat/android/ui/listener/FileUploadingListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$9;

    invoke-direct {v1, p0, v6, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$9;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_8

    :cond_8
    :goto_3
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadProgressview:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {p2, v8}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setVisibility(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->cancelIconView:Landroid/widget/ImageView;

    sget v0, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_resend:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$7;

    invoke-direct {v1, p0, p1, v6}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$7;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessage;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V

    goto/16 :goto_8

    :cond_9
    :goto_4
    sget-object v0, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getSize()J

    move-result-wide v9

    const-string v3, ""

    const/4 v11, 0x0

    cmp-long v12, v1, v9

    if-ltz v12, :cond_d

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->setSeekBarEnabled(Z)V

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/AudioPlayer;->isPlaying(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->getPauseDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->getPlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :try_start_1
    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->getMediaDuration(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    move-object v7, p1

    goto :goto_6

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->getProgress(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_c

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioDurationView:Landroid/widget/TextView;

    invoke-static {v3, p1}, Lc/a/a/a/a;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->getFormattedMediaDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioDurationView:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->getFormattedMediaDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    new-instance p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;

    invoke-direct {p1, p0, v7}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/zoho/livechat/android/utils/AudioSeekbarHandler;->setListener(Ljava/lang/String;Lcom/zoho/livechat/android/utils/AudioSeekbarHandler$SeekBarListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->seekBar:Landroid/widget/SeekBar;

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;

    invoke-direct {p2, p0, v5, v7, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$2;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionParent:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;

    invoke-direct {p2, p0, v5, v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$3;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    :cond_d
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->audioDurationView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getSize()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getDisplayFileSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->setSeekBarEnabled(Z)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/zoho/livechat/android/utils/FileDownloader;->isAlreadyDownloading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->cancelIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_cancel:I

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->changeDrawableColor(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadProgressview:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v0, v4}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadProgressview:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadProgressview:Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/customviews/CircularProgressView;->setIndeterminate(Z)V

    :cond_e
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v0

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$4;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v0, v5, v1}, Lcom/zoho/livechat/android/utils/FileDownloader;->setListener(Ljava/lang/String;Lcom/zoho/livechat/android/ui/listener/FileDownloadingListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$5;

    invoke-direct {v1, p0, v5, p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$5;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    :cond_f
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->getDownloadDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->downloadprogressParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->actionParent:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$6;

    move-object v3, v1

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder$6;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;Ljava/lang/String;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    :goto_9
    return-void
.end method
