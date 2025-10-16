.class public Lcom/zoho/livechat/android/ui/ChatViewHolder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private actionButton:Landroid/widget/ImageView;

.field private actionLayout:Landroid/widget/RelativeLayout;

.field private botChatTransferAcceptLayout:Landroid/widget/RelativeLayout;

.field private botChatTransferAcceptTextView:Landroid/widget/TextView;

.field private botChatTransferCancelLayout:Landroid/widget/RelativeLayout;

.field private botChatTransferCancelTextView:Landroid/widget/TextView;

.field private botChatTransferLayout:Landroid/widget/RelativeLayout;

.field private botChatTransferTextView:Landroid/widget/TextView;

.field private bottomLayout:Landroid/widget/LinearLayout;

.field private chatLayout:Landroid/widget/FrameLayout;

.field private chatMessagesParentView:Landroid/widget/RelativeLayout;

.field private chatRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private continueChatButton:Landroid/widget/RelativeLayout;

.field private continueChatButtonText:Landroid/widget/TextView;

.field private continueChatParent:Landroid/widget/LinearLayout;

.field private continueChatText:Landroid/widget/TextView;

.field private imagePager:Lcom/zoho/livechat/android/ui/ImagePager;

.field private imgPreviewLayout:Landroid/widget/FrameLayout;

.field private inputParentLayout:Landroid/widget/RelativeLayout;

.field private messageLoadingView:Landroid/widget/ProgressBar;

.field private msgEditText:Landroid/widget/EditText;

.field private newMessageLayout:Landroid/widget/LinearLayout;

.field private newMsgTextView:Landroid/widget/TextView;

.field private offlineMessageView:Landroid/widget/TextView;

.field private recordAudioAnimView:Landroid/widget/RelativeLayout;

.field private recordAudioParentView:Landroid/widget/FrameLayout;

.field private recordButtonIcon:Landroid/widget/ImageView;

.field private recordButtonLayout:Landroid/widget/RelativeLayout;

.field private recordCancelLayout:Landroid/widget/LinearLayout;

.field private recordCancelTextView:Landroid/widget/TextView;

.field private recordTimeIconView:Landroid/view/View;

.field private recordTimeView:Landroid/widget/TextView;

.field private sendButton:Landroid/widget/ImageView;

.field private sendLayout:Landroid/widget/RelativeLayout;

.field private startChatLayout:Landroid/widget/LinearLayout;

.field private timerLayout:Landroid/widget/LinearLayout;

.field private timerTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_bottom_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->bottomLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_chat_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->chatLayout:Landroid/widget/FrameLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_imgpreviewlayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->imgPreviewLayout:Landroid/widget/FrameLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_imagepager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/ui/ImagePager;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->imagePager:Lcom/zoho/livechat/android/ui/ImagePager;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_timer_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->timerLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_timerclocktext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->timerTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_newmessage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->newMessageLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_newmessagetext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->newMsgTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_msg_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->msgEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_action_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->actionLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_action_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->actionButton:Landroid/widget/ImageView;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_chatmessagesrecylerview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->chatRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_send_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->sendLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_send_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->sendButton:Landroid/widget/ImageView;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_startchat_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->startChatLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_messages_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->messageLoadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->messageLoadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_chatmessages_parentview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->chatMessagesParentView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_offline_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->offlineMessageView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_text_file_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->inputParentLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_transfer_operator_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->botChatTransferLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_transfer_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->botChatTransferTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_transfer_yes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->botChatTransferAcceptLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_transfer_no:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->botChatTransferCancelLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_transfer_yes_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->botChatTransferAcceptTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->botChatTransferAcceptTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_transfer_no_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->botChatTransferCancelTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_audio_input:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordAudioParentView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_recording_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordTimeIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "#FFDB4437"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_recording_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordTimeView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_record_cancel_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordCancelTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_record_button_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->messageLoadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_record_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordButtonIcon:Landroid/widget/ImageView;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_slidecancel_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordCancelLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_record_audio_anim_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordAudioAnimView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->messageLoadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/zoho/livechat/android/utils/ResourceUtil;->getOverlayColor(II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_continuechat_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->continueChatParent:Landroid/widget/LinearLayout;

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_continue_chat_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->continueChatText:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget v0, Lcom/zoho/livechat/android/R$id;->siq_continue_chat_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->continueChatButton:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/ChatViewHolder;->getContinueChatButtonBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    .line 1
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    sget v0, Lcom/zoho/livechat/android/R$id;->siq_continue_chat_button_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->continueChatButtonText:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private getContinueChatButtonBackground()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->continueChatParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public getActionButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->actionButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getActionLayout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->actionLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getBotChatTransferAcceptLayout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->botChatTransferAcceptLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getBotChatTransferCancelLayout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->botChatTransferCancelLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getBotChatTransferLayout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->botChatTransferLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getBottomLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->bottomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getChatLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->chatLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getChatMessagesParentView()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->chatMessagesParentView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getChatRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->chatRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getContinueChatButton()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->continueChatButton:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getContinueChatParent()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->continueChatParent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getImagePager()Lcom/zoho/livechat/android/ui/ImagePager;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->imagePager:Lcom/zoho/livechat/android/ui/ImagePager;

    return-object v0
.end method

.method public getImgPreviewLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->imgPreviewLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getInputParentLayout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->inputParentLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMessageLoadingView()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->messageLoadingView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getMsgEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->msgEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getNewMessageLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->newMessageLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getNewMsgTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->newMsgTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOfflineMessageView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->offlineMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRecordAudioAnimView()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordAudioAnimView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getRecordAudioParentView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordAudioParentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getRecordButtonIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordButtonIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRecordButtonLayout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordButtonLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getRecordCancelLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordCancelLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRecordCancelTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordCancelTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRecordTimeIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordTimeIconView:Landroid/view/View;

    return-object v0
.end method

.method public getRecordTimeView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->recordTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSendButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->sendButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSendLayout()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->sendLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getStartChatLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->startChatLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTimerLayout()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->timerLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTimerTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ChatViewHolder;->timerTextView:Landroid/widget/TextView;

    return-object v0
.end method
