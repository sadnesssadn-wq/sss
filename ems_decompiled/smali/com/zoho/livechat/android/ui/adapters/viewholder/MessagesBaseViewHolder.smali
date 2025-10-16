.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;
    }
.end annotation


# instance fields
.field private avatarView:Landroid/widget/ImageView;

.field public chat:Lcom/zoho/livechat/android/models/SalesIQChat;

.field private hide_background:Z

.field public isleft:Z

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private margin_bottom:I

.field private msgParentView:Landroid/widget/RelativeLayout;

.field private msgTypesContainer:Landroid/widget/RelativeLayout;

.field private ratingIcon:Landroid/widget/ImageView;

.field private ratingLayout:Landroid/widget/RelativeLayout;

.field private skipLayout:Landroidx/cardview/widget/CardView;

.field private skipParentView:Landroid/widget/LinearLayout;

.field private skipTextView:Landroid/widget/TextView;

.field private skipView:Landroid/widget/RelativeLayout;

.field private suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

.field private timeView:Landroid/widget/TextView;

.field private widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    iput-boolean p3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isleft:Z

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_main_msg_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->msgParentView:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_sender_avatar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->avatarView:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_msg_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->msgTypesContainer:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_timetextview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->timeView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_suggestions_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_widget_bot_skip_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->skipLayout:Landroidx/cardview/widget/CardView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_skip_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->skipParentView:Landroid/widget/LinearLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_skip_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->skipView:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_skip_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->skipTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_msg_rating_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->ratingLayout:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_msg_rating_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->ratingIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->avatarView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getChatBackground()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-boolean v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isleft:Z

    if-eqz v1, :cond_0

    const-string v1, "#eceff1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->msgTypesContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private getRattedViewBackGround()Landroid/graphics/drawable/GradientDrawable;
    .locals 6

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v1, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x4

    aput v4, v2, v5

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x5

    aput v3, v2, v4

    const/4 v3, 0x6

    aput v1, v2, v3

    const/4 v3, 0x7

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v1, 0x3f2b851f    # 0.67f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    const-string v2, "#e7e7e7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method private loadOperatorImage(Lcom/zoho/livechat/android/models/SalesIQMessage;)V
    .locals 9

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "#EFF1F3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->isBot()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->msgTypesContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_user_default:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->msgTypesContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_bot_default:I

    :goto_1
    invoke-static {v0, v1}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lc/e/a/b/c$b;

    invoke-direct {v1}, Lc/e/a/b/c$b;-><init>()V

    const/4 v2, 0x1

    .line 1
    iput-boolean v2, v1, Lc/e/a/b/c$b;->h:Z

    const/4 v3, 0x0

    .line 2
    iput-boolean v3, v1, Lc/e/a/b/c$b;->i:Z

    .line 3
    iput-boolean v2, v1, Lc/e/a/b/c$b;->m:Z

    .line 4
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lc/e/a/b/c$b;->a(Landroid/graphics/Bitmap$Config;)Lc/e/a/b/c$b;

    new-instance v2, Lc/e/a/b/o/b;

    invoke-direct {v2}, Lc/e/a/b/o/b;-><init>()V

    invoke-virtual {v1, v2}, Lc/e/a/b/c$b;->c(Lc/e/a/b/o/a;)Lc/e/a/b/c$b;

    invoke-virtual {v1}, Lc/e/a/b/c$b;->b()Lc/e/a/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/SalesIQCache;->isUserImageAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lc/e/a/b/d;->f()Lc/e/a/b/d;

    move-result-object p1

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getFilePathForImageloader(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v2, v1}, Lc/e/a/b/d;->c(Ljava/lang/String;Landroid/widget/ImageView;Lc/e/a/b/c;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {}, Lcom/zoho/livechat/android/utils/FileDownloader;->getInstance()Lcom/zoho/livechat/android/utils/FileDownloader;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/constants/UrlUtil;->getOperatorImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    new-instance v8, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$2;

    invoke-direct {v8, p0, v0, v1, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$2;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;Ljava/io/File;Lc/e/a/b/c;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-virtual/range {v3 .. v8}, Lcom/zoho/livechat/android/utils/FileDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;JLcom/zoho/livechat/android/ui/listener/FileDownloadingListener;)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public getAvatarVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getMessageContainerWidth()I
    .locals 1

    const/high16 v0, 0x43910000    # 290.0f

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    return v0
.end method

.method public getMsgParentView()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->msgParentView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMsgTypesContainer()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->msgTypesContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public isHideBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->hide_background:Z

    return v0
.end method

.method public isLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isleft:Z

    return v0
.end method

.method public render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->skipLayout:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->ratingLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->hide_background:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->msgTypesContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getChatBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 1
    :goto_0
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->msgTypesContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->msgParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->margin_bottom:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->timeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    iget-boolean v3, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isleft:Z

    const/high16 v4, 0x40800000    # 4.0f

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->loadOperatorImage(Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowOperatorImageInChat()Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    add-int/2addr v1, v3

    :cond_1
    invoke-static {v4}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x17

    if-eq p2, v0, :cond_4

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getSuggestions()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getSuggestions()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->suggestionsList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;

    invoke-direct {v1, p0, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$SuggestionsAdapter;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getInputCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->isSkippable()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->skipLayout:Landroidx/cardview/widget/CardView;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v0

    const-string v1, "#1f252b2e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->skipParentView:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->skipView:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    invoke-static {v4}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result p2

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    invoke-virtual {v0, v2, p2, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    :cond_4
    :goto_2
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "hh:mm a"

    invoke-direct {p2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->timeView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAvatarVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setHideBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->hide_background:Z

    return-void
.end method

.method public setMarginBottom(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->margin_bottom:I

    return-void
.end method

.method public setRatingIcon(I)V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->ratingLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->ratingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->ratingLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getRattedViewBackGround()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRatingIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->ratingLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->ratingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->ratingLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getRattedViewBackGround()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 2
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTimeVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->timeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setWidgetListener(Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    return-void
.end method
